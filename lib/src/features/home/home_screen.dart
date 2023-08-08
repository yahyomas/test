import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../weather/presentation/weather_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is home page'),
            const SizedBox(
              height: 24,
            ),
            Text(
              'You can test the navigation and on click hendling in flutter web',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8,
            ),

            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(CupertinoPageRoute(builder: (context) {
                    return const WeatherPage(city: 'Tashkent');
                  }));
                },
                child: Text('Navigate to new page')),
          ],
        ),
      ),
    );
  }
}

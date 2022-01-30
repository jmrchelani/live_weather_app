import 'package:flutter/material.dart';

class DayWeatherRow extends StatelessWidget {
  const DayWeatherRow({
    Key? key,
    required this.day,
    required this.image,
    required this.weather,
    required this.low,
    required this.high,
  }) : super(key: key);

  final String day, image, weather, low, high;

  @override
  Widget build(BuildContext context) {
    return Stack(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: Text(
            day,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 40,
            ),
            SizedBox(width: 8),
            Text(
              weather,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            SizedBox(width: 16),
          ],
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: high,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
                TextSpan(
                  text: ' $low',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

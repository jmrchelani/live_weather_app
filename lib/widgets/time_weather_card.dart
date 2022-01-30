import 'package:flutter/material.dart';
import 'package:live_weather_app/colors.dart';

class TimeWeatherCard extends StatelessWidget {
  TimeWeatherCard({
    Key? key,
    required this.temperature,
    required this.image,
    required this.time,
    this.isCurrent = false,
  }) : super(key: key);

  final String temperature, image, time;
  bool isCurrent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isCurrent ? 125 : 100,
      decoration: BoxDecoration(
        gradient: isCurrent
            ? LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  kLightBlueColor,
                  kBlueColor,
                ],
              )
            : null,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: kLightBlueColor.withOpacity(0.2),
        ),
      ),
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: 16.0, horizontal: isCurrent ? 4 : 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              temperature,
              style: TextStyle(
                color: Colors.white,
                fontSize: isCurrent ? 20 : 16,
              ),
            ),
            Image.asset(
              image,
              width: 70,
            ),
            Text(
              time,
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                // fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

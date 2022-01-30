import 'package:flutter/material.dart';
import 'package:live_weather_app/colors.dart';
import 'package:live_weather_app/widgets/day_weather_row.dart';
import 'package:live_weather_app/widgets/glassy_container.dart';

class WeeklyScreen extends StatelessWidget {
  const WeeklyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          Stack(
            children: [
              GlassyContainer(
                ratio: 2,
              ),
              TomorrowWeather(),
            ],
          ),
          SizedBox(height: 8),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              itemBuilder: (c, i) => DayWeatherRow(
                day: [
                  'Mon',
                  'Tue',
                  'Wed',
                  'Thu',
                  'Fri',
                  'Sat',
                  'Sun'
                ][i > 6 ? i - 6 : i],
                image: 'images/weather/sun/28.png',
                weather: 'Windy',
                low: '+18°',
                high: '+24°',
              ),
              separatorBuilder: (c, i) => SizedBox(
                height: 32,
              ),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class TomorrowWeather extends StatelessWidget {
  const TomorrowWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 32,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: IconButton(
                  icon: const Icon(
                    Icons.chevron_left,
                    size: 38,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: IconButton(
                  icon: const Icon(
                    Icons.more_vert,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // IconButton(onPressed: onPressed, icon: Icon()),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          color: Colors.white,
                          size: 26,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          '7 Days',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/weather/sun/16.png',
                height: 100,
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tomorrow',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '20',
                          style: TextStyle(
                            fontSize: 60,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: '/',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white.withOpacity(0.75),
                          ),
                        ),
                        TextSpan(
                          text: '30°',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white.withOpacity(0.75),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Rainy - Cloudy',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Divider(
            endIndent: 16,
            indent: 16,
            color: Colors.white.withOpacity(0.3),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'images/windy.png',
                      width: 55,
                    ),
                    const Text(
                      '13 km/h',
                      style: TextStyle(
                        color: Colors.white,
                        // fontSize: 25,
                      ),
                    ),
                    Text(
                      'Wind',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        // fontSize: 25,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'images/sunny foggy.png',
                      width: 55,
                    ),
                    const Text(
                      ' 24%',
                      style: TextStyle(
                        color: Colors.white,
                        // fontSize: 25,
                      ),
                    ),
                    Text(
                      'Humidity',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        // fontSize: 25,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'images/rain light.png',
                      width: 55,
                    ),
                    const Text(
                      ' 87%',
                      style: TextStyle(
                        color: Colors.white,
                        // fontSize: 25,
                      ),
                    ),
                    Text(
                      'Chance of rain',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        // fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

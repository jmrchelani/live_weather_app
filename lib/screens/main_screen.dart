import 'package:flutter/material.dart';
import 'package:live_weather_app/colors.dart';
import 'package:live_weather_app/screens/weekly_screen.dart';
import 'package:live_weather_app/widgets/glassy_container.dart';
import 'package:live_weather_app/widgets/time_weather_card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      'rain light.png',
      'sunny foggy.png',
      'thunder.png',
      'windy cloudy night.png',
      'windy night.png',
      'windy.png',
    ];

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          Stack(
            children: [
              GlassyContainer(
                ratio: 1.36,
              ),
              LiveWeather(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Today',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const WeeklyScreen(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            '7 Days',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              // fontSize: 24,
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 125,
            child: ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              // physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (c, i) => TimeWeatherCard(
                temperature: '${i + 33}',
                image: 'images/${list[i]}',
                time: '${10 + i}:00',
                isCurrent: i == 1,
              ),
              separatorBuilder: (c, i) => SizedBox(width: 8),
              itemCount: 6,
            ),
          ),
        ],
      ),
    );
  }
}

class LiveWeather extends StatelessWidget {
  const LiveWeather({
    Key? key,
  }) : super(key: key);

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
                          Icons.location_on,
                          color: Colors.white,
                          size: 26,
                        ),
                        // SizedBox(
                        //   width: 4,
                        // ),
                        Text(
                          'Minsk',
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
          // const SizedBox(
          //   height: 8,
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border.all(
          //       color: Colors.white.withOpacity(0.3),
          //     ),
          //     borderRadius: BorderRadius.circular(15),
          //   ),
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
          //     child: Row(
          //       mainAxisSize: MainAxisSize.min,
          //       children: [
          //         Icon(
          //           CupertinoIcons.circle_fill,
          //           color: Colors.yellow,
          //           size: 8,
          //         ),
          //         SizedBox(
          //           width: 4,
          //         ),
          //         Text(
          //           'Updating',
          //           style: TextStyle(
          //             color: Colors.white,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          const SizedBox(height: 16),
          SizedBox(
            height: 150,
            child: Image.asset(
              'images/weather/sun/28.png',
              // width: 150,
            ),
          ),
          const Text(
            '21°',
            style: TextStyle(
              color: Colors.white,
              fontSize: 120,
              fontWeight: FontWeight.bold,
            ),
          ),
          // const SizedBox(height: 8),
          const Text(
            'Thunderstorm',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          Text(
            'Monday, 17 May',
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              // fontSize: 25,
            ),
          ),
          const SizedBox(height: 8),
          Divider(
            indent: 16,
            endIndent: 16,
            color: Colors.white.withOpacity(0.4),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
          )
        ],
      ),
    );
  }
}

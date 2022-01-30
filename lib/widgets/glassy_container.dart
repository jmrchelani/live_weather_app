import 'package:flutter/material.dart';
import 'package:live_weather_app/colors.dart';

class GlassyContainer extends StatelessWidget {
  const GlassyContainer({
    Key? key,
    required this.ratio,
  }) : super(key: key);

  final double ratio;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / ratio,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(75),
                  bottomRight: Radius.circular(75),
                ),
                color: kBlueColor.withOpacity(0.5),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    offset: Offset(0.0, 3.0),
                    blurRadius: 5.0,
                    spreadRadius: -1.0,
                    color: kBlueColor.withOpacity(0.1),
                  ),
                  BoxShadow(
                    offset: Offset(0.0, 6.0),
                    blurRadius: 10.0,
                    spreadRadius: 0.0,
                    color: kLightBlueColor.withOpacity(0.2),
                  ),
                  BoxShadow(
                    offset: Offset(0.0, 1.0),
                    blurRadius: 18.0,
                    spreadRadius: 0.0,
                    color: kBlueColor.withOpacity(0.3),
                  ),
                ],
                // gradient: LinearGradient(
                //   begin: Alignment.topRight,
                //   end: Alignment.bottomLeft,
                //   colors: [
                //     kLightBlueColor,
                //     kBlueColor,
                //   ],
                // ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / (ratio + 0.026),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(55),
                  bottomRight: Radius.circular(55),
                ),
                border: Border.all(color: kLightBlueColor.withOpacity(0.7)),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    kLightBlueColor,
                    kBlueColor,
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(),
      ],
    );
  }
}

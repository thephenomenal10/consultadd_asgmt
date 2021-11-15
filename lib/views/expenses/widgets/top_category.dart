import 'package:consultadd_asgmt/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

Widget topCategory() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 0.0),
    child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 4,
        itemBuilder: (context, i) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 500,
                padding: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  color: white1,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                ),
                child: Column(
                  children: [
                    CircularPercentIndicator(
                      radius: 110.0,
                      animation: true,
                      linearGradient: LinearGradient(
                          colors: [Color(0xffE7708A), Color(0xff7A87F1)]),
                      animationDuration: 1000,
                      lineWidth: 8.0,
                      percent: 0.5,
                      // reverse: true,
                      //  rotateLinearGradient: true,
                      arcBackgroundColor: backgroundColor,
                      arcType: ArcType.FULL,
                      center: Text(
                        "🍔",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 34.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      backgroundColor: Colors.transparent,
                      // progressColor: backgroundColor,
                    ),
                    Text(
                      "Food & Drink",
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Text(
                      "\$1500/month",
                      style: Theme.of(context).textTheme.subtitle2,
                    )
                  ],
                ),
              ),
            )),
  );
}

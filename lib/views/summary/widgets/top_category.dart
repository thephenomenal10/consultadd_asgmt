import 'package:consultadd_asgmt/data/models/top_category_model.dart';
import 'package:consultadd_asgmt/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

Widget topCategory(context) {
  var category = <TopCategory>[
    TopCategory(budget: 150, image: "🍔", name: "Food & Drink"),
    TopCategory(budget: 674, image: "🏠", name: "House & Rent"),
    TopCategory(budget: 300, image: "⛽️", name: "Fuel"),
    TopCategory(budget: 220, image: "💆🏻", name: "Spa & Relax"),
  ];

  return Padding(
    padding: const EdgeInsets.only(bottom: 80.0),
    child: Container(
      // height: Get.height / 2.3,
      child: GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: category.length,
          itemBuilder: (context, i) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: white1, borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: CircularPercentIndicator(
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
                          arcType: ArcType.HALF,
                          center: Text(
                            "${category[i].image}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 34.0),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      Text(
                        "${category[i].name}",
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Text(
                        "\$${category[i].budget}",
                        style: Theme.of(context).textTheme.subtitle2,
                      )
                    ],
                  ),
                ),
              )),
    ),
  );
}

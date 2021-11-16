import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

Widget budgetLimit(
    context, itemBudget, spentMoney, itemName, itemImage, sliderPercent) {
  return Container(
    // height: 250,
    // width: 50s,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(65),
        bottomRight: Radius.circular(65),
        topLeft: Radius.circular(65),
        topRight: Radius.circular(65),
      ),
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 35),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  )),
              child: Center(
                  child: Text(
                "$itemImage",
                style: TextStyle(fontSize: 40),
              )),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$itemName",
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                "\$$itemBudget/month",
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          )
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34.0),
        child: LinearPercentIndicator(
          backgroundColor: Colors.grey.shade100,
          lineHeight: 20,
          percent: sliderPercent,
          center: Text("\$$spentMoney"),
          // isRTL: true,
          linearGradient: LinearGradient(colors: [
            Color(0xff5BB5E5),
            Color(0xffC46EBD),
            Color(0xffDF5E6E),
          ]),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 10),
        child: Text("Spent \$$spentMoney from \$$itemBudget",
            style: Theme.of(context).textTheme.caption),
      ),
      Divider(
        thickness: 2.0,
        indent: 40,
        endIndent: 40,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Center(child: Text("Good Job! your spending is on track")),
      )
    ]),
  );
}

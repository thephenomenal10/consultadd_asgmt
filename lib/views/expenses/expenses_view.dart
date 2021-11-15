import 'package:consultadd_asgmt/theme/color_theme.dart';
import 'package:consultadd_asgmt/views/expenses/widgets/curve_painter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/budget_limit.dart';

class ExpensesView extends StatefulWidget {
  const ExpensesView({Key? key}) : super(key: key);

  @override
  _ExpensesViewState createState() => _ExpensesViewState();
}

class _ExpensesViewState extends State<ExpensesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(children: [
        Column(children: [
          Container(
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: blueColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(55),
                  bottomRight: Radius.circular(55),
                ),
              ),
              child: CustomPaint(
                painter: CurvePainter(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "💸",
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("\$4,354",
                        style: Theme.of(context).textTheme.headline1),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "budget limit for April, 2021",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              )),
        ]),
        Padding(
          padding: const EdgeInsets.only(top: 230.0),
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, i) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: budgetLimit(context)),
          ),
        )
      ]),
    );
  }
}

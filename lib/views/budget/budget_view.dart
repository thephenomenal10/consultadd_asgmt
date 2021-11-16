import 'package:consultadd_asgmt/data/models/monthly_budget_model.dart';
import 'package:consultadd_asgmt/presenter/budget_view_presenter.dart';
import 'package:consultadd_asgmt/theme/color_theme.dart';
import 'package:consultadd_asgmt/views/budget/widgets/curve_painter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/budget_limit.dart';

class BudgetView extends StatefulWidget {
  const BudgetView({Key? key}) : super(key: key);

  @override
  _BudgetViewState createState() => _BudgetViewState();
}

class _BudgetViewState extends State<BudgetView>
    implements MonthlyBudgetView {
  BudgetViewPresenter? _presenter;
  MonthlyBudget? budget;
  bool loading = false;
  _BudgetViewState() {
    _presenter = BudgetViewPresenter(this);
  }

  @override
  void initState() {
    super.initState();
    loading = true;
    _presenter!.loadBudget();
  }

  @override
  void onLoadBudget(MonthlyBudget items) {
    setState(() {
      budget = items;
      loading = false;
    });
  }

  @override
  void onLoadBudgetError() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Stack(children: [
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
                            style: TextStyle(color: Colors.white, fontSize: 70),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("\$" + "${budget!.totalBudge}",
                              style: Theme.of(context).textTheme.headline1),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "budget limit for Nov, 2021",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    )),
              ]),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250.0),
                child: ListView.builder(
                  padding: EdgeInsets.only(bottom: 90),
                  itemCount: budget!.item!.length,
                  itemBuilder: (context, i) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: budgetLimit(context, budget!.item![i].itemBudget,  budget!.item![i].spentMoney,  budget!.item![i].itemName,  budget!.item![i].itemImage, budget!.item![i].percent, )),
                ),
              )
            ]),
    );
  }
}

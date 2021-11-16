import 'package:consultadd_asgmt/data/models/expenses_model.dart';
import 'package:consultadd_asgmt/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget expensesHistory(context, List<Transaction>? transactions) {
  return Container(
    height: Get.height / 1.9,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300.withOpacity(0.8),
            spreadRadius: 7,
            blurRadius: 10,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
        color: backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        )),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  indent: 150,
                  endIndent: 150,
                  thickness: 4.0,
                  color: Colors.grey,
                ),
              ),
              Container(
                height: Get.height / 2.3,
                color: backgroundColor,
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    // padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: transactions!.length,
                    shrinkWrap: true,
                    itemBuilder: (context, i) => Container(
                          height: 70,
                          decoration: BoxDecoration(
                              color: backgroundColor,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius:
                                            BorderRadius.circular(12.0)),
                                    child: Center(
                                        child: Text(
                                      "${transactions[i].itemImage}",
                                      style: TextStyle(fontSize: 25),
                                    )),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "${transactions[i].transactionType}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2,
                                      ),
                                      Text(
                                        "${transactions[i].status}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(
                                                color: Colors.grey,
                                                fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  transactions[i].deduction
                                      ? Text(
                                          "- \$${transactions[i].transactionMoney}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2!
                                              .copyWith(color: Colors.red),
                                        )
                                      : Text(
                                          "+ \$${transactions[i].transactionMoney}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2,
                                        ),
                                  Text(
                                    "${transactions[i].transactionDate}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

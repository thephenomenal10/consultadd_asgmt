import 'package:consultadd_asgmt/data/models/expenses_model.dart';
import 'package:consultadd_asgmt/presenter/wallet_view_presenter.dart';
import 'package:consultadd_asgmt/theme/color_theme.dart';
import 'package:consultadd_asgmt/views/Wallet/widgets/expenses_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:percent_indicator/percent_indicator.dart';

class WalletView extends StatefulWidget {
  const WalletView({Key? key}) : super(key: key);

  @override
  _WalletViewState createState() => _WalletViewState();
}

class _WalletViewState extends State<WalletView> implements ExpensesView {
  bool loading = false;

  WalletViewPresenter? _presenter;
  Expenses? expenses;

  _WalletViewState() {
    _presenter = WalletViewPresenter(this);
  }
  @override
  void initState() {
    super.initState();
    loading = true;
    _presenter!.loadWallet();
  }

  @override
  void onLoadWallet(Expenses items) {
    setState(() {
      expenses = items;
      loading = false;
    });
  }

  @override
  void onLoadWalletError() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: loading
            ? Center(
                child: CircularProgressIndicator(color: blueColor,),
              )
            : Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 26, right: 26, top: 37),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Expenses",
                              style: Theme.of(context).textTheme.headline3,
                            ),
                            Icon(
                              IconlyLight.graph,
                              color: blueColor,
                            )
                          ],
                        ),
                        Text(
                          "Nov, 2021",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(color: Colors.grey, fontSize: 14),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: CircularPercentIndicator(
                            radius: 190.0,
                            lineWidth: 13.0,
                            animation: true,
                            animationDuration: 1000,
                            backgroundColor: Colors.black12,
                            linearGradient: LinearGradient(
                                colors: [Color(0xffE7708A), Color(0xff7A87F1)]),
                            percent: 0.7,
                            center: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "💰",
                                  style: TextStyle(fontSize: 60),
                                ),
                                Text(
                                  "\$${expenses!.moneyLeft}",
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                              ],
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  expensesHistory(context, expenses!.transaction),
                ],
              ),
      ),
    );
  }
}

import 'package:consultadd_asgmt/views/Wallet/wallet_view.dart';
import 'package:consultadd_asgmt/views/budget/budget_view.dart';
import 'package:consultadd_asgmt/views/coming_soon.dart';
import 'package:consultadd_asgmt/views/summary/summary_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  final List<String> tabs = ["", "", "", "", ""];
  final List<IconData> tabIcons = [
    IconlyLight.home,
    IconlyLight.wallet,
    IconlyBold.plus,
    IconlyLight.graph,
    IconlyLight.moreSquare,
  ];

  void updateIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _showScreen(),
      bottomNavigationBar: _showBottomNavigationBar(context),
    );
  }

  Widget _showScreen() {
    switch (currentIndex) {
      case 0:
        return  BudgetView();
      case 1:
        return WalletView();
      case 2:
        return ComingSoonView();
      case 3:
        return SummaryView();
      case 4:
        return ComingSoonView();
      default:
        return Container(
          child: Text("Default"),
        );
    }
  }

  Widget _showBottomNavigationBar(context) {
    return BottomNavigationBar(
        elevation: 0,
        backgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).primaryColor,
        onTap: updateIndex,
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(tabIcons[0]),
            label: tabs[0],
          ),
          BottomNavigationBarItem(
            icon: new Icon(tabIcons[1]),
            label: tabs[1],
          ),
          BottomNavigationBarItem(
              icon: Icon(
                tabIcons[2],
                size: 50,
              ),
              label: tabs[2]),
          BottomNavigationBarItem(
            icon: new Icon(tabIcons[3]),
            label: tabs[3],
          ),
          BottomNavigationBarItem(icon: Icon(tabIcons[4]), label: tabs[4]),
        ]);
  }
}

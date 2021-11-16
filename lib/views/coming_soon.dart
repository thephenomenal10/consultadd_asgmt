import 'package:flutter/material.dart';

class ComingSoonView extends StatelessWidget {
  const ComingSoonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
            child: Image.asset(
          "assets/images/1.gif",
          fit: BoxFit.fitHeight,
        )),
        Text(
          "Coming Soon...",
          style: Theme.of(context).textTheme.headline2,
        )
      ]),
    );
  }
}

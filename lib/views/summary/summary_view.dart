import 'package:consultadd_asgmt/theme/color_theme.dart';
import 'package:consultadd_asgmt/views/summary/widgets/top_category.dart';
import 'package:consultadd_asgmt/views/summary/widgets/container_curve.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class SummaryView extends StatefulWidget {
  const SummaryView({Key? key}) : super(key: key);

  @override
  _SummaryViewState createState() => _SummaryViewState();
}

class _SummaryViewState extends State<SummaryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 26, right: 26, top: 37),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Summary",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Icon(
                    IconlyLight.document,
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
              Container(
                height: 190,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFE6718B),
                      const Color(0xFF7F7AE1),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                  child: CustomPaint(
                    painter: ContainerCurve(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 29, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Family Card",
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              Icon(
                                Icons.sd_card,
                                color: Colors.white54,
                              )
                            ],
                          ),
                          Text(
                            "\$5,324,23",
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(fontSize: 30),
                          ),
                          Text(
                            "**** **** **** 4620",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: double.infinity,
                              height: 35,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return Align(
                                      widthFactor: 0.6,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          radius: 18,
                                          backgroundColor: Color(0xffCE82AD),
                                          child: Text(
                                            "🤴🏻",
                                            style: TextStyle(fontSize: 22),
                                          ),
                                        ),
                                      ),
                                    );
                                  })),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "Top Category",
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              topCategory(context)
            ],
          ),
        ),
      ),
    );
  }
}

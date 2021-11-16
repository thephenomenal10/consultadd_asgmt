import 'package:consultadd_asgmt/constants/strings.dart';
import 'package:consultadd_asgmt/routes/app_pages.dart';
import 'package:consultadd_asgmt/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'locator.dart';
import 'theme/app_theme.dart';

void main() {
  setupLocator();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return LayoutBuilder(builder: (context, constraints) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appThemeData[AppTheme.appTheme],
        title: Strings.APP_NAME,
        initialRoute: AppRoutes.home,
        getPages: AppPages.pages,
      );
    });
  }
}

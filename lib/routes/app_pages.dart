import 'package:consultadd_asgmt/routes/app_routes.dart';
import 'package:consultadd_asgmt/views/Home/home_view.dart';
import 'package:consultadd_asgmt/views/Wallet/wallet_view.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
    ),
    GetPage(
      name: AppRoutes.wallet,
      page: () => WalletView(),
    ),
  ];
}

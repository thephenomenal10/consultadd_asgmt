import 'package:consultadd_asgmt/data/mock/expenses_mock.dart';
import 'package:consultadd_asgmt/data/models/monthly_budget_model.dart';
import 'package:get_it/get_it.dart';

import 'data/mock/monthly_budget_mock.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory(() => MonthlyBudget());

  locator.registerFactory(() => MockMonthlyBudget());
  locator.registerFactory(() => MockExpenses());
}
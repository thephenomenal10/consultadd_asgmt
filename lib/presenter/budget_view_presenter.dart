import 'package:consultadd_asgmt/data/mock/monthly_budget_mock.dart';
import 'package:consultadd_asgmt/data/models/monthly_budget_model.dart';
import 'package:consultadd_asgmt/locator.dart';

abstract class MonthlyBudgetView {
  void onLoadBudget(MonthlyBudget items);
  void onLoadBudgetError();
}

class BudgetViewPresenter {
  BudgetViewPresenter(this._view);
  late MonthlyBudgetView _view;
  MonthlyBudgetRepository repository = locator<MockMonthlyBudget>();

  void loadBudget() {

    repository.fetch().then((budget) {
      _view.onLoadBudget(budget);
    }).catchError((e) {
      print(e.toString());
      _view.onLoadBudgetError();
    });
  }
}

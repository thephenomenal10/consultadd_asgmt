import 'package:consultadd_asgmt/data/mock/expenses_mock.dart';
import 'package:consultadd_asgmt/data/models/expenses_model.dart';
import 'package:consultadd_asgmt/locator.dart';

abstract class ExpensesView {
  void onLoadWallet(Expenses items);
  void onLoadWalletError();
}

class WalletViewPresenter {
  WalletViewPresenter(this._view);
  late ExpensesView _view;
  ExpensesRepository repository = locator<MockExpenses>();

  void loadWallet() {
    repository.fetch().then((expense) {
      _view.onLoadWallet(expense);
    }).catchError((e) {
      print(e.toString());
      _view.onLoadWalletError();
    });
  }
}

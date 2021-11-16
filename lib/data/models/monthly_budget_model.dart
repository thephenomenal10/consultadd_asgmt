class MonthlyBudget {
  int? totalBudge;
  List<Item>? item;

  MonthlyBudget({this.item, this.totalBudge});
}

class Item {
  String? itemName;
  int? itemBudget;
  int? spentMoney;
  String? itemImage;
  double? percent;

  Item({this.itemName, this.itemImage, this.spentMoney, this.itemBudget, this.percent});
}

abstract class MonthlyBudgetRepository {
  Future<MonthlyBudget> fetch();
}

class FetchDataException implements Exception {
  String _message;

  FetchDataException(this._message);

  String toString() {
    return "Exception: $_message";
  }
}

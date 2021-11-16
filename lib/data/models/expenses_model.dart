class Expenses {
  int? moneyLeft;
  List<Transaction>? transaction;

  Expenses({this.transaction, this.moneyLeft});
}

class Transaction {
  String? transactionType;
  String? transactionDate;
  double? transactionMoney;
  String? itemImage;
  String? status;
  bool deduction;

  Transaction(
      {this.itemImage,
      this.status,
      this.transactionDate,
      this.transactionMoney,
      this.transactionType, this.deduction =false});
}

abstract class ExpensesRepository {
  Future<Expenses> fetch();
}

class FetchDataException implements Exception {
  String _message;

  FetchDataException(this._message);

  String toString() {
    return "Exception: $_message";
  }
}

import 'package:consultadd_asgmt/data/models/expenses_model.dart';

class MockExpenses extends ExpensesRepository {
  final expenses = Expenses(moneyLeft: 2345, transaction: <Transaction>[
    Transaction(
        itemImage: "💸",
        status: "Transfered Money",
        transactionDate: "12 Nov,2021",
        transactionMoney: 45,
        transactionType: "Received Cashback"),
    Transaction(
        itemImage: "🚗",
        status: "Taxi Service",
        deduction: true,
        transactionDate: "1 Nov,2021",
        transactionMoney: 120,
        transactionType: "Uber"),
    Transaction(
        itemImage: "👨‍🦳",
        status: "Received from Lucky",
        transactionDate: "5 Nov,2021",
        transactionMoney: 300,
        transactionType: "Received Cashback"),
  ]);

  @override
  Future<Expenses> fetch() async {
    return expenses;
  }
}

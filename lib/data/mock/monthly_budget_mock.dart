import 'package:consultadd_asgmt/data/models/monthly_budget_model.dart';

class MockMonthlyBudget extends MonthlyBudgetRepository {
  final budget = MonthlyBudget(totalBudge: 5000, item: <Item>[
    Item(
        itemName: "Food & drink",
        itemImage: "🍔",
        itemBudget: 200,
        percent: 0.3,
        spentMoney: 120),
    Item(
        itemName: "Car Fuel",
        itemImage: "🚗",
        itemBudget: 600,
        percent: 0.5,
        spentMoney: 450),
  ]);

  @override
  Future<MonthlyBudget> fetch() async {
    return budget;
  }
}

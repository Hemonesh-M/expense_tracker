import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widget/chart/chart.dart';
import 'package:expense_tracker/widget/expense_list/expense_list.dart';
import 'package:expense_tracker/widget/new_expense.dart';
import 'package:flutter/material.dart';

// import 'package:expense_tracker/mo';
class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense('Flutter Course', 500, DateTime.utc(2023, 7, 1), Category.work),
    Expense('Samosa', 40, DateTime.now(), Category.food),
    Expense('Black Myth Wukong', 999, DateTime.now(), Category.leisure),
    Expense('Flight', 4000, DateTime.now(), Category.travel),
  ];
  void _openAddExpenseOverlay(double h,double w) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        useSafeArea: true,
        constraints: BoxConstraints.expand(height:h>w? (3 * h) / 4:h),
        builder: (ctx) {
          return NewExpense(_addExpense);
        });
  }

  void _addExpense(Expense exp) {
    setState(() {
      _registeredExpenses.add(exp);
    });
  }

  void _removeExpense(Expense exp) {
    int index = _registeredExpenses.indexOf(exp);
    setState(() {
      _registeredExpenses.remove(exp);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Expense ${exp.title} Deleted"),
        duration: const Duration(seconds: 18),
        action: SnackBarAction(
          label: "Undo",
          onPressed: () {
            setState(() {
              _registeredExpenses.insert(index, exp);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    Widget mainContent = const Center(child: Text("No expenses added yet!"));
    if (_registeredExpenses.isNotEmpty) {
      mainContent = ExpenseList(_registeredExpenses, _removeExpense);
    }
    var port = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // const SizedBox(height: 20,),
        Expanded(child: Chart(_registeredExpenses)),
        const Text(
          "GRAPHS",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Expanded(child: mainContent),
      ],
    );
    var land = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // const SizedBox(height: 20,),
        Expanded(child: Chart(_registeredExpenses)),
        const Text(
          "GRAPHS",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Expanded(child: mainContent),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Expense Tracker",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 42, 19, 78),
        actions: [
          IconButton(
            onPressed: () {
              _openAddExpenseOverlay(h,w);
            },
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: w > h || w > 600 ? land : port,
    );
  }
}

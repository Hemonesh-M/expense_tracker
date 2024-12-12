import 'package:expense_tracker/models/expense.dart';
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
  ];
  void _openAddExpenseOverlay(){
    showModalBottomSheet(context: context, 
    builder: (ctx) {
      return  NewExpense(addExpense);
    }) ;
  }
  void addExpense(Expense exp){
    setState(() {
      _registeredExpenses.add(exp);
    });
  }
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Expense Tracker",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 42, 19, 78),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon( 
              Icons.add_box_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const Text("GRAPHS"),
          ExpenseList(_registeredExpenses),
        ],
      ),
    );
  }
}

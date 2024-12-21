import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widget/expense_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList(this._registeredExpenses, this.removeExpense, {super.key});
  final List<Expense> _registeredExpenses;
  final void Function(Expense exp) removeExpense;
  @override
  Widget build(BuildContext context) {
    
    return Expanded(
      child: ListView.builder(
          itemCount: _registeredExpenses.length,
          itemBuilder: (cxt, index) {
            return Column(
              children: [
                Dismissible(
                  background: Card(
                    color: Theme.of(context).colorScheme.error.withOpacity(0.50),
                    margin: Theme.of(context).cardTheme.margin,
                    // child: const Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),),
                    child: Center(child: Text("Swipe To Delete",style: Theme.of(context).textTheme.labelLarge,)),
                  ),
                  key: ValueKey(_registeredExpenses[index]),
                  child: ExpenseItem(_registeredExpenses[index]),
                  onDismissed: (dismissDirection) {
                    removeExpense(_registeredExpenses[index]);
                  },
                ),
                // const SizedBox(height: 250,)
              ],
            );
          }),
    );
  }
}

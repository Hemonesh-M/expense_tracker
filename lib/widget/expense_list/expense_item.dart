import 'package:expense_tracker/models/expense.dart';

import 'package:flutter/material.dart';


class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});
  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(expense.title,style: Theme.of(context).textTheme.bodyLarge,),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Text(
                      "\$${expense.amount.toStringAsFixed(2)}",
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        // Text(expense.category.toString()),
                          Icon(categoryIcons[expense.category]),
                        Text(expense.formattedDate),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        
      ],
    );
  }
}

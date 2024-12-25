import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widget/chart/chart_bar.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart(this.expenses, {super.key});
  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
  // final isDarkMode=MediaQuery.of(context).platformBrightness==Brightness.dark;
    List<ExpenseBucket> expBuckets = [
      ExpenseBucket.forCategory(expenses, Category.food),
      ExpenseBucket.forCategory(expenses, Category.leisure),
      ExpenseBucket.forCategory(expenses, Category.travel),
      ExpenseBucket.forCategory(expenses, Category.work),
    ];
    double maxExpense = 0;
    for (final bucket in expBuckets) {
      if (bucket.totalExpense > maxExpense) {
        maxExpense = bucket.totalExpense;
      }
    }
    return Container(
      padding: const EdgeInsets.all(16),
      // color: isDarkMode? Theme.of(context).colorScheme.surface:Theme.of(context).colorScheme.surface,
      color: Theme.of(context).colorScheme.surfaceDim,
      child: Column(
        children: [
          Expanded(
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                for (final bucket in expBuckets)
                  ChartBar(
                    fill: maxExpense==0?0:bucket.totalExpense / maxExpense,
                    bucket: bucket,
                  )
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}

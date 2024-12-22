import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  const ChartBar({super.key, required this.fill, required this.bucket});
  final double fill;
  final ExpenseBucket bucket;
  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '\$${bucket.totalExpense.toStringAsFixed(0)}',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Flexible(
            child: FractionallySizedBox(
              widthFactor: 0.9,
              heightFactor: fill,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(25)),
                    // color: isDarkMode?Theme.of(context).colorScheme.onSurface :Theme.of(context).colorScheme.onSurface,
                    color: Theme.of(context).colorScheme.onSurface),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Icon(categoryIcons[bucket.category],
              size: 40, color: Theme.of(context).colorScheme.onSurface),
          const SizedBox(
            height: 5,
          ),
          Text(bucket.category.name, style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}

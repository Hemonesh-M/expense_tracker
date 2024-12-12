import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';
enum Category { food, travel, leisure, work }

const uuid = Uuid();
final formatter=DateFormat.yMd();
const categoryIcons={
  Category.food:Icons.lunch_dining,
  Category.leisure:Icons.movie_creation_outlined,
  Category.travel:Icons.flight_takeoff_rounded,
  Category.work:Icons.work,
};
class Expense {
  Expense(this.title, this.amount, this.date, this.category) : id = uuid.v4();
  final String id;
  final String title;
  final double amount;
  late final DateTime date;
  final Category category;
  String get formattedDate{
    return formatter.format(date);
  } 
}

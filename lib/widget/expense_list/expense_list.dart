import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widget/expense_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget{
  const ExpenseList(this._registeredExpenses,{super.key});
  final List<Expense> _registeredExpenses;
  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: 
    //     _registeredExpenses.map((item){
    //       return Text(item.title,style: const TextStyle(color: Colors.black),);
    //     }).toList()
      
    // );
    return Expanded(
      child: ListView.builder(itemCount: _registeredExpenses.length,
      itemBuilder:(cxt,index)=> ExpenseItem(_registeredExpenses[index])
       ),
    );
  }
}
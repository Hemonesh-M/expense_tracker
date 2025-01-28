import 'dart:io';

import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

// ignore: must_be_immutable
class NewExpense extends StatefulWidget {
  NewExpense(this.addExpense, {super.key});
  // final List<Expense> _registeredExpenses;
  Function addExpense;
  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  // var _enteredtitle='';    
  // void _saveTitleinput(String inputValue){
  //   _enteredtitle=inputValue;
  // }
  DateTime? _selectedDate;
  Category _selectedCategory = Category.food;
  _presentDatePicker() async {
    DateTime now = DateTime.now();
    DateTime firstDate = DateTime(now.year - 1, 1, 1);
    // DateTime lastDate = DateTime(now.year + 1, 1, 1);
    DateTime lastDate = now;
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: lastDate,
    )
        // .then((val){
        //   if(val!=null){
        //     setState(() {
        //       _selectedDate=val;
        //     });
        //   }
        // _newExpense?.date=DateTime(val!.year,val.month,val.day);
        // });
        ;
    setState(() {
      _selectedDate = pickedDate;
    });
  }

  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final keyboardSize = MediaQuery.of(context).viewInsets.bottom;
    return LayoutBuilder(
      builder: (cxt, constraints) {
        final w = constraints.maxWidth;
        final h = constraints.maxHeight;
        return newMethod(keyboardSize, context, w, h);
      },
    );
  }

  SingleChildScrollView newMethod(
      double keyboardSize, BuildContext context, double w, double h) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 16, 16, 16 + keyboardSize),
        child: Column(
          children: [
            if (w >= 600)
              Row(
                children: [
                  Flexible(
                      fit: FlexFit.tight,
                      child: Title(titleController: _titleController)),
                  const SizedBox(
                    width: 100,
                  ),
                  Expanded(child: Amount(amountController: _amountController)),
                ],
              )
            else
              Row(
                children: [
                  Expanded(
                    child: Title(titleController: _titleController),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            const SizedBox(
              height: 25,
            ),
            if (w >= 600)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  dateSelecter(),
                  const SizedBox(
                    width: 10,
                  ),
                  cat(),
                  Row(
                    children: [
                      cancelButton(context),
                      submitButton(),
                    ],
                  ),
                ],
              )
            else
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Amount(amountController: _amountController),
                  Expanded(
                    child: dateSelecter(),
                  )
                ],
              ),
            if (w < 600)
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  categoryPlusButtons(context)
                ],
              )
          ],
        ),
      ),
    );
  }

  Row categoryPlusButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        cat(),
        const Spacer(),
        cancelButton(context),
        submitButton(),
      ],
    );
  }

  ElevatedButton submitButton() {
    return ElevatedButton.icon(
      onPressed: _submitExpenseData,
      //  () {
      //   // print(_enteredtitle);
      //   // print(
      //   //     "Title:${_titleController.text} Amount:${_amountController.text}");
      //   // _newExpense?.title=_titleController.text;
      //   // _newExpense?.amount=double.parse(_amountController.text);
      //   // widget._registeredExpenses.add();
      //   widget.addExpense(Expense(
      //       _titleController.text,
      //       double.parse(_amountController.text),
      //       _selectedDate!,
      //       _selectedCategory));

      //   Navigator.pop(context);
      // },
      label: const Text("Save Expense"),
      icon: const Icon(Icons.add_box_rounded),
    );
  }

  TextButton cancelButton(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        Navigator.pop(context);
      },
      label: const Text("Cancel"),
      icon: const Icon(Icons.cancel),
    );
  }

  DropdownButton<Category> cat() {
    return DropdownButton(
      value: _selectedCategory,
      items: Category.values.map((cat) {
        return DropdownMenuItem(
          value: cat,
          child: Text(cat.name.toUpperCase()),
        );
      }).toList(),
      onChanged: (val) {
        setState(() {
          if (val != null) {
            _selectedCategory = val;
          }
        });
      },
    );
  }

  Row dateSelecter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text((_selectedDate == null)
            ? "Select Date"
            : formatter.format(_selectedDate!)),
        IconButton(
          onPressed: _presentDatePicker,
          icon: const Icon(Icons.calendar_month_outlined),
        ),
      ],
    );
  }

  void _submitExpenseData() {
    double? enteredAmount = double.tryParse(_amountController.text);
    bool amountIsInvalid = enteredAmount == null || enteredAmount <= 0;
    if (_titleController.text.trim().isEmpty ||
        amountIsInvalid ||
        _selectedDate == null) {
      // Platform.isIOS? iosDialog():
      // androidDialog();
      _showDialog();
      return;
    }
    widget.addExpense(
      Expense(_titleController.text, enteredAmount, _selectedDate!,
          _selectedCategory),
    );
    Navigator.pop(context);
  }
  void _showDialog(){
    if(Platform.isIOS){
      iosDialog();
    }else{
      androidDialog();
    }
  }
  Future<dynamic> androidDialog() {
    return showDialog(
        context: context,
        builder: (cntx) {
          return AlertDialog(
            // alignment:Alignment.topCenter ,
            title: const Text("Invalid Data"),
            content: const Text(
              "Please enter valid data",
              textAlign: TextAlign.center,
            ),
            actions: [
              Align(
                alignment: Alignment.topCenter,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("OK"),
                ),
              ),
            ],
          );
        },
      );
  }
  Future<dynamic> iosDialog() {
    return showCupertinoDialog(
        context: context,
        builder: (cntx) {
          return CupertinoAlertDialog(
            // alignment:Alignment.topCenter ,
            title: const Text("Invalid Data"),
            content: const Text(
              "Please enter valid data",
              textAlign: TextAlign.center,
            ),
            actions: [
              Align(
                alignment: Alignment.topCenter,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("OK"),
                ),
              ),
            ],
          );
        },
      );
  }
}

class Amount extends StatelessWidget {
  const Amount({
    super.key,
    required TextEditingController amountController,
  }) : _amountController = amountController;

  final TextEditingController _amountController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: TextField(
        controller: _amountController,
        maxLength: 10,
        keyboardType: TextInputType.number,
        decoration:
            const InputDecoration(label: Text("Amount"), prefixText: "\$ "),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
    required TextEditingController titleController,
  }) : _titleController = titleController;

  final TextEditingController _titleController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _titleController,
      maxLength: 50,
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
        label: Text("Title"),
      ),
    );
  }
}

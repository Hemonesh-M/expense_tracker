import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewExpense extends StatefulWidget {
  NewExpense(this.addExpense,{super.key});
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
  late DateTime _selectedDate=DateTime.now();
  _presentDatePicker() {
    DateTime now = DateTime.now();
    DateTime firstDate = DateTime(now.year - 1, 1, 1);
    // DateTime lastDate = DateTime(now.year + 1, 1, 1);
    DateTime lastDate = now;
    showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstDate,
        lastDate: lastDate,).then((val){
          if(val!=null){
            setState(() {
              _selectedDate=val;
            });
          }
          // _newExpense?.date=DateTime(val!.year,val.month,val.day);
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
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            // onChanged: _saveTitleinput,
            controller: _titleController,
            maxLength: 50,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              label: Text("Tittle"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      label: Text("Amount"), prefixText: "\$ "),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Selected Date"),
                    IconButton(
                      onPressed: _presentDatePicker,
                      icon: const Icon(Icons.calendar_month_outlined),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  // print(_enteredtitle);
                  // print(
                  //     "Title:${_titleController.text} Amount:${_amountController.text}");
                  // _newExpense?.title=_titleController.text;
                  // _newExpense?.amount=double.parse(_amountController.text);
                  // widget._registeredExpenses.add();
                  widget.addExpense(Expense(_titleController.text, double.parse(_amountController.text), _selectedDate, Category.food));
                  Navigator.pop(context);
                },
                label: const Text("ADD"),
                icon: const Icon(Icons.add_box_rounded),
              ),
              const Spacer(),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                label: const Text("Cancel"),
                icon: const Icon(Icons.cancel),
              ),
            ],
          )
        ],
      ),
    );
  }
}

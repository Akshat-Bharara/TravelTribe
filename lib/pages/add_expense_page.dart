import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:traveltribe/bloc/groups/groups_bloc.dart';
import 'package:traveltribe/models/expense.dart';
import 'package:traveltribe/models/group.dart';
import 'package:traveltribe/models/user_model.dart';
import 'package:traveltribe/router/app_router.dart';

@RoutePage()
class AddExpensePage extends StatefulWidget {
  final Group group;
  final UserModel user;
  final GroupsBloc bloc;

  const AddExpensePage(
      {super.key, required this.group, required this.user, required this.bloc});

  @override
  State<AddExpensePage> createState() => _AddExpensePageState();
}

class _AddExpensePageState extends State<AddExpensePage> {
  final _expenseNameController = TextEditingController();
  final _amountController = TextEditingController();
  final _descriptionController = TextEditingController();

  void _createExpense(BuildContext context) async {
    String expenseName = _expenseNameController.text.trim();
    num? amount = num.tryParse(_amountController.text.trim());
    String description = _descriptionController.text.trim();

    if (expenseName.isNotEmpty && amount != null) {
      widget.bloc.add(
        GroupsEvent.updateGroup(
          widget.group.copyWith(
            expenses: widget.group.expenses +
                [
                  Expense(
                    name: expenseName,
                    description: description,
                    amount: amount,
                    date: DateFormat.yMd().add_jms().format(DateTime.now()),
                    paidBy: widget.user.username,
                  ),
                ],
          ),
        ),
      );

      AutoRouter.of(context).popUntilRouteWithName(GroupDetailsRoute.name);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please fill in all fields'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Group'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  controller: _expenseNameController,
                  decoration: InputDecoration(labelText: 'Expense Name'),
                ),
                TextFormField(
                  controller: _amountController,
                  decoration: InputDecoration(labelText: 'Amount'),
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                ),
                TextFormField(
                  controller: _descriptionController,
                  maxLines: 3,
                  decoration:
                      InputDecoration(labelText: 'Description (optional)'),
                ),
                SizedBox(height: 20),
                Builder(
                    builder: (context) => ElevatedButton(
                          onPressed: () => _createExpense(context),
                          child: Text('Create Expense'),
                        )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

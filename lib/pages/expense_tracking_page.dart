import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:traveltribe/bloc/groups/groups_bloc.dart';
import 'package:traveltribe/models/expense.dart';
import 'package:traveltribe/models/group.dart';
import 'package:traveltribe/models/user_model.dart';
import 'package:traveltribe/router/app_router.dart';

@RoutePage()
class ExpenseTrackingPage extends StatefulWidget {
  final Group group;
  final UserModel user;
  final GroupsBloc bloc;

  const ExpenseTrackingPage({
    super.key,
    required this.group,
    required this.user,
    required this.bloc,
  });

  @override
  State<ExpenseTrackingPage> createState() => _ExpenseTrackingPageState();
}

class _ExpenseTrackingPageState extends State<ExpenseTrackingPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  Widget _buildExpenseList(List<Expense> expenses) {
    if (expenses.isEmpty) {
      return Center(
        child: Text('No expenses found'),
      );
    }
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) {
        final expense = expenses[index];
        if (expense.description != null && expense.description!.isNotEmpty) {
          return ExpansionTile(
            title: Text(expense.name),
            leading: Text(
              "-₹${expense.amount}",
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            subtitle: Text("${expense.paidBy} on ${expense.date}"),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(expense.description!),
              ),
            ],
          );
        }
        return ListTile(
          title: Text(expense.name),
          leading: Text(
            "-₹${expense.amount}",
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
          subtitle: Text("${expense.paidBy} on ${expense.date}"),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final totalUserExpense = widget.group.expenses
        .where((expense) => expense.paidBy == widget.user.username)
        .fold(num.parse('0'), (total, expense) => total + expense.amount);
    final totalGroupExpense = widget.group.expenses
        .fold(num.parse('0'), (total, expense) => total + expense.amount);
    final expensePerHead = totalGroupExpense / widget.group.members.length;
    final userBalance = expensePerHead - totalUserExpense;
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracking'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: 'My Expenses'),
              Tab(text: 'Others Expenses'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildExpenseList(widget.group.expenses
                    .where((expense) => expense.paidBy == widget.user.username)
                    .toList()),
                _buildExpenseList(widget.group.expenses
                    .where((expense) => expense.paidBy != widget.user.username)
                    .toList()),
              ],
            ),
          ),
          if (_tabController.index == 0)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Your balance ${userBalance.isNegative ? "-" : "+"}₹${userBalance.abs().toStringAsFixed(2)}",
                      style: TextStyle(
                          fontSize: 20,
                          color: userBalance.isNegative
                              ? Colors.red
                              : Colors.green),
                      softWrap: true,
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: () => AutoRouter.of(context).push(AddExpenseRoute(
                      group: widget.group,
                      user: widget.user,
                      bloc: widget.bloc)),
                  label: Text("Add Expense"),
                  icon: Icon(Icons.add),
                )
              ],
            ),
        ],
      ),
    );
  }
}

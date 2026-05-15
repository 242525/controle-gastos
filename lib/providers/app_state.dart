import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/repositories/expense_repository.dart';
import '../data/models/expense.dart';
import '../data/models/category.dart';

class AppState extends ChangeNotifier {
  late SharedPreferences prefs;
  late ExpenseRepository _repository;

  List<Expense> _expenses = [];
  List<Category> _categories = [];
  double _totalMonthlySpending = 0.0;

  List<Expense> get expenses => _expenses;
  List<Category> get categories => _categories;
  double get totalMonthlySpending => _totalMonthlySpending;

  Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
    _repository = ExpenseRepository(prefs);
    await loadExpenses();
    await loadCategories();
  }

  Future<void> loadExpenses() async {
    _expenses = await _repository.getAllExpenses();
    _calculateTotal();
    notifyListeners();
  }

  Future<void> loadCategories() async {
    _categories = await _repository.getAllCategories();
    notifyListeners();
  }

  void _calculateTotal() {
    _totalMonthlySpending = _expenses.fold(0, (sum, item) => sum + item.amount);
  }

  Future<void> addExpense(Expense expense) async {
    await _repository.saveExpense(expense);
    await loadExpenses();
  }

  Future<void> addCategory(Category category) async {
    await _repository.saveCategory(category);
    await loadCategories();
  }
}

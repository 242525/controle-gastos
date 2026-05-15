import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/expense.dart';
import '../models/category.dart';
import '../models/installment.dart';

class ExpenseRepository {
  final SharedPreferences prefs;

  ExpenseRepository(this.prefs);

  Future<void> saveExpense(Expense expense) async {
    List<Expense> expenses = await getAllExpenses();
    expenses.add(expense);
    await prefs.setString('expenses', jsonEncode(expenses.map((e) => e.toJson()).toList()));
  }

  Future<List<Expense>> getAllExpenses() async {
    String? data = prefs.getString('expenses');
    if (data == null) return [];
    List decoded = jsonDecode(data);
    return decoded.map((e) => Expense.fromJson(e)).toList();
  }

  Future<void> saveCategory(Category category) async {
    List<Category> categories = await getAllCategories();
    categories.add(category);
    await prefs.setString('categories', jsonEncode(categories.map((e) => e.toJson()).toList()));
  }

  Future<List<Category>> getAllCategories() async {
    String? data = prefs.getString('categories');
    if (data == null) return [];
    List decoded = jsonDecode(data);
    return decoded.map((e) => Category.fromJson(e)).toList();
  }

  Future<void> saveInstallment(Installment installment) async {
    List<Installment> installments = await getAllInstallments();
    installments.add(installment);
    await prefs.setString('installments', jsonEncode(installments.map((e) => e.toJson()).toList()));
  }

  Future<List<Installment>> getAllInstallments() async {
    String? data = prefs.getString('installments');
    if (data == null) return [];
    List decoded = jsonDecode(data);
    return decoded.map((e) => Installment.fromJson(e)).toList();
  }
}

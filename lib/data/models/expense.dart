class Expense {
  String id;
  String description;
  double amount;
  DateTime date;
  int categoryId;
  String paymentMethod;
  String type; // 'unique', 'recursive', 'installment'
  String origin; // 'manual', 'notification'

  Expense({
    required this.id,
    required this.description,
    required this.amount,
    required this.date,
    required this.categoryId,
    required this.paymentMethod,
    required this.type,
    required this.origin,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'description': description,
    'amount': amount,
    'date': date.toIso8601String(),
    'categoryId': categoryId,
    'paymentMethod': paymentMethod,
    'type': type,
    'origin': origin,
  };

  factory Expense.fromJson(Map<String, dynamic> json) => Expense(
    id: json['id'],
    description: json['description'],
    amount: (json['amount'] as num).toDouble(),
    date: DateTime.parse(json['date']),
    categoryId: json['categoryId'],
    paymentMethod: json['paymentMethod'],
    type: json['type'],
    origin: json['origin'],
  );
}

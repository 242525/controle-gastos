class Installment {
  String id;
  String groupId;
  String description;
  double installmentValue;
  int currentInstallment;
  int totalInstallments;
  DateTime startDate;

  Installment({
    required this.id,
    required this.groupId,
    required this.description,
    required this.installmentValue,
    required this.currentInstallment,
    required this.totalInstallments,
    required this.startDate,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'groupId': groupId,
    'description': description,
    'installmentValue': installmentValue,
    'currentInstallment': currentInstallment,
    'totalInstallments': totalInstallments,
    'startDate': startDate.toIso8601String(),
  };

  factory Installment.fromJson(Map<String, dynamic> json) => Installment(
    id: json['id'],
    groupId: json['groupId'],
    description: json['description'],
    installmentValue: (json['installmentValue'] as num).toDouble(),
    currentInstallment: json['currentInstallment'],
    totalInstallments: json['totalInstallments'],
    startDate: DateTime.parse(json['startDate']),
  );
}

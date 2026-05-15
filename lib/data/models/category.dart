class Category {
  String id;
  String name;
  String? icon;
  int? color;
  double? monthlyLimit;

  Category({
    required this.id,
    required this.name,
    this.icon,
    this.color,
    this.monthlyLimit,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'icon': icon,
    'color': color,
    'monthlyLimit': monthlyLimit,
  };

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json['id'],
    name: json['name'],
    icon: json['icon'],
    color: json['color'],
    monthlyLimit: json['monthlyLimit']?.toDouble(),
  );
}

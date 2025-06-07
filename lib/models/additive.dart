class Additive {
  final String code;
  final String name;
  final String type;
  final String risk;
  final String description;

  Additive({
    required this.code,
    required this.name,
    required this.type,
    required this.risk,
    required this.description,
  });

  factory Additive.fromMap(Map<String, String> map) {
    return Additive(
      code: map['code'] ?? '',
      name: map['name'] ?? '',
      type: map['type'] ?? '',
      risk: map['risk'] ?? '',
      description: map['description'] ?? '',
    );
  }
}

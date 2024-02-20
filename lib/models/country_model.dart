class CountryModel {
  final String name;
  final String dialCode;
  final String unicode;

  CountryModel({
    required this.name,
    required this.dialCode,
    required this.unicode,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
      name: json['name'],
      dialCode: json['dial_code'] ?? 'null',
      unicode: json['unicode'],
    );
  }
}

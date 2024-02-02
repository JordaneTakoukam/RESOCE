class SliderModel {
  final Map<String, String> title;
  final Map<String, String> description;
  final String image;

  SliderModel({
    required this.title,
    required this.description,
    required this.image,
  });

  factory SliderModel.fromJson(Map<String, dynamic> json) {
    return SliderModel(
      title: Map<String, String>.from(json['title']),
      description: Map<String, String>.from(json['description']),
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'image': image,
    };
  }
}

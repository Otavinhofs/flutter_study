class ExersiceModel {
  String id;
  String name;
  String howToMake;
  String training;
  String? imageUrl;

  ExersiceModel({
    required this.id,
    required this.howToMake,
    required this.name,
    required this.training,
  });

  ExersiceModel.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        training = map["training"],
        howToMake = map["howToMake"],
        imageUrl = map["imageUrl"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "training": training,
      "howToMake": howToMake,
      "imageUrl": imageUrl,
    };
  }
}

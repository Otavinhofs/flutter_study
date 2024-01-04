class FeelingModel {
  String id;
  String feeling;
  String data;

  FeelingModel({
    required this.id,
    required this.data,
    required this.feeling,
  });

  FeelingModel.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        data = map["data"],
        feeling = map["feeling"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "data": data,
      "feeling": feeling,
    };
  }
}

class WorkOutModel {
  int? id;
  String? exercise;
  int? repetition;
  String? weight;

  WorkOutModel({
    this.id,
    this.exercise,
    this.repetition,
    this.weight,
  });

  WorkOutModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    exercise = json['exercise'];
    repetition = json['repetition'];
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['exercise'] = exercise;
    data['repetition'] = repetition;
    data['weight'] = weight;
    return data;
  }
}

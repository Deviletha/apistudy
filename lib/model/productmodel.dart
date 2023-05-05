// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

import 'dart:convert';

// DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));
//
// String dataModelToJson(DataModel data) => json.encode(data.toJson());
List<Entry> productsModelFromJson(String str) =>
    List<Entry>.from(json.decode(str).map((x) => Entry.fromJson(x)));

String productsModelToJson(List<Entry> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Entry {
  String api;
  String description;
  String link;


  Entry({
    required this.api,
    required this.description,
    required this.link,

  });

  factory Entry.fromJson(Map<dynamic, dynamic> json) => Entry(
    api: json["API"],
    description: json["Description"],
    link: json["Link"],

  );

  Map<String, dynamic> toJson() => {
    "API": api,
    "Description": description,
    "Link": link,

  };
}

enum Auth { API_KEY, EMPTY }

final authValues = EnumValues({
  "apiKey": Auth.API_KEY,
  "": Auth.EMPTY
});

enum Category { ANIMALS }

final categoryValues = EnumValues({
  "Animals": Category.ANIMALS
});

enum Cors { YES, NO }

final corsValues = EnumValues({
  "no": Cors.NO,
  "yes": Cors.YES
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

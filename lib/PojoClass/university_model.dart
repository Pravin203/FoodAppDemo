import 'dart:convert';

List<University> employeeFromJson(String str) =>
    List<University>.from(json.decode(str).map((x) => University.fromJson(x)));

String employeeToJson(List<University> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class University {

  String name;
  String web_pages;

  University({
    this.name,
    this.web_pages,
  });

  factory University.fromJson(Map<String, dynamic> json) => University(
    name: json["name"],
    web_pages: json["web_pages"],

  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "web_pages": web_pages,

  };
}

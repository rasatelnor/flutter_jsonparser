import 'dart:convert';

List<Match> matchesFromJson(String str) => List<Match>.from(json.decode(str).map((x) => Match.fromJson(json.decode(str).map((x) => x.toJson()))));

// String usersToJson(Users data) => json.encode(data.toJson());
String matchesToJson(List<Match> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


class Match {
  Match({
    required this.name,
    required this.status,
  });

  String name;
  String status;

  factory Match.fromJson(Map<String, dynamic> json) => Match(
        name: json["name"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "status": status,
      };
}

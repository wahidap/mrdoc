// To parse this JSON data, do
//
//     final profile = profileFromJson(jsonString);

import 'dart:convert';

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
    String title;
    String icon;

    Profile({
        required this.title,
        required this.icon,
    });

    factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        title: json["title"],
        icon: json["icon"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "icon": icon,
    };
}

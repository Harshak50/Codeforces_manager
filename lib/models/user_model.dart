// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    User({
        this.status,
        this.result,
    });

    final String status;
    final List<Result> result;

    factory User.fromJson(Map<String, dynamic> json) => User(
        status: json["status"] == null ? null : json["status"],
        result: json["result"] == null ? null : List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "result": result == null ? null : List<dynamic>.from(result.map((x) => x.toJson())),
    };
}

class Result {
    Result({
        this.contribution,
        this.lastOnlineTimeSeconds,
        this.rating,
        this.friendOfCount,
        this.titlePhoto,
        this.rank,
        this.handle,
        this.maxRating,
        this.avatar,
        this.registrationTimeSeconds,
        this.maxRank,
    });

    final int contribution;
    final int lastOnlineTimeSeconds;
    final int rating;
    final int friendOfCount;
    final String titlePhoto;
    final String rank;
    final String handle;
    final int maxRating;
    final String avatar;
    final int registrationTimeSeconds;
    final String maxRank;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        contribution: json["contribution"] == null ? null : json["contribution"],
        lastOnlineTimeSeconds: json["lastOnlineTimeSeconds"] == null ? null : json["lastOnlineTimeSeconds"],
        rating: json["rating"] == null ? null : json["rating"],
        friendOfCount: json["friendOfCount"] == null ? null : json["friendOfCount"],
        titlePhoto: json["titlePhoto"] == null ? null : json["titlePhoto"],
        rank: json["rank"] == null ? null : json["rank"],
        handle: json["handle"] == null ? null : json["handle"],
        maxRating: json["maxRating"] == null ? null : json["maxRating"],
        avatar: json["avatar"] == null ? null : json["avatar"],
        registrationTimeSeconds: json["registrationTimeSeconds"] == null ? null : json["registrationTimeSeconds"],
        maxRank: json["maxRank"] == null ? null : json["maxRank"],
    );

    Map<String, dynamic> toJson() => {
        "contribution": contribution == null ? null : contribution,
        "lastOnlineTimeSeconds": lastOnlineTimeSeconds == null ? null : lastOnlineTimeSeconds,
        "rating": rating == null ? null : rating,
        "friendOfCount": friendOfCount == null ? null : friendOfCount,
        "titlePhoto": titlePhoto == null ? null : titlePhoto,
        "rank": rank == null ? null : rank,
        "handle": handle == null ? null : handle,
        "maxRating": maxRating == null ? null : maxRating,
        "avatar": avatar == null ? null : avatar,
        "registrationTimeSeconds": registrationTimeSeconds == null ? null : registrationTimeSeconds,
        "maxRank": maxRank == null ? null : maxRank,
    };
}

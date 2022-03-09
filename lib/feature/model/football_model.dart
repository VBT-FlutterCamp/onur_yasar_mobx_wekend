import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'football_model.g.dart';

@JsonSerializable()
class FootballModel extends INetworkModel {
  FootballModel({
    this.football,
  });

  Football? football;

  @override
  Map<String, dynamic> toJson() => {
        "football": football?.toJson(),
      };

  @override
  fromJson(Map<String, dynamic> json) {
    return _$FootballModelFromJson(json);
  }
}

class Football {
  Football({
    this.stadiums,
    this.tvchannels,
    this.teams,
    this.groups,
    this.knockout,
  });

  List<Stadium>? stadiums;
  List<Tvchannel>? tvchannels;
  List<Team>? teams;
  Groups? groups;
  Knockout? knockout;

  factory Football.fromJson(Map<String, dynamic> json) => Football(
        stadiums: List<Stadium>.from(
            json["stadiums"].map((x) => Stadium.fromJson(x))),
        tvchannels: List<Tvchannel>.from(
            json["tvchannels"].map((x) => Tvchannel.fromJson(x))),
        teams: List<Team>.from(json["teams"].map((x) => Team.fromJson(x))),
        groups: Groups.fromJson(json["groups"]),
        knockout: Knockout.fromJson(json["knockout"]),
      );

  Map<String, dynamic> toJson() => {
        "stadiums": List<dynamic>.from(stadiums?.map((x) => x.toJson()) ?? []),
        "tvchannels":
            List<dynamic>.from(tvchannels?.map((x) => x.toJson()) ?? []),
        "teams": List<dynamic>.from(teams?.map((x) => x.toJson()) ?? []),
        "groups": groups?.toJson(),
        "knockout": knockout?.toJson(),
      };
}

class Groups {
  Groups({
    this.a,
    this.b,
    this.c,
    this.d,
    this.e,
    this.f,
    this.g,
    this.h,
  });

  A? a;
  A? b;
  A? c;
  A? d;
  A? e;
  A? f;
  A? g;
  A? h;

  factory Groups.fromJson(Map<String, dynamic> json) => Groups(
        a: A.fromJson(json["a"]),
        b: A.fromJson(json["b"]),
        c: A.fromJson(json["c"]),
        d: A.fromJson(json["d"]),
        e: A.fromJson(json["e"]),
        f: A.fromJson(json["f"]),
        g: A.fromJson(json["g"]),
        h: A.fromJson(json["h"]),
      );

  Map<String, dynamic> toJson() => {
        "a": a?.toJson(),
        "b": b?.toJson(),
        "c": c?.toJson(),
        "d": d?.toJson(),
        "e": e?.toJson(),
        "f": f?.toJson(),
        "g": g?.toJson(),
        "h": h?.toJson(),
      };
}

class A {
  A({
    this.name,
    this.winner,
    this.runnerup,
    this.matches,
  });

  String? name;
  int? winner;
  int? runnerup;
  List<AMatch>? matches;

  factory A.fromJson(Map<String, dynamic> json) => A(
        name: json["name"],
        winner: json["winner"],
        runnerup: json["runnerup"],
        matches:
            List<AMatch>.from(json["matches"].map((x) => AMatch.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "winner": winner,
        "runnerup": runnerup,
        "matches": List<dynamic>.from(matches?.map((x) => x.toJson()) ?? {}),
      };
}

class AMatch {
  AMatch({
    this.name,
    this.type,
    this.homeTeam,
    this.awayTeam,
    this.homeResult,
    this.awayResult,
    this.date,
    this.stadium,
    this.channels,
    this.finished,
    this.matchday,
  });

  int? name;
  String? type;
  int? homeTeam;
  int? awayTeam;
  int? homeResult;
  int? awayResult;
  String? date;
  int? stadium;
  List<int>? channels;
  bool? finished;
  int? matchday;

  factory AMatch.fromJson(Map<String, dynamic> json) => AMatch(
        name: json["name"],
        type: json["type"],
        homeTeam: json["home_team"],
        awayTeam: json["away_team"],
        homeResult: json["home_result"],
        awayResult: json["away_result"],
        date: json["date"],
        stadium: json["stadium"],
        channels: List<int>.from(json["channels"].map((x) => x)),
        finished: json["finished"],
        matchday: json["matchday"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "home_team": homeTeam,
        "away_team": awayTeam,
        "home_result": homeResult,
        "away_result": awayResult,
        "date": date,
        "stadium": stadium,
        "channels": List<dynamic>.from(channels?.map((x) => x) ?? {}),
        "finished": finished,
        "matchday": matchday,
      };
}

class Knockout {
  Knockout({
    this.round16,
    this.round8,
    this.round4,
    this.round2Loser,
    this.round2,
  });

  Round16Class? round16;
  Round16Class? round8;
  Round2Class? round4;
  Round2Class? round2Loser;
  Round2Class? round2;

  factory Knockout.fromJson(Map<String, dynamic> json) => Knockout(
        round16: Round16Class.fromJson(json["round_16"]),
        round8: Round16Class.fromJson(json["round_8"]),
        round4: Round2Class.fromJson(json["round_4"]),
        round2Loser: Round2Class.fromJson(json["round_2_loser"]),
        round2: Round2Class.fromJson(json["round_2"]),
      );

  Map<String, dynamic> toJson() => {
        "round_16": round16?.toJson(),
        "round_8": round8?.toJson(),
        "round_4": round4?.toJson(),
        "round_2_loser": round2Loser?.toJson(),
        "round_2": round2?.toJson(),
      };
}

class Round16Class {
  Round16Class({
    this.name,
    this.matches,
  });

  String? name;
  List<Round16Match>? matches;

  factory Round16Class.fromJson(Map<String, dynamic> json) => Round16Class(
        name: json["name"],
        matches: List<Round16Match>.from(
            json["matches"].map((x) => Round16Match.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "matches": List<dynamic>.from(matches?.map((x) => x.toJson()) ?? {}),
      };
}

class Round16Match {
  Round16Match({
    this.name,
    this.type,
    this.homeTeam,
    this.awayTeam,
    this.homeResult,
    this.awayResult,
    this.homePenalty,
    this.awayPenalty,
    this.winner,
    this.date,
    this.stadium,
    this.channels,
    this.finished,
    this.matchday,
  });

  int? name;
  String? type;
  int? homeTeam;
  int? awayTeam;
  int? homeResult;
  int? awayResult;
  int? homePenalty;
  int? awayPenalty;
  int? winner;
  String? date;
  int? stadium;
  List<int>? channels;
  bool? finished;
  int? matchday;

  factory Round16Match.fromJson(Map<String, dynamic> json) => Round16Match(
        name: json["name"],
        type: json["type"],
        homeTeam: json["home_team"],
        awayTeam: json["away_team"],
        homeResult: json["home_result"],
        awayResult: json["away_result"],
        homePenalty: json["home_penalty"],
        awayPenalty: json["away_penalty"],
        winner: json["winner"],
        date: json["date"],
        stadium: json["stadium"],
        channels: List<int>.from(json["channels"].map((x) => x)),
        finished: json["finished"],
        matchday: json["matchday"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "home_team": homeTeam,
        "away_team": awayTeam,
        "home_result": homeResult,
        "away_result": awayResult,
        "home_penalty": homePenalty,
        "away_penalty": awayPenalty,
        "winner": winner,
        "date": date,
        "stadium": stadium,
        "channels": List<dynamic>.from(channels?.map((x) => x) ?? {}),
        "finished": finished,
        "matchday": matchday,
      };
}

class Round2Class {
  Round2Class({
    this.name,
    this.matches,
  });

  String? name;
  List<Round2Match>? matches;

  factory Round2Class.fromJson(Map<String, dynamic> json) => Round2Class(
        name: json["name"],
        matches: List<Round2Match>.from(
            json["matches"].map((x) => Round2Match.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "matches": List<dynamic>.from(matches?.map((x) => x.toJson()) ?? {}),
      };
}

class Round2Match {
  Round2Match({
    this.name,
    this.type,
    this.homeTeam,
    this.awayTeam,
    this.homeResult,
    this.awayResult,
    this.homePenalty,
    this.awayPenalty,
    this.winner,
    this.date,
    this.stadium,
    this.channels,
    this.finished,
    this.matchday,
  });

  int? name;
  String? type;
  int? homeTeam;
  int? awayTeam;
  int? homeResult;
  int? awayResult;
  dynamic? homePenalty;
  dynamic? awayPenalty;
  int? winner;
  String? date;
  int? stadium;
  List<int>? channels;
  bool? finished;
  int? matchday;

  factory Round2Match.fromJson(Map<String, dynamic> json) => Round2Match(
        name: json["name"],
        type: json["type"],
        homeTeam: json["home_team"],
        awayTeam: json["away_team"],
        homeResult: json["home_result"],
        awayResult: json["away_result"],
        homePenalty: json["home_penalty"],
        awayPenalty: json["away_penalty"],
        winner: json["winner"],
        date: json["date"],
        stadium: json["stadium"],
        channels: List<int>.from(json["channels"].map((x) => x)),
        finished: json["finished"],
        matchday: json["matchday"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "home_team": homeTeam,
        "away_team": awayTeam,
        "home_result": homeResult,
        "away_result": awayResult,
        "home_penalty": homePenalty,
        "away_penalty": awayPenalty,
        "winner": winner,
        "date": date,
        "stadium": stadium,
        "channels": List<dynamic>.from(channels?.map((x) => x) ?? {}),
        "finished": finished,
        "matchday": matchday,
      };
}

class Stadium {
  Stadium({
    this.id,
    this.name,
    this.city,
    this.lat,
    this.lng,
    this.image,
  });

  int? id;
  String? name;
  String? city;
  double? lat;
  double? lng;
  String? image;

  factory Stadium.fromJson(Map<String, dynamic> json) => Stadium(
        id: json["id"],
        name: json["name"],
        city: json["city"],
        lat: json["lat"].toDouble(),
        lng: json["lng"].toDouble(),
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "city": city,
        "lat": lat,
        "lng": lng,
        "image": image,
      };
}

class Team {
  Team({
    this.id,
    this.name,
    this.fifaCode,
    this.iso2,
    this.flag,
    this.emoji,
    this.emojiString,
  });

  int? id;
  String? name;
  String? fifaCode;
  String? iso2;
  String? flag;
  String? emoji;
  String? emojiString;

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        id: json["id"],
        name: json["name"],
        fifaCode: json["fifaCode"],
        iso2: json["iso2"],
        flag: json["flag"],
        emoji: json["emoji"],
        emojiString: json["emojiString"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "fifaCode": fifaCode,
        "iso2": iso2,
        "flag": flag,
        "emoji": emoji,
        "emojiString": emojiString,
      };
}

class Tvchannel {
  Tvchannel({
    this.id,
    this.name,
    this.icon,
    this.country,
    this.iso2,
    this.lang,
  });

  int? id;
  String? name;
  String? icon;
  String? country;
  String? iso2;
  List<String>? lang;

  factory Tvchannel.fromJson(Map<String, dynamic> json) => Tvchannel(
        id: json["id"],
        name: json["name"],
        icon: json["icon"],
        country: json["country"],
        iso2: json["iso2"],
        lang: List<String>.from(json["lang"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "icon": icon,
        "country": country,
        "iso2": iso2,
        "lang": List<dynamic>.from(lang?.map((x) => x) ?? {}),
      };
}

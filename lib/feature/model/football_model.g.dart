// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'football_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FootballModel _$FootballModelFromJson(Map<String, dynamic> json) =>
    FootballModel(
      football: json['football'] == null
          ? null
          : Football.fromJson(json['football'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FootballModelToJson(FootballModel instance) =>
    <String, dynamic>{
      'football': instance.football,
    };

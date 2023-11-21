// To parse this JSON data, do
//
//     final jobs = jobsFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'jobs_model.freezed.dart';
part 'jobs_model.g.dart';

Jobs jobsFromJson(String str) => Jobs.fromJson(json.decode(str));

String jobsToJson(Jobs data) => json.encode(data.toJson());

@freezed
class Jobs with _$Jobs {
    const factory Jobs({
        required List<Listing> listings,
    }) = _Jobs;

    factory Jobs.fromJson(Map<String, dynamic> json) => _$JobsFromJson(json);
}

@freezed
class Listing with _$Listing {
    const factory Listing({
        required String category,
        required String advertiserCompany,
        required String product,
        required Location location,
        required int salary,
    }) = _Listing;

    factory Listing.fromJson(Map<String, dynamic> json) => _$ListingFromJson(json);
}

enum Location {
    ANKARA,
    ANTALYA,
    BURSA,
    ISTANBUL,
    IZMIR
}

final locationValues = EnumValues({
    "Ankara": Location.ANKARA,
    "Antalya": Location.ANTALYA,
    "Bursa": Location.BURSA,
    "Istanbul": Location.ISTANBUL,
    "Izmir": Location.IZMIR
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

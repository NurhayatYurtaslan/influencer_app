// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobsImpl _$$JobsImplFromJson(Map<String, dynamic> json) => _$JobsImpl(
      listings: (json['listings'] as List<dynamic>)
          .map((e) => Listing.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$JobsImplToJson(_$JobsImpl instance) =>
    <String, dynamic>{
      'listings': instance.listings,
    };

_$ListingImpl _$$ListingImplFromJson(Map<String, dynamic> json) =>
    _$ListingImpl(
      category: json['category'] as String,
      advertiserCompany: json['advertiserCompany'] as String,
      product: json['product'] as String,
      location: $enumDecode(_$LocationEnumMap, json['location']),
      salary: json['salary'] as int,
    );

Map<String, dynamic> _$$ListingImplToJson(_$ListingImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'advertiserCompany': instance.advertiserCompany,
      'product': instance.product,
      'location': _$LocationEnumMap[instance.location]!,
      'salary': instance.salary,
    };

const _$LocationEnumMap = {
  Location.ANKARA: 'ANKARA',
  Location.ANTALYA: 'ANTALYA',
  Location.BURSA: 'BURSA',
  Location.ISTANBUL: 'ISTANBUL',
  Location.IZMIR: 'IZMIR',
};

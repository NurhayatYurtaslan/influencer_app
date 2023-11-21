// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jobs_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Jobs _$JobsFromJson(Map<String, dynamic> json) {
  return _Jobs.fromJson(json);
}

/// @nodoc
mixin _$Jobs {
  List<Listing> get listings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobsCopyWith<Jobs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobsCopyWith<$Res> {
  factory $JobsCopyWith(Jobs value, $Res Function(Jobs) then) =
      _$JobsCopyWithImpl<$Res, Jobs>;
  @useResult
  $Res call({List<Listing> listings});
}

/// @nodoc
class _$JobsCopyWithImpl<$Res, $Val extends Jobs>
    implements $JobsCopyWith<$Res> {
  _$JobsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listings = null,
  }) {
    return _then(_value.copyWith(
      listings: null == listings
          ? _value.listings
          : listings // ignore: cast_nullable_to_non_nullable
              as List<Listing>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobsImplCopyWith<$Res> implements $JobsCopyWith<$Res> {
  factory _$$JobsImplCopyWith(
          _$JobsImpl value, $Res Function(_$JobsImpl) then) =
      __$$JobsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Listing> listings});
}

/// @nodoc
class __$$JobsImplCopyWithImpl<$Res>
    extends _$JobsCopyWithImpl<$Res, _$JobsImpl>
    implements _$$JobsImplCopyWith<$Res> {
  __$$JobsImplCopyWithImpl(_$JobsImpl _value, $Res Function(_$JobsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listings = null,
  }) {
    return _then(_$JobsImpl(
      listings: null == listings
          ? _value._listings
          : listings // ignore: cast_nullable_to_non_nullable
              as List<Listing>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobsImpl implements _Jobs {
  const _$JobsImpl({required final List<Listing> listings})
      : _listings = listings;

  factory _$JobsImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobsImplFromJson(json);

  final List<Listing> _listings;
  @override
  List<Listing> get listings {
    if (_listings is EqualUnmodifiableListView) return _listings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listings);
  }

  @override
  String toString() {
    return 'Jobs(listings: $listings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobsImpl &&
            const DeepCollectionEquality().equals(other._listings, _listings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobsImplCopyWith<_$JobsImpl> get copyWith =>
      __$$JobsImplCopyWithImpl<_$JobsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobsImplToJson(
      this,
    );
  }
}

abstract class _Jobs implements Jobs {
  const factory _Jobs({required final List<Listing> listings}) = _$JobsImpl;

  factory _Jobs.fromJson(Map<String, dynamic> json) = _$JobsImpl.fromJson;

  @override
  List<Listing> get listings;
  @override
  @JsonKey(ignore: true)
  _$$JobsImplCopyWith<_$JobsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Listing _$ListingFromJson(Map<String, dynamic> json) {
  return _Listing.fromJson(json);
}

/// @nodoc
mixin _$Listing {
  String get category => throw _privateConstructorUsedError;
  String get advertiserCompany => throw _privateConstructorUsedError;
  String get product => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  int get salary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListingCopyWith<Listing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingCopyWith<$Res> {
  factory $ListingCopyWith(Listing value, $Res Function(Listing) then) =
      _$ListingCopyWithImpl<$Res, Listing>;
  @useResult
  $Res call(
      {String category,
      String advertiserCompany,
      String product,
      Location location,
      int salary});
}

/// @nodoc
class _$ListingCopyWithImpl<$Res, $Val extends Listing>
    implements $ListingCopyWith<$Res> {
  _$ListingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? advertiserCompany = null,
    Object? product = null,
    Object? location = null,
    Object? salary = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      advertiserCompany: null == advertiserCompany
          ? _value.advertiserCompany
          : advertiserCompany // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      salary: null == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListingImplCopyWith<$Res> implements $ListingCopyWith<$Res> {
  factory _$$ListingImplCopyWith(
          _$ListingImpl value, $Res Function(_$ListingImpl) then) =
      __$$ListingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String category,
      String advertiserCompany,
      String product,
      Location location,
      int salary});
}

/// @nodoc
class __$$ListingImplCopyWithImpl<$Res>
    extends _$ListingCopyWithImpl<$Res, _$ListingImpl>
    implements _$$ListingImplCopyWith<$Res> {
  __$$ListingImplCopyWithImpl(
      _$ListingImpl _value, $Res Function(_$ListingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? advertiserCompany = null,
    Object? product = null,
    Object? location = null,
    Object? salary = null,
  }) {
    return _then(_$ListingImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      advertiserCompany: null == advertiserCompany
          ? _value.advertiserCompany
          : advertiserCompany // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      salary: null == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListingImpl implements _Listing {
  const _$ListingImpl(
      {required this.category,
      required this.advertiserCompany,
      required this.product,
      required this.location,
      required this.salary});

  factory _$ListingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListingImplFromJson(json);

  @override
  final String category;
  @override
  final String advertiserCompany;
  @override
  final String product;
  @override
  final Location location;
  @override
  final int salary;

  @override
  String toString() {
    return 'Listing(category: $category, advertiserCompany: $advertiserCompany, product: $product, location: $location, salary: $salary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListingImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.advertiserCompany, advertiserCompany) ||
                other.advertiserCompany == advertiserCompany) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.salary, salary) || other.salary == salary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, category, advertiserCompany, product, location, salary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListingImplCopyWith<_$ListingImpl> get copyWith =>
      __$$ListingImplCopyWithImpl<_$ListingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListingImplToJson(
      this,
    );
  }
}

abstract class _Listing implements Listing {
  const factory _Listing(
      {required final String category,
      required final String advertiserCompany,
      required final String product,
      required final Location location,
      required final int salary}) = _$ListingImpl;

  factory _Listing.fromJson(Map<String, dynamic> json) = _$ListingImpl.fromJson;

  @override
  String get category;
  @override
  String get advertiserCompany;
  @override
  String get product;
  @override
  Location get location;
  @override
  int get salary;
  @override
  @JsonKey(ignore: true)
  _$$ListingImplCopyWith<_$ListingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OembedProvider _$OembedProviderFromJson(Map<String, dynamic> json) {
  return _OembedProvider.fromJson(json);
}

/// @nodoc
mixin _$OembedProvider {
  @JsonKey(name: 'provider_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'provider_url')
  String? get url => throw _privateConstructorUsedError;
  List<OembedEndpoint> get endpoints => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OembedProviderCopyWith<OembedProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OembedProviderCopyWith<$Res> {
  factory $OembedProviderCopyWith(
          OembedProvider value, $Res Function(OembedProvider) then) =
      _$OembedProviderCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'provider_name') String name,
      @JsonKey(name: 'provider_url') String? url,
      List<OembedEndpoint> endpoints});
}

/// @nodoc
class _$OembedProviderCopyWithImpl<$Res>
    implements $OembedProviderCopyWith<$Res> {
  _$OembedProviderCopyWithImpl(this._value, this._then);

  final OembedProvider _value;
  // ignore: unused_field
  final $Res Function(OembedProvider) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? endpoints = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      endpoints: endpoints == freezed
          ? _value.endpoints
          : endpoints // ignore: cast_nullable_to_non_nullable
              as List<OembedEndpoint>,
    ));
  }
}

/// @nodoc
abstract class _$OembedProviderCopyWith<$Res>
    implements $OembedProviderCopyWith<$Res> {
  factory _$OembedProviderCopyWith(
          _OembedProvider value, $Res Function(_OembedProvider) then) =
      __$OembedProviderCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'provider_name') String name,
      @JsonKey(name: 'provider_url') String? url,
      List<OembedEndpoint> endpoints});
}

/// @nodoc
class __$OembedProviderCopyWithImpl<$Res>
    extends _$OembedProviderCopyWithImpl<$Res>
    implements _$OembedProviderCopyWith<$Res> {
  __$OembedProviderCopyWithImpl(
      _OembedProvider _value, $Res Function(_OembedProvider) _then)
      : super(_value, (v) => _then(v as _OembedProvider));

  @override
  _OembedProvider get _value => super._value as _OembedProvider;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? endpoints = freezed,
  }) {
    return _then(_OembedProvider(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      endpoints: endpoints == freezed
          ? _value.endpoints
          : endpoints // ignore: cast_nullable_to_non_nullable
              as List<OembedEndpoint>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OembedProvider implements _OembedProvider {
  _$_OembedProvider(
      {@JsonKey(name: 'provider_name') required this.name,
      @JsonKey(name: 'provider_url') this.url,
      final List<OembedEndpoint> endpoints = const <OembedEndpoint>[]})
      : _endpoints = endpoints;

  factory _$_OembedProvider.fromJson(Map<String, dynamic> json) =>
      _$$_OembedProviderFromJson(json);

  @override
  @JsonKey(name: 'provider_name')
  final String name;
  @override
  @JsonKey(name: 'provider_url')
  final String? url;
  final List<OembedEndpoint> _endpoints;
  @override
  @JsonKey()
  List<OembedEndpoint> get endpoints {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_endpoints);
  }

  @override
  String toString() {
    return 'OembedProvider(name: $name, url: $url, endpoints: $endpoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OembedProvider &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.endpoints, endpoints));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(endpoints));

  @JsonKey(ignore: true)
  @override
  _$OembedProviderCopyWith<_OembedProvider> get copyWith =>
      __$OembedProviderCopyWithImpl<_OembedProvider>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OembedProviderToJson(this);
  }
}

abstract class _OembedProvider implements OembedProvider {
  factory _OembedProvider(
      {@JsonKey(name: 'provider_name') required final String name,
      @JsonKey(name: 'provider_url') final String? url,
      final List<OembedEndpoint> endpoints}) = _$_OembedProvider;

  factory _OembedProvider.fromJson(Map<String, dynamic> json) =
      _$_OembedProvider.fromJson;

  @override
  @JsonKey(name: 'provider_name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'provider_url')
  String? get url => throw _privateConstructorUsedError;
  @override
  List<OembedEndpoint> get endpoints => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OembedProviderCopyWith<_OembedProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

OembedEndpoint _$OembedEndpointFromJson(Map<String, dynamic> json) {
  return _OembedEndpoint.fromJson(json);
}

/// @nodoc
mixin _$OembedEndpoint {
  List<String> get schemes => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OembedEndpointCopyWith<OembedEndpoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OembedEndpointCopyWith<$Res> {
  factory $OembedEndpointCopyWith(
          OembedEndpoint value, $Res Function(OembedEndpoint) then) =
      _$OembedEndpointCopyWithImpl<$Res>;
  $Res call({List<String> schemes, String url});
}

/// @nodoc
class _$OembedEndpointCopyWithImpl<$Res>
    implements $OembedEndpointCopyWith<$Res> {
  _$OembedEndpointCopyWithImpl(this._value, this._then);

  final OembedEndpoint _value;
  // ignore: unused_field
  final $Res Function(OembedEndpoint) _then;

  @override
  $Res call({
    Object? schemes = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      schemes: schemes == freezed
          ? _value.schemes
          : schemes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OembedEndpointCopyWith<$Res>
    implements $OembedEndpointCopyWith<$Res> {
  factory _$OembedEndpointCopyWith(
          _OembedEndpoint value, $Res Function(_OembedEndpoint) then) =
      __$OembedEndpointCopyWithImpl<$Res>;
  @override
  $Res call({List<String> schemes, String url});
}

/// @nodoc
class __$OembedEndpointCopyWithImpl<$Res>
    extends _$OembedEndpointCopyWithImpl<$Res>
    implements _$OembedEndpointCopyWith<$Res> {
  __$OembedEndpointCopyWithImpl(
      _OembedEndpoint _value, $Res Function(_OembedEndpoint) _then)
      : super(_value, (v) => _then(v as _OembedEndpoint));

  @override
  _OembedEndpoint get _value => super._value as _OembedEndpoint;

  @override
  $Res call({
    Object? schemes = freezed,
    Object? url = freezed,
  }) {
    return _then(_OembedEndpoint(
      schemes: schemes == freezed
          ? _value.schemes
          : schemes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OembedEndpoint implements _OembedEndpoint {
  _$_OembedEndpoint(
      {final List<String> schemes = const <String>[], required this.url})
      : _schemes = schemes;

  factory _$_OembedEndpoint.fromJson(Map<String, dynamic> json) =>
      _$$_OembedEndpointFromJson(json);

  final List<String> _schemes;
  @override
  @JsonKey()
  List<String> get schemes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schemes);
  }

  @override
  final String url;

  @override
  String toString() {
    return 'OembedEndpoint(schemes: $schemes, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OembedEndpoint &&
            const DeepCollectionEquality().equals(other.schemes, schemes) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(schemes),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$OembedEndpointCopyWith<_OembedEndpoint> get copyWith =>
      __$OembedEndpointCopyWithImpl<_OembedEndpoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OembedEndpointToJson(this);
  }
}

abstract class _OembedEndpoint implements OembedEndpoint {
  factory _OembedEndpoint(
      {final List<String> schemes,
      required final String url}) = _$_OembedEndpoint;

  factory _OembedEndpoint.fromJson(Map<String, dynamic> json) =
      _$_OembedEndpoint.fromJson;

  @override
  List<String> get schemes => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OembedEndpointCopyWith<_OembedEndpoint> get copyWith =>
      throw _privateConstructorUsedError;
}

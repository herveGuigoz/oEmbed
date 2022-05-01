// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OembedProvider _$$_OembedProviderFromJson(Map<String, dynamic> json) =>
    _$_OembedProvider(
      name: json['provider_name'] as String,
      url: json['provider_url'] as String?,
      endpoints: (json['endpoints'] as List<dynamic>?)
              ?.map((e) => OembedEndpoint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <OembedEndpoint>[],
    );

Map<String, dynamic> _$$_OembedProviderToJson(_$_OembedProvider instance) =>
    <String, dynamic>{
      'provider_name': instance.name,
      'provider_url': instance.url,
      'endpoints': instance.endpoints,
    };

_$_OembedEndpoint _$$_OembedEndpointFromJson(Map<String, dynamic> json) =>
    _$_OembedEndpoint(
      schemes: (json['schemes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_OembedEndpointToJson(_$_OembedEndpoint instance) =>
    <String, dynamic>{
      'schemes': instance.schemes,
      'url': instance.url,
    };

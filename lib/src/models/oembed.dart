// ignore_for_file: invalid_annotation_target

part of 'models.dart';

@freezed
class OembedProvider with _$OembedProvider {
  factory OembedProvider({
    @JsonKey(name: 'provider_name') required String name,
    @JsonKey(name: 'provider_url') String? url,
    @Default(<OembedEndpoint>[]) List<OembedEndpoint> endpoints,
  }) = _OembedProvider;

  factory OembedProvider.fromJson(Map<String, dynamic> json) =>
      _$OembedProviderFromJson(json);
}

@freezed
class OembedEndpoint with _$OembedEndpoint {
  factory OembedEndpoint({
    @Default(<String>[]) List<String> schemes,
    required String url,
  }) = _OembedEndpoint;

  factory OembedEndpoint.fromJson(Map<String, dynamic> json) =>
      _$OembedEndpointFromJson(json);
}

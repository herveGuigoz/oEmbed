import 'dart:convert';

import 'package:http/http.dart';
import 'package:oembed/src/models/models.dart';
import 'package:oembed/src/services/oembed_service.dart';
import 'package:riverpod/riverpod.dart';

final _$providerManager = Provider(
  (ref) => ProvidersManager._(ref.read($oembedShemes)),
);

final $oembedInformations = FutureProvider.family<Json, String>(
  (ref, url) async {
    final manager = ref.read(_$providerManager);
    return jsonDecode(await manager.getOembedInformations(url)) as Json;
  },
);

class ProvidersManager {
  const ProvidersManager._(this.schemes);

  final OembedSchemes schemes;

  Future<String> getOembedInformations(String url) async {
    final endpoint = await findProviderByURL(url);

    final response = await requestExternalApi(Uri.parse('$endpoint?url=$url'));

    return response.body;
  }

  Future<String> findProviderByURL(String url) async {
    for (final scheme in schemes.entries) {
      if (RegExp(scheme.key).hasMatch(url)) return scheme.value;
    }

    throw OembedException.notFound(url);
  }

  Future<Response> requestExternalApi(Uri uri) async {
    final http = Client();
    final response = await http.get(
      uri,
      headers: {'Accept': 'application/json'},
    );
    http.close();
    return response;
  }
}

abstract class OembedException implements Exception {
  factory OembedException.notFound(
    String url,
  ) = ProviderNotFound;

  factory OembedException.external(
    Response response,
  ) = ExternalProviderException;

  Map<String, Object> get body;
}

class ProviderNotFound implements OembedException {
  ProviderNotFound(this.url);

  final String url;

  @override
  Map<String, Object> get body {
    return {'error': 'Provider not found for $url.'};
  }
}

class ExternalProviderException implements OembedException {
  ExternalProviderException(this.response);

  final Response response;

  @override
  Map<String, Object> get body {
    return {
      'error': 'Invalid response',
      'statusCode': response.statusCode,
      'body': response.body,
    };
  }
}

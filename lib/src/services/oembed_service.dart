import 'dart:convert';
import 'dart:io';

import 'package:oembed/src/models/models.dart';
import 'package:riverpod/riverpod.dart';

typedef OembedSchemes = Map<String, String>;

final $oembedShemes = Provider<OembedSchemes>((ref) {
  final providers = const OembedService._().loadProviders();
  return {
    for (final provider in providers) ...{
      for (final endpoint in provider.endpoints) ...{
        for (final scheme in endpoint.schemes) scheme.toRegex(): endpoint.url,
      }
    }
  };
});

class OembedService {
  const OembedService._();

  static String path = './node_modules/oembed-providers/providers.json';

  List<OembedProvider> loadProviders() {
    try {
      final json = providersFile.readAsStringSync();
      return [
        for (final map in jsonDecode(json) as List<dynamic>)
          OembedProvider.fromJson(map as Map<String, dynamic>)
      ];
    } catch (_) {
      throw ProvidersInternaError();
    }
  }

  File get providersFile {
    final directory = Directory('.');
    for (final dir in directory.listSync()) {
      if (dir.path.endsWith('node_modules')) {
        return File('${dir.path}/oembed-providers/providers.json');
      }
    }
    throw ProvidersInternaError();
  }
}

extension on String {
  String toRegex() {
    return replaceAll(RegExp('/'), r'\/').replaceAll(RegExp(r'\*'), '.*');
  }
}

class ProvidersInternaError implements Exception {
  @override
  String toString() => 'Could not load providers file';
}

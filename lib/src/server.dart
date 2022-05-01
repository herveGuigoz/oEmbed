import 'dart:developer';
import 'dart:io';

import 'package:oembed/src/controllers/main_controller.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

class OembedServer {
  final _container = ProviderContainer();
  final _pipeline = const Pipeline();

  MainController get _mainController => _container.read($mainController);

  Future<void> listen() async {
    // Configure routes.
    final _router = Router()..get('/oembed', _mainController.index);

    // Use any available host or container IP (usually `0.0.0.0`).
    final ip = InternetAddress.anyIPv4;

    // Configure a pipeline that logs requests.
    final handler = _pipeline.addMiddleware(logRequests()).addHandler(_router);

    // For running in containers, we respect the PORT environment variable.
    final port = int.parse(Platform.environment['PORT'] ?? '8080');
    final server = await serve(handler, ip, port);
    log('Server listening on port ${server.port}', name: 'OembedServer');
  }
}

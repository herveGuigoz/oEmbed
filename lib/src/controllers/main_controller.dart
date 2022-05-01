import 'package:oembed/src/controllers/abstract_controller.dart';
import 'package:oembed/src/manager/oembed_manager.dart';
import 'package:oembed/src/models/models.dart';
import 'package:oembed/src/services/oembed_service.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shelf/shelf.dart';

final $mainController = Provider((ref) => MainController._(ref.read));

class MainController extends Controller {
  const MainController._(Reader read) : super(read);

  Future<Response> index(Request request) async {
    final params = request.url.queryParameters;

    if (!params.containsKey('url')) {
      return ApiResponse.badRequest(
        body: <String, String>{'error': 'url is missing'},
      );
    }

    final url = params['url']!;

    try {
      final metadata = await read($oembedInformations(url).future);
      return ApiResponse.ok(body: metadata);
    } on OembedException catch (exception) {
      return ApiResponse.notFound(body: exception.body);
    } on ProvidersInternaError catch (_) {
      return Response.internalServerError();
    } catch (_) {
      return ApiResponse.notFound(
        body: <String, String>{
          'error': 'Could not resolve informations for url $url',
        },
      );
    }
  }
}

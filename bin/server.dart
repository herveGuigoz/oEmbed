import 'package:oembed/oembed.dart';

Future<void> main(List<String> args) async {
  final server = OembedServer();
  return server.listen();
}

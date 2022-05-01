import 'package:riverpod/riverpod.dart';

abstract class Controller {
  const Controller(this.read);

  final Reader read;
}

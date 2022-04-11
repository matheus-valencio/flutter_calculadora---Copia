import 'package:function_tree/function_tree.dart';

class Calcular {
  late String x;

  num inter() {
    final y = x.interpret();
    return y;
  }
}

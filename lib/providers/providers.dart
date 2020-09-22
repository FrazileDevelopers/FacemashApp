import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'fetchcat.dart';

class Providers {
  static List<SingleChildWidget> providers() => [
        ChangeNotifierProvider<Fetchcat>(
          create: (_) => Fetchcat(),
        ),
      ];
}

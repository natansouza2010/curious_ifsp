import 'package:curious_ifsp/app/modules/config/presenter/pages/config_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ConfigModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const ConfigPage()),
      ];
}

import 'package:curious_ifsp/app/modules/chat/chat_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        RedirectRoute('/', to: '/chat'),
        ModuleRoute('/chat', module: ChatModule())
      ];
}

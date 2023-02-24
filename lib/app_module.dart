import 'package:curious_ifsp/app/modules/auth/presenter/login_module.dart';
import 'package:curious_ifsp/app/modules/chat/chat_module.dart';
import 'package:curious_ifsp/app/modules/config/config_module.dart';
import 'package:curious_ifsp/app/modules/room/room_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        RedirectRoute('/', to: '/login'),
        ModuleRoute('/chat', module: ChatModule()),
        ModuleRoute('/config', module: ConfigModule()),
        ModuleRoute('/login', module: LoginModule()),
        ModuleRoute('/room', module: RoomModule()),
      ];
}

import 'package:curious_ifsp/app/modules/room/presenter/room_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RoomModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const RoomPage()),
      ];
}

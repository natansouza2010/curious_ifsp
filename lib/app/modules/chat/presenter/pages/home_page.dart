import 'package:curious_ifsp/app/modules/chat/presenter/pages/widgets/test.dart';
import 'package:curious_ifsp/app/shared/widgets/drawer_global.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerGlobal(),
      body: TestMe(),
      appBar: AppBar(
        title: const Text("CURIOUSIFSP - #807"),
      ),
    );
  }
}

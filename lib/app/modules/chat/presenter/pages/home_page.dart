import 'package:curious_ifsp/app/modules/chat/presenter/pages/widgets/drawer_home.dart';
import 'package:curious_ifsp/app/modules/chat/presenter/pages/widgets/test.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerHome(),
      body: TestMe(),
      appBar: AppBar(
        title: const Text("CuriousIfsp"),
        centerTitle: true,
      ),
    );
  }
}

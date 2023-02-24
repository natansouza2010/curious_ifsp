import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DrawerGlobal extends StatelessWidget {
  const DrawerGlobal({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Drawer(
      backgroundColor: theme.colorScheme.shadow,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimaryContainer,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(color: theme.colorScheme.onPrimary),
            ),
          ),
          ListTile(
            title: const Text(
              'Configurações ',
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/config');
            },
          ),
          ListTile(
            title: const Text('Sair'),
            onTap: () {
              Modular.to.navigate("/login");
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}

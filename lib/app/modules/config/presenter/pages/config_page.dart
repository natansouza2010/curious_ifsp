import 'package:flutter/material.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({super.key});

  @override
  State<ConfigPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    ThemeMode? themeMode = ThemeMode.light;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              'Tema',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Light'),
              leading: Radio<ThemeMode>(
                value: ThemeMode.light,
                groupValue: themeMode,
                onChanged: (ThemeMode? value) {
                  setState(() {
                    themeMode = value;
                  });
                },
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Dark'),
              leading: Radio<ThemeMode>(
                value: ThemeMode.dark,
                groupValue: themeMode,
                onChanged: (ThemeMode? value) {
                  setState(() {
                    themeMode = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

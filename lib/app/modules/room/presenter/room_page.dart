import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({super.key});

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    ThemeMode? themeMode = ThemeMode.light;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Olá, Fulano ! ',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'OpenSans',
                fontSize: 24.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Curious Ifsp',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  alignment: Alignment.centerLeft,
                  height: 60.0,
                  child: const TextField(
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14.0),
                      prefixIcon: Icon(
                        Icons.message_rounded,
                        color: Colors.white,
                      ),
                      hintText: 'Digite o código da sala ',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Modular.to.navigate('/chat'),
                    child: Text(
                      'ENTRAR NA SALA',
                      style: TextStyle(
                        color: theme.colorScheme.onPrimaryContainer,
                        letterSpacing: 1.5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

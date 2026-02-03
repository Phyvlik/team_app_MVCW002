import 'package:flutter/material.dart';

// The main entry point of the app
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData _theme = ThemeData(
  useMaterial3: true,
  colorSchemeSeed: Colors.blue,
);

  void _setTheme(ThemeData theme) {
    setState(() {
      _theme = theme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Team Challenge',
      theme: _theme,
      home: HomePage(onThemeChanged: _setTheme),
    );
  }
}


class HomePage extends StatelessWidget {
  final Function(ThemeData) onThemeChanged;

  HomePage({required this.onThemeChanged});

  final ThemeData blueTheme = ThemeData(primarySwatch: Colors.blue);
  final ThemeData purpleTheme = ThemeData(primarySwatch: Colors.purple);
  final ThemeData greenTheme = ThemeData(primarySwatch: Colors.green);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome to Class')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ================= THEME BUTTONS =================
            Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    ElevatedButton(
      onPressed: () => onThemeChanged(
  ThemeData(useMaterial3: false, colorSchemeSeed: Colors.blue),
),

      child: const Text('Blue'),
    ),
    const SizedBox(width: 8),
    ElevatedButton(
      onPressed: () => onThemeChanged(
  ThemeData(useMaterial3: false, colorSchemeSeed: Colors.purple),
),

      child: const Text('Purple'),
    ),
    const SizedBox(width: 8),
    ElevatedButton(
      onPressed: () => onThemeChanged(
  ThemeData(useMaterial3: false, colorSchemeSeed: Colors.green),
),

      child: const Text('Green'),
    ),
  ],
),

const SizedBox(height: 16),

            // ================= PROFILE CARD =================
            Card(
              elevation: 3,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: const [
                    CircleAvatar(
                      radius: 28,
                      child: Icon(Icons.person, size: 28),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Vivek Patel',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Computer Science • Georgia State University',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // ================= EXISTING CONTENT =================
            const Text(
              'Hello, Flutter!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'This is my first modification.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Button Clicked!');
              },
              child: const Text('Click Me'),
            ),

            const SizedBox(height: 12),
            const Text(
              'Created by: Vivek Patel',
              style: TextStyle(
                fontSize: 12,
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

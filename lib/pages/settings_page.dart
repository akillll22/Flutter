import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDark;

  const SettingsPage({required this.toggleTheme, required this.isDark});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pengaturan')),
      body: Center(
        child: SwitchListTile(
          title: Text('Mode Gelap'),
          value: isDark,
          onChanged: (value) => toggleTheme(),
        ),
      ),
    );
  }
}

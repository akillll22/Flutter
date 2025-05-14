import 'package:flutter/material.dart';
import 'pages/todo_home_page.dart';
import 'pages/settings_page.dart';
import 'themes/app_theme.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatefulWidget {
  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  bool isDark = false;

  void toggleTheme() {
    setState(() {
      isDark = !isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do List',
      theme: isDark ? AppTheme.darkTheme : AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/':
            (context) => TodoHomePage(toggleTheme: toggleTheme, isDark: isDark),
        '/settings':
            (context) => SettingsPage(toggleTheme: toggleTheme, isDark: isDark),
      },
    );
  }
}

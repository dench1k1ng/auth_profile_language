import 'package:auth_profile_language/provider/theme_provider.dart';
import 'package:auth_profile_language/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData.light(), // Светлая тема
      darkTheme: ThemeData.dark(), // Тёмная тема
      themeMode: themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(
        name: "Иван Иванов",
        email: "ivan@example.com",
      ),
    );
  }
}

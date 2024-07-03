import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculat/home_screen.dart';
import 'package:calculat/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Calculat',
          theme:
              themeProvider.isDarkMode ? ThemeData.dark() : ThemeData.light(),
          home: const HomeScreen(),
        );
      },
    );
  }
}

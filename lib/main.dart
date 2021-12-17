import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/login_page.dart';
import 'package:flutter_login_page_ui/shared/theme_app.dart';
import 'package:flutter_login_page_ui/shared/theme_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer<ThemeModel>(
        builder: (context, ThemeModel themeNotifier, child) {
          return MaterialApp(
            home: LoginPage(),
            theme: themeNotifier.isDark ? AppTheme.dark : AppTheme.light,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    ),
  );
}

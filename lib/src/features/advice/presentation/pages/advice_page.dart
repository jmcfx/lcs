import 'package:flutter/material.dart';
import 'package:lcs_app/src/core/services/theme_service.dart';
import 'package:provider/provider.dart';

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Advicer",
              style: themeData.textTheme.headlineSmall,
            ),
            actions: [
              Switch(
                value: themeService.themeMode == ThemeMode.dark,
                onChanged: (d) {
                  themeService.toggleTheme(d);
                },
              ),
            ],
            centerTitle: true,
          ),
        );
      },
    );
  }
}

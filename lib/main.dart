import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lcs_app/src/core/services/theme_service.dart';
import 'package:lcs_app/src/features/advice/presentation/pages/advice_page.dart';
import 'package:lcs_app/src/theme.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeService = ThemeService();
  await themeService.initializeTheme();

  runApp(
    ChangeNotifierProvider.value(
      value: themeService,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:  const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'lcs',
          themeMode: Provider.of<ThemeService>(context).themeMode,
          // themeMode: MediaQuery.platformBrightnessOf(context) == Brightness.dark? ThemeMode.dark: ThemeMode.light,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: const AdvicePageWrapperProvider(),
        );
      },
    );
  }
}

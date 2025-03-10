import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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
  late BuildContext _context;

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _context.read<ThemeService>().toggleTheme(
          MediaQuery.platformBrightnessOf(_context) == Brightness.dark);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return Consumer<ThemeService>(
          builder: (context, themeService, __) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'lcs',
              themeMode: themeService.themeMode,
              // themeMode: MediaQuery.platformBrightnessOf(context) == Brightness.dark? ThemeMode.dark: ThemeMode.light,
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              home: const AdvicePage(),
            );
          },
        );
      },
    );
  }
}

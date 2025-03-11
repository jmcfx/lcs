import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lcs_app/src/core/services/theme_service.dart';
import 'package:lcs_app/src/features/advice/presentation/widgets/advice_field.dart';
import 'package:lcs_app/src/features/advice/presentation/widgets/custom_button.dart';
import 'package:provider/provider.dart';

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Advicer",
          style: themeData.textTheme.headlineMedium,
        ),
        actions: [
          Switch(
            value:
                Provider.of<ThemeService>(context).themeMode == ThemeMode.dark,
            onChanged: (value) {
              Provider.of<ThemeService>(context, listen: false)
                  .toggleTheme(value);
            },
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.h),
        child: Column(
          children: [
           const  Expanded(
              child: Center(
                child: AdviceField(advice: "example advice - your day will be good!"),
                // child: Text("Your Advice is waiting for you! ",
                //     style: themeData.textTheme.displayLarge),
              ),
            ),
            SizedBox(
              height: 200.h,
              child: const Center(
                child: CustomButton(),
              ),
            ),
            const SizedBox()
          ],
        ),
      ),
    );
  }
}

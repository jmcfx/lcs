import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lcs_app/src/core/services/theme_service.dart';
import 'package:lcs_app/src/features/advice/presentation/bloc/advice_bloc.dart';
import 'package:lcs_app/src/features/advice/presentation/widgets/advice_field.dart';
import 'package:lcs_app/src/features/advice/presentation/widgets/custom_button.dart';
import 'package:lcs_app/src/features/advice/presentation/widgets/error_message.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdvicePageWrapperProvider extends StatelessWidget {
  const AdvicePageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdviceBloc(),
      child: const AdvicePage(),
    );
  }
}

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
          Selector<ThemeService, bool>(
              selector: (context, themeService) =>
                  themeService.themeMode == ThemeMode.dark,
              builder: (context, isDarkMode, child) {
                return Switch(
                  value: isDarkMode,
                  onChanged: (value) {
                    context.read<ThemeService>().toggleTheme(value);
                  },
                );
              }),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.h),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: BlocBuilder<AdviceBloc, AdviceState>(
                  builder: (context, state) {
                    if (state.adviceState.isLoading) {
                      return CircularProgressIndicator(
                        color: themeData.colorScheme.secondary,
                      );
                    }
                    if (state.adviceState.isSuccess) {
                      return AdviceField(advice: state.adviceLoaded!);
                    }
                    if (state.adviceState.isError) {
                      return ErrorMessage(message: state.errorMessage!);
                    }
                    return Text(
                      "Your Advice is waiting for you!",
                      style: themeData.textTheme.headlineLarge,
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 200.h,
              child: const Center(
                child: CustomButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

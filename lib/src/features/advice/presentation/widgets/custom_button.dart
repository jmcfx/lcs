import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lcs_app/src/features/advice/presentation/bloc/advice_bloc.dart';
import 'package:provider/provider.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return GestureDetector(
      onTap: () =>
          context.read<AdviceBloc>().add(const AdviceEvent.adviceRequested()),
      child: Material(
        borderRadius: BorderRadius.circular(10.r),
        elevation: 5.r,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 12.r),
          decoration: BoxDecoration(
            color: themeData.colorScheme.secondary,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Text(
            "Get Advice",
            style: themeData.textTheme.displayLarge?.copyWith(fontSize: 20.sp),
          ),
        ),
      ),
    );
  }
}

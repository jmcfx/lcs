import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20.h,
      children: [
        Icon(
          Icons.error,
          size: 40.sp,
          color: Colors.redAccent,
        ),
        Text(
          message,
          style: themeData.textTheme.bodyLarge,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

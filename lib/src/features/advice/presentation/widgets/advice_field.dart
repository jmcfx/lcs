import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdviceField extends StatelessWidget {
  const AdviceField({super.key, required this.advice});

  final String advice;
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Material(
      elevation: 5.r,
      borderRadius: BorderRadius.circular(15.r),
      child: Container(
       padding: EdgeInsets.symmetric(
        horizontal: 15.r , vertical: 15.r
       ),
        child: Text(
          advice,
          style: themeData.textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

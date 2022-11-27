import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    this.title,
    this.isDisabled = false,
  });
  final GestureTapCallback? onTap;
  final String? title;
  final bool? isDisabled;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isDisabled! ? () {} : onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isDisabled! ? Colors.grey.shade300 : Colors.cyan,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title ?? 'Continue',
          style: TextStyle(
            color: isDisabled! ? Colors.grey : Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

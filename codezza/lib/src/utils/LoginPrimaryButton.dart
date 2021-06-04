import '../widgets/color.dart';
import '../widgets/font.dart';
import 'package:flutter/material.dart';

class LoginPrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Widget child;

  const LoginPrimaryButton({
    Key key,
    @required this.onPressed,
    this.title,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: FontMedium(
        title: title,
        size: 20,
      ),
      style: TextButton.styleFrom(
        primary: kGray1,
        backgroundColor: kMainColor,
        onSurface: kGray2,
        padding: EdgeInsets.only(bottom: 16, top: 16),
        minimumSize: Size(324, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
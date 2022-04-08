import 'package:flutter/material.dart';
import 'package:call_a_vet/Components/text_field_container.dart';
import 'package:call_a_vet/constants.dart';

class ConfirmRoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const ConfirmRoundedPasswordField({
    Key key,
    this.onChanged, String hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Confirm Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
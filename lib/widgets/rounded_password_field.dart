import 'package:flutter/material.dart';
import 'package:myfirstapp/constants.dart';
import 'package:myfirstapp/widgets/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: const InputDecoration(
          hintText: passwordText,
          icon: Icon(
            Icons.lock,
            color: greyColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: greyColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

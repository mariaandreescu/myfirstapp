import 'package:flutter/material.dart';
import 'package:myfirstapp/constants.dart';
import 'package:myfirstapp/screens/login/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            icon,
            color: greyColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

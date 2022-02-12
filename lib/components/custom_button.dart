import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String text;
  final Color boxColor, textColor;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.boxColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height / 20,
          width: MediaQuery.of(context).size.width / 2.5,
          child: Text(
            text,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 12.0,
                color: textColor,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: boxColor,
            border: Border.all(
              color: Colors.black,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(29),
            ),
          ),
        ),
      ),
    );
  }
}

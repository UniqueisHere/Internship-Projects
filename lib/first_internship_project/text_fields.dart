import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {
  final String textLabel;
  final String textHint;
  final IconData icon;

  const CustomTextField({Key? key,
  required this.textLabel,
  required this.textHint,
  required this.icon,

  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      child: TextField(
        decoration: InputDecoration(
          labelText: widget.textLabel,
          hintText: widget.textHint,
          prefixIcon: Icon(widget.icon),
          hintStyle: GoogleFonts.poppins(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12)
          )
        ),
      ),
    );
  }
}
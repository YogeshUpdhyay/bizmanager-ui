import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  final IconData prefixIcon;
  final String labelText;
  final bool obsText;

  const TextFieldComponent({
    Key? key, 
    required this.prefixIcon, 
    required this.labelText, 
    required this.obsText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: this.labelText,
        prefixIcon: Icon(this.prefixIcon, color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(color: Colors.black)
        ),
        labelStyle: TextStyle(
            color: Colors.black
          ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(color: Colors.black)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(color: Colors.black)
        ),
      ),
      obscureText: this.obsText,
      cursorColor: Colors.black,
    );
  }

}
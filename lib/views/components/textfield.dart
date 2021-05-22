import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  final Icon prefixIcon;
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
        prefixIcon: this.prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
      obscureText: this.obsText,
    );
  }

}
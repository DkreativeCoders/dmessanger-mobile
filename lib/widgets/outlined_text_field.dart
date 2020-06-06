import 'package:flutter/material.dart';

class OutlinedTextField extends StatelessWidget {
  final String labelText;
  final Function validator;
  final Function onChanged;
  final bool obscureText;

  OutlinedTextField({this.labelText, this.validator, this.onChanged, this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText != null ? obscureText : false,
      validator: validator != null ? (value) => validator(value) : null,
      onChanged: onChanged != null ? (value) => onChanged(value) : null,
      style: TextStyle(fontSize: 14.0),
      showCursor: false,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      ),
    );
  }
}

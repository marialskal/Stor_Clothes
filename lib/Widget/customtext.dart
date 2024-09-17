import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  final String hintText;
  final IconData iconData;
  final TextInputType inputType;
  final int characterLimit;
  final FormFieldValidator<String>? validator;
  final bool isPassword;

  const CustomText({super.key, 
    required this.hintText,
    required this.iconData,
    required this.inputType,
    required this.characterLimit,
    this.validator,
    this.isPassword = false,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextState createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          border:const OutlineInputBorder(),
          hintText: widget.hintText,
          prefixIcon: Icon(widget.iconData),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
        ),
        keyboardType: widget.inputType,
        obscureText: widget.isPassword ? _obscureText : false,
        validator: widget.validator,
        maxLength: widget.characterLimit,
      ),
    );
  }
}
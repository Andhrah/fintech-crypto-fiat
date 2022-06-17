import 'package:flutter/material.dart';
import 'package:syarpa/utils/colors.dart';

class BasicInputField extends StatelessWidget {
  const BasicInputField({
    Key? key,
    this.textController,
    FocusNode? node,
    this.labelText,
    this.hintText,
    this.suffixIcon,
    this.suffix,
    required this.borderColor,
    // this.maxLines,
    this.area,
    this.keyboardType,
    this.validator,
    this.onTap,
    this.onSaved,
    this.onChanged,
    this.autovalidateMode,
    required this.obscureText,
    this.maxLines, this.textColor,
    this.enabled,
  }) : _node = node, super(key: key);

  final TextEditingController? textController;
  final FocusNode? _node;
  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final Color borderColor;
  final Color? textColor;
  // final double maxLines;
  final int? area;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final VoidCallback? onTap;
  final String? Function(String?)? onSaved;
  final String? Function(String?)? onChanged;
  final AutovalidateMode? autovalidateMode;
  final bool obscureText;
  final int? maxLines;
  final Widget? suffix;
  final bool? enabled;


  @override
  Widget build(BuildContext context) {
    return 
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: textController,
          focusNode: _node,
          maxLines: maxLines ?? area,
          keyboardType: keyboardType,
          validator: validator,
          onTap: onTap,
          onSaved: onSaved,
          onChanged: onChanged,
          autovalidateMode: autovalidateMode,
          obscureText: obscureText,
          enabled: enabled,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 13.0, horizontal: 10.0),
            // floatingLabelBehavior: FloatingLabelBehavior.always,
            enabledBorder:  OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
            ),

            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: blueGrayColor),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: redColor.withOpacity(0.8)),
            ),
            // labelText: labelText,
            labelStyle: const TextStyle(fontSize: 18.0, color: appPrimaryColor, fontWeight: FontWeight.w400),
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 18.0, color: blueGrayColor, fontWeight: FontWeight.w400),
            suffixIcon: suffixIcon,
            suffix: suffix,
          ),
        )
      ],
    );
  }
}
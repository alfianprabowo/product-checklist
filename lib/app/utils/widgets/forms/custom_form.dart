import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:product_checklist/app/utils/constants/color_const.dart';

class CustomForm extends StatelessWidget {
  final TextInputType? textInputType;
  final String? hintText;

  final Widget? prefixIcon;
  final Text? prefix;
  final Widget? suffixIcon;
  final String? defaultText;
  final String? labelText;
  final FocusNode? focusNode;
  final bool? obscureText;
  final TextEditingController? controller;
  final Function? functionValidate;
  final String? parametersValidate;
  final TextInputAction? actionKeyboard;
  final Function? onSubmitField;
  final Function? onFieldTap;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final bool? isFilled;
  final List<TextInputFormatter>? inputFormatters;
  final Callback? onChanged;

  const CustomForm({
    Key? key,
    this.textInputType,
    this.hintText,
    this.prefixIcon,
    this.prefix,
    this.suffixIcon,
    this.defaultText,
    this.labelText,
    this.focusNode,
    this.obscureText,
    this.controller,
    this.functionValidate,
    this.parametersValidate,
    this.actionKeyboard,
    this.onSubmitField,
    this.onFieldTap,
    this.maxLength,
    this.minLines,
    this.maxLines,
    this.isFilled,
    this.inputFormatters,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: primaryColor,
      obscureText: obscureText ?? false,
      keyboardType: textInputType,
      textInputAction: actionKeyboard,
      focusNode: focusNode,
      initialValue: defaultText,
      maxLength: maxLength,
      minLines: minLines ?? 1,
      maxLines: maxLines ?? 1,
      style: const TextStyle(
        color: Colors.black,
        // fontSize: 16.0,
        fontWeight: FontWeight.w200,
        fontStyle: FontStyle.normal,
        letterSpacing: 1.2,
      ),
      decoration: InputDecoration(
        prefix: prefix,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        labelText: labelText,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor,
          ),
        ),
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 14.0,
          fontWeight: FontWeight.w300,
          fontStyle: FontStyle.normal,
          letterSpacing: 1.2,
        ),
        filled: isFilled ?? false,
        isDense: true,
        errorStyle: const TextStyle(
          color: Colors.red,
          fontSize: 12.0,
          fontWeight: FontWeight.w300,
          fontStyle: FontStyle.normal,
          letterSpacing: 1.2,
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
      ),
      controller: controller,
      validator: (value) {
        if (functionValidate != null) {
          String resultValidate = functionValidate!(value, parametersValidate);
          return resultValidate;
        }
      },
      onFieldSubmitted: (value) {
        if (onSubmitField != null) onSubmitField!();
      },
      onTap: () {
        if (onFieldTap != null) onFieldTap!();
      },
      onChanged: (value) {
        onChanged!();
      },
      inputFormatters: inputFormatters,
    );
  }
}

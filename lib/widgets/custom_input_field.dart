import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String labelTextV;
  final String hintTextV;
  final IconData? prefixIconV;
  final IconData? suffixIconV;
  final TextInputType?  keyboardTypeV;
  final bool? obscureTextV;
  final bool? isPassword;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({Key? key,
    required this.labelTextV,
    required this.hintTextV,
    this.prefixIconV,
    this.suffixIconV,
    this.keyboardTypeV,
    this.obscureTextV = false,
    this.isPassword = false,
    required this.formProperty,
    required this.formValues
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              keyboardType: keyboardTypeV,
              obscureText: obscureTextV!,
              onChanged: (value) => formValues[formProperty] = value,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Ingress a valid value';
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                labelText: labelTextV,
                hintText: hintTextV,
                prefixIcon: prefixIconV != null ? Icon(prefixIconV) : null,
                suffixIcon: suffixIconV != null ? Icon(suffixIconV) : null,
              ),
            );
  }
}
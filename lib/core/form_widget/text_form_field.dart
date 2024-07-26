import 'package:developer_tv/core/string_extension.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    this.hint,
    required this.isNullValid,
    required this.controller,
  });

  final String? hint;
  final bool isNullValid;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: isNullValid ? (value) => value?.isNullValidation : null,
      decoration: InputDecoration(hintText: hint),
    );
  }
}

// class NumberTextFormFieldWidget extends StatelessWidget {
//   const NumberTextFormFieldWidget({
//     super.key,
//     this.hint,
//     required this.isNullValid,
//     required this.controller,
//   });

//   final String? hint;
//   final bool isNullValid;
//   final TextEditingController controller;
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: controller,
//       // validator: isNullValid ? (value) => value?.isDoubleValidation : null,
//       decoration: InputDecoration(hintText: hint),
//     );
//   }
// }

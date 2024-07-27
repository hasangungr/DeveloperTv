import 'package:flutter/material.dart';

import '../../../core/decoration/decoration.dart';
import '../../../core/form_widget/text_form_field.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key, required this.controller, this.onSearch});

  final TextEditingController controller;

  final Function()? onSearch;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomDecoration.containerDecoration,
      child: Row(
        children: [
          Expanded(
            child:
                TextFormFieldWidget(isNullValid: true, controller: controller),
          ),
          IconButton(onPressed: onSearch, icon: const Icon(Icons.search))
        ],
      ),
    );
  }
}

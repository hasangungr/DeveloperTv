import 'package:flutter/material.dart';

import '../../../core/decoration/decoration.dart';
import '../../../core/form_widget/text_form_field.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomDecoration.containerDecoration,
      child: Row(
        children: [
          Expanded(
            child: TextFormFieldWidget(
              isNullValid: true,
              controller: TextEditingController(),
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../core/form_widget/text_form_field.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey)),
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

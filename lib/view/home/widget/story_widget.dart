// import 'package:developer_tv/core/context_extension.dart';
// import 'package:flutter/material.dart';

// import '../../../core/widget/paddings.dart';

// class StoryWidget extends StatelessWidget {
//   const StoryWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         width: context.dynamicWidth(1),
//         height: context.dynamicHeight(.15),
//         child: ListView.separated(
//           separatorBuilder: (c, i) => 
//               const CustomSizedBox.paddingHeight(heightValue: 8),
//           itemCount: 4,
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, index) {
//             return const StoryItem();
//           },
//         ));
//   }
// }

// class StoryItem extends StatelessWidget {
//   const StoryItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: context.dynamicWidth(0.25),
//       decoration: const BoxDecoration(
//         color: Colors.red, 
//         shape: BoxShape.circle,
//       ),
//     );
//   }
// }

// import 'package:custom_bottomnav/home.dart';
// import 'package:flutter/material.dart';
//
// class ActiveItem extends StatelessWidget {
//   const ActiveItem({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       customBorder: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(22.0)
//       ),
//       //highlightColor: Colors.grey,
//       //splashColor: Colors.grey,
//       onTap: (){
//         setState(() {
//           _selectedIndex = index;
//         });
//       },
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             Icon(
//               item.icon,
//               size: 29.0,
//               color: const Color(0xff6271dd),
//             ),
//             const SizedBox(width: 6.0,),
//             Text(
//               item.title,
//               maxLines: 1,
//               style: const TextStyle(
//                   overflow: TextOverflow.ellipsis,
//                   fontFamily: 'IranSans',
//                   color: Color(0xff6271dd),
//                   fontWeight: FontWeight.bold,
//                   fontSize: 13.0
//               ),
//             ),
//             SizedBox(
//               width: 7.0,
//               child: Builder(
//                 builder: (context) {
//                   return CustomPaint(
//                     painter: DotWidget(),
//                     size: const Size(10.0, 18.0),
//                   );
//                 },
//               ),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }

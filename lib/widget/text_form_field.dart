// import 'package:flutter/material.dart';
//
// class PassWordTextField extends StatefulWidget {
//   final TextEditingController? controller;
//   const PassWordTextField({super.key});
//
//   @override
//   State<PassWordTextField> createState() => _TextFieldCustomState();
// }
//
// class _TextFieldCustomState extends State<PassWordTextField> {
//   bool _obscureText = true;
//   late String _password;
//
//   void _toggle() {
//     setState(() {
//       _obscureText = !_obscureText;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       decoration: const InputDecoration(
//         hintText: 'Telephone ou e-mail ',
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(
//             Radius.circular(20.0),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class SignupPage extends StatelessWidget {
//   const SignupPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue, // Set the background color to blue

//       appBar: AppBar(
//         title: const Text('Signup'),
//       ),

//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                 Text(
//                   'Welcome!',
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   'Please fill out the form below:',
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           Expanded(
//             child: Container(
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20),
//                   topRight: Radius.circular(20),
//                 ),
//               ),
//               child: SingleChildScrollView(
//                 padding: const EdgeInsets.all(16),
//                 child: Column(
//                   children: const [
//                     // Add your form widgets here
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),

//       bottomNavigationBar: Container(
//         color: Colors.white,
//         padding: const EdgeInsets.all(16),
//         child: ElevatedButton(
//           onPressed: () {
//             // Perform signup action
//           },
//           child: const Text('Sign Up'),
//         ),
//       ),
//     );
//   }
// }


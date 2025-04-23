// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../utils/constants/colors.dart';
//
// class ProfileScreen extends StatelessWidget {
//   final TextEditingController nameController = TextEditingController(text: "Dev");
//   final TextEditingController phoneController = TextEditingController(text: "1122334455");
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: TColors.body,
//       body: Stack(
//         children: [
//           // Background Header Image
//           Container(
//             height: MediaQuery.of(context).size.height * 0.3,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: Colors.black,
//               image: DecorationImage(
//                 image: AssetImage("assets/logos/logo.jpg"),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           // Profile Card
//           Center(
//             child: Padding(
//               padding: const EdgeInsets.only(top: 180.0),
//               child: Container(
//                 width: MediaQuery.of(context).size.width * 0.35,
//                 padding: const EdgeInsets.all(24.0),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(16),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black26,
//                       blurRadius: 8,
//                       spreadRadius: 2,
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(
//                       "Admin Profile",
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black87,
//                       ),
//                     ),
//                     SizedBox(height: 16),
//                     _buildInputField("Admin Name", nameController),
//                     SizedBox(height: 16),
//                     _buildInputField("Admin Phone No", phoneController),
//                     SizedBox(height: 24),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.pinkAccent,
//                         padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                       onPressed: () {
//                         Get.snackbar("Profile Updated", "Changes saved successfully!");
//                       },
//                       child: Text(
//                         "Update Profile",
//                         style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildInputField(String label, TextEditingController controller) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: TextStyle(fontSize: 14, color: Colors.black54),
//         ),
//         SizedBox(height: 4),
//         TextField(
//           controller: controller,
//           decoration: InputDecoration(
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: BorderSide(color: Colors.grey),
//             ),
//             filled: true,
//             fillColor: Colors.grey[200],
//             contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
//           ),
//         ),
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'dart:ui';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Gradient with Blur Effect
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  // colors: [Color(0xFFF3E5F5), Color(0xFF7E57C2)], // White to Blue Gradient
                  colors: [Colors.white, Colors.green.shade300],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(color: Colors.black.withOpacity(0.2)),
              ),
            ),
          ),

          // Centered Profile Card with Glassmorphism
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.35,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 3,
                  ),
                ],
                border: Border.all(color: Colors.white.withOpacity(0.3)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Admin Profile',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),

                  // Admin Name Input
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Admin Name',
                      labelStyle: TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  // Admin Phone Input
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Admin Phone No',
                      labelStyle: TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Update Profile Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Update Profile',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
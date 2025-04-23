// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class DisapprovalScreen extends StatelessWidget {
//   const DisapprovalScreen({super.key}); // ✅ No required shopData
//
//   @override
//   Widget build(BuildContext context) {
//     // ✅ Fetch shopData from Get.arguments
//     final Map<String, String> shopData = Get.arguments as Map<String, String>? ?? {};
//
//     double screenWidth = MediaQuery.of(context).size.width;
//     double cardWidth = screenWidth > 600 ? screenWidth * 0.25 : screenWidth * 0.9;
//
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       body: Center(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: screenWidth * 0.8,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(16),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.shade300,
//                       blurRadius: 10,
//                       spreadRadius: 2,
//                     )
//                   ],
//                 ),
//                 padding: const EdgeInsets.all(16),
//                 child: Column(
//                   children: [
//                     // Table Placeholder
//                     Container(
//                       height: 150,
//                       width: double.infinity,
//                       color: Colors.grey[300],
//                       alignment: Alignment.center,
//                       child: const Text("Table Data Here", style: TextStyle(fontSize: 16)),
//                     ),
//                     const SizedBox(height: 16),
//
//                     // Shop Details Grid
//                     Wrap(
//                       spacing: 16,
//                       runSpacing: 16,
//                       alignment: WrapAlignment.center,
//                       children: shopData.entries.map((entry) {
//                         return Container(
//                           width: cardWidth,
//                           padding: const EdgeInsets.all(16),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(12),
//                             border: Border.all(color: Colors.grey.shade300),
//                           ),
//                           child: Column(
//                             children: [
//                               Text(entry.key, style: const TextStyle(fontWeight: FontWeight.bold)),
//                               const SizedBox(height: 4),
//                               Text(entry.value, style: const TextStyle(fontSize: 14)),
//                             ],
//                           ),
//                         );
//                       }).toList(),
//                     ),
//                     const SizedBox(height: 24),
//
//                     // Action Buttons
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         TextButton(
//                           onPressed: () => Get.back(),
//                           style: TextButton.styleFrom(
//                             padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                             backgroundColor: Colors.grey[300],
//                           ),
//                           child: const Text("Back", style: TextStyle(fontSize: 16, color: Colors.black)),
//                         ),
//                         const SizedBox(width: 16),
//                         ElevatedButton(
//                           onPressed: () {
//                             // Approval Logic
//                           },
//                           style: ElevatedButton.styleFrom(
//                             padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                             backgroundColor: Colors.green,
//                           ),
//                           child: const Text("Approve", style: TextStyle(fontSize: 16, color: Colors.white)),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';

class DisapprovalScreen extends StatelessWidget {
  const DisapprovalScreen({super.key}); // ✅ No required shopData

  @override
  Widget build(BuildContext context) {
    // ✅ Fetch shopData from Get.arguments
    final Map<String, String> shopData = Get.arguments as Map<String, String>? ?? {};

    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = screenWidth > 600 ? screenWidth * 0.25 : screenWidth * 0.9;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: TColors.textPrimary),
                onPressed: () => Get.back(),
              ),
              Container(
                width: screenWidth * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 10,
                      spreadRadius: 2,
                    )
                  ],
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Table Placeholder
                    Container(
                      height: 150,
                      width: double.infinity,
                      color: Colors.grey[300],
                      alignment: Alignment.center,
                      child: const Text("Image Here ", style: TextStyle(fontSize: 16)),
                    ),
                    const SizedBox(height: 16),

                    // Shop Details Grid
                    Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      alignment: WrapAlignment.center,
                      children: shopData.entries.map((entry) {
                        return Container(
                          width: cardWidth,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Column(
                            children: [
                              Text(entry.key, style: const TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(height: 4),
                              Text(entry.value, style: const TextStyle(fontSize: 14)),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 24),

                    // Action Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () => Get.back(),
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                            backgroundColor: Colors.grey[300],
                          ),
                          child: const Text("Back", style: TextStyle(fontSize: 16, color: Colors.black)),
                        ),
                        const SizedBox(width: 16),
                        ElevatedButton(
                          onPressed: () {
                            // Disapproval Logic
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                            backgroundColor: Colors.red,
                          ),
                          child: const Text("Disapprove", style: TextStyle(fontSize: 16, color: Colors.white)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
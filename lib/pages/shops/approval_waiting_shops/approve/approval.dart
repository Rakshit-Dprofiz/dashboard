// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class ApprovalScreen extends StatelessWidget {
//   const ApprovalScreen({super.key}); // ✅ No required shopData
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


//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class ApprovalScreen extends StatelessWidget {
//   const ApprovalScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       body: Center(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(16.0),
//           child: Container(
//             width: screenWidth * 0.85,
//             padding: const EdgeInsets.all(16),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(16),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.shade300,
//                   blurRadius: 10,
//                   spreadRadius: 2,
//                 )
//               ],
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // First Column: Image
//                     Container(
//                       width: screenWidth * 0.25,
//                       height: 200,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         image: const DecorationImage(
//                           image: AssetImage('assets/images/sample.jpg'), // Replace with your asset image
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 16),
//                     // Second Column: Offer Details
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: const [
//                           Text("Offer Name", style: TextStyle(fontWeight: FontWeight.bold)),
//                           Text("Cow Ghee"),
//                           SizedBox(height: 8),
//                           Text("Brand Name", style: TextStyle(fontWeight: FontWeight.bold)),
//                           Text("Pure Ghee Of Cows"),
//                           SizedBox(height: 8),
//                           Text("Original Price", style: TextStyle(fontWeight: FontWeight.bold)),
//                           Text("50"),
//                           SizedBox(height: 8),
//                           Text("Discount Price", style: TextStyle(fontWeight: FontWeight.bold)),
//                           Text("45"),
//                           SizedBox(height: 8),
//                           Text("Created At", style: TextStyle(fontWeight: FontWeight.bold)),
//                           Text("2025-01-11 09:21:42"),
//                           SizedBox(height: 8),
//                           Text("Total Quantity", style: TextStyle(fontWeight: FontWeight.bold)),
//                           Text("5"),
//                           SizedBox(height: 8),
//                           Text("Offer Description", style: TextStyle(fontWeight: FontWeight.bold)),
//                           Text("This is a pure ghee pouch of cows"),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(width: 16),
//                     // Third Column: Shop Details
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: const [
//                           Text("Shop Name", style: TextStyle(fontWeight: FontWeight.bold)),
//                           Text("Sip Sal Education"),
//                           SizedBox(height: 8),
//                           Text("Shop Address", style: TextStyle(fontWeight: FontWeight.bold)),
//                           Text("Sal Education Ni Exactly Same Che"),
//                           SizedBox(height: 8),
//                           Text("Subscription Type", style: TextStyle(fontWeight: FontWeight.bold)),
//                           Text("Premium"),
//                           SizedBox(height: 8),
//                           Text("Owner Name", style: TextStyle(fontWeight: FontWeight.bold)),
//                           Text("Test Dew"),
//                           SizedBox(height: 8),
//                           Text("Phone Number", style: TextStyle(fontWeight: FontWeight.bold)),
//                           Text("6677889900"),
//                           SizedBox(height: 8),
//                           Text("Email ID", style: TextStyle(fontWeight: FontWeight.bold)),
//                           Text("jin201130116550@gmail.com"),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 24),
//                 // Buttons
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     TextButton(
//                       onPressed: () => Get.back(),
//                       style: TextButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                         backgroundColor: Colors.grey[300],
//                       ),
//                       child: const Text("Back", style: TextStyle(fontSize: 16, color: Colors.black)),
//                     ),
//                     const SizedBox(width: 16),
//                     ElevatedButton(
//                       onPressed: () {
//                         // Approval Logic
//                       },
//                       style: ElevatedButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                         backgroundColor: Colors.green,
//                       ),
//                       child: const Text("Approve", style: TextStyle(fontSize: 16, color: Colors.white)),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//----------------------------------------------------------------------
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class ApprovalScreen extends StatelessWidget {
//   final String imageUrl =
//       'https://via.placeholder.com/600'; // Replace with actual image URL
//   final Map<String, String> offerDetails = {
//     "Offer Name": "Cow Ghee",
//     "Brand Name": "Pure Ghee Of Cows",
//     "Original Price": "50",
//     "Discount Price": "45",
//     "Created At": "2025-01-01 09:21:42",
//     "Total Quantity": "5",
//     "Offer Description": "This is a pure ghee pouch of cows"
//   };
//
//   final Map<String, String> shopDetails = {
//     "Shop Name": "Sip Sal Education",
//     "Shop Address": "Sal Education NI Exactly Same Che",
//     "Subscription Type": "Premium",
//     "Owner Name": "Test Dev",
//     "Phone Number": "6677889900",
//     "Email ID": "jp21301105503@gmail.com"
//   };
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 20),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 16),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black12,
//                     blurRadius: 10,
//                     spreadRadius: 2,
//                   ),
//                 ],
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(12),
//                 child: Image.network(imageUrl, fit: BoxFit.cover),
//               ),
//             ),
//             SizedBox(height: 20),
//             _buildGrid(offerDetails),
//             SizedBox(height: 20),
//             Text("Shop Name: ${shopDetails["Shop Name"]}",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             SizedBox(height: 10),
//             _buildGrid(shopDetails),
//             SizedBox(height: 20),
//             _buildButtons(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildGrid(Map<String, String> details) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: GridView.builder(
//         shrinkWrap: true,
//         physics: NeverScrollableScrollPhysics(),
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           childAspectRatio: 3,
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//         ),
//         itemCount: details.length,
//         itemBuilder: (context, index) {
//           String key = details.keys.elementAt(index);
//           return Container(
//             padding: EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               border: Border.all(color: Colors.grey.shade300),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(key, style: TextStyle(fontWeight: FontWeight.bold)),
//                 SizedBox(height: 5),
//                 Text(details[key]!, textAlign: TextAlign.center),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   Widget _buildButtons() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         ElevatedButton(
//           onPressed: () => Get.back(),
//           style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
//           child: Text("Back"),
//         ),
//         SizedBox(width: 10),
//         ElevatedButton(
//           onPressed: () {},
//           style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
//           child: Text("Approve"),
//         ),
//       ],
//     );
//   }
// }
//
//--------------------------------------------------------------------------


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';

class ApprovalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Approval Screen"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back, color: TColors.textPrimary),
                onPressed: () => Get.back(),
              ),
              // Image Section
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  "https://via.placeholder.com/600x300", // Replace with actual image
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              // Offer Details Grid
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                childAspectRatio: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                children: _buildOfferDetails(),
              ),
              const SizedBox(height: 16),
              // Shop Details Section
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        "Shop Name: Sip Sal Education",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 12),
                      GridView.count(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        childAspectRatio: 3,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        children: _buildShopDetails(),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    onPressed: () {},
                    child: Text("Back"),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {},
                    child: Text("Approve"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildOfferDetails() {
    List<Map<String, String>> offerDetails = [
      {"title": "Offer Name", "value": "Cow Ghee"},
      {"title": "Brand Name", "value": "Pure Ghee Of Cows"},
      {"title": "Original Price", "value": "50"},
      {"title": "Discount Price", "value": "45"},
      {"title": "Created At", "value": "2025-01-01 09:21:42"},
      {"title": "Total Quantity", "value": "5"},
      {"title": "Offer Description", "value": "This is a pure ghee pouch of cows."},
    ];

    return offerDetails.map((detail) {
      return Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                detail["title"]!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(detail["value"]!),
            ],
          ),
        ),
      );
    }).toList();
  }

  List<Widget> _buildShopDetails() {
    List<Map<String, String>> shopDetails = [
      {"title": "Shop Address", "value": "Sal Education NI Exactly Same Che"},
      {"title": "Subscription Type", "value": "Premium"},
      {"title": "Owner Name", "value": "Test Dev"},
      {"title": "Phone Number", "value": "6677889900"},
      {"title": "Email ID", "value": "jp213011016530@gmail.com"},
    ];

    return shopDetails.map((detail) {
      return Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                detail["title"]!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(detail["value"]!),
            ],
          ),
        ),
      );
    }).toList();
  }
}

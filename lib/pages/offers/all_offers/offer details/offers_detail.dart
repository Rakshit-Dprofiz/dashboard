// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:trashee_dashboard/utils/constants/colors.dart';
//
// class IndividualProductViewPage extends StatelessWidget {
//   const IndividualProductViewPage({Key? key}) : super(key: key);
//
//   // Helper widget to build a labeled detail row.
//   Widget buildDetailRow(String label, String value, TextStyle labelStyle, TextStyle valueStyle) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 8.0),
//       child: RichText(
//         text: TextSpan(
//           text: "$label: ",
//           style: labelStyle,
//           children: [
//             TextSpan(
//               text: value,
//               style: valueStyle,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // Fetch data from Get.arguments dynamically.
//     final Map<String, dynamic> data = Get.arguments as Map<String, dynamic>? ?? {};
//
//     // Extract product details with defaults.
//     final String productName = data['Product Name']?.toString() ?? 'Class 6';
//     final String offerDescription = data['Offer Description']?.toString() ??
//         'Enroll Now to the Learnify Master batch and get 25% off on annual fees payment';
//     final String originalPrice = data['Original Price']?.toString() ?? '40000';
//     final String discountPrice = data['Discount Price']?.toString() ?? '25000';
//     final String totalQuantity = data['Total Quantity']?.toString() ?? '99';
//     final String brandName = data['Brand Name']?.toString() ?? 'Learnify Master';
//     final String addedTime = data['Added Time']?.toString() ?? '2024-10-09 17:25:17';
//
//     // Extract shop details.
//     final String shopName = data['Shop Name']?.toString() ?? 'Learnify Academy';
//     final String shopAddress = data['Shop Address']?.toString() ??
//         'Ganesh Homes, Chenpur Rd, New Ranip, Ahmedabad, Ranip, Gujarat 382470';
//     final String shopOwner = data['Shop Owner']?.toString() ?? 'Jay Jain';
//     final String pinCode = data['Pin Code']?.toString() ?? '380070';
//     final String emailID = data['Email ID']?.toString() ?? 'jainjay2004@gmail.com';
//     final String subscriptionType = data['Subscription Type']?.toString() ?? 'Premium';
//     final String phoneNumber = data['Phone Number']?.toString() ?? '8320164283';
//
//     // Image URL for product; if missing, use a default asset.
//     final String imageUrl = data['Offer Image']?.toString() ?? '';
//
//     // Define text styles
//     final TextStyle titleStyle = const TextStyle(
//       fontWeight: FontWeight.bold,
//       fontSize: 28,
//       color: TColors.textPrimary,
//     );
//     final TextStyle labelStyle = const TextStyle(
//       fontWeight: FontWeight.bold,
//       fontSize: 16,
//       color: Colors.black,
//     );
//     final TextStyle valueStyle = const TextStyle(
//       fontSize: 16,
//       color: Colors.black87,
//     );
//
//     return Scaffold(
//       backgroundColor: TColors.body,
//       appBar: AppBar(
//         title: const Text("Product Detail"),
//         backgroundColor: TColors.primary,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: LayoutBuilder(
//           builder: (context, constraints) {
//             bool isWide = constraints.maxWidth > 600;
//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Top Title
//                 Text("Product Name: $productName", style: titleStyle),
//                 const SizedBox(height: 16),
//                 // Center Image with rounded corners
//                 Center(
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(12),
//                     child: imageUrl.isNotEmpty
//                         ? Image.network(
//                       imageUrl,
//                       width: 300,
//                       height: 300,
//                       fit: BoxFit.cover,
//                       errorBuilder: (context, error, stackTrace) {
//                         return Image.asset(
//                           'assets/images/default_shop.png',
//                           width: 300,
//                           height: 300,
//                           fit: BoxFit.cover,
//                         );
//                       },
//                     )
//                         : Image.asset(
//                       'assets/images/default_shop.png',
//                       width: 300,
//                       height: 300,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 24),
//                 // Two-Column Details Layout
//                 isWide
//                     ? Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Left Column: Product Details
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           buildDetailRow("Product Name", productName, labelStyle, valueStyle),
//                           buildDetailRow("Offer Description", offerDescription, labelStyle, valueStyle),
//                           buildDetailRow("Original Price", originalPrice, labelStyle, valueStyle),
//                           buildDetailRow("Discount Price", discountPrice, labelStyle, valueStyle),
//                           buildDetailRow("Total Quantity", totalQuantity, labelStyle, valueStyle),
//                           buildDetailRow("Brand Name", brandName, labelStyle, valueStyle),
//                           buildDetailRow("Added Time", addedTime, labelStyle, valueStyle),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(width: 24),
//                     // Right Column: Shop Details
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           buildDetailRow("Shop Name", shopName, labelStyle, valueStyle),
//                           buildDetailRow("Shop Address", shopAddress, labelStyle, valueStyle),
//                           buildDetailRow("Shop Owner", shopOwner, labelStyle, valueStyle),
//                           buildDetailRow("Pin Code", pinCode, labelStyle, valueStyle),
//                           buildDetailRow("Email ID", emailID, labelStyle, valueStyle),
//                           buildDetailRow("Subscription Type", subscriptionType, labelStyle, valueStyle),
//                           buildDetailRow("Phone Number", phoneNumber, labelStyle, valueStyle),
//                         ],
//                       ),
//                     ),
//                   ],
//                 )
//                     : Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Product Details (stacked)\n                          buildDetailRow("Product Name", productName, labelStyle, valueStyle),
//                     buildDetailRow("Offer Description", offerDescription, labelStyle, valueStyle),
//                     buildDetailRow("Original Price", originalPrice, labelStyle, valueStyle),
//                     buildDetailRow("Discount Price", discountPrice, labelStyle, valueStyle),
//                     buildDetailRow("Total Quantity", totalQuantity, labelStyle, valueStyle),
//                     buildDetailRow("Brand Name", brandName, labelStyle, valueStyle),
//                     buildDetailRow("Added Time", addedTime, labelStyle, valueStyle),
//                     const SizedBox(height: 16),
//                     // Shop Details (stacked)\n                          buildDetailRow("Shop Name", shopName, labelStyle, valueStyle),
//                     buildDetailRow("Shop Address", shopAddress, labelStyle, valueStyle),
//                     buildDetailRow("Shop Owner", shopOwner, labelStyle, valueStyle),
//                     buildDetailRow("Pin Code", pinCode, labelStyle, valueStyle),
//                     buildDetailRow("Email ID", emailID, labelStyle, valueStyle),
//                     buildDetailRow("Subscription Type", subscriptionType, labelStyle, valueStyle),
//                     buildDetailRow("Phone Number", phoneNumber, labelStyle, valueStyle),
//                   ],
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class ProductDetailPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 20),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.0),
//               child: Row(
//                 children: [
//                   Text("Pages / ", style: TextStyle(color: Colors.grey[600])),
//                   Text("Individual Product View", style: TextStyle(fontWeight: FontWeight.bold)),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             Center(
//               child: Column(
//                 children: [
//                   Text("Product Name: Class 6", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
//                   SizedBox(height: 10),
//                   Container(
//                     width: 300,
//                     height: 400,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       image: DecorationImage(
//                         image: AssetImage("assets/images/banners/banner_1.jpg"), // Replace with actual image path
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   _buildDetailSection(),
//                   SizedBox(height: 10),
//                   _buildShopSection(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildDetailSection() {
//     return Container(
//       width: double.infinity,
//       margin: EdgeInsets.symmetric(horizontal: 16),
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _buildDetailRow("Offer Description", "Enroll Now to the Learnify Master batch and get 25% off on annual fees payment"),
//           _buildDetailRow("Original Price", "40000"),
//           _buildDetailRow("Discount Price", "25000"),
//           SizedBox(height: 10),
//           Text("Product Name: Class 6", style: TextStyle(fontWeight: FontWeight.bold)),
//           _buildDetailRow("Total Quantity", "99"),
//           _buildDetailRow("Brand Name", "Learnify Master"),
//           _buildDetailRow("Added Time", "2024-10-09 17:25:17"),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildShopSection() {
//     return Container(
//       width: double.infinity,
//       margin: EdgeInsets.symmetric(horizontal: 16),
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("Shop Name: Learnify Academy", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
//           _buildDetailRow("Shop Address", "Ganesh Homes, Chenpur Rd, New Ranip, Ahmedabad, Ranip, Gujarat 382470"),
//           _buildDetailRow("Shop Owner", "Jay Jain"),
//           _buildDetailRow("Pin Code", "380070"),
//           _buildDetailRow("Email ID", "jainjay2004@gmail.com"),
//           _buildDetailRow("Subscription Type", "Premium"),
//           _buildDetailRow("Phone Number", "8320164283"),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildDetailRow(String title, String value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4.0),
//       child: RichText(
//         text: TextSpan(
//           style: TextStyle(color: Colors.black, fontSize: 16),
//           children: [
//             TextSpan(text: "$title: ", style: TextStyle(fontWeight: FontWeight.bold)),
//             TextSpan(text: value),
//           ],
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class ProductDetailPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final data = Get.arguments as Map<String, String>? ?? {};
//
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 20),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.0),
//               child: Row(
//                 children: [
//                   Text("Pages / ", style: TextStyle(color: Colors.grey[600])),
//                   Text("Individual Product View", style: TextStyle(fontWeight: FontWeight.bold)),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             Center(
//               child: Column(
//                 children: [
//                   Text("Product Name: ${data['Offer Name'] ?? 'N/A'}", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
//                   SizedBox(height: 10),
//                   Container(
//                     width: 300,
//                     height: 400,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       image: DecorationImage(
//                         image: AssetImage("assets/images/banners/banner_1.jpg"), // Static image
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   _buildDetailSection(data),
//                   SizedBox(height: 10),
//                   _buildShopSection(data),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildDetailSection(Map<String, String> data) {
//     return Container(
//       width: double.infinity,
//       margin: EdgeInsets.symmetric(horizontal: 16),
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _buildDetailRow("Offer Description", data['Offer Description'] ?? 'N/A'),
//           _buildDetailRow("Original Price", data['Original Price'] ?? 'N/A'),
//           _buildDetailRow("Discount Price", data['Discount Price'] ?? 'N/A'),
//           SizedBox(height: 10),
//           Text("Product Name: ${data['Offer Name'] ?? 'N/A'}", style: TextStyle(fontWeight: FontWeight.bold)),
//           _buildDetailRow("Total Quantity", data['Offer Quantity'] ?? 'N/A'),
//           _buildDetailRow("Brand Name", data['Brand Name'] ?? 'N/A'),
//           _buildDetailRow("Unique Code", data['Unique Code'] ?? 'N/A'),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildShopSection(Map<String, String> data) {
//     return Container(
//       width: double.infinity,
//       margin: EdgeInsets.symmetric(horizontal: 16),
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("Shop Name: ${data['Shop Name'] ?? 'N/A'}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
//           _buildDetailRow("Shop Address", data['Shop Address'] ?? 'N/A'),
//           _buildDetailRow("Owner Contact", data['Owner Contact'] ?? 'N/A'),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildDetailRow(String title, String value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4.0),
//       child: RichText(
//         text: TextSpan(
//           style: TextStyle(color: Colors.black, fontSize: 16),
//           children: [
//             TextSpan(text: "$title: ", style: TextStyle(fontWeight: FontWeight.bold)),
//             TextSpan(text: value),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailPage extends StatelessWidget {
  final List<List<String>> productDetails = [
    ["Product Name", "Class 6"],
    ["Offer Description", "Enroll Now to the Learnify Master batch and get 25% off on annual fees payment"],
    ["Original Price", "40000"],
    ["Discount Price", "25000"],
    ["Total Quantity", "99"],
    ["Brand Name", "Learnify Master"],
    ["Added Time", "2024-10-09 17:25:17"],
  ];

  final List<List<String>> shopDetails = [
    ["Shop Name", "Learnify Academy"],
    ["Shop Address", "Ganesh Homes, Chenpur Rd, New Ranip, Ahmedabad, Ranip, Gujarat 382470"],
    ["Shop Owner", "Jay Jain"],
    ["Pin Code", "380070"],
    ["Email ID", "jainjay2004@gmail.com"],
    ["Subscription Type", "Premium"],
    ["Phone Number", "8320164283"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text("Pages / ", style: TextStyle(color: Colors.grey[600])),
                  Text("Individual Product View", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Text("Product Name: Class 6", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Container(
                    width: 300,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/images/banners/banner_1.jpg"), // Replace with actual image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildDetailSection(productDetails),
                  SizedBox(height: 10),
                  _buildShopSection(shopDetails),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailSection(List<List<String>> details) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: details.map((detail) => _buildDetailRow(detail[0], detail[1])).toList(),
      ),
    );
  }

  Widget _buildShopSection(List<List<String>> details) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: details.map((detail) => _buildDetailRow(detail[0], detail[1])).toList(),
      ),
    );
  }

  Widget _buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.black, fontSize: 16),
          children: [
            TextSpan(text: "$title: ", style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: value),
          ],
        ),
      ),
    );
  }
}

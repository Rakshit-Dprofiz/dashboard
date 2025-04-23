// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:trashee_dashboard/utils/constants/colors.dart';
// import 'package:trashee_dashboard/utils/constants/sizes.dart';
//
// class ShopDetailPage extends StatelessWidget {
//   const ShopDetailPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // Retrieve the shop data passed from AllShopsScreen via Get.arguments
//     final Map<String, String>? shopData =
//     Get.arguments as Map<String, String>?;
//
//     // Safely extract shop values from the map
//     final shopName = shopData?['Shop Name'] ?? 'N/A';
//     final shopId = shopData?['Shop ID'] ?? 'N/A';
//     final shopAddress = shopData?['Shop Address'] ?? 'N/A';
//     final shopGst = shopData?['Shop Gst'] ?? 'N/A';
//     final ownerName = shopData?['Owner Name'] ?? 'N/A';
//     final phoneNo = shopData?['Phone No'] ?? 'N/A';
//     final ownerEmail = shopData?['Owner Email'] ?? 'N/A';
//     final pinCode = shopData?['Pin Code'] ?? 'N/A';
//
//     return Scaffold(
//       backgroundColor: TColors.body, // F5F5F5
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0), // Or use TSizes.defaultSpace if defined
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Breadcrumb / Title
//             Text(
//               'Product List / Shop Detail',
//               style: TextStyle(
//                 color: TColors.textPrimary, // #333333
//                 fontSize: 16,
//               ),
//             ),
//             const SizedBox(height: 16),
//
//             // Big Shop Name centered
//             Center(
//               child: Text(
//                 shopName,
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   color: TColors.textPrimary,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 8),
//
//             // Shop ID centered
//             Center(
//               child: Text(
//                 'Shop ID-$shopId',
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: TColors.textPrimary,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 24),
//
//             // Image Section (Commented Out)
//             /*
//             Center(
//               child: Container(
//                 width: 300,
//                 height: 400,
//                 color: Colors.grey[300],
//                 alignment: Alignment.center,
//                 child: Text(
//                   'Shop Image\n(Placeholder)',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: TColors.textPrimary,
//                     fontSize: 14,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 24),
//             */
//
//             // Sample dynamic text section (replace with your dynamic content as needed)
//             Center(
//               child: Text(
//                 'Sample dynamic text about the shop.\nYou can replace this with any details you like.',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: TColors.textPrimary,
//                   fontSize: 14,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 24),
//
//             // Shop Info Card
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: TColors.primary, // FDFDFD for card background
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Shop Address
//                   Text(
//                     'Shop Address: $shopAddress',
//                     style: TextStyle(
//                       color: TColors.textPrimary,
//                       fontSize: 16,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   // Owner Name
//                   Text(
//                     'Owner Name: $ownerName',
//                     style: TextStyle(
//                       color: TColors.textPrimary,
//                       fontSize: 16,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   // Pin Code
//                   Text(
//                     'Pin Code: $pinCode',
//                     style: TextStyle(
//                       color: TColors.textPrimary,
//                       fontSize: 16,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   // Shop GST
//                   Text(
//                     'Shop GST: $shopGst',
//                     style: TextStyle(
//                       color: TColors.textPrimary,
//                       fontSize: 16,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   // Email
//                   Text(
//                     'Email ID: $ownerEmail',
//                     style: TextStyle(
//                       color: TColors.textPrimary,
//                       fontSize: 16,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   // Phone Number
//                   Text(
//                     'Phone No: $phoneNo',
//                     style: TextStyle(
//                       color: TColors.textPrimary,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 24),
//
//             // Offer Details Section Title
//             Text(
//               'Offer Details',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: TColors.textPrimary,
//               ),
//             ),
//             const SizedBox(height: 16),
//
//             // Offer Details Table
//             Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: TColors.primary, // FDFDFD for table background
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: DataTable(
//                 headingRowColor: MaterialStateColor.resolveWith(
//                       (_) => TColors.primary,
//                 ),
//                 columns: [
//                   DataColumn(
//                     label: Text(
//                       'Product ID',
//                       style: TextStyle(color: TColors.textPrimary),
//                     ),
//                   ),
//                   DataColumn(
//                     label: Text(
//                       'Product Description',
//                       style: TextStyle(color: TColors.textPrimary),
//                     ),
//                   ),
//                   DataColumn(
//                     label: Text(
//                       'Offer Original Price',
//                       style: TextStyle(color: TColors.textPrimary),
//                     ),
//                   ),
//                   DataColumn(
//                     label: Text(
//                       'Offer Discounted Price',
//                       style: TextStyle(color: TColors.textPrimary),
//                     ),
//                   ),
//                   DataColumn(
//                     label: Text(
//                       'Product Brand',
//                       style: TextStyle(color: TColors.textPrimary),
//                     ),
//                   ),
//                   DataColumn(
//                     label: Text(
//                       'Type',
//                       style: TextStyle(color: TColors.textPrimary),
//                     ),
//                   ),
//                   DataColumn(
//                     label: Text(
//                       'Quantity',
//                       style: TextStyle(color: TColors.textPrimary),
//                     ),
//                   ),
//                 ],
//                 rows: [
//                   DataRow(cells: [
//                     DataCell(Text('1', style: TextStyle(color: TColors.textPrimary))),
//                     DataCell(Text('redmi note 9 pro with damage part', style: TextStyle(color: TColors.textPrimary))),
//                     DataCell(Text('7000', style: TextStyle(color: TColors.textPrimary))),
//                     DataCell(Text('6500', style: TextStyle(color: TColors.textPrimary))),
//                     DataCell(Text('Mi', style: TextStyle(color: TColors.textPrimary))),
//                     DataCell(Text('MOBILE', style: TextStyle(color: TColors.textPrimary))),
//                     DataCell(Text('2', style: TextStyle(color: TColors.textPrimary))),
//                   ]),
//                   DataRow(cells: [
//                     DataCell(Text('2', style: TextStyle(color: TColors.textPrimary))),
//                     DataCell(Text('A machine used for day to day of barbers', style: TextStyle(color: TColors.textPrimary))),
//                     DataCell(Text('2500', style: TextStyle(color: TColors.textPrimary))),
//                     DataCell(Text('2000', style: TextStyle(color: TColors.textPrimary))),
//                     DataCell(Text('NPC', style: TextStyle(color: TColors.textPrimary))),
//                     DataCell(Text('MONDAL', style: TextStyle(color: TColors.textPrimary))),
//                     DataCell(Text('3', style: TextStyle(color: TColors.textPrimary))),
//                   ]),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//
//
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:trashee_dashboard/utils/constants/colors.dart';
//
// class ShopDetailPage extends StatelessWidget {
//   const ShopDetailPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // Retrieve shop data safely and ensure all values are strings
//     final Map<String, dynamic>? shopData = Get.arguments as Map<String, dynamic>?;
//
//     // Convert all values to strings to avoid type errors
//     final shopName = shopData?['Shop Name']?.toString() ?? 'N/A';
//     final shopId = shopData?['Shop ID']?.toString() ?? 'N/A';
//     final shopAddress = shopData?['Shop Address']?.toString() ?? 'N/A';
//     final shopGst = shopData?['Shop Gst']?.toString() ?? 'N/A';
//     final ownerName = shopData?['Owner Name']?.toString() ?? 'N/A';
//     final phoneNo = shopData?['Phone No']?.toString() ?? 'N/A';
//     final ownerEmail = shopData?['Owner Email']?.toString() ?? 'N/A';
//     final pinCode = shopData?['Pin Code']?.toString() ?? 'N/A';
//
//     return Scaffold(
//       backgroundColor: TColors.body,
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Product List / Shop Detail',
//               style: TextStyle(
//                 color: TColors.textPrimary,
//                 fontSize: 16,
//               ),
//             ),
//             const SizedBox(height: 16),
//             Center(
//               child: Text(
//                 shopName,
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   color: TColors.textPrimary,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 8),
//             Center(
//               child: Text(
//                 'Shop ID-$shopId',
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: TColors.textPrimary,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 24),
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: TColors.primary,
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text('Shop Address: $shopAddress', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
//                   const SizedBox(height: 8),
//                   Text('Owner Name: $ownerName', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
//                   const SizedBox(height: 8),
//                   Text('Pin Code: $pinCode', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
//                   const SizedBox(height: 8),
//                   Text('Shop GST: $shopGst', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
//                   const SizedBox(height: 8),
//                   Text('Email ID: $ownerEmail', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
//                   const SizedBox(height: 8),
//                   Text('Phone No: $phoneNo', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//------------------------------------------------------------------------
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:trashee_dashboard/utils/constants/colors.dart';
//
// class ShopDetailPage extends StatelessWidget {
//   const ShopDetailPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final Map<String, dynamic>? shopData = Get.arguments as Map<String, dynamic>?;
//
//     final shopName = shopData?['Shop Name']?.toString() ?? 'N/A';
//     final shopId = shopData?['Shop ID']?.toString() ?? 'N/A';
//     final shopAddress = shopData?['Shop Address']?.toString() ?? 'N/A';
//     final shopGst = shopData?['Shop Gst']?.toString() ?? 'N/A';
//     final ownerName = shopData?['Owner Name']?.toString() ?? 'N/A';
//     final phoneNo = shopData?['Phone No']?.toString() ?? 'N/A';
//     final ownerEmail = shopData?['Owner Email']?.toString() ?? 'N/A';
//     final pinCode = shopData?['Pin Code']?.toString() ?? 'N/A';
//
//     List<Map<String, String>> offerDetails = [
//       {
//         'ID': '182',
//         'Product Name': 'Gel Extensions',
//         'Product Description': 'Gel extensions with stones and art',
//         'Offer Original Price': '1500',
//         'Offer Discounted Price': '1200',
//         'Product Brand': 'Ranara',
//         'Offer Type': 'INDIVIDUAL',
//         'Quantity': '10',
//       },
//       {
//         'ID': '192',
//         'Product Name': 'Makeup',
//         'Product Description': 'A makeup that tells your story of elegance',
//         'Offer Original Price': '2500',
//         'Offer Discounted Price': '2000',
//         'Product Brand': 'MAC',
//         'Offer Type': 'INDIVIDUAL',
//         'Quantity': '10',
//       }
//     ];
//
//     return Scaffold(
//       backgroundColor: TColors.body,
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Product List / Shop Detail',
//               style: TextStyle(
//                 color: TColors.textPrimary,
//                 fontSize: 16,
//               ),
//             ),
//             const SizedBox(height: 16),
//             Center(
//               child: Text(
//                 shopName,
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   color: TColors.textPrimary,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 8),
//             Center(
//               child: Text(
//                 'Shop ID-$shopId',
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: TColors.textPrimary,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 24),
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: TColors.primary,
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text('Shop Address: $shopAddress', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
//                   const SizedBox(height: 8),
//                   Text('Owner Name: $ownerName', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
//                   const SizedBox(height: 8),
//                   Text('Pin Code: $pinCode', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
//                   const SizedBox(height: 8),
//                   Text('Shop GST: $shopGst', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
//                   const SizedBox(height: 8),
//                   Text('Email ID: $ownerEmail', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
//                   const SizedBox(height: 8),
//                   Text('Phone No: $phoneNo', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 24),
//             Text(
//               'Offer Details',
//               style: TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//                 color: TColors.textPrimary,
//               ),
//             ),
//             const SizedBox(height: 16),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: DataTable(
//                 columns: offerDetails[0].keys.map((key) => DataColumn(label: Text(key))).toList(),
//                 rows: offerDetails.map((offer) {
//                   return DataRow(cells: offer.values.map((value) => DataCell(Text(value))).toList());
//                 }).toList(),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';

class ShopDetailPage extends StatelessWidget {
  const ShopDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? shopData = Get.arguments as Map<String, dynamic>?;

    final shopName = shopData?['Shop Name']?.toString() ?? 'N/A';
    final shopId = shopData?['Shop ID']?.toString() ?? 'N/A';
    final shopAddress = shopData?['Shop Address']?.toString() ?? 'N/A';
    final shopGst = shopData?['Shop Gst']?.toString() ?? 'N/A';
    final ownerName = shopData?['Owner Name']?.toString() ?? 'N/A';
    final phoneNo = shopData?['Phone No']?.toString() ?? 'N/A';
    final ownerEmail = shopData?['Owner Email']?.toString() ?? 'N/A';
    final pinCode = shopData?['Pin Code']?.toString() ?? 'N/A';
    final imageUrl = shopData?['Image']?.toString() ?? 'assets/images/reviews/review_profile_image_2.jpeg'; // Get image URL

    List<Map<String, String>> offerDetails = [
      {
        'ID': '182',
        'Product Name': 'Gel Extensions',
        'Product Description': 'Gel extensions with stones and art',
        'Offer Original Price': '1500',
        'Offer Discounted Price': '1200',
        'Product Brand': 'Ranara',
        'Offer Type': 'INDIVIDUAL',
        'Quantity': '10',
      },
      {
        'ID': '192',
        'Product Name': 'Makeup',
        'Product Description': 'A makeup that tells your story of elegance',
        'Offer Original Price': '2500',
        'Offer Discounted Price': '2000',
        'Product Brand': 'MAC',
        'Offer Type': 'INDIVIDUAL',
        'Quantity': '10',
      }
    ];

    return Scaffold(
      backgroundColor: TColors.body,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back, color: TColors.textPrimary),
            ),
            Text(
              'Product List / Shop Detail',
              style: TextStyle(
                color: TColors.textPrimary,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: imageUrl.isNotEmpty
                        ? Image.network(
                      imageUrl,
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/images/default_shop.png', // Default image path
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        );
                      },
                    )
                        : Image.asset(
                      'assets/images/default_shop.png', // Default image path
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    shopName,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: TColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Shop ID-$shopId',
                    style: TextStyle(
                      fontSize: 18,
                      color: TColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: TColors.primary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Shop Address: $shopAddress', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
                  const SizedBox(height: 8),
                  Text('Owner Name: $ownerName', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
                  const SizedBox(height: 8),
                  Text('Pin Code: $pinCode', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
                  const SizedBox(height: 8),
                  Text('Shop GST: $shopGst', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
                  const SizedBox(height: 8),
                  Text('Email ID: $ownerEmail', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
                  const SizedBox(height: 8),
                  Text('Phone No: $phoneNo', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Offer Details',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: TColors.textPrimary,
              ),
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: offerDetails[0].keys.map((key) => DataColumn(label: Text(key))).toList(),
                rows: offerDetails.map((offer) {
                  return DataRow(cells: offer.values.map((value) => DataCell(Text(value))).toList());
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';

class RejectedTablePage extends StatelessWidget {
  const RejectedTablePage({Key? key}) : super(key: key);

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
    final rejectedCount = shopData?['Rejected Count']?.toString() ?? 'N/A';
    final rejectionReason = shopData?['Rejection Reason']?.toString() ?? 'N/A';
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
            Text(
              'Rejected Shop',
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
                  Text('Rejected Count: $rejectedCount ', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
                  Text('Rejection Reason: $rejectionReason ', style: TextStyle(color: TColors.textPrimary, fontSize: 16)),
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApprovalScreen extends StatelessWidget {
  final dynamic data = Get.arguments; // Receiving data dynamically

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Details")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                data?["imageUrl"] ?? "https://via.placeholder.com/400", // Placeholder if no image
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            // Product Details
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                infoCard("Offer Name", data?["offerName"] ?? "N/A"),
                infoCard("Brand Name", data?["brandName"] ?? "N/A"),
                infoCard("Original Price", "₹${data?["originalPrice"] ?? "0"}"),
                infoCard("Discount Price", "₹${data?["discountPrice"] ?? "0"}"),
                infoCard("Created At", data?["createdAt"] ?? "N/A"),
                infoCard("Total Quantity", data?["quantity"]?.toString() ?? "0"),
              ],
            ),
            SizedBox(height: 10),
            // Offer Description
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  data?["description"] ?? "No description available.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(height: 16),
            // Shop Details
            Text("Shop Name: ${data?["shopName"] ?? "N/A"}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                infoCard("Shop Address", data?["shopAddress"] ?? "N/A"),
                infoCard("Subscription Type", data?["subscriptionType"] ?? "N/A"),
                infoCard("Owner Name", data?["ownerName"] ?? "N/A"),
                infoCard("Phone Number", data?["phone"] ?? "N/A"),
                infoCard("Email ID", data?["email"] ?? "N/A"),
              ],
            ),
            SizedBox(height: 20),
            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                  onPressed: () => Get.back(),
                  child: Text("Back"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {},
                  child: Text("Approve"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget infoCard(String title, String value) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            Text(value, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

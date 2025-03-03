/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';

class EditShopDetailsScreen extends StatelessWidget {
  const EditShopDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String>? shopData = Get.arguments as Map<String, String>?;

    final TextEditingController shopNameController =
    TextEditingController(text: shopData?["Shop Name"] ?? "");
    final TextEditingController shopAddressController =
    TextEditingController(text: shopData?["Shop Address"] ?? "");
    final TextEditingController pinCodeController =
    TextEditingController(text: shopData?["Pin Code"] ?? "");
    final TextEditingController shopGstController =
    TextEditingController(text: shopData?["Shop Gst"] ?? "");

    return Scaffold(
      backgroundColor: TColors.body,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: TColors.textPrimary),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          "Edit Shop Details",
          style: TextStyle(color: TColors.textPrimary, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: shopNameController,
              decoration: const InputDecoration(
                labelText: "Shop Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: shopAddressController,
              decoration: const InputDecoration(
                labelText: "Shop Address",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: shopGstController,
              decoration: const InputDecoration(
                labelText: "Shop GST",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: pinCodeController,
              decoration: const InputDecoration(
                labelText: "Pin Code",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: TColors.buttonPrimary,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: const Text("Save Changes", style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/


//-----------------------------------------------------------------------------


/*

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';

class EditShopDetailsScreen extends StatefulWidget {
  const EditShopDetailsScreen({Key? key}) : super(key: key);

  @override
  _EditShopDetailsScreenState createState() => _EditShopDetailsScreenState();
}

class _EditShopDetailsScreenState extends State<EditShopDetailsScreen> {
  final picker = ImagePicker();
  File? _imageFile;

  Future<void> _pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, String>? shopData = Get.arguments as Map<String, String>?;

    final TextEditingController shopNameController =
    TextEditingController(text: shopData?["Shop Name"] ?? "");
    final TextEditingController shopAddressController =
    TextEditingController(text: shopData?["Shop Address"] ?? "");
    final TextEditingController pinCodeController =
    TextEditingController(text: shopData?["Pin Code"] ?? "");
    final TextEditingController shopGstController =
    TextEditingController(text: shopData?["Shop Gst"] ?? "");

    return Scaffold(
      backgroundColor: TColors.body,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: TColors.textPrimary),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          "Edit Shop Details",
          style: TextStyle(color: TColors.textPrimary, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Section
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: _imageFile != null
                        ? FileImage(_imageFile!)
                        : const AssetImage("assets/images/default_shop.png") as ImageProvider,
                    onBackgroundImageError: (_, __) => const Icon(Icons.store, size: 50, color: Colors.grey),
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit, color: Colors.white),
                    onPressed: _pickImage,
                    style: IconButton.styleFrom(
                      backgroundColor: TColors.buttonPrimary,
                      padding: const EdgeInsets.all(8),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Text Fields
            TextField(
              controller: shopNameController,
              decoration: const InputDecoration(labelText: "Shop Name", border: OutlineInputBorder()),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: shopAddressController,
              decoration: const InputDecoration(labelText: "Shop Address", border: OutlineInputBorder()),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: shopGstController,
              decoration: const InputDecoration(labelText: "Shop GST", border: OutlineInputBorder()),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: pinCodeController,
              decoration: const InputDecoration(labelText: "Pin Code", border: OutlineInputBorder()),
            ),
            const SizedBox(height: 24),

            // Save Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: TColors.buttonPrimary,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: const Text("Save Changes", style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/

//-----------------------------------------------------------------------------
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';

class EditShopDetailsScreen extends StatefulWidget {
  const EditShopDetailsScreen({Key? key}) : super(key: key);

  @override
  State<EditShopDetailsScreen> createState() => _EditShopDetailsScreenState();
}

class _EditShopDetailsScreenState extends State<EditShopDetailsScreen> {
  final ImagePicker picker = ImagePicker();
  File? _imageFile;

  Future<void> _pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, String>? shopData = Get.arguments as Map<String, String>?;

    final TextEditingController shopNameController =
    TextEditingController(text: shopData?["Shop Name"] ?? "");
    final TextEditingController shopAddressController =
    TextEditingController(text: shopData?["Shop Address"] ?? "");
    final TextEditingController pinCodeController =
    TextEditingController(text: shopData?["Pin Code"] ?? "");
    final TextEditingController shopGstController =
    TextEditingController(text: shopData?["Shop Gst"] ?? "");

    return Scaffold(
      backgroundColor: TColors.body,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: TColors.textPrimary),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          "Edit Shop Details",
          style: TextStyle(
              color: TColors.textPrimary,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Section
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: _imageFile != null
                        ? Image.file(_imageFile!,
                        width: 320, height: 320, fit: BoxFit.cover)
                        : Image.asset("assets/images/banners/banner_1.jpg",
                        width: 320, height: 320, fit: BoxFit.cover),
                  ),
                  Positioned(
                    bottom: 4,
                    right: 4,
                    child: GestureDetector(
                      onTap: _pickImage,
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: TColors.buttonPrimary,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 4,
                              spreadRadius: 1,
                            )
                          ],
                        ),
                        child: const Icon(Icons.edit, color: Colors.white, size: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Text Fields
            _buildTextField("Shop Name", shopNameController),
            const SizedBox(height: 16),
            _buildTextField("Shop Address", shopAddressController),
            const SizedBox(height: 16),
            _buildTextField("Shop GST", shopGstController),
            const SizedBox(height: 16),
            _buildTextField("Pin Code", pinCodeController),
            const SizedBox(height: 24),

            // Save Button
            Center(
              child: ElevatedButton(
                onPressed: () => Get.back(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: TColors.buttonPrimary,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 3,
                ),
                child: const Text("Save Changes",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Reusable TextField Widget
  Widget _buildTextField(String label, TextEditingController controller) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(fontSize: 16),
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
    );
  }
}
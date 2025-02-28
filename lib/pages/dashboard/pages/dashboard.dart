/*
import 'package:flutter/material.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';
import '../features/class/detail.dart';

class DashboardDesktopScreen extends StatelessWidget {
  final List<Detail> details;
  const DashboardDesktopScreen({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.body, // Keeping the original background
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dashboard Header
            const Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Dashboard",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Grid wrapped inside a container
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Two-column layout as per the image
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 10, // Keeping proportions the same
                  ),
                  itemCount: details.length,
                  itemBuilder: (context, index) {
                    return DetailListTile(
                      title: details[index].title,
                      value: details[index].value.toDouble(),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailListTile extends StatelessWidget {
  final String title;
  final double value;

  const DetailListTile({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60, // Keeping the original height
      width: double.infinity, // Keeping the original width
      decoration: BoxDecoration(
        color: TColors.primary, // Keeping the original color
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            value.toStringAsFixed(0),
            style: const TextStyle(fontSize: 16, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';
import '../../../common/widgets/responsive/responsive_design.dart';
import '../features/class/detail.dart';

class DashboardScreen extends StatelessWidget {
  final List<Detail> details;
  const DashboardScreen({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return TResponsiveWidget(
      desktop: DashboardLayout(
          details: details, crossAxisCount: 2), // 4 columns for desktop
      tablet: DashboardLayout(
          details: details, crossAxisCount: 2), // 2 columns for tablet
      mobile: DashboardLayout(
          details: details, crossAxisCount: 1), // 1 column for mobile
    );
  }
}

class DashboardLayout extends StatelessWidget {
  final List<Detail> details;
  final int crossAxisCount;

  const DashboardLayout({
    super.key,
    required this.details,
    required this.crossAxisCount,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.body,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Dashboard",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                /*decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 2),
                  ],
                ),*/
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount, // Dynamic based on device
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio:
                        7, // Adjusted aspect ratio for better responsiveness
                  ),
                  itemCount: details.length,
                  itemBuilder: (context, index) {
                    return DetailListTile(
                      title: details[index].title,
                      value: details[index].value.toDouble(),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailListTile extends StatelessWidget {
  final String title;
  final double value;

  const DetailListTile({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TColors.primary,
        borderRadius: BorderRadius.circular(12.0),
      ),
     /* decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 2),
        ],
      ),*/
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis),
            ),
          ),
          Text(
            value.toStringAsFixed(0),
            style: const TextStyle(fontSize: 16, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}

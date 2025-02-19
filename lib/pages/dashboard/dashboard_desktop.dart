import 'package:flutter/material.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';
import 'package:trashee_dashboard/utils/constants/sizes.dart';

class DashboardDesktopScreen extends StatelessWidget {
  const DashboardDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.body,
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Dashboard',style: Theme.of(context).textTheme.headlineLarge,),
            SizedBox(height: TSizes.spaceBtwSections,),
          ],
        ),),
      ),
    );
  }
}

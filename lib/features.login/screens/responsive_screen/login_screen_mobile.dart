import 'package:flutter/material.dart';
import 'package:trashee_dashboard/utils/constants/sizes.dart';
import '../../../utils/constants/colors.dart';
import '../widgets/login_form.dart';
import '../widgets/login_header.dart';

class LoginScreenMobile extends StatelessWidget {
  const LoginScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.white, // ✅ Fix: Add background color here
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          // Header Section
          children: [
            // Header Section
            TLoginHeader(),

            // Form Section
            TLoginForm(),
          ],
        ),),
      ),
    );
  }
}

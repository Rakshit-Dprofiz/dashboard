import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../widgets/sign_in_form.dart';
import '../widgets/sign_in_header.dart';

class SignScreenMobile extends StatelessWidget {
  const SignScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.white, // ✅ Fix: Add background color here
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            // Header Section
            children: [
              // Header Section
              TSignInHeader(),

              // Form Section
              TSignInForm(),
            ],
          ),
        ),
      ),
    );
  }
}

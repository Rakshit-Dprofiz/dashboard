import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../app.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class TSignInForm extends StatelessWidget {
  const TSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                filled: true, // Enables the background color
                fillColor: TColors.body, // Light gray background for better UI
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: TColors.body),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: TColors.body),
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Name',
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            TextFormField(
              decoration: InputDecoration(
                filled: true, // Enables the background color
                fillColor: TColors.body, // Light gray background for better UI
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: TColors.body),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: TColors.body),
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Email',
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            TextFormField(
              decoration: InputDecoration(
                  filled: true, // Enables the background color
                  fillColor:
                  TColors.body, // Light gray background for better UI
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: TColors.body),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: TColors.body),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Password',
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: Icon(Iconsax.eye_slash))),
            ),
            SizedBox(
              height: TSizes.spaceBtwSections / 2,
            ),

            // Signup button

            SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResponsiveDesignScreen()),
                    );
                  },
                  child: Text(TTexts.signUp),
                )),
          ],
        ),
      ),
    );
  }
}

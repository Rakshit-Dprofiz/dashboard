import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trashee_dashboard/features.sign/screens/sign_in.dart';
import 'package:trashee_dashboard/routes/routes.dart';

import '../../../app.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> _obscureText = ValueNotifier(true);
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
                hintText: 'Email',
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            // Password Field with Toggle Visibility
            ValueListenableBuilder<bool>(
              valueListenable: _obscureText,
              builder: (context, value, child) {
                return TextFormField(
                  obscureText: value,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: TColors.body,
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
                      onPressed: () => _obscureText.value = !_obscureText.value,
                      icon: Icon(value ? Iconsax.eye_slash : Iconsax.eye),
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: TSizes.spaceBtwSections / 2,
            ),

            // Remember me or forget password
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Row(
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         Checkbox(value: true, onChanged: (value) {}),
            //         Text(TTexts.rememberMe),
            //       ],
            //     ),
            //     TextButton(
            //         onPressed: () => Get.toNamed(TRoutes.forgetPassword),
            //         child: Text(TTexts.forgetPassword)),
            //   ],
            // ),
            // Signin button
            SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(TRoutes.ResponsiveDesignScreen);
                  },

                  child: Text(TTexts.signIn),
                )),
            SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInScreen()),
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
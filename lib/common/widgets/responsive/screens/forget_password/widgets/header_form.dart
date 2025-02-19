import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../routes/routes.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/constants/text_strings.dart';

class HeaderAndForm extends StatelessWidget {
  const HeaderAndForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () => Get.back(), icon: const Icon(Iconsax.arrow_left)),
        SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        Text(
          TTexts.forgetPassword,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        Text(
          TTexts.forgetPasswordSubTitle,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        SizedBox(
          height: TSizes.spaceBtwSections * 2,
        ),

        // form
        Form(
          child: TextFormField(
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
                suffixIcon: IconButton(
                    onPressed: () {}, icon: Icon(Iconsax.eye_slash))),
          ),
        ),
        SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.toNamed(TRoutes.resetPassword, arguments: 'Some@rmail.com'),
              child: Text(TTexts.submit)),
        ),
        SizedBox(
          height: TSizes.spaceBtwSections * 2,
        )
      ],
    );
  }
}

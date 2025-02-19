import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trashee_dashboard/common/widgets/layouts/templates/login_template.dart';
import 'package:trashee_dashboard/utils/constants/sizes.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import '../../../../../../routes/routes.dart';
import '../../../../../../utils/constants/image_strings.dart';
import '../../../../../../utils/constants/text_strings.dart';

class ResetPasswordScreenMobile extends StatelessWidget {
  const ResetPasswordScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final email = ModalRoute.of(context)?.settings.arguments as String? ?? '';

    return TLoginTemplate(
      child: Column(
        children: [
          // Header
          IconButton(
            onPressed: () => Get.offAllNamed(TRoutes.login),
            icon: const Icon(CupertinoIcons.clear),
          ),
          const SizedBox(height: TSizes.spaceBtwItems),

          // Image
          const Image(
            image: AssetImage(TImages.deliveredEmailIllustration),
            width: 300,
            height: 300,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),

          // Title & SubTitle
          Text(
            TTexts.changeYourPasswordTitle,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(
            email,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(
            TTexts.changeYourPasswordSubTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(height: TSizes.spaceBtwSections),

          // button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () => Get.back(), child: Text(TTexts.done)),
          ),
          SizedBox(height: TSizes.spaceBtwItems,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () => Get.back(), child: Text(TTexts.resendEmail)),
          ),

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trashee_dashboard/utils/constants/image_strings.dart';
import 'package:trashee_dashboard/utils/constants/sizes.dart';

import '../../../utils/constants/text_strings.dart';

class TSignInHeader extends StatelessWidget {
  const TSignInHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Image(
            image: AssetImage(TImages.darkAppLogo),
            width: 100,
            height: 100,
          ),
          SizedBox(height: TSizes.spaceBtwSections),
          Text(
            TTexts.signupTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: TSizes.sm),
          Text(
            TTexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}

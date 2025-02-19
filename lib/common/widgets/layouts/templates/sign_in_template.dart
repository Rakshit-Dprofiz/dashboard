import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/spacing_style.dart';

class TSignInTemplate extends StatelessWidget {
  const TSignInTemplate({super.key , required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TColors.body, // Added background color
      child: Center(
        child: SizedBox(
          width: 550,
          child: SingleChildScrollView(
            child: Container(
              padding: TSpaceStyle.paddingWithAppBarHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
                color: TColors.white,
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

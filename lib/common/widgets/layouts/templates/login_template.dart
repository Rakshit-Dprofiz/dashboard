import 'package:flutter/cupertino.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';
import 'package:trashee_dashboard/utils/constants/sizes.dart';
import 'package:trashee_dashboard/utils/constants/spacing_style.dart';

class TLoginTemplate extends StatelessWidget {
  const TLoginTemplate({super.key , required this.child});
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

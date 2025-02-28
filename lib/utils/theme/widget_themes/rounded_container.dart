import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class TRounderContainer extends StatelessWidget {
  const TRounderContainer({
    super.key,
    this.child,
    this.radius = TSizes.cardRadiusLg,
    this.width,
    this.height,
    this.showBoarder = true,
    this.showShadow = false,
    this.borderColor = TColors.borderPrimary,
    this.margin,
    this.padding = const EdgeInsets.all(TSizes.md),
    this.background = TColors.white,
    this.onTap,
  });

  final Widget? child;
  final double radius;
  final double? width;
  final double? height;
  final bool showBoarder;
  final bool showShadow;
  final Color borderColor;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Color background;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(radius),
          border: showBoarder ? Border.all(color: borderColor) : null,
          boxShadow: [
            if (showShadow)
              BoxShadow(
                color: TColors.gray.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 8,
                offset: const Offset(0, 3),
              )
          ],
        ),
        child: child,
      ),
    );
  }
}

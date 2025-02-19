import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trashee_dashboard/common/widgets/layouts/sidebars/controller/sidebar_controller.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class TMenuItem extends StatelessWidget {
  const TMenuItem({
    super.key,
    required this.route,
    required this.icon,
    required this.itemName,
  });
  final String route;
  final IconData icon;
  final String itemName;
  @override
  Widget build(BuildContext context) {
    final menuController = Get.put(SidebarController());
    return InkWell(
      onTap: () => menuController.menuOnTop(route),
      onHover: (hovering) => hovering
          ? menuController.changeHoverItem(route)
          : menuController.changeHoverItem(''),
      child: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(vertical: TSizes.xs),
          child: Container(
            decoration: BoxDecoration(
                color: menuController.isHovering(route) ||
                        menuController.isActive(route)
                    ? TColors.buttonPrimary
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(TSizes.cardRadiusMd)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // icon
                Padding(
                  padding: EdgeInsets.only(
                      left: TSizes.lg,
                      top: TSizes.md,
                      bottom: TSizes.lg,
                      right: TSizes.md),
                  child: menuController.isActive(route)
                      ? Icon(
                          icon,
                          size: 22,
                          color: TColors.white,
                        )
                      : Icon(
                          icon,
                          size: 22,
                          color: menuController.isHovering(route)
                              ? TColors.white
                              : TColors.darkGray,
                        ),
                ),

                // Text
                if (menuController.isHovering(route) ||
                    menuController.isActive(route))
                  Flexible(
                    child: Text(
                      itemName,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: TColors.white),
                    ),
                  )
                else
                  Flexible(
                      child: Text(
                    itemName,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: TColors.white),
                  )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

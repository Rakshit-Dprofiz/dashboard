import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trashee_dashboard/common/widgets/images/t_rounded_images.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';
import 'package:trashee_dashboard/utils/constants/image_strings.dart';
import 'package:trashee_dashboard/utils/constants/sizes.dart';
import 'package:trashee_dashboard/utils/device/device_utility.dart';

class THeader extends StatelessWidget implements PreferredSizeWidget {
  const THeader({super.key, this.scaffoldKey});
  // GlobalKey to access the scaffold state
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TColors.primary,
        border: Border(
          bottom: BorderSide(color: TColors.headerBackground, width: 1),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: TSizes.md, vertical: TSizes.sm),
      child: AppBar(
        backgroundColor:TColors.primary,
        leading: !TDeviceUtils.isDesktopScreen(context)
            ? IconButton(
                onPressed: () => scaffoldKey?.currentState?.openDrawer(),
                icon: Icon(Iconsax.menu))
            : null,
        title: TDeviceUtils.isDesktopScreen(context)
            ? SizedBox(
                width: 400,
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
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search...',
                  ),
                ),

        )
            : null,
        // Action
        actions: [
          if (!TDeviceUtils.isDesktopScreen(context))
            IconButton(onPressed: () {}, icon: Icon(Iconsax.search_normal)),
          SizedBox(width: TSizes.spaceBtwItems / 2),

          // user data
          Row(
            children: [
              // make it in t_rounder_image.dart
              TRoundedImages(
                imageType: ImageType.asset,
                image: TImages.user,
                width: 40,
                height: 40,
                padding: 2,
              ),
              SizedBox(
                width: TSizes.sm,
              ),
              if(!TDeviceUtils.isMobileScreen(context))
              Column(
                children: [
                  Text('Trashee' , style: Theme.of(context).textTheme.titleLarge,),
                  Text('support@Trashee.com' , style: Theme.of(context).textTheme.labelMedium),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(TDeviceUtils.getAppBarHeight() + 15);
}

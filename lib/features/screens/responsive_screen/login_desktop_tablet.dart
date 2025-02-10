import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';
import 'package:trashee_dashboard/utils/constants/image_strings.dart';
import 'package:trashee_dashboard/utils/constants/sizes.dart';
import 'package:trashee_dashboard/utils/constants/spacing_style.dart';
import 'package:trashee_dashboard/utils/constants/text_srtings.dart';

class LoginScreenDesktopTablet extends StatelessWidget {
  const LoginScreenDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 550,
        child: SingleChildScrollView(
          child: Container(
            padding: TSpaceStyle.paddingWithAppBarHeight,
            decoration: BoxDecoration(
              color: TColors.white,
              borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Section
                SizedBox(
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
                        TTexts.loginTitle,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      SizedBox(height: TSizes.sm),
                      Text(
                        TTexts.loginSubTitle,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),

                // Form Section
                Form(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            filled: true, // Enables the background color
                            fillColor: TColors
                                .body, // Light gray background for better UI
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: TColors.body),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: TColors.body),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            hintText: 'Email',
                          ),
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              filled: true, // Enables the background color
                              fillColor: TColors
                                  .body, // Light gray background for better UI
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: TColors.body),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: TColors.body),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Iconsax.eye_slash))),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

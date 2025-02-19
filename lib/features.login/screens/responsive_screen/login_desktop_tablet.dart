import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trashee_dashboard/app.dart';
import 'package:trashee_dashboard/common/widgets/layouts/templates/login_template.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';
import 'package:trashee_dashboard/utils/constants/image_strings.dart';
import 'package:trashee_dashboard/utils/constants/sizes.dart';
import 'package:trashee_dashboard/utils/constants/text_strings.dart';

import '../../../routes/routes.dart';
import '../widgets/login_form.dart';
import '../widgets/login_header.dart';

class LoginScreenDesktopTablet extends StatelessWidget {
  const LoginScreenDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TColors.body, // Set the background color
      child: TLoginTemplate(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            TLoginHeader(),

            // Form Section
            TLoginForm(),
          ],
        ),
      ),
    );
  }
}





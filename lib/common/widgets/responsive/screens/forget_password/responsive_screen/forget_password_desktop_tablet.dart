import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trashee_dashboard/common/widgets/responsive/screens/forget_password/forget_password.dart';
import 'package:trashee_dashboard/routes/routes.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/constants/text_strings.dart';
import '../../../../layouts/templates/login_template.dart';
import '../widgets/header_form.dart';

class ForgetPasswordScreenDesktopTablet extends StatelessWidget {
  const ForgetPasswordScreenDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return TLoginTemplate(
        child: HeaderAndForm());
  }
}


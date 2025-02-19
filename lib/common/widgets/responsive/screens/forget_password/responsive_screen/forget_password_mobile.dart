import 'package:flutter/material.dart';
import 'package:trashee_dashboard/common/widgets/responsive/screens/forget_password/widgets/header_form.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';

class ForgetPasswordScreenMobile extends StatelessWidget {
  const ForgetPasswordScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: TColors.white,
      body: SingleChildScrollView(

        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: HeaderAndForm(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../common/widgets/layouts/templates/sign_in_template.dart';
import '../../../utils/constants/colors.dart';
import '../widgets/sign_in_form.dart';
import '../widgets/sign_in_header.dart';

class  SignScreenDesktopTablet extends StatelessWidget {
  const  SignScreenDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TColors.body, // Set the background color
      child: TSignInTemplate(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            TSignInHeader(),

            // Form Section
            TSignInForm(),
          ],
        ),
      ),
    );
  }
}

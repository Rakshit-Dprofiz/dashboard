import 'package:flutter/material.dart';
import 'package:trashee_dashboard/features.sign/screens/responsive_screen/sign_desktop_tablet.dart';
import 'package:trashee_dashboard/features.sign/screens/responsive_screen/sign_screen_mobile.dart';

import '../../common/widgets/layouts/templates/site_layout.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TSiteTemplate(
      useLayout: false,
      desktop: SignScreenDesktopTablet() ,
      mobile: SignScreenMobile() ,
    );
  }
}

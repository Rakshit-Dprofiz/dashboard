import 'package:flutter/material.dart';
import 'package:trashee_dashboard/common/widgets/layouts/templates/site_layout.dart';
import 'package:trashee_dashboard/features/screens/responsive_screen/login_desktop_tablet.dart';
import 'package:trashee_dashboard/features/screens/responsive_screen/login_screen_mobile.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TSiteTemplate(
      useLayout: false,
      desktop: LoginScreenDesktopTablet() ,
      mobile: LoginScreenMobile(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:trashee_dashboard/common/widgets/layouts/templates/site_layout.dart';
import 'package:trashee_dashboard/common/widgets/responsive/screens/reset_password/responsive%20_screen/reset_password_desktop_tablet.dart';
import 'package:trashee_dashboard/common/widgets/responsive/screens/reset_password/responsive%20_screen/reset_password_mobile.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TSiteTemplate(
      useLayout: false,
      desktop: ResetPasswordScreenDesktopTablet(),
      mobile: ResetPasswordScreenMobile(),
    );
  }
}

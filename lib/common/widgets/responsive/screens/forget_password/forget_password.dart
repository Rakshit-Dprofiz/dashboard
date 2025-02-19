import 'package:flutter/cupertino.dart';
import 'package:trashee_dashboard/common/widgets/layouts/templates/site_layout.dart';
import 'package:trashee_dashboard/common/widgets/responsive/screens/forget_password/responsive_screen/forget_password_desktop_tablet.dart';
import 'package:trashee_dashboard/common/widgets/responsive/screens/forget_password/responsive_screen/forget_password_mobile.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TSiteTemplate(
      useLayout: false,
      desktop: ForgetPasswordScreenDesktopTablet(),
      mobile: ForgetPasswordScreenMobile(),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:trashee_dashboard/app.dart';

class TResponsiveWidget extends StatelessWidget {
  const TResponsiveWidget({super.key , required this .desktop ,required this .tablet ,required this .mobile });

  //Widget for desktop layout
  final Widget desktop;
  //Widget for tablet layout
  final Widget tablet;
  //Widget for mobile layout
  final Widget mobile;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (_, constrains) {
          if (constrains.maxWidth >= 1366) {
            return desktop;
          } else if (constrains.maxWidth >= 768) {
            return  tablet;
          } else {
            return  mobile;
          }
        }
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:trashee_dashboard/common/widgets/containers/container.dart';
//
// class DesktopLayout extends StatelessWidget {
//   const DesktopLayout({super.key , this.body});
//   final Widget? body;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           Expanded(child: Drawer()),
//           Expanded(
//               child: Column(
//                 children: [
//                   // header
//                   TRoundedContainer(
//                       width: double.infinity,
//                       height: 75,
//                       backgroundColor: Colors.yellow.withOpacity(0.2)),
//                   // body
//                   body ?? SizedBox()
//                 ],
//               ))
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:trashee_dashboard/common/widgets/layouts/headers/header.dart';
import 'package:trashee_dashboard/common/widgets/layouts/sidebars/sidebar.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';

class DesktopLayout extends StatelessWidget {
  DesktopLayout({super.key, this.body});
  final Widget? body;

  // final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.body,
      // key: scaffoldKey,
      body: Row(
        children: [
          // Sidebar Drawer
          const Expanded(
            child: TSideBar(),
          ),

          // Main content area
          Expanded(
            flex: 5, // Makes the content area larger than the drawer
            child: Column(
              children: [
                // Header
                THeader(),

                // Body with scroll support if content is too long
                Expanded(
                  child: body ?? const SizedBox(), // Empty state
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

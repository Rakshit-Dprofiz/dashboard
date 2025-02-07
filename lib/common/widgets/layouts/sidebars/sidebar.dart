// import 'package:flutter/material.dart';
// import 'package:trashee_dashboard/utils/constants/colors.dart';
//
// class TSideBar extends StatelessWidget {
//   const TSideBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       shape: BeveledRectangleBorder(),
//       child: Container(
//         decoration: BoxDecoration(
//           color: TColors.white,
//           border: Border(right: BorderSide(color: TColors.gray, width: 1))
//         ),
//         child: ListView(
//
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:trashee_dashboard/common/widgets/images/t_rounded_images.dart';
// import 'package:trashee_dashboard/utils/constants/colors.dart';
// import 'package:trashee_dashboard/utils/constants/image_strings.dart';
//
// class TSideBar extends StatelessWidget {
//   const TSideBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       shape: BeveledRectangleBorder(),
//       child: Container(
//         decoration: BoxDecoration(
//             color: TColors.white,
//             border: Border(right: BorderSide(color: TColors.gray, width: 1))),
//         child: Column(
//           children: [
//             TRoundedImages(width: 200,
//               height: 100,
//               image: TImages.darkAppLogo,
//               imageType: ImageType.asset,)
//             //
//           ],
//         ),
//       ),
//     );
//   }
// }

//--------------------------------------------------------------------------------------------------------------

//
// import 'package:flutter/material.dart';
// import 'package:trashee_dashboard/common/widgets/images/t_rounded_images.dart';
// import 'package:trashee_dashboard/utils/constants/colors.dart';
// import 'package:trashee_dashboard/utils/constants/image_strings.dart';
//
// class TSideBar extends StatelessWidget {
//   const TSideBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       shape: BeveledRectangleBorder(),
//       child: Column(
//         children: [
//           // Logo Section
//           TRoundedImages(
//             width: 200,
//             height: 100,
//             image: TImages.darkAppLogo,
//             imageType: ImageType.asset,
//           ),
//           // Scrollable ListView
//           Expanded(
//             child: ListView(
//               children: [
//                 _buildMenuItem(Icons.dashboard, 'Dashboard'),
//                 _buildExpandableMenu(Icons.store, 'Shops', [
//                   _buildSubMenuItem('Dashboard'),
//                   _buildSubMenuItem('Draft', badge: 16),
//                   _buildSubMenuItem('Add Product'),
//                 ]),
//                 _buildExpandableMenu(Icons.people, 'Offers', []),
//                 _buildExpandableMenu(Icons.shopping_cart, 'User', []),
//                 _buildExpandableMenu(Icons.settings, 'Pay & plan', []),
//                 _buildExpandableMenu(Icons.analytics, 'Account Pages', []),
//                 _buildMenuItem(Icons.campaign, 'Promote'),
//                 const Divider(),
//                 // Help & Theme Toggle Section
//                 ListTile(
//                   leading: Icon(Icons.help_outline),
//                   title: Text('Help & getting started'),
//                   trailing: CircleAvatar(
//                     radius: 10,
//                     backgroundColor: Colors.purple,
//                     child: Text('8', style: TextStyle(fontSize: 12, color: Colors.white)),
//                   ),
//                 ),
//                 SwitchListTile(
//                   title: Text('Light'),
//                   secondary: Icon(Icons.wb_sunny),
//                   value: true,
//                   onChanged: (val) {},
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // Simple Menu Item
//   Widget _buildMenuItem(IconData icon, String title) {
//     return ListTile(
//       leading: Icon(icon),
//       title: Text(title),
//       onTap: () {},
//     );
//   }
//
//   // Expandable Menu Section
//   Widget _buildExpandableMenu(IconData icon, String title, List<Widget> children) {
//     return ExpansionTile(
//       leading: Icon(icon),
//       title: Text(title),
//       children: children,
//     );
//   }
//
//   // Sub Menu Item with optional badge
//   Widget _buildSubMenuItem(String title, {int? badge}) {
//     return ListTile(
//       title: Row(
//         children: [
//           Text(title),
//           if (badge != null)
//             Container(
//               margin: EdgeInsets.only(left: 8),
//               padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
//               decoration: BoxDecoration(
//                 color: Colors.green,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Text(
//                 badge.toString(),
//                 style: TextStyle(color: Colors.white, fontSize: 12),
//               ),
//             ),
//         ],
//       ),
//       onTap: () {},
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:trashee_dashboard/common/widgets/images/t_rounded_images.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';
import 'package:trashee_dashboard/utils/constants/image_strings.dart';

class TSideBar extends StatelessWidget {
  const TSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: TColors.primary,
      shape: BeveledRectangleBorder(),
      child: Column(
        children: [
          // Logo Section
          TRoundedImages(
            width: 200,
            height: 100,
            image: TImages.darkAppLogo,
            imageType: ImageType.asset,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                final item = menuItems[index];
                return item.isExpandable
                    ? _buildExpandableMenu(item)
                    : _buildMenuItem(item);
              },
            ),
          ),
        ],
      ),
    );
  }

  // Simple Menu Item with overflow handling
  Widget _buildMenuItem(MenuItem item) {
    return ListTile(
      leading: Icon(item.icon),
      title: Text(
        item.title,
        overflow: TextOverflow.ellipsis, // Added for overflow handling
        maxLines: 1, // Limiting text to 1 line
        // style: TextStyle(fontSize: 16), // Optional: Adjust the font size
      ),
      onTap: () {}, // TODO: Implement navigation
    );
  }

  // Expandable Menu Section with overflow handling
  Widget _buildExpandableMenu(MenuItem item) {
    return ExpansionTile(
      leading: Icon(item.icon),
      title: Text(
        item.title,
        overflow: TextOverflow.ellipsis, // Added for overflow handling
        maxLines: 1, // Limiting text to 1 line
        // style: TextStyle(fontSize: 16), // Optional: Adjust the font size
      ),
      children:
      item.subItems.map((subItem) => _buildSubMenuItem(subItem)).toList(),
    );
  }

  // Sub Menu Item with optional badge and overflow handling
  Widget _buildSubMenuItem(MenuItem item) {
    return ListTile(
      title: Row(
        children: [
          Expanded(
            child: Text(
              item.title,
              overflow: TextOverflow.ellipsis, // Added for overflow handling
              maxLines: 1, // Limiting text to 1 line
              style: TextStyle(fontSize: 14), // Optional: Adjust the font size
            ),
          ),
          if (item.badge != null)
            Container(
              margin: const EdgeInsets.only(left: 8),
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                item.badge.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
        ],
      ),
      onTap: () {}, // TODO: Implement navigation
    );
  }
}

// Model class for menu items
class MenuItem {
  final IconData icon;
  final String title;
  final bool isExpandable;
  final int? badge;
  final List<MenuItem> subItems;

  MenuItem({
    required this.icon,
    required this.title,
    this.isExpandable = false,
    this.badge,
    this.subItems = const [],
  });
}

// List of Menu Items
final List<MenuItem> menuItems = [
  // home page
  MenuItem(icon: Icons.dashboard, title: 'Dashboard'),

  //Shops
  MenuItem(icon: Icons.store, title: 'Shops', isExpandable: true, subItems: [
    MenuItem(icon: Icons.dashboard, title: 'All Shops'),
    MenuItem(icon: Icons.drafts, title: 'Approval Shops'),
    MenuItem(icon: Icons.add, title: 'Approval Waiting Shops'),
    MenuItem(icon: Icons.ice_skating, title: 'Rejected Shops'),
  ]),

  //Offers
  MenuItem(icon: Icons.people, title: 'Offers', isExpandable: true , subItems: [
    MenuItem(icon: Icons.dashboard, title: 'All Offers'),
    MenuItem(icon: Icons.drafts, title: 'Individual Approval Offers'),
    MenuItem(icon: Icons.add, title: 'Individual Approval Waiting Offers'),
    MenuItem(icon: Icons.ice_skating, title: 'Bulk Approval Offers'),
    MenuItem(icon: Icons.ice_skating, title: 'Bulk Approval Waiting Offers'),
    MenuItem(icon: Icons.ice_skating, title: 'Bulk Approval Waiting Offers'),
  ]),
  MenuItem(icon: Icons.shopping_cart, title: 'User', isExpandable: true),
  MenuItem(icon: Icons.settings, title: 'Pay & plan', isExpandable: true),
  MenuItem(icon: Icons.analytics, title: 'Account Pages', isExpandable: true),
  MenuItem(icon: Icons.help_outline, title: 'Help & getting started', badge: 8),
];
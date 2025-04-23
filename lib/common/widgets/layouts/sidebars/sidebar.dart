// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:trashee_dashboard/common/widgets/images/t_rounded_images.dart';
// import 'package:trashee_dashboard/utils/constants/colors.dart';
// import 'package:trashee_dashboard/utils/constants/image_strings.dart';
// import 'package:trashee_dashboard/utils/constants/sizes.dart';
//
// import '../../../../routes/app_routs.dart';
// import '../../../../routes/routes.dart';
//
// class TSideBar extends StatelessWidget {
//   const TSideBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: TColors.primary,
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
//           Expanded(
//             child: ListView.builder(
//               itemCount: menuItems.length,
//               itemBuilder: (context, index) {
//                 final item = menuItems[index];
//                 return item.isExpandable
//                     ? _buildExpandableMenu(item)
//                     : _buildMenuItem(item);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // Simple Menu Item with overflow handling
//   Widget _buildMenuItem(MenuItem item) {
//     return ListTile(
//       leading: Icon(item.icon),
//       title: Text(
//         item.title,
//         overflow: TextOverflow.ellipsis, // Added for overflow handling
//         maxLines: 1, // Limiting text to 1 line
//         // style: TextStyle(fontSize: 16), // Optional: Adjust the font size
//       ),
//       onTap: () {
//         if (item.route.isNotEmpty) {
//           Get.toNamed(item.route);
//         }
//       },// TODO: Implement navigation
//     );
//   }
//
//   // Expandable Menu Section with overflow handling
//   Widget _buildExpandableMenu(MenuItem item) {
//     return ExpansionTile(
//       leading: Icon(item.icon),
//       title: Text(
//         item.title,
//         overflow: TextOverflow.ellipsis, // Added for overflow handling
//         maxLines: 1, // Limiting text to 1 line
//         // style: TextStyle(fontSize: 16), // Optional: Adjust the font size
//       ),
//       children:
//           item.subItems.map((subItem) => _buildSubMenuItem(subItem)).toList(),
//     );
//   }
//
//   // Sub Menu Item with optional badge and overflow handling
//   Widget _buildSubMenuItem(MenuItem item) {
//     return ListTile(
//       title: Row(
//         children: [
//           Expanded(
//             child: Text(
//               item.title,
//               overflow: TextOverflow.ellipsis, // Added for overflow handling
//               maxLines: 1, // Limiting text to 1 line
//               style: TextStyle(fontSize: 14), // Optional: Adjust the font size
//             ),
//           ),
//           if (item.badge != null)
//             Container(
//               margin: const EdgeInsets.only(left: 8),
//               padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
//               decoration: BoxDecoration(
//                 color: Colors.green,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Text(
//                 item.badge.toString(),
//                 style: const TextStyle(color: Colors.white, fontSize: 12),
//               ),
//             ),
//         ],
//       ),
//       onTap: () {}, // TODO: Implement navigation
//     );
//   }
// }
//
// // Model class for menu items
// class MenuItem {
//   final IconData icon;
//   final String title;
//   final String route;
//   final bool isExpandable;
//   final int? badge;
//   final List<MenuItem> subItems;
//
//   MenuItem({
//     required this.icon,
//     required this.title,
//     this.isExpandable = false,
//     required this.route,
//     this.badge,
//     this.subItems = const [],
//   });
// }
//
// // List of Menu Items
// final List<MenuItem> menuItems = [
//   // home page
//   MenuItem(icon: Icons.dashboard, title: 'Dashboard', route: ''),
//
//   //Shops
//   MenuItem(icon: Icons.store, title: 'Shops', isExpandable: true, subItems: [
//     MenuItem(
//       icon: Icons.dashboard,
//       title: 'All Shops', route: TRoutes.allShops,
//     ),
//     MenuItem(icon: Icons.drafts, title: 'Approval Shops', route: TRoutes.approvalShops),
//     MenuItem(icon: Icons.add, title: 'Approval Waiting Shops', route: TRoutes.approvalWaitingShops),
//     MenuItem(icon: Icons.ice_skating, title: 'Rejected Shops', route: TRoutes.rejectedShops),
//   ], route: ''),
//
//   //Offers
//   MenuItem(icon: Icons.people, title: 'Offers', isExpandable: true, subItems: [
//     MenuItem(icon: Icons.dashboard, title: 'All Offers', route: TRoutes.allOffers, ),
//     MenuItem(icon: Icons.drafts, title: 'Individual Approval Offers', route: TRoutes.individualApprovedOffers),
//     MenuItem(icon: Icons.add, title: 'Individual Approval Waiting Offers', route: TRoutes.individualApprovedWaitingOffers),
//     MenuItem(icon: Icons.ice_skating, title: 'Bulk Approval Offers', route: TRoutes.bulkApprovedOffers),
//     MenuItem(icon: Icons.ice_skating, title: 'Bulk Approval Waiting Offers', route: TRoutes.bulkApprovedWaitingOffers),
//   ], route: ''),
//
//   //Users
//   MenuItem(
//       icon: Icons.shopping_cart,
//       title: 'User',
//       isExpandable: true,
//       subItems: [
//         MenuItem(icon: Icons.dashboard, title: 'Customer', route: ''),
//       ], route: ''),
//
//   // Pay & plan
//   MenuItem(
//       icon: Icons.settings,
//       title: 'Pay & plan',
//       isExpandable: true,
//       subItems: [
//         MenuItem(icon: Icons.dashboard, title: 'Payment', route: ''),
//         MenuItem(icon: Icons.drafts, title: 'Subscription Plan', route: ''),
//       ], route: ''),
//   MenuItem(
//       icon: Icons.analytics,
//       title: 'Account Pages',
//       isExpandable: true,
//       subItems: [
//         MenuItem(icon: Icons.dashboard, title: 'Profile', route: ''),
//         MenuItem(icon: Icons.drafts, title: 'Logout', route: ''),
//       ], route: ''),
// ];
//


// ----------------------------------------------------------------------------


// ----------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:trashee_dashboard/routes/routes.dart';
//
// import '../../../../utils/constants/colors.dart';
// import '../../../../utils/constants/image_strings.dart';
// import '../../../../utils/constants/sizes.dart';
// import '../../images/t_rounded_images.dart';
// import '../menu/sidebar_menu.dart';
//
// class TSideBar extends StatelessWidget {
//   const TSideBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: TColors.primary,
//       child: Column(
//         children: [
//           // Logo Section
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TRoundedImages(
//               width: 150,
//               height: 80,
//               image: TImages.darkAppLogo,
//               imageType: ImageType.asset,
//               backgroundColor: Colors.transparent,
//             ),
//           ),
//           SizedBox(
//             height: TSizes.spaceBtwSections,
//           ),
//           Padding(
//             padding: EdgeInsets.all(TSizes.md),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(
//                   'Menu',
//                   style: Theme.of(context)
//                       .textTheme
//                       .bodySmall!
//                       .apply(letterSpacingDelta: 1.2),
//                 ),
//                 // menu
//                 TMenuItem(route: '', icon: Iconsax.shop, itemName: 'Dashboard',),
//                 TMenuItem(route: TRoutes.allShops, icon: Iconsax.shop, itemName: 'shop',),
//                 TMenuItem(route: TRoutes.allShops, icon: Iconsax.shop, itemName: 'All shop',),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


// ----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trashee_dashboard/common/widgets/images/t_rounded_images.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';
import 'package:trashee_dashboard/utils/constants/image_strings.dart';

import '../../../../routes/routes.dart';

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
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      onTap: () {
        if (item.route.isNotEmpty) {
          Get.toNamed(item.route);
        }
      },
    );
  }

  // Expandable Menu Section with overflow handling
  Widget _buildExpandableMenu(MenuItem item) {
    return ExpansionTile(
      leading: Icon(item.icon),
      title: Text(
        item.title,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
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
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(fontSize: 14),
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
      onTap: () {
        if (item.route.isNotEmpty) {
          Get.toNamed(item.route);
        }
      },
    );
  }
}

// Model class for menu items
class MenuItem {
  final IconData icon;
  final String title;
  final String route;
  final bool isExpandable;
  final int? badge;
  final List<MenuItem> subItems;

  MenuItem({
    required this.icon,
    required this.title,
    this.isExpandable = false,
    required this.route,
    this.badge,
    this.subItems = const [],
  });
}

// List of Menu Items
final List<MenuItem> menuItems = [
  // Home Page
  MenuItem(icon: Icons.dashboard, title: 'Dashboard', route: ''),

  // Shops
  MenuItem(icon: Icons.store, title: 'Shops', isExpandable: true, subItems: [
    MenuItem(icon: Icons.dashboard, title: 'All Shops', route: TRoutes.allShops),
    MenuItem(icon: Icons.drafts, title: 'Approval Shops', route: TRoutes.approvalShops),
    MenuItem(icon: Icons.add, title: 'Approval Waiting Shops', route: TRoutes.approvalWaitingShops),
    MenuItem(icon: Icons.ice_skating, title: 'Rejected Shops', route: TRoutes.rejectedShops),
  ], route: ''),

  // Offers
  MenuItem(icon: Icons.people, title: 'Offers', isExpandable: true, subItems: [
    MenuItem(icon: Icons.dashboard, title: 'All Offers', route: TRoutes.allOffers),
    MenuItem(icon: Icons.drafts, title: 'Individual Approval Offers', route: TRoutes.individualApprovedOffers),
    MenuItem(icon: Icons.add, title: 'Individual Approval Waiting Offers', route: TRoutes.individualApprovedWaitingOffers),
    MenuItem(icon: Icons.ice_skating, title: 'Bulk Approval Offers', route: TRoutes.bulkApprovedOffers),
    MenuItem(icon: Icons.ice_skating, title: 'Bulk Approval Waiting Offers', route: TRoutes.bulkApprovedWaitingOffers),
    MenuItem(icon: Icons.ice_skating, title: 'Rejected Offers', route: TRoutes.rejectedOffers),
  ], route: ''),

  // Users
  MenuItem(icon: Icons.shopping_cart, title: 'User', isExpandable: true, subItems: [
    MenuItem(icon: Icons.dashboard, title: 'Customer', route: TRoutes.customer),
  ], route: ''),

  // Pay & Plan
  MenuItem(icon: Icons.settings, title: 'Pay & Plan', isExpandable: true, subItems: [
    MenuItem(icon: Icons.dashboard, title: 'Payment', route: TRoutes.payment),
    MenuItem(icon: Icons.drafts, title: 'Subscription Plan', route: TRoutes.subscriptionPlan),
  ], route: ''),

  // Account Pages
  MenuItem(icon: Icons.analytics, title: 'Account Pages', isExpandable: true, subItems: [
    MenuItem(icon: Icons.dashboard, title: 'Profile', route: TRoutes.profile),
    MenuItem(icon: Icons.drafts, title: 'Logout', route: ''),
  ], route: ''),
];



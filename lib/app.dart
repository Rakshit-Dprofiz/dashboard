 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trashee_dashboard/common/widgets/layouts/templates/site_layout.dart';
import 'package:trashee_dashboard/common/widgets/responsive/responsive_design.dart';
import 'package:trashee_dashboard/routes/app_routs.dart';
import 'package:trashee_dashboard/routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: TAppRoute.pages ,
      initialRoute: TRoutes.login,
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Navigation'),
            SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: ElevatedButton(onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              }, child: Text('Default Navigation')),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: 200,
              child: ElevatedButton(onPressed: () => Get.to(() => SecondScreen()), child: Text('Getx Navigation')),
            ),
            SizedBox(height: 50),
            Divider(),
            Text('Named Navigation'),
            SizedBox(height: 20),
            SizedBox(
              width: 250,
              child: ElevatedButton(onPressed: () {
                Navigator.of(context).pushNamed('/second-screen');
              }, child: Text('Default Named Navigation')),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: 200,
              child: ElevatedButton(onPressed: () => Get.toNamed('/second-screen'), child: Text('Getx Named Navigation')),
            ),
            SizedBox(height: 50),
            Divider(),
            Text('Pass Data betn Screens - GetX'),
            SizedBox(height: 20),
            SizedBox(
              width: 250,
              child: ElevatedButton(onPressed: () {
                Navigator.of(context).pushNamed('/second-screen');
              }, child: Text('Default Named Navigation')),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: 200,
              child: ElevatedButton(onPressed: () => Get.toNamed('/second-screen'), child: Text('Getx Named Navigation')),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        centerTitle: true,
      ),
    );
  }
}

// class ResponsiveDesignScreen extends StatelessWidget {
//   const ResponsiveDesignScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return TSiteTemplate(desktop: Desktop(), tablet: Tablet(),mobile: Mobile());
//   }
// }
//
// class Tablet extends StatelessWidget {
//   const Tablet({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // Box 1
//           Expanded(
//             child: Container(
//               height: 450,
//               decoration: BoxDecoration(
//                 color: Colors.blue.withOpacity(0.2),
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.1),
//                     blurRadius: 8,
//                     offset: Offset(0, 4),
//                   ),
//                 ],
//               ),
//               margin: const EdgeInsets.only(right: 20),
//               child: Center(
//                 child: Text(
//                   'Tablet Box 1',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.blue.shade700,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           // Box 2
//           Expanded(
//             child: Container(
//               height: 450,
//               decoration: BoxDecoration(
//                 color: Colors.blue.withOpacity(0.2),
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.1),
//                     blurRadius: 8,
//                     offset: Offset(0, 4),
//                   ),
//                 ],
//               ),
//               margin: const EdgeInsets.only(right: 20),
//               child: Center(
//                 child: Text(
//                   'Tablet Box 2',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.blue.shade700,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           // Box 3
//           Expanded(
//             child: Container(
//               height: 450,
//               decoration: BoxDecoration(
//                 color: Colors.blue.withOpacity(0.2),
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.1),
//                     blurRadius: 8,
//                     offset: Offset(0, 4),
//                   ),
//                 ],
//               ),
//               child: Center(
//                 child: Text(
//                   'Tablet Box 3',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.blue.shade700,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//  class Mobile extends StatelessWidget {
//    const Mobile({super.key});
//
//    @override
//    Widget build(BuildContext context) {
//      return Padding(
//        padding: const EdgeInsets.all(8.0),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.center,
//          children: [
//            Container(
//              height: 150,
//              width: double.infinity,
//              margin: const EdgeInsets.only(bottom: 20),
//              decoration: BoxDecoration(
//                color: Colors.blue.withOpacity(0.2),
//                borderRadius: BorderRadius.circular(12),
//                boxShadow: [
//                  BoxShadow(
//                    color: Colors.black.withOpacity(0.1),
//                    blurRadius: 8,
//                    offset: Offset(0, 4),
//                  ),
//                ],
//              ),
//              child: Center(
//                child: Text(
//                  'Box 1',
//                  style: TextStyle(
//                    fontSize: 18,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.blue.shade700,
//                  ),
//                ),
//              ),
//            ),
//            Expanded(  // Added Expanded widget to avoid overflow
//              child: Container(
//                width: double.infinity,
//                margin: const EdgeInsets.only(bottom: 20),
//                decoration: BoxDecoration(
//                  color: Colors.blue.withOpacity(0.2),
//                  borderRadius: BorderRadius.circular(12),
//                  boxShadow: [
//                    BoxShadow(
//                      color: Colors.black.withOpacity(0.1),
//                      blurRadius: 8,
//                      offset: Offset(0, 4),
//                    ),
//                  ],
//                ),
//                child: Center(
//                  child: Text(
//                    'Box 2',
//                    style: TextStyle(
//                      fontSize: 18,
//                      fontWeight: FontWeight.bold,
//                      color: Colors.blue.shade700,
//                    ),
//                  ),
//                ),
//              ),
//            ),
//            Expanded(  // Added Expanded widget to avoid overflow
//              child: Container(
//                width: double.infinity,
//                decoration: BoxDecoration(
//                  color: Colors.blue.withOpacity(0.2),
//                  borderRadius: BorderRadius.circular(12),
//                  boxShadow: [
//                    BoxShadow(
//                      color: Colors.black.withOpacity(0.1),
//                      blurRadius: 8,
//                      offset: Offset(0, 4),
//                    ),
//                  ],
//                ),
//                child: Center(
//                  child: Text(
//                    'Box 3',
//                    style: TextStyle(
//                      fontSize: 18,
//                      fontWeight: FontWeight.bold,
//                      color: Colors.blue.shade700,
//                    ),
//                  ),
//                ),
//              ),
//            ),
//          ],
//        ),
//      );
//    }
//  }
//
//
// class Desktop extends StatelessWidget {
//   const Desktop({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         children: [
//           // Box 1
//           Expanded(
//             child: Container(
//               height: 500,
//               decoration: BoxDecoration(
//                 color: Colors.blue.withOpacity(0.2),
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.1),
//                     blurRadius: 8,
//                     offset: Offset(0, 4),
//                   ),
//                 ],
//               ),
//               margin: const EdgeInsets.only(right: 20),
//               child: Center(
//                 child: Text(
//                   'Desktop Box 1',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.blue.shade700,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           // Box 2
//           Expanded(
//             child: Container(
//               height: 500,
//               decoration: BoxDecoration(
//                 color: Colors.blue.withOpacity(0.2),
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.1),
//                     blurRadius: 8,
//                     offset: Offset(0, 4),
//                   ),
//                 ],
//               ),
//               margin: const EdgeInsets.only(right: 20),
//               child: Center(
//                 child: Text(
//                   'Desktop Box 2',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.blue.shade700,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           // Box 3
//           Expanded(
//             child: Container(
//               height: 500,
//               decoration: BoxDecoration(
//                 color: Colors.blue.withOpacity(0.2),
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.1),
//                     blurRadius: 8,
//                     offset: Offset(0, 4),
//                   ),
//                 ],
//               ),
//               child: Center(
//                 child: Text(
//                   'Desktop Box 3',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.blue.shade700,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


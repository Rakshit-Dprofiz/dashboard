import 'package:flutter/material.dart';
import 'package:trashee_dashboard/common/widgets/layouts/headers/header.dart';
import 'package:trashee_dashboard/common/widgets/layouts/sidebars/sidebar.dart';

class TabletLayout extends StatelessWidget {
   TabletLayout({super.key, this.body});

  final Widget? body;
   final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const TSideBar(),
      appBar: THeader(scaffoldKey: scaffoldKey),
      body: body ?? SizedBox(),
    );
  }
}

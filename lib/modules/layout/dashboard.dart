import '../../modules/getX/widgetcontroller/widget_controller.dart';
import '../../widgets/cards/dashboard/authorize_members_content.dart';
import '../../widgets/cards/dashboard/finished_complaints_content.dart';
import '../../widgets/cards/dashboard/processed_complaints_content.dart';
import '../../widgets/cards/dashboard/profile_content.dart';
import '../../widgets/cards/dashboard/unauthorize_members_content.dart';
import '../../widgets/cards/dashboard/incoming_complaints_content.dart';
import '../../widgets/cards/dashboard/all_complaints_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/cards/dashboard/navbar_content.dart';
import '../../widgets/cards/dashboard/sidebar_content.dart';
import '../getX/widgetcontroller/navigation_controller.dart';
import '../../constants/route_path.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  final dropdownController = Get.put(WidgetController(), tag: 'dropdown');
  final widgetController = Get.create(() => WidgetController());
  final navigationController = Get.lazyPut(() => NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (context, constraints) => Center(
                child: SizedBox(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    child: Row(
                      children: <Widget>[
                        SidebarContent(height: constraints.maxHeight),
                        Expanded(
                            child: Column(
                          children: [
                            const NavbarContent(),
                            Expanded(
                                child: GetBuilder(
                                    init: NavigationController(),
                                    builder: (controller) => Navigator(
                                        initialRoute: RoutePath.allComplaints,
                                        onGenerateRoute: (settings) {
                                          return MaterialPageRoute(
                                              builder: (context) {
                                            switch (
                                                controller.currentPath.value) {
                                              case RoutePath.authorizeMembers:
                                                return const AuthorizeMembersContent();
                                              case RoutePath.unauthorizeMembers:
                                                return const UnauthorizeMembersContent();
                                              case RoutePath.allComplaints:
                                                return const AllComplaintsContent();
                                              case RoutePath.incomingComplaints:
                                                return const IncomingComplaintsContent();
                                              case RoutePath
                                                    .processedComplaints:
                                                return const ProcessedComplaintsContent();
                                              case RoutePath.finishedComplaints:
                                                return const FinishedComplaintsContent();
                                              case RoutePath.profile:
                                                return const ProfileContent();
                                              default:
                                                return const AllComplaintsContent();
                                            }
                                          });
                                        })))
                          ],
                        ))
                      ],
                    )),
              )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

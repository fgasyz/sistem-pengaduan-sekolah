import 'package:flutter/material.dart';
import '../../modules/layout/login.dart';
import '../../modules/layout/register.dart';
import '../../modules/layout/dashboard.dart';
import '../../constants/route_path.dart';

import '../../widgets/cards/dashboard/authorize_members_content.dart';
import '../../widgets/cards/dashboard/finished_complaints_content.dart';
import '../../widgets/cards/dashboard/processed_complaints_content.dart';
import '../../widgets/cards/dashboard/profile_content.dart';
import '../../widgets/cards/dashboard/unauthorize_members_content.dart';
import '../../widgets/cards/dashboard/incoming_complaints_content.dart';
import '../../widgets/cards/dashboard/all_complaints_content.dart';

Map<String, Widget Function(BuildContext context)> routeConfig = {
  RoutePath.login: (BuildContext context) => const Login(),
  RoutePath.register: (BuildContext context) => const Register(),
  RoutePath.dashboard: (BuildContext context) => Dashboard(),
  RoutePath.authorizeMembers: (BuildContext context) =>
      const AuthorizeMembersContent(),
  RoutePath.unauthorizeMembers: (BuildContext context) =>
      const UnauthorizeMembersContent(),
  RoutePath.allComplaints: (BuildContext context) =>
      const AllComplaintsContent(),
  RoutePath.incomingComplaints: (BuildContext context) =>
      const IncomingComplaintsContent(),
  RoutePath.processedComplaints: (BuildContext context) =>
      const ProcessedComplaintsContent(),
  RoutePath.finishedComplaints: (BuildContext context) =>
      const FinishedComplaintsContent(),
  RoutePath.profile: (BuildContext context) => const ProfileContent(),
};

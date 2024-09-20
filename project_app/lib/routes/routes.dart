import 'package:get/get.dart';
import 'package:project_app/routes/routes_name.dart';

import '../project_page/project_main_view.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteNames.MAIN_PAGE,
          page: () => const ProjectMainScreen(),
          transition: Transition.fadeIn
        )
      ];
}

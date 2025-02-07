import 'package:ariannapp/features/groceries/checklist/presentation/checklist_screen.dart';
import 'package:ariannapp/features/groceries/shelf/presentation/shelf_screen.dart';
import 'package:go_router/go_router.dart';

class GroceriesRoutes {
  static const shelf = 'shelf';
  static const checklist = 'checklist';
}

class GroceriesCheckListScreenRoute extends GoRoute {
  GroceriesCheckListScreenRoute()
      : super(
          path: GroceriesRoutes.checklist,
          routes: [GroceriesShelfScreenRoute()],
          builder: (context, state) => const GroceriesCheckListScreen(),
        );
}

class GroceriesShelfScreenRoute extends GoRoute {
  GroceriesShelfScreenRoute()
      : super(
          path: GroceriesRoutes.shelf,
          builder: (context, state) => const ShelfScreen(),
        );
}

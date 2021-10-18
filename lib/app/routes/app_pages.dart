import 'package:get/get.dart';

import 'package:fktugas/app/modules/create_todolist/bindings/create_todolist_binding.dart';
import 'package:fktugas/app/modules/create_todolist/views/create_todolist_view.dart';
import 'package:fktugas/app/modules/home/bindings/home_binding.dart';
import 'package:fktugas/app/modules/home/views/home_view.dart';
import 'package:fktugas/app/modules/update_person/bindings/update_person_binding.dart';
import 'package:fktugas/app/modules/update_person/views/update_person_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_TODOLIST,
      page: () => CreateTodolistView(),
      binding: CreateTodolistBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE_PERSON,
      page: () => UpdatePersonView(),
      binding: UpdatePersonBinding(),
    ),
  ];
}

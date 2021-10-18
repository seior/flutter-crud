import 'package:firebase_core/firebase_core.dart';
import 'package:fktugas/app/modules/home/controllers/home_controller.dart';
import 'package:fktugas/app/modules/home/views/home_view.dart';
import 'package:fktugas/app/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(_MyApp());
}

class _MyApp extends StatelessWidget {
  _MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();

    Get.put<HomeController>(HomeController(), permanent: true);

    return GetMaterialApp(
      title: "FKTugas",
      getPages: AppPages.routes,
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) => (snapshot.connectionState == ConnectionState.done) ? HomeView() : Loading(),
      ),
    );
  }
}

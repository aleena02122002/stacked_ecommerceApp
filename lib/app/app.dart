import 'package:e_commerce/home/home.dart';
import 'package:e_commerce/login/login.dart';
import 'package:e_commerce/register/register.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(routes: [
  MaterialRoute(page: LoginView,initial: true),
  MaterialRoute(page: HomeView,initial: false),
  MaterialRoute(page: RegisterView,initial: false)
],
  dependencies: [

  ],
)

class App {}


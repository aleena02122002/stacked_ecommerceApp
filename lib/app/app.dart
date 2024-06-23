import 'package:e_commerce/home/home.dart';
import 'package:e_commerce/login/login.dart';
import 'package:e_commerce/register/register.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(routes: [
  MaterialRoute(page: HomeView,initial: true),
  MaterialRoute(page: LoginView,initial: false),
  MaterialRoute(page: RegisterView,initial: false)
],
  dependencies: []
)

class App {}


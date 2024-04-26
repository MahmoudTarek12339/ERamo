import 'package:eramo/presentation/done_screen/done_screen.dart';
import 'package:eramo/presentation/home_screen/home_screen.dart';
import 'package:eramo/presentation/invoice_screen/invoice_screen.dart';
import 'package:eramo/presentation/payment_screen/payment_screen.dart';
import 'package:eramo/presentation/teachers_screen/teachers_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String mainRoute = "/";
  static const String teachersRoute = "/teachers";
  static const String invoiceRoute = "/invoice";
  static const String checkoutRoute = "/checkout";
  static const String doneRoute = "/done";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.teachersRoute:
        return MaterialPageRoute(builder: (_) => const TeachersScreen());
      case Routes.invoiceRoute:
        return MaterialPageRoute(builder: (_) => const InvoiceScreen());
      case Routes.checkoutRoute:
        return MaterialPageRoute(builder: (_) => const PaymentScreen());
      case Routes.doneRoute:
        return MaterialPageRoute(builder: (_) => const DoneScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('No Route Found'),
              ),
              body: const Center(child: Text("No Route Found")),
            ));
  }
}

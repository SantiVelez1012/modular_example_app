
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_example_app/pages/home_page/home_page.dart';
import 'package:modular_example_app/pages/layout_example_page/layout_example_page.dart';

class AppModule extends Module{
  @override
  void binds(i){}

  @override
  void routes(r){
    r.child('/', child: (context) => const HomePage());
    r.child('/layout-example', child: (context) => LayoutExamplePage());
  }
}
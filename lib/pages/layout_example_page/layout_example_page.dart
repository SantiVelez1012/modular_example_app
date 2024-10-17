import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_example_app/pages/layout_example_page/widgets/buttons_section/buttons_section.dart';
import 'package:modular_example_app/pages/layout_example_page/widgets/image_section/image_section.dart';
import 'package:modular_example_app/pages/layout_example_page/widgets/text_section/text_section.dart';
import 'package:modular_example_app/pages/layout_example_page/widgets/title_section/title_section.dart';

class LayoutExamplePage extends StatelessWidget {
  const LayoutExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layout Example Page')),
      body: SingleChildScrollView(
        child: Column(children: [
          const ImageSection(image: 'assets/images/image.jpg'),
          const TitleSection(
              name: 'El León Dormido', location: 'Murillo - Tolima'),
          const ButtonsSection(),
          const TextSection(
            description:
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                'Bernese Alps. Situated 1,578 meters above sea level, it '
                'is one of the larger Alpine Lakes. A gondola ride from '
                'Kandersteg, followed by a half-hour walk through pastures '
                'and pine forest, leads you to the lake, which warms to 20 '
                'degrees Celsius in the summer. Activities enjoyed here '
                'include rowing, and riding the summer toboggan run.',
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => Modular.to.navigate('/'),
              child: const Text('Back to Home'),
            ),
          ),
        ]),
      ),
    );
  }
}

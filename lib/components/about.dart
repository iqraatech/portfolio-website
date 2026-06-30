import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class AboutSection extends StatelessComponent {
  const AboutSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(attributes: {'id': 'about'}, [
      h2([text("About Me")]),

      p([
        text(
            "I'm Iqra Faisal, a Flutter Developer passionate about creating beautiful, responsive, and user-friendly mobile applications."
        ),
      ]),

      p([
        text(
            "I'm currently pursuing a Bachelor's degree in Computer Science and continuously improving my Flutter, Firebase, and Dart skills."
        ),
      ]),

      p([
        text(
            "I enjoy solving real-world problems through clean and efficient code."
        ),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('section').styles(
      padding: .all(80.px),
    ),

    css('h2').styles(
      fontSize: 2.5.rem,
      fontWeight: .bold,
    ),

    css('p').styles(
      fontSize: 1.1.rem,
      maxWidth: 700.px,
    ),
  ];
}
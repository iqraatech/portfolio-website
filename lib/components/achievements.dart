import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class AchievementsSection extends StatelessComponent {
  const AchievementsSection({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      section(attributes: {'id': 'achievements'}, [
        h2([text("Achievements")]),

        ul([
          li([
            text("🏆 Successfully completed Flutter Development Internship at CodeAlpha."),
          ]),

          li([
            text("📱 Developed multiple Flutter applications using Firebase and REST APIs."),
          ]),

          li([
            text("💻 Built responsive mobile applications with clean UI design."),
          ]),

          li([
            text("📚 Continuously learning AI/ML, Python, and advanced Flutter concepts."),
          ]),

          li([
            text("🚀 Created personal portfolio using Jaspr framework."),
          ]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('section').styles(
      padding: .all(80.px),
    ),

    css('ul').styles(
      listStyle: ListStyle.none,
      padding: .zero,
    ),

    css('li').styles(
      padding: .all(15.px),
      margin: .only(bottom: 15.px),
      border: Border.all(
        color: const Color('#DDDDDD'),
      ),
      radius: .all(.circular(10.px)),
    ),
  ];
}
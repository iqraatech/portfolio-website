import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/theme.dart';

class SkillsSection extends StatelessComponent {
  const SkillsSection({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      section(attributes: {'id': 'skills'}, [
        h2([text("Skills")]),

        ul([
          li([text("Flutter")]),
          li([text("Dart")]),
          li([text("Firebase")]),
          li([text("REST API")]),
          li([text("Git & GitHub")]),
          li([text("Provider")]),
          li([text("GetX")]),
          li([text("SQLite")]),
          li([text("Google Maps")]),
          li([text("Shared Preferences")]),
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
      margin: .zero,
    ),

    css('li').styles(
      padding: .all(10.px),
      margin: .only(bottom: 10.px),
    ),
    css('.card-grid').styles(
      display: Display.flex,
      flexWrap: FlexWrap.wrap,
      justifyContent: JustifyContent.center,
      gap: Gap.all(25.px),
    ),

    css('.card').styles(
      width: 320.px,
      maxWidth: 100.percent,
      padding: .all(25.px),
      radius: .all(.circular(18.px)),
      backgroundColor: cardColor,
    ),
  ];
}
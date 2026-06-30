import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class LanguagesSection extends StatelessComponent {
  const LanguagesSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(attributes: {'id': 'languages'}, [
      h2([text("Languages")]),

      div(classes: 'language-grid', [
        languageCard("🇬🇧 English", "Professional Working Proficiency"),
        languageCard("🇵🇰 Urdu", "Native Proficiency"),
      ]),
    ]);
  }

  Component languageCard(String title, String level) {
    return div(classes: 'language-card', [
      h3([text(title)]),
      p([text(level)]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.language-grid').styles(
      display: Display.flex,
      flexWrap: FlexWrap.wrap,
      justifyContent: JustifyContent.center,
    ),

    css('.language-card').styles(
      width: 280.px,
      padding: .all(20.px),
      margin: .all(10.px),
      radius: .all(.circular(12.px)),
      border: Border.all(color: const Color('#DDDDDD')),
    ),
  ];
}
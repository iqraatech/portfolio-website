import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ExperienceSection extends StatelessComponent {
  const ExperienceSection({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      section(attributes: {'id': 'experience'}, [
        h2([text("Experience")]),

        div(classes: 'card', [
          h3([text("Flutter Developer Intern")]),

          p([
            text("CodeAlpha Internship"),
          ]),

          p([
            text("Worked on Flutter applications, UI development, state management, and API integration."),
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

    css('.card').styles(
      padding: .all(20.px),
      radius: .all(.circular(10.px)),
      border: Border.all(color: const Color('#DDDDDD')),
    ),
  ];
}
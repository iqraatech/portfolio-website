import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class EducationSection extends StatelessComponent {
  const EducationSection({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      section(attributes: {'id': 'education'}, [
        h2([text("Education")]),

        div(classes: 'education-card', [
          h3([
            text("Bachelor of Computer Science"),
          ]),

          p([
            text("Superior University"),
          ]),

          p([
            text("2022 - Present"),
          ]),

          p([
            text("Relevant Coursework"),
          ]),

          ul([
            li([text("Data Structures & Algorithms")]),
            li([text("Object-Oriented Programming")]),
            li([text("Database Systems")]),
            li([text("Mobile Application Development")]),
            li([text("Artificial Intelligence")]),
          ]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.education-card').styles(
      padding: .all(20.px),
      margin: .only(bottom: 20.px),
      radius: .all(.circular(12.px)),
      border: Border.all(
        color: const Color('#DDDDDD'),
      ),
    ),
  ];
}
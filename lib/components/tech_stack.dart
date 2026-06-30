import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class TechStackSection extends StatelessComponent {
  const TechStackSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(attributes: {'id': 'tech-stack'}, [
      h2([text("Tech Stack")]),

      h3([text("Programming Languages")]),
      techGrid([
        "Dart",
        "Python",
        "C++",
        "Java",
      ]),

      h3([text("Frameworks")]),
      techGrid([
        "Flutter",
      ]),

      h3([text("Backend & APIs")]),
      techGrid([
        "Firebase",
        "REST APIs",
      ]),

      h3([text("Databases")]),
      techGrid([
        "SQLite",
        "Hive",
      ]),

      h3([text("Tools")]),
      techGrid([
        "Git",
        "GitHub",
        "Android Studio",
        "VS Code",
        "Postman",
        "Figma",
      ]),
    ]);
  }

  Component techGrid(List<String> items) {
    return div(classes: 'tech-grid', [
      for (var item in items)
        div(classes: 'tech-card', [
          text(item),
        ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.tech-grid').styles(
      display: Display.flex,
      flexWrap: FlexWrap.wrap,
    ),

    css('.tech-card').styles(
      padding: .all(15.px),
      margin: .all(8.px),
      radius: .all(.circular(10.px)),
      border: Border.all(
        color: const Color('#DDDDDD'),
      ),
    ),
  ];
}
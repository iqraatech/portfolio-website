import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/theme.dart';

class ProjectsSection extends StatelessComponent {
  const ProjectsSection({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      section(attributes: {'id': 'projects'}, [
        h2([text("Projects")]),

        div(classes: 'project-card', [
          h3([text("Rydo")]),
          p([
            text(
              "A ride-booking application built with Flutter and Firebase.",
            ),
          ]),
        ]),

        div(classes: 'project-card', [
          h3([text("FitTrack")]),
          p([
            text(
              "A fitness tracking application to monitor workouts and progress.",
            ),
          ]),
        ]),

        div(classes: 'project-card', [
          h3([text("TaskFlow")]),
          p([
            text(
              "A task management application with CRUD operations and local storage.",
            ),
          ]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
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
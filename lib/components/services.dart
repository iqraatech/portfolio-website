import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/theme.dart';

class ServicesSection extends StatelessComponent {
  const ServicesSection({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      section(attributes: {'id': 'services'}, [
        h2([text("Services")]),

        div(classes: 'services-grid', [
          serviceCard(
            "📱 Flutter Development",
            "Build beautiful Android & iOS applications using Flutter.",
          ),

          serviceCard(
            "🔥 Firebase Integration",
            "Authentication, Firestore, Realtime Database & Storage.",
          ),

          serviceCard(
            "🌐 REST API Integration",
            "Connect Flutter apps with backend APIs.",
          ),

          serviceCard(
            "🎨 UI/UX Implementation",
            "Responsive and modern Flutter user interfaces.",
          ),
        ]),
      ]),
    ]);
  }

  Component serviceCard(String title, String description) {
    return div(classes: 'service-card', [
      h3([text(title)]),
      p([text(description)]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.services-grid').styles(
      display: Display.flex,
      flexWrap: FlexWrap.wrap,
      justifyContent: JustifyContent.center,
    ),

    css('.service-card').styles(
      padding: .all(20.px),
      margin: .all(10.px),
      width: 280.px,
      radius: .all(.circular(12.px)),
      border: Border.all(color: const Color('#DDDDDD')),
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
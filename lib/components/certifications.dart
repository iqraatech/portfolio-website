import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class CertificationsSection extends StatelessComponent {
  const CertificationsSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(attributes: {'id': 'certifications'}, [
      h2([text("Certifications")]),

      div(classes: 'certificate-grid', [
        certificateCard(
          "Flutter Development",
          "Completed Flutter app development training.",
        ),

        certificateCard(
          "Python Programming",
          "Completed Python programming fundamentals.",
        ),

        certificateCard(
          "AI & Machine Learning",
          "Currently learning AI and Machine Learning.",
        ),

        certificateCard(
          "CodeAlpha Internship",
          "Flutter Development Internship Certificate.",
        ),
      ]),
    ]);
  }

  Component certificateCard(String title, String description) {
    return div(classes: 'certificate-card', [
      h3([text(title)]),
      p([text(description)]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.certificate-grid').styles(
      display: Display.flex,
      flexWrap: FlexWrap.wrap,
      justifyContent: JustifyContent.center,
    ),

    css('.certificate-card').styles(
      width: 280.px,
      padding: .all(20.px),
      margin: .all(10.px),
      radius: .all(.circular(12.px)),
      border: Border.all(
        color: const Color('#DDDDDD'),
      ),
    ),
  ];
}
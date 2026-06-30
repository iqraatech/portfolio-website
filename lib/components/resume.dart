import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ResumeSection extends StatelessComponent {
  const ResumeSection({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      section(attributes: {'id': 'resume'}, [
        h2([text("Resume")]),

        p([
          text(
            "Interested in learning more about my education, skills, experience, and projects? Download my resume or view it online.",
          ),
        ]),

        div(classes: 'resume-buttons', [
          a(
            href: "/resume/IqraFaisal_cv.pdf",
            target: Target.blank,
            [text("📄 Download CV")],
          ),

          a(
            href: "/resume/IqraFaisal_cv.pdf",
            target: Target.blank,
            [text("👁 View Resume")],
          ),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.resume-buttons').styles(
      display: Display.flex,
      justifyContent: JustifyContent.center,
      flexWrap: FlexWrap.wrap,
    ),

    css('.resume-buttons a').styles(
      margin: .all(10.px),
      padding: .symmetric(horizontal: 24.px, vertical: 12.px),
      backgroundColor: const Color('#2563EB'),
      color: Colors.white,
      textDecoration: TextDecoration(line: .none),
      radius: .all(.circular(8.px)),
    ),

    css('.resume-buttons a:hover').styles(
      backgroundColor: const Color('#1D4ED8'),
    ),
  ];
}
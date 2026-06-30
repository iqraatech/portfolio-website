import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ContactSection extends StatelessComponent {
  const ContactSection({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      section(attributes: {'id': 'contact'}, [
        h2([text("Contact")]),

        p([text("📧 Email: iiqra2130@gmail.com")]),

        p([
          a(
            href: "https://github.com/iqraatech",
            target: Target.blank,
            [text("💻 GitHub")],
          ),
        ]),

        p([
          a(
            href: "https://www.linkedin.com/in/iqra-faisal-a135b3323",
            target: Target.blank,
            [text("💼 LinkedIn")],
          ),
        ]),

        p([text("📍 Sargodha, Pakistan")]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('section').styles(
      padding: .all(80.px),
    ),

    css('a').styles(
      color: const Color('#01589B'),
      textDecoration: TextDecoration(line: .none),
    ),
  ];
}
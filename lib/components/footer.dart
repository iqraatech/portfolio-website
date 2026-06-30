import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class FooterSection extends StatelessComponent {
  const FooterSection({super.key});

  @override
  Component build(BuildContext context) {
    return footer([
      p([
        text("© 2026 Iqra Faisal • Built with Jaspr"),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('footer').styles(
      padding: .all(30.px),
      textAlign: TextAlign.center,
    ),
  ];
}
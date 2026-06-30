import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/theme.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return section([
      section([
        div(classes: 'hero', [

          p([
            text("👋 Hello, I'm"),
          ]),

          h1(classes: 'name', [
            text("Iqra Faisal"),
          ]),

          h2([
            text("Flutter Developer"),
          ]),

          p(classes: 'subtitle', [
            text(
              "Passionate Flutter developer building beautiful and responsive mobile applications.",
            ),
          ]),

          div(classes: 'buttons', [

            a(
              href: "#",
              [text("Download CV")],
            ),

            a(
              href: "https://github.com/iqraatech",
              target: Target.blank,
              [text("GitHub")],
            ),

            a(
              href: "https://www.linkedin.com/in/iqra-faisal-a135b3323",
              target: Target.blank,
              [text("LinkedIn")],
            ),
          ]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles =>
      [
        css('.hero').styles(
          display: Display.flex,
          flexWrap: FlexWrap.wrap,
          justifyContent: JustifyContent.spaceBetween,
          alignItems: AlignItems.center,
          padding: .symmetric(vertical: 100.px),
        ),

        css('.hero-left').styles(
          flex: Flex(grow: 1),
          minWidth: 320.px,
        ),

        css('.hero-right').styles(
          flex: Flex(grow: 1),
          minWidth: 320.px,
          textAlign: TextAlign.center,
        ),

        css('.name').styles(
          fontSize: 4.rem,
          fontWeight: .bold,
          color: const Color('#0A66C2'),
        ),

        css('.subtitle').styles(
          fontSize: 1.3.rem,
        ),

        css('.buttons').styles(
          display: Display.flex,
        ),

        css('.buttons').styles(
          display: Display.flex,
          flexWrap: FlexWrap.wrap,
          gap: Gap.all(15.px),
          margin: .only(top: 30.px),
        ),
      ];
}
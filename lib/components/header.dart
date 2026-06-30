import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import '../constants/theme.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    return header([
      nav([
        h2([text("IQRA FAISAL")]),

        ul([
          li([Link(to: "/", child: text("Home"))]),
          li([a(href: "#about", [text("About")])]),
          li([a(href: "#skills", [text("Skills")])]),
          li([a(href: "#projects", [text("Projects")])]),
          li([a(href: "#contact", [text("Contact")])]),
        ])
      ])
    ]);
  }

  @css
  static List<StyleRule> get styles =>
      [
        css('header').styles(
          position: Position.sticky(top: 0.px),
          backgroundColor: Colors.white,
          padding: .symmetric(horizontal: 40.px, vertical: 20.px),
        ),

        css('nav').styles(
          display: Display.flex,
          justifyContent: JustifyContent.spaceBetween,
          alignItems: AlignItems.center,
        ),

        css('ul').styles(
          display: Display.flex,
          listStyle: ListStyle.none,
          margin: .zero,
          padding: .zero,
        ),

        css('li').styles(
          margin: .only(left: 30.px),
        ),

        css('a').styles(
          textDecoration: TextDecoration(line: .none),
          color: const Color('#222222'),
          fontWeight: .w600,
        ),

        css('a:hover').styles(
          color: const Color('#01589B'),
        ),
      ];
}
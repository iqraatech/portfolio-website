import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/theme.dart';

class Navbar extends StatelessComponent {
  const Navbar({super.key});

  @override
  Component build(BuildContext context) {
    return header([
      div(classes: 'container', [
        h2(classes: 'logo', [
          text("IQRA FAISAL"),
        ]),

        nav([
          ul([
            navItem("Home", "#home"),
            navItem("About", "#about"),
            navItem("Education", "#education"),
            navItem("Skills", "#skills"),
            navItem("Projects", "#projects"),
            navItem("Contact", "#contact"),
          ]),
        ]),
      ]),
    ]);
  }

  Component navItem(String title, String link) {
    return li([
      a(
        href: link,
        [text(title)],
      ),
    ]);
  }

  @css
  static List<StyleRule> get styles => [

    css('header').styles(
      position: Position.sticky(top: 0.px),
      backgroundColor: backgroundColor,
      padding: .symmetric(horizontal: 20.px, vertical: 18.px),
    ),

    css('nav').styles(
      display: Display.flex,
      justifyContent: JustifyContent.spaceBetween,
      alignItems: AlignItems.center,
      flexWrap: FlexWrap.wrap,
    ),

    css('ul').styles(
      display: Display.flex,
      flexWrap: FlexWrap.wrap,
      listStyle: ListStyle.none,
      margin: .zero,
      padding: .zero,
    ),

    css('li').styles(
      margin: .only(left: 20.px, top: 10.px),
    ),

    css('a').styles(
      color: headingColor,
      textDecoration: TextDecoration(line: .none),
      fontWeight: .w600,
    ),

    css('a:hover').styles(
      color: primaryColor,
    ),

  ];
}
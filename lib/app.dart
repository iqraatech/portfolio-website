import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/header.dart';
import 'constants/theme.dart';
import 'pages/about.dart';
import 'pages/home.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'main', [
      const Header(),
      Router(routes: [
        Route(
          path: '/',
          title: 'Home',
          builder: (context, state) => const Home(),
        ),
        Route(
          path: '/about',
          title: 'About',
          builder: (context, state) => const About(),
        ),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles =>
      [
        css('body').styles(
          backgroundColor: backgroundColor,
          color: textColor,
          margin: .zero,
        ),

        css('.main').styles(
          display: Display.flex,
          flexDirection: FlexDirection.column,
          minHeight: 100.vh,
        ),
      ];
}
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class AppContainer extends StatelessComponent {
  final List<Component> children;

  const AppContainer(this.children, {super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'container', children);
  }

  @css
  static List<StyleRule> get styles => [
    css('.container').styles(
      maxWidth: 1200.px,
      width: 100.percent,
      margin: .symmetric(horizontal: .auto),
      padding: .symmetric(horizontal: 20.px),
    ),
  ];
}
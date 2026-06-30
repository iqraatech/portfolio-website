import 'package:jaspr/dom.dart';

const backgroundColor = Color('#FBEFEF');
const sectionColor = Color('#FFE2E2');

const primaryColor = Color('#C5B3D3');
const primaryHover = Color('#B49EC7');

const cardColor = Color('#FFFFFF');

const headingColor = Color('#4A4453');
const textColor = Color('#6B6675');

@css
List<StyleRule> get styles => [
  css.import(
    'https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap',
  ),

  css('body').styles(
    backgroundColor: backgroundColor,
    margin: .zero,
    padding: .zero,
    fontFamily: const FontFamily.list([
      FontFamily('Poppins'),
      FontFamilies.sansSerif,
    ]),
    color: textColor,
  ),

  css('h1').styles(
    color: headingColor,
    fontWeight: .w700,
  ),

  css('h2').styles(
    color: headingColor,
    fontWeight: .w600,
  ),

  css('p').styles(
    color: textColor,
    lineHeight: 1.8.em,
  ),
];
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../components/projects.dart';
import '../components/about.dart';
import '../components/skills.dart';
import '../components/experience.dart';
import '../components/contact.dart';
import '../components/footer.dart';
import '../components/education.dart';
import '../components/services.dart';
import '../components/certifications.dart';
import '../components/achievements.dart';
import '../components/tech_stack.dart';
import '../components/resume.dart';
import '../components/languages.dart';
import '../components/app_container.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return AppContainer([
      div([
        section([
          div(classes: 'hero', [
            h1([
              text("Hi, I'm"),
            ]),

            h1(classes: 'name', [
              text("Iqra Faisal"),
            ]),

            h2([
              text("Flutter Developer"),
            ]),

            p([
              text(
                "I build beautiful, responsive Flutter applications for mobile and web.",
              ),
            ]),

            div(classes: 'buttons', [
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

        const AboutSection(),
        const SkillsSection(),
        const AchievementsSection(),
        const TechStackSection(),
        const ResumeSection(),
        const ServicesSection(),
        const EducationSection(),
        const ExperienceSection(),
        const ProjectsSection(),
        const CertificationsSection(),
        const LanguagesSection(),
        const ContactSection(),
        const FooterSection(),



      ]),
    ]);
  }


  @css
  static List<StyleRule> get styles =>
      [
        css('.hero').styles(
          display: Display.flex,
          flexDirection: FlexDirection.column,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.center,
          minHeight: 80.vh,
          textAlign: TextAlign.center,
        ),

        css('.name').styles(
          color: const Color('#01589B'),
          fontSize: 3.rem,
          fontWeight: .bold,
        ),

        css('.buttons').styles(
          display: Display.flex,
        ),

        css('.buttons a').styles(
          margin: .only(right: 16.px),
          padding: .symmetric(horizontal: 20.px, vertical: 10.px),
          backgroundColor: const Color('#01589B'),
          color: Colors.white,
          textDecoration: TextDecoration(line: .none),
          radius: .all(.circular(8.px)),
        ),
      ];
}

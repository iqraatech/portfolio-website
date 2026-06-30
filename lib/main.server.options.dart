// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:portfolio_website/components/about.dart' as _about;
import 'package:portfolio_website/components/achievements.dart'
    as _achievements;
import 'package:portfolio_website/components/app_container.dart'
    as _app_container;
import 'package:portfolio_website/components/certifications.dart'
    as _certifications;
import 'package:portfolio_website/components/contact.dart' as _contact;
import 'package:portfolio_website/components/education.dart' as _education;
import 'package:portfolio_website/components/experience.dart' as _experience;
import 'package:portfolio_website/components/footer.dart' as _footer;
import 'package:portfolio_website/components/header.dart' as _header;
import 'package:portfolio_website/components/languages.dart' as _languages;
import 'package:portfolio_website/components/projects.dart' as _projects;
import 'package:portfolio_website/components/resume.dart' as _resume;
import 'package:portfolio_website/components/services.dart' as _services;
import 'package:portfolio_website/components/skills.dart' as _skills;
import 'package:portfolio_website/components/tech_stack.dart' as _tech_stack;
import 'package:portfolio_website/constants/theme.dart' as _theme;
import 'package:portfolio_website/pages/about.dart' as _pages_about;
import 'package:portfolio_website/pages/home.dart' as _home;
import 'package:portfolio_website/app.dart' as _app;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',
  clients: {_pages_about.About: ClientTarget<_pages_about.About>('about')},
  styles: () => [
    ..._theme.styles,
    ..._app.App.styles,
    ..._about.AboutSection.styles,
    ..._achievements.AchievementsSection.styles,
    ..._app_container.AppContainer.styles,
    ..._certifications.CertificationsSection.styles,
    ..._contact.ContactSection.styles,
    ..._education.EducationSection.styles,
    ..._experience.ExperienceSection.styles,
    ..._footer.FooterSection.styles,
    ..._header.Header.styles,
    ..._languages.LanguagesSection.styles,
    ..._projects.ProjectsSection.styles,
    ..._resume.ResumeSection.styles,
    ..._services.ServicesSection.styles,
    ..._skills.SkillsSection.styles,
    ..._tech_stack.TechStackSection.styles,
    ..._pages_about.About.styles,
    ..._home.Home.styles,
  ],
);

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../gen/i18n/strings.g.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  // I wanted to add "copy on long press" here, but recognizer can detect only
  // one :sob:
  TextSpan _link(String text, [String? url]) {
    return TextSpan(
      text: text,
      style: const TextStyle(color: Colors.blue),
      recognizer:
          TapGestureRecognizer()
            ..onTap =
                () => launchUrlString(
                  url ?? text,
                  mode: LaunchMode.externalApplication,
                ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tt = t.textTheme;

    smallSpace() => const SizedBox(height: 6.0);

    newline() => const TextSpan(text: "\n");

    Widget divider() => Column(
      children: [
        const SizedBox(height: 6.0),
        Container(
          height: 1.0,
          color: t.dividerColor,
          margin: const EdgeInsets.symmetric(vertical: 16.0),
        ),
        const SizedBox(height: 6.0),
      ],
    );

    return Scaffold(
      appBar: AppBar(title: Text(context.t.pageAboutTitle)),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Center(
              child: Text(context.t.pageAboutMeHeader, style: tt.headlineLarge),
            ),
            smallSpace(),
            Text(context.t.pageAboutMeBio),
            smallSpace(),
            Text(context.t.pageAboutMeAnyQuestions),
            smallSpace(),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(text: "Discord 🎮: "),
                  _link("FreeBuddy server", "https://discord.gg/fYS98UE5Cu"),
                  newline(),
                  const TextSpan(text: "Email 📧: "),
                  _link("4i05wllh@anonaddy.me", "mailto:4i05wllh@anonaddy.me"),
                ],
                style: tt.bodyLarge,
              ),
            ),
            smallSpace(),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: context.t.pageAboutMeOpenSource),
                  newline(),
                  _link("https://github.com/TheLastGimbus/FreeBuddy/"),
                  // TODO: Actually write a blog
                  // newline(),
                  // TextSpan(text: context.t.pageAboutMeBlog),
                  // _link("https://the.lastgimbus.com/blog/"),
                ],
              ),
            ),
            divider(),
            Text(context.t.pageAboutMentionsHeader, style: tt.headlineMedium),
            smallSpace(),
            Text(
              context.t.pageAboutMentionsPeopleHeader,
              style: tt.headlineSmall,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: " - ${context.t.pageAboutMentionsPeopleStreet}",
                  ),
                  newline(),
                  TextSpan(
                    text: " - ${context.t.pageAboutMentionsPeopleHuawei}",
                  ),
                ],
              ),
            ),
            smallSpace(),
            Text(
              context.t.pageAboutMentionsTechHeader,
              style: tt.headlineSmall,
            ),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(text: " - Flutter 🐦"),
                  newline(),
                  const TextSpan(text: " - Wireshark 🦈"),
                ],
              ),
            ),
            divider(),
            Text(
              context.t.privacyPolicyTitle,
              style: t.textTheme.headlineSmall,
            ),
            smallSpace(),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: context.t.privacyPolicyText),
                  newline(),
                  _link(context.t.privacyPolicyUrl),
                ],
              ),
            ),
            divider(),
            TextButton(
              onPressed:
                  () => Navigator.of(
                    context,
                  ).pushNamed('/settings/about/licenses'),
              child: Text(context.t.pageAboutOpenSourceLicensesBtn),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../gen/i18n/strings.g.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.t.settings)),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            FilledButton(
              onPressed:
                  () => Navigator.of(context).pushNamed('/settings/about'),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(context.t.pageAboutTitle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

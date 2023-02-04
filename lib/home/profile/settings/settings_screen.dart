import 'package:bluecold/home/profile/settings/disclaimer_screen.dart';
import 'package:bluecold/home/profile/widgets/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Scaffold(
        body: Column(
          children: [
            const CustomAppBar(title: "Settings"),
            Column(
              children: [
                settingsTile(
                    ontap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) => const DisclaimerScreen(),
                        ),
                      );
                    },
                    icon: Icons.rule_rounded,
                    title: "Disclaimer"),
                settingsTile(
                  ontap: () {},
                  icon: Icons.info,
                  title: "About Us",
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  ListTile settingsTile({
    required Function ontap,
    required IconData icon,
    required String title,
  }) {
    return ListTile(
      onTap: () {
        ontap();
      },
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
    );
  }
}

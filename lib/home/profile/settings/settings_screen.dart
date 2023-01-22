import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            appbar(context),
            Column(
              children: [
                settingsTile(
                    ontap: () {},
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

  SizedBox appbar(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(CupertinoIcons.back)),
              const Text(
                "Settings",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

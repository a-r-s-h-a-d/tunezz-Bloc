import 'package:flutter/material.dart';

class SettingsListTile extends StatelessWidget {
  const SettingsListTile({
    Key? key,
    required this.labelText,
    required this.icon,
    this.trailingwidget,
  }) : super(key: key);
  final String labelText;
  final IconData icon;
  final Widget? trailingwidget;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      textColor: Colors.white,
      iconColor: Colors.white,
      leading: Icon(icon),
      title: Text(
        labelText,
        style: const TextStyle(
          fontFamily: "acme",
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: trailingwidget,
    );
  }
}

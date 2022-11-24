import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tunezz_pro/constants/color_palette/background_colors.dart';
import 'package:tunezz_pro/presentations/screens/screen_privacy&conditions/screen_privacy_conditions.dart';
import 'package:tunezz_pro/constants/text/privacy_policy.dart';
import 'package:tunezz_pro/presentations/screens/screen_settings/widgets/settings_tile.dart';
import 'package:tunezz_pro/constants/text/terms&conditions.dart';

class ScreenSettings extends StatelessWidget {
  ScreenSettings({super.key});

  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer.withId('0');
  final bool? isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            fontFamily: "acme",
            color: Colors.white,
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(gradient: bgColor()),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            title: const Center(
                                child: Text(
                              'ABOUT',
                              style:
                                  TextStyle(fontFamily: "acme", fontSize: 25),
                            )),
                            content: const Text(
                              'This App is designesd and developed by MUHAMMED ARSHAD',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "acme",
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: const SettingsListTile(
                        labelText: 'About', icon: Icons.account_box_outlined),
                  ),
                  InkWell(
                    onTap: () async {
                      await Share.share(
                          'check out my App on Google Playstore\nhttps://play.google.com/store/apps/details?id=in.brototype.tunezz');
                    },
                    child: const SettingsListTile(
                        labelText: 'Share App', icon: Icons.share),
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ScreenPrivacyConditions(
                        screenName: 'Terms & Conditions',
                        screenData: conditions,
                      ),
                    )),
                    child: const SettingsListTile(
                        labelText: 'Terms & Conditions',
                        icon: Icons.warning_amber_outlined),
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => ScreenPrivacyConditions(
                                screenName: 'Privacy Policy',
                                screenData: policy,
                              )),
                    ),
                    child: const SettingsListTile(
                        labelText: 'Privacy Policy',
                        icon: Icons.policy_outlined),
                  ),
                  InkWell(
                    onTap: () => showAboutDialog(
                      context: context,
                    ),
                    child: const SettingsListTile(
                        labelText: 'License', icon: Icons.privacy_tip_rounded),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: const [
                    Text(
                      'Version 1.0',
                      style: TextStyle(
                        fontFamily: "acme",
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

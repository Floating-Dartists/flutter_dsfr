import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DynamicTheme(themedWidgetBuilder: (_, themeMode, __) {
      return MaterialApp(
        themeMode: themeMode,
        theme: ThemeData.light().copyWith(
          extensions: dsfrExtensionsLight,
        ),
        darkTheme: ThemeData.dark().copyWith(
          extensions: dsfrExtensionsDark,
        ),
        home: const MyHomePage(),
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _widgets = <Widget>[
    FranceConnectButton(onPressed: () {}),
    FranceConnectButton(onPressed: () {}, variant: true),
    UnconstrainedBox(
      child: DSFRPrimaryButton(
        onPressed: () {},
        label: 'Label bouton',
      ),
    ),
    DSFRAlerts(
      type: DSFRAlertsType.error,
      title: "Error Alert - MD",
      description: "une alerte de type error avec un titre et une description",
      onClose: () => debugPrint("close callback called"),
    ),
    DSFRAlerts(
      type: DSFRAlertsType.success,
      title: "Success Alert - MD",
      description:
          "une alerte de type success avec un titre et une description",
      onClose: () => debugPrint("close callback called"),
    ),
    DSFRAlerts(
      type: DSFRAlertsType.info,
      title: "Info Alert - MD",
      description: "une alerte de type info avec un titre et une description",
      onClose: () => debugPrint("close callback called"),
    ),
    DSFRAlerts(
      type: DSFRAlertsType.warning,
      title: "Warning Alert - MD",
      description:
          "une alerte de type warning avec un titre et une description",
      onClose: () => debugPrint("close callback called"),
    ),
    DSFRSmallAlerts(
      type: DSFRAlertsType.error,
      description: "Error Alert - SM",
      onClose: () => debugPrint("close callback called"),
    ),
    DSFRSmallAlerts(
      type: DSFRAlertsType.success,
      description: "Success Alert - SM",
      onClose: () => debugPrint("close callback called"),
    ),
    DSFRSmallAlerts(
      type: DSFRAlertsType.info,
      description: "Info Alert - SM",
      onClose: () => debugPrint("close callback called"),
    ),
    DSFRSmallAlerts(
      type: DSFRAlertsType.warning,
      description: "Warning Alert - SM",
      onClose: () => debugPrint("close callback called"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              const Icon(Icons.dark_mode),
              Switch(
                value: isDark,
                onChanged: (_) {
                  DynamicTheme.of(context).setThemeMode(
                    isDark ? ThemeMode.light : ThemeMode.dark,
                  );
                },
              ),
            ],
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: _widgets.length,
        itemBuilder: (_, i) => _widgets[i],
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}

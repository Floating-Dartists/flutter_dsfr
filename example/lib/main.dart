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
    DSFRAlert(
      type: DSFRAlertType.error,
      title: "Error Alert - MD",
      description: "une alerte de type error avec un titre et une description",
      onClose: () => debugPrint("close callback called"),
    ),
    DSFRAlert(
      type: DSFRAlertType.success,
      title: "Success Alert - MD",
      description:
          "une alerte de type success avec un titre et une description",
      onClose: () {},
    ),
    DSFRAlert(
      type: DSFRAlertType.info,
      title: "Info Alert - MD",
      description: "une alerte de type info avec un titre et une description",
      onClose: () => debugPrint("close callback called"),
    ),
    DSFRAlert(
      type: DSFRAlertType.warning,
      title: "Warning Alert - MD",
      description:
          "une alerte de type warning avec un titre et une description",
      onClose: () => debugPrint("close callback called"),
    ),
    DSFRSmallAlert(
      type: DSFRAlertType.error,
      description: "Error Alert - SM",
      onClose: () => debugPrint("close callback called"),
    ),
    DSFRSmallAlert(
      type: DSFRAlertType.success,
      description: "Success Alert - SM",
      onClose: () {},
    ),
    DSFRSmallAlert(
      type: DSFRAlertType.info,
      description: "Info Alert - SM",
      onClose: () => debugPrint("close callback called"),
    ),
    DSFRSmallAlert(
      type: DSFRAlertType.warning,
      description: "Warning Alert - SM",
      onClose: () => debugPrint("close callback called"),
    ),
    const DSFRAccordion(
      panels: [
        DSFRAccordionData(
          title: "Accordion1",
          content: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Im an awesome content, expanded by default"),
          ),
          isInitialyExpanded: true,
        ),
        DSFRAccordionData(
          title: "Accordion2",
          content: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Im also an awesome content"),
          ),
        ),
      ],
    ),
    const DSFRBadge(
      type: DSFRBadgeType.error,
      label: "error icon",
      showIcon: true,
    ),
    const DSFRBadge(
      type: DSFRBadgeType.success,
      label: "success icon",
      showIcon: true,
    ),
    const DSFRBadge(
      type: DSFRBadgeType.info,
      label: "info icon",
      showIcon: true,
    ),
    const DSFRBadge(
      type: DSFRBadgeType.warning,
      label: "warning icon",
      showIcon: true,
    ),
    const DSFRBadge(
      type: DSFRBadgeType.news,
      label: "news icon",
      showIcon: true,
    ),
    const DSFRBadge(
      type: DSFRBadgeType.error,
      label: "error - sm - icon",
      size: DSFRBadgeSize.sm,
      showIcon: true,
    ),
    const DSFRBadge(
      type: DSFRBadgeType.success,
      label: "success - sm - icon",
      size: DSFRBadgeSize.sm,
      showIcon: true,
    ),
    const DSFRBadge(
      type: DSFRBadgeType.info,
      label: "info - sm - icon",
      size: DSFRBadgeSize.sm,
      showIcon: true,
    ),
    const DSFRBadge(
      type: DSFRBadgeType.warning,
      label: "warning - sm - icon",
      size: DSFRBadgeSize.sm,
      showIcon: true,
    ),
    const DSFRBadge(
      type: DSFRBadgeType.news,
      label: "news - sm - icon",
      size: DSFRBadgeSize.sm,
      showIcon: true,
    ),
    DSFRButtonsGroup(
      buttons: [
        DSFRPrimaryButton(
          label: 'Label Button',
          onPressed: () {},
        ),
        DSFRSecondaryButton(
          label: 'Label Button',
          onPressed: () {},
        ),
      ],
    ),
    DSFRBanner(
      text: "Im an awesome banner",
      onClose: () {},
    ),
    DSFRBanner(
      text: "Im an awesome banner",
      link: DSFRBannerLink(
        text: "this is an awesome link",
        link: Uri.parse("https://http.cat/404"),
      ),
      onClose: () {},
    ),
    DSFRRadioGroupFormField<int>(
      title: 'Légende pour l’ensemble de champs',
      onChanged: (_) {},
      items: List<DSFRRadioData<int>>.generate(
        3,
        (i) => DSFRRadioData(label: 'Label radio', value: i),
      ),
      autovalidateMode: AutovalidateMode.always,
      validator: (selected) =>
          selected == null ? 'Veuillez choisir une option' : null,
      successMessage: 'Vous avez choisi une option',
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

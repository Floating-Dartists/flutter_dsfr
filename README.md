# Flutter DSFR

[![Test workflow](https://github.com/Floating-Dartists/flutter_dsfr/actions/workflows/tests.yml/badge.svg)](https://github.com/Floating-Dartists/flutter_dsfr/actions/workflows/tests.yml)
[![Coverage Status](https://coveralls.io/repos/github/Floating-Dartists/flutter_dsfr/badge.svg?branch=main)](https://coveralls.io/github/Floating-Dartists/flutter_dsfr?branch=main)

Flutter implementation of the french government design system.

The full design specifications is available here: https://gouvfr.atlassian.net/wiki/spaces/DB/overview?homepageId=145359476

**This project is not affiliated with the french government.**

## Getting Started

* Add the package to your `pubspec.yaml` file:

```yaml
dependencies:
    flutter_dsfr: any
```

* Add the required extensions to your theme:

```dart
import 'package:flutter_dsfr/flutter_dsfr.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light().copyWith(
          extensions: dsfrExtensionsLight,
        ),
        darkTheme: ThemeData.dark().copyWith(
          extensions: dsfrExtensionsDark,
        ),
        home: const MyHomePage(),
    );
  }
}
```

## Components

### Buttons

* Primary

```dart
DSFRPrimaryButton(onPressed: () {}, label: 'Label bouton');
```

![primary_button.png](https://raw.githubusercontent.com/Floating-Dartists/flutter_dsfr/main/screenshots/primary_button.png)

* Secondary

```dart
DSFRSecondaryButton(onPressed: () {}, label: 'Label bouton');
```

![secondary_button.png](https://raw.githubusercontent.com/Floating-Dartists/flutter_dsfr/main/screenshots/secondary_button.png)

* FranceConnect

```dart
FranceConnectButton(onPressed: () {});
```

![france_connect.png](https://raw.githubusercontent.com/Floating-Dartists/flutter_dsfr/main/screenshots/france_connect.png)

* FranceConnectPlus

```dart
FranceConnectButton(onPressed: () {}, variant: true);
```

![france_connect_plus.png](https://raw.githubusercontent.com/Floating-Dartists/flutter_dsfr/main/screenshots/france_connect_plus.png)

## Alerts

* Alert

```dart
DSFRAlert(
      type: DSFRAlertType.success,
      title: "Success Alert",
      description:
          "this is a success alert",
      onClose: () {},
    )
```

![alert.png](https://raw.githubusercontent.com/Floating-Dartists/flutter_dsfr/main/screenshots/alert.png)

* SmallAlert

```dart
DSFRSmallAlert(
      type: DSFRAlertType.success,
      description: "this is a small alert",
      onClose: () {},
    )
```

![small_alert.png](https://raw.githubusercontent.com/Floating-Dartists/flutter_dsfr/main/screenshots/small_alert.png)

## Dependencies

* [url_launcher](https://pub.dev/packages/url_launcher): Allows to open links in the browser.(used in the `FranceConnectButton` widget)

## Roadmap

Components we need to implement

- [ ] Accordion
- [ ] FileUpload
- [X] Alerts
- [ ] Badges
- [ ] Banner
- [ ] SearchBar
- [X] Buttons
- [ ] ButtonsGroup
- [X] FranceConnectButton
- [ ] Radio
- [ ] RichRadio
- [ ] Checkbox
- [ ] Card
- [ ] Input
- [ ] Quote
- [ ] Header
- [ ] Breadcrumb
- [ ] ConscentBanner
- [ ] StepIndicateur
- [ ] ToggleSwitch
- [ ] Links
- [ ] SkipLinks
- [ ] Select
- [ ] SideMenu
- [ ] Callout
- [ ] Highlight
- [ ] Modal
- [ ] MainNavigation
- [ ] Tabs
- [ ] Display
- [ ] Share
- [ ] Footer
- [ ] Pagination
- [ ] Summary
- [ ] Table
- [ ] Tag
- [ ] DownloadFile
- [ ] Tile

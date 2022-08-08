# Flutter DSFR

<p align="center">
  <a href="https://github.com/Floating-Dartists" target="_blank">
    <img src="https://raw.githubusercontent.com/Floating-Dartists/fd_template/main/assets/Transparent-light.png" alt="Floating Dartists" width="600">
  </a>
</p>

[![Test workflow](https://github.com/Floating-Dartists/flutter_dsfr/actions/workflows/tests.yml/badge.svg)](https://github.com/Floating-Dartists/flutter_dsfr/actions/workflows/tests.yml)
[![Coverage Status](https://coveralls.io/repos/github/Floating-Dartists/flutter_dsfr/badge.svg?branch=main)](https://coveralls.io/github/Floating-Dartists/flutter_dsfr?branch=main)
[![Join Flutter FR Community](https://dcbadge.vercel.app/api/server/BCqyRcQ2ns?style=flat)](https://discord.gg/BCqyRcQ2ns)

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

## Accordion

* Accordion

```dart
DSFRAccordionData(
          title: "Accordion1",
          content: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Im an awesome content, expanded by default"),
          ),
          isInitialyExpanded: true,
        )
```

![accordion.png](https://raw.githubusercontent.com/Floating-Dartists/flutter_dsfr/main/screenshots/accordion.png)


## Badges

* Badge

```dart
DSFRBadge(
      type: DSFRBadgeType.success,
      label: "label",
      showIcon: true,
    )
```

![badge.png](https://raw.githubusercontent.com/Floating-Dartists/flutter_dsfr/main/screenshots/badge.png)

## ButtonsGroup

* ButtonsGroup

```dart
DSFRButtonsGroup(
  buttons: [
    DSFRButton(
      label: "Label Button",
      onPressed: () {},
    ),
    DSFRSecondaryButton(
      label: "Label Button",
      onPressed: () {},
    ),
  ],
)
```

![buttons_group.png](https://raw.githubusercontent.com/Floating-Dartists/flutter_dsfr/main/screenshots/buttons_group.png)

## Banners

* Banner

```dart
DSFRBanner(
  text: "Im an awesome banner",
  link: DSFRBannerLink(
    text: "this is an awesome link",
    link: Uri.parse("https://http.cat/404"),
  ),
  onClose: () {},
)
```

![banner.png](https://raw.githubusercontent.com/Floating-Dartists/flutter_dsfr/main/screenshots/banner.png)

## Radio

* Single Radio button

```dart
DSFRRadioButton<bool>(
  label: 'Label radio',
  value: true,
  groupValue: false,
  onChanged: (_) {},
)
```

![radio.png](https://raw.githubusercontent.com/Floating-Dartists/flutter_dsfr/main/screenshots/radio.png)

* Multiple Radio buttons

```dart
DSFRRadioGroup<bool>(
  title: "Légende pour l'ensemble de champs",
  onChanged: (_) {},
  items: [
    DSFRRadioData(label: 'Label radio', value: false),
    DSFRRadioData(label: 'Label radio', value: false),
    DSFRRadioData(label: 'Label radio', value: false)
  ],
)
```

Which also exists as a `FormField` to manage validation and error states:

```dart
DSFRRadioGroupFormField<bool>(
  title: "Légende pour l'ensemble de champs",
  onChanged: (_) {},
  items: [
    DSFRRadioData(label: 'Label radio', value: false),
    DSFRRadioData(label: 'Label radio', value: false),
    DSFRRadioData(label: 'Label radio', value: false)
  ],
   autovalidateMode: AutovalidateMode.always,
   validator: (selectedValue) =>
      selectedValue == null || !selectedValue
        ? "Texte d'erreur obligatoire"
        : null,
)
```

![radio_group.png](https://raw.githubusercontent.com/Floating-Dartists/flutter_dsfr/main/screenshots/radio_group.png)

## Dependencies

* [url_launcher](https://pub.dev/packages/url_launcher): Allows to open links in the browser.(used in the `FranceConnectButton` widget and in `DSFRBanner`)

## Roadmap

Components we need to implement

- [X] Accordion
- [ ] FileUpload
- [X] Alerts
- [X] Badges
- [X] Banner
- [ ] SearchBar
- [X] Buttons
- [X] ButtonsGroup
- [X] FranceConnectButton
- [X] Radio
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

## Contributors

<!-- readme: contributors -start -->
<!-- readme: contributors -end -->

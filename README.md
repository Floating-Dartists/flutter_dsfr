# Flutter DSFR

Flutter implementation of the french government design system.

The full design specifications is available here: https://gouvfr.atlassian.net/wiki/spaces/DB/overview?homepageId=145359476

**This project is not affiliated with the french government.**

## Components

### Buttons

* FranceConnect

```dart
FranceConnectButton(onPressed: () {});
```

![](https://raw.githubusercontent.com/TesteurManiak/flutter_dsfr/main/screenshots/france_connect.png)

* FranceConnectPlus

```dart
FranceConnectButton(onPressed: () {}, variant: true);
```

![](https://raw.githubusercontent.com/TesteurManiak/flutter_dsfr/main/screenshots/france_connect_plus.png)

## Dependencies

* [flutter_remix](https://pub.dev/packages/flutter_remix): Gives access to the [Remix Icons](https://remixicon.com/) pack used in this design system.
* [flutter_svg](https://pub.dev/packages/flutter_svg): Allows to use svg images. (used in the `FranceConnectButton` widget)
* [url_launcher](https://pub.dev/packages/url_launcher): Allows to open links in the browser.(used in the `FranceConnectButton` widget)

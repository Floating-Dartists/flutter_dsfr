# Flutter DSFR Localizations

## Usage

If your app supports only a single language, and you want to override labels – you will need to provide a custom class that implements `DefaultLocalizations`, for example:

```dart
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_dsfr/flutter_dsfr_localizations.dart';

class LabelOverrides extends DefaultLocalizations {
  const LabelOverrides();

  @override
  String get auth => 'S\'authentifier';
}
```

Once created, pass the instance of `LabelOverrides` to the `localizationsDelegates` list in your `MaterialApp`/`CupertinoApp`/`DSFRApp`:

```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DSFRApp(
      localizationsDelegates: [
        // Creates an instance of DSFRLocalizationDelegate with overridden labels
        DSFRLocalizations.withDefaultOverrides(const LabelOverrides()),

        // Delegates below take care of built-in flutter widgets
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,

        // This delegate is required to provide the labels that are not overridden by LabelOverrides
        DSFRLocalizations.delegate,
      ],
      // ...
    );
  }
}
```

If you need to support multiple languages – follow the [official Flutter localization guide](https://docs.flutter.dev/development/accessibility-and-localization/internationalization#an-alternative-class-for-the-apps-localized-resources)
and make sure that your custom delegate extends `LocalizationsDelegate<DSFRLocalizations>`.
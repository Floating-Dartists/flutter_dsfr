import 'package:alchemist/alchemist.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FranceConnectButton', () {
    goldenTest(
      'renders correctly',
      fileName: 'france_connect_button',
      builder: () => GoldenTestGroup(
        children: [
          GoldenTestScenario(
            name: 'default',
            child: FranceConnectButton(
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  });
}

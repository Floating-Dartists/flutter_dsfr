import 'package:alchemist/alchemist.dart';
import 'package:flutter_dsfr/src/components/logo/logo.dart';

void main() {
  goldenTest(
    'logo rendering',
    fileName: 'logo',
    builder: () => GoldenTestGroup(
      children: [
        GoldenTestScenario(name: 'default', child: const DSFRLogo()),
        GoldenTestScenario(
          name: 'size: 48',
          child: const DSFRLogo(size: 48),
        ),
      ],
    ),
  );
}

// ignore_for_file: cascade_invocations

import 'package:flutter/material.dart';

class DSFRLogo extends StatelessWidget {
  const DSFRLogo({super.key, this.size = 20.0});

  final double size;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size * 1.2),
      painter: _DSFRLogoPainter(),
    );
  }
}

class _DSFRLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path_0 = Path()
      ..moveTo(size.width * 0.8741250, size.height * 0.3145833)
      ..lineTo(size.width * 0.4992750, size.height * 0.1338125)
      ..lineTo(size.width * 0.1244250, size.height * 0.3163333)
      ..arcToPoint(
        Offset(size.width * 0.1167750, size.height * 0.3272500),
        radius: Radius.elliptical(
          size.width * 0.01515000,
          size.height * 0.01262500,
        ),
        clockwise: false,
      )
      ..lineTo(size.width * 0.1167750, size.height * 0.6803333)
      ..arcToPoint(
        Offset(size.width * 0.1244250, size.height * 0.6912500),
        radius: Radius.elliptical(
          size.width * 0.01665000,
          size.height * 0.01387500,
        ),
        clockwise: false,
      )
      ..lineTo(size.width * 0.4992250, size.height * 0.8704167)
      ..lineTo(size.width * 0.8740750, size.height * 0.6890417)
      ..arcToPoint(
        Offset(size.width * 0.8817250, size.height * 0.6781250),
        radius: Radius.elliptical(
          size.width * 0.01662500,
          size.height * 0.01385417,
        ),
        clockwise: false,
      )
      ..lineTo(size.width * 0.8817250, size.height * 0.3255833)
      ..arcToPoint(
        Offset(size.width * 0.8741250, size.height * 0.3145833),
        radius: Radius.elliptical(
          size.width * 0.01512500,
          size.height * 0.01260417,
        ),
        clockwise: false,
      )
      ..close();

    final paint0Fill = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xff2a2f82).withOpacity(1);
    canvas.drawPath(path_0, paint0Fill);

    final path_1 = Path()
      ..moveTo(size.width * 0.3653500, size.height * 0.3250000)
      ..lineTo(size.width * 0.2396250, size.height * 0.5047500)
      ..lineTo(size.width * 0.1257000, size.height * 0.3136042)
      ..lineTo(size.width * 0.2604500, size.height * 0.2487500)
      ..lineTo(size.width * 0.3726750, size.height * 0.3145833)
      ..close()
      ..moveTo(size.width * 0.8817500, size.height * 0.6787500)
      ..lineTo(size.width * 0.8817500, size.height * 0.3254583)
      ..arcToPoint(
        Offset(size.width * 0.8741000, size.height * 0.3145625),
        radius: Radius.elliptical(
          size.width * 0.01500000,
          size.height * 0.01250000,
        ),
        clockwise: false,
      )
      ..lineTo(size.width * 0.4992750, size.height * 0.1338125);

    final paint1Fill = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xffdf1f26).withOpacity(1);
    canvas.drawPath(path_1, paint1Fill);

    final path_2 = Path()
      ..moveTo(size.width * 0.1168250, size.height * 0.6787500)
      ..lineTo(size.width * 0.4993250, size.height * 0.1338125)
      ..lineTo(size.width * 0.4993250, size.height * 0.8705208)
      ..lineTo(size.width * 0.1244250, size.height * 0.6912500)
      ..arcToPoint(
        Offset(size.width * 0.1167750, size.height * 0.6803333),
        radius: Radius.elliptical(
          size.width * 0.01665000,
          size.height * 0.01387500,
        ),
      )
      ..lineTo(size.width * 0.1167750, size.height * 0.3272500)
      ..close()
      ..moveTo(size.width * 0.7335500, size.height * 0.2467708)
      ..lineTo(size.width * 0.8700000, size.height * 0.3125000)
      ..lineTo(size.width * 0.7577750, size.height * 0.5031250)
      ..lineTo(size.width * 0.6231000, size.height * 0.3107083)
      ..close();

    final paint2Fill = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xff2e65b0).withOpacity(1);
    canvas.drawPath(path_2, paint2Fill);

    final path_3 = Path()
      ..moveTo(size.width * 0.9901500, size.height * 0.2563542)
      ..lineTo(size.width * 0.5104000, size.height * 0.02677083)
      ..arcToPoint(
        Offset(size.width * 0.4896000, size.height * 0.02677083),
        radius: Radius.elliptical(
          size.width * 0.02332500,
          size.height * 0.01943750,
        ),
        clockwise: false,
      )
      ..lineTo(size.width * 0.009850000, size.height * 0.2563542)
      ..arcToPoint(
        Offset(0, size.height * 0.2708333),
        radius: Radius.elliptical(
          size.width * 0.02215000,
          size.height * 0.01845833,
        ),
        clockwise: false,
      )
      ..lineTo(0, size.height * 0.7291667)
      ..arcToPoint(
        Offset(size.width * 0.009850000, size.height * 0.7437500),
        radius: Radius.elliptical(
          size.width * 0.02215000,
          size.height * 0.01845833,
        ),
        clockwise: false,
      );
    path_3.lineTo(size.width * 0.4895750, size.height * 0.9733333);
    path_3.arcToPoint(
      Offset(size.width * 0.5103750, size.height * 0.9733333),
      radius: Radius.elliptical(
        size.width * 0.02332500,
        size.height * 0.01943750,
      ),
      clockwise: false,
    );
    path_3.lineTo(size.width * 0.9901500, size.height * 0.7437500);
    path_3.arcToPoint(
      Offset(size.width, size.height * 0.7291667),
      radius: Radius.elliptical(
        size.width * 0.02215000,
        size.height * 0.01845833,
      ),
      clockwise: false,
    );
    path_3.lineTo(size.width, size.height * 0.2708333);
    path_3.arcToPoint(
      Offset(size.width * 0.9901500, size.height * 0.2563542),
      radius: Radius.elliptical(
        size.width * 0.02215000,
        size.height * 0.01845833,
      ),
      clockwise: false,
    );
    path_3.close();
    path_3.moveTo(size.width * 0.2690500, size.height * 0.6262708);
    path_3.lineTo(size.width * 0.2710250, size.height * 0.6262708);
    path_3.cubicTo(
      size.width * 0.2699750,
      size.height * 0.6262708,
      size.width * 0.2690500,
      size.height * 0.6264167,
      size.width * 0.2690500,
      size.height * 0.6273125,
    );
    path_3.cubicTo(
      size.width * 0.2690500,
      size.height * 0.6293958,
      size.width * 0.2728250,
      size.height * 0.6273125,
      size.width * 0.2740500,
      size.height * 0.6293958,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.2583250, size.height * 0.6351458),
      radius: Radius.elliptical(
        size.width * 0.02280000,
        size.height * 0.01900000,
      ),
      clockwise: false,
    );
    path_3.cubicTo(
      size.width * 0.2583250,
      size.height * 0.6362083,
      size.width * 0.2608250,
      size.height * 0.6362083,
      size.width * 0.2621000,
      size.height * 0.6362083,
    );
    path_3.cubicTo(
      size.width * 0.2602250,
      size.height * 0.6382917,
      size.width * 0.2564500,
      size.height * 0.6372500,
      size.width * 0.2551750,
      size.height * 0.6393542,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.2576750, size.height * 0.6403958),
      radius: Radius.elliptical(
        size.width * 0.004425000,
        size.height * 0.003687500,
      ),
      clockwise: false,
    );
    path_3.cubicTo(
      size.width * 0.2564250,
      size.height * 0.6403958,
      size.width * 0.2551750,
      size.height * 0.6403958,
      size.width * 0.2551750,
      size.height * 0.6414583,
    );
    path_3.lineTo(size.width * 0.2551750, size.height * 0.6446042);
    path_3.cubicTo(
      size.width * 0.2520250,
      size.height * 0.6446042,
      size.width * 0.2507750,
      size.height * 0.6466875,
      size.width * 0.2482500,
      size.height * 0.6477500,
    );
    path_3.cubicTo(
      size.width * 0.2532500,
      size.height * 0.6508958,
      size.width * 0.2564250,
      size.height * 0.6477500,
      size.width * 0.2614500,
      size.height * 0.6477500,
    );
    path_3.cubicTo(
      size.width * 0.2482500,
      size.height * 0.6519167,
      size.width * 0.2375500,
      size.height * 0.6577083,
      size.width * 0.2243500,
      size.height * 0.6608542,
    );
    path_3.cubicTo(
      size.width * 0.2218500,
      size.height * 0.6608542,
      size.width * 0.2243500,
      size.height * 0.6640000,
      size.width * 0.2218500,
      size.height * 0.6640000,
    );
    path_3.cubicTo(
      size.width * 0.2256250,
      size.height * 0.6660833,
      size.width * 0.2275250,
      size.height * 0.6629583,
      size.width * 0.2312750,
      size.height * 0.6629583,
    );
    path_3.cubicTo(
      size.width * 0.2149250,
      size.height * 0.6708125,
      size.width * 0.1979500,
      size.height * 0.6775417,
      size.width * 0.1803500,
      size.height * 0.6865417,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.1778500, size.height * 0.6907083),
      radius: Radius.elliptical(
        size.width * 0.008775000,
        size.height * 0.007312500,
      ),
      clockwise: false,
    );
    path_3.lineTo(size.width * 0.1728500, size.height * 0.6907083);
    path_3.cubicTo(
      size.width * 0.1703500,
      size.height * 0.6917500,
      size.width * 0.1716000,
      size.height * 0.6943750,
      size.width * 0.1690750,
      size.height * 0.6964792,
    );
    path_3.cubicTo(
      size.width * 0.1747250,
      size.height * 0.6996250,
      size.width * 0.1815750,
      size.height * 0.6923125,
      size.width * 0.1854250,
      size.height * 0.6964792,
    );
    path_3.cubicTo(
      size.width * 0.1866750,
      size.height * 0.6964792,
      size.width * 0.1829250,
      size.height * 0.6975208,
      size.width * 0.1804250,
      size.height * 0.6975208,
    );
    path_3.cubicTo(
      size.width * 0.1791750,
      size.height * 0.6975208,
      size.width * 0.1791750,
      size.height * 0.6996042,
      size.width * 0.1779250,
      size.height * 0.6996042,
    );
    path_3.lineTo(size.width * 0.1740750, size.height * 0.6996042);
    path_3.cubicTo(
      size.width * 0.1715750,
      size.height * 0.7011667,
      size.width * 0.1690750,
      size.height * 0.7022292,
      size.width * 0.1690750,
      size.height * 0.7053542,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.1634250, size.height * 0.7074375),
      radius: Radius.elliptical(
        size.width * 0.005475000,
        size.height * 0.004562500,
      ),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.2420250, size.height * 0.6953958),
      radius:
          Radius.elliptical(size.width * 0.2258500, size.height * 0.1882083),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.2942250, size.height * 0.6629167),
      radius:
          Radius.elliptical(size.width * 0.1921250, size.height * 0.1601042),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.2954750, size.height * 0.6650000),
      radius: Radius.elliptical(
        size.width * 0.004400000,
        size.height * 0.003666667,
      ),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.2753250, size.height * 0.6875000),
      radius: Radius.elliptical(
        size.width * 0.05420000,
        size.height * 0.04516667,
      ),
    );
    path_3.cubicTo(
      size.width * 0.2684000,
      size.height * 0.6906458,
      size.width * 0.2633750,
      size.height * 0.6953542,
      size.width * 0.2578250,
      size.height * 0.6974583,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.2471250, size.height * 0.7032083),
      radius:
          Radius.elliptical(size.width * 0.1011250, size.height * 0.08427083),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.1986500, size.height * 0.7117917),
      radius:
          Radius.elliptical(size.width * 0.2690250, size.height * 0.2241875),
    );
    path_3.lineTo(size.width * 0.1910250, size.height * 0.7127083);
    path_3.cubicTo(
      size.width * 0.1854000,
      size.height * 0.7133958,
      size.width * 0.1798000,
      size.height * 0.7141458,
      size.width * 0.1742500,
      size.height * 0.7149583,
    );
    path_3.lineTo(size.width * 0.1244250, size.height * 0.6912500);
    path_3.arcToPoint(
      Offset(size.width * 0.1172250, size.height * 0.6826875),
      radius: Radius.elliptical(
        size.width * 0.01620000,
        size.height * 0.01350000,
      ),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.1195750, size.height * 0.6813750),
      radius: Radius.elliptical(
        size.width * 0.01435000,
        size.height * 0.01195833,
      ),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.1167500, size.height * 0.6798958),
      radius: Radius.elliptical(
        size.width * 0.006625000,
        size.height * 0.005520833,
      ),
      clockwise: false,
    );
    path_3.lineTo(size.width * 0.1167500, size.height * 0.6663542);
    path_3.arcToPoint(
      Offset(size.width * 0.1927000, size.height * 0.6467292),
      radius:
          Radius.elliptical(size.width * 0.3196500, size.height * 0.2663750),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.1167750, size.height * 0.6187500),
      radius:
          Radius.elliptical(size.width * 0.2186500, size.height * 0.1822083),
      clockwise: false,
    );
    path_3.lineTo(size.width * 0.1167750, size.height * 0.5871875);
    path_3.arcToPoint(
      Offset(size.width * 0.1577500, size.height * 0.5953542),
      radius:
          Radius.elliptical(size.width * 0.2915500, size.height * 0.2429583),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.1873000, size.height * 0.6073958),
      radius:
          Radius.elliptical(size.width * 0.1603750, size.height * 0.1336458),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.1992500, size.height * 0.6152500),
      radius: Radius.elliptical(
        size.width * 0.07782500,
        size.height * 0.06485417,
      ),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.2192500, size.height * 0.6162917),
      radius: Radius.elliptical(
        size.width * 0.02275000,
        size.height * 0.01895833,
      ),
      clockwise: false,
    );
    path_3.lineTo(size.width * 0.2275000, size.height * 0.6162917);
    path_3.arcToPoint(
      Offset(size.width * 0.2759250, size.height * 0.5974375),
      radius: Radius.elliptical(
        size.width * 0.09902500,
        size.height * 0.08252083,
      ),
      clockwise: false,
    );
    path_3.cubicTo(
      size.width * 0.2759250,
      size.height * 0.5984792,
      size.width * 0.2771750,
      size.height * 0.5984792,
      size.width * 0.2784250,
      size.height * 0.5984792,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.2677250, size.height * 0.6220625),
      radius: Radius.elliptical(
        size.width * 0.09075000,
        size.height * 0.07562500,
      ),
    );
    path_3.cubicTo(
      size.width * 0.2678000,
      size.height * 0.6231250,
      size.width * 0.2665250,
      size.height * 0.6252292,
      size.width * 0.2690500,
      size.height * 0.6262708,
    );
    path_3.close();
    path_3.moveTo(size.width * 0.3394750, size.height * 0.7006667);
    path_3.cubicTo(
      size.width * 0.3457500,
      size.height * 0.6985833,
      size.width * 0.3494750,
      size.height * 0.6948958,
      size.width * 0.3552000,
      size.height * 0.6928125,
    );
    path_3.cubicTo(
      size.width * 0.3539500,
      size.height * 0.6938542,
      size.width * 0.3539500,
      size.height * 0.6959583,
      size.width * 0.3527000,
      size.height * 0.6969792,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.3395000, size.height * 0.7053125),
      radius: Radius.elliptical(
        size.width * 0.09227500,
        size.height * 0.07689583,
      ),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.2998750, size.height * 0.7388542),
      radius:
          Radius.elliptical(size.width * 0.3990000, size.height * 0.3325000),
      clockwise: false,
    );
    path_3.cubicTo(
      size.width * 0.2935750,
      size.height * 0.7451042,
      size.width * 0.2866750,
      size.height * 0.7508958,
      size.width * 0.2798750,
      size.height * 0.7566667,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.2721250, size.height * 0.7617708),
      radius: Radius.elliptical(
        size.width * 0.05962500,
        size.height * 0.04968750,
      ),
    );
    path_3.lineTo(size.width * 0.2089500, size.height * 0.7315625);
    path_3.arcToPoint(
      Offset(size.width * 0.2358500, size.height * 0.7304583),
      radius:
          Radius.elliptical(size.width * 0.1011750, size.height * 0.08431250),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.2572250, size.height * 0.7236458),
      radius:
          Radius.elliptical(size.width * 0.1246000, size.height * 0.1038333),
      clockwise: false,
    );
    path_3.lineTo(size.width * 0.2572250, size.height * 0.7257292);
    path_3.cubicTo(
      size.width * 0.2747250,
      size.height * 0.7199583,
      size.width * 0.2880250,
      size.height * 0.7068542,
      size.width * 0.3056500,
      size.height * 0.7021458,
    );
    path_3.cubicTo(
      size.width * 0.3062750,
      size.height * 0.7021458,
      size.width * 0.3088000,
      size.height * 0.7042292,
      size.width * 0.3113000,
      size.height * 0.7031875,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.3490250, size.height * 0.6886042),
      radius: Radius.elliptical(
        size.width * 0.04707500,
        size.height * 0.03922917,
      ),
    );
    path_3.cubicTo(
      size.width * 0.3490250,
      size.height * 0.6896458,
      size.width * 0.3490250,
      size.height * 0.6906875,
      size.width * 0.3502750,
      size.height * 0.6906875,
    );
    path_3.lineTo(size.width * 0.3509000, size.height * 0.6906875);
    path_3.cubicTo(
      size.width * 0.3471250,
      size.height * 0.6933125,
      size.width * 0.3427250,
      size.height * 0.6959167,
      size.width * 0.3384000,
      size.height * 0.6985417,
    );
    path_3.cubicTo(
      size.width * 0.3369750,
      size.height * 0.6996250,
      size.width * 0.3382250,
      size.height * 0.7006667,
      size.width * 0.3394750,
      size.height * 0.7006667,
    );
    path_3.close();
    path_3.moveTo(size.width * 0.1167750, size.height * 0.5722500);
    path_3.lineTo(size.width * 0.1167750, size.height * 0.5683750);
    path_3.arcToPoint(
      Offset(size.width * 0.1564750, size.height * 0.5644583),
      radius:
          Radius.elliptical(size.width * 0.1453500, size.height * 0.1211250),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.1684250, size.height * 0.5644583),
      radius: Radius.elliptical(
        size.width * 0.03800000,
        size.height * 0.03166667,
      ),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.1167750, size.height * 0.5722500),
      radius:
          Radius.elliptical(size.width * 0.1465250, size.height * 0.1221042),
      clockwise: false,
    );
    path_3.close();
    path_3.moveTo(size.width * 0.8817750, size.height * 0.6782500);
    path_3.arcToPoint(
      Offset(size.width * 0.8741250, size.height * 0.6891667),
      radius: Radius.elliptical(
        size.width * 0.01662500,
        size.height * 0.01385417,
      ),
    );
    path_3.lineTo(size.width * 0.6221500, size.height * 0.8110625);
    path_3.arcToPoint(
      Offset(size.width * 0.5369500, size.height * 0.7863750),
      radius:
          Radius.elliptical(size.width * 0.8075000, size.height * 0.6729167),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.5357000, size.height * 0.7396042),
      radius: Radius.elliptical(
        size.width * 0.07065000,
        size.height * 0.05887500,
      ),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.5445000, size.height * 0.7212083),
      radius: Radius.elliptical(
        size.width * 0.09485000,
        size.height * 0.07904167,
      ),
    );
    path_3.cubicTo(
      size.width * 0.5451250,
      size.height * 0.7206875,
      size.width * 0.5457500,
      size.height * 0.7201667,
      size.width * 0.5457500,
      size.height * 0.7196250,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.5463750, size.height * 0.7191042),
      radius: Radius.elliptical(
        size.width * 0.0006250000,
        size.height * 0.0005208333,
      ),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.5558000, size.height * 0.7075417),
      radius:
          Radius.elliptical(size.width * 0.1079000, size.height * 0.08991667),
    );
    path_3.lineTo(size.width * 0.5561750, size.height * 0.7072292);
    path_3.lineTo(size.width * 0.5566750, size.height * 0.7067917);
    path_3.lineTo(size.width * 0.5570500, size.height * 0.7064792);
    path_3.cubicTo(
      size.width * 0.5570500,
      size.height * 0.7059583,
      size.width * 0.5576750,
      size.height * 0.7054375,
      size.width * 0.5583000,
      size.height * 0.7048958,
    );
    path_3.cubicTo(
      size.width * 0.5589250,
      size.height * 0.7038333,
      size.width * 0.5601750,
      size.height * 0.7033125,
      size.width * 0.5608000,
      size.height * 0.7022708,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.5752750, size.height * 0.6918542),
      radius: Radius.elliptical(
        size.width * 0.09427500,
        size.height * 0.07856250,
      ),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.5916250, size.height * 0.6881667),
      radius:
          Radius.elliptical(size.width * 0.1017500, size.height * 0.08479167),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6520000, size.height * 0.6950000),
      radius:
          Radius.elliptical(size.width * 0.4954250, size.height * 0.4128542),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6589250, size.height * 0.6970833),
      radius: Radius.elliptical(
        size.width * 0.01877500,
        size.height * 0.01564583,
      ),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6815500, size.height * 0.6960417),
      radius: Radius.elliptical(
        size.width * 0.04622500,
        size.height * 0.03852083,
      ),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.7029250, size.height * 0.6813333),
      radius: Radius.elliptical(
        size.width * 0.02842500,
        size.height * 0.02368750,
      ),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.7041750, size.height * 0.6592708),
      radius: Radius.elliptical(
        size.width * 0.03030000,
        size.height * 0.02525000,
      ),
      clockwise: false,
    );
    path_3.cubicTo(
      size.width * 0.6997250,
      size.height * 0.6535208,
      size.width * 0.7038500,
      size.height * 0.6501667,
      size.width * 0.7087000,
      size.height * 0.6469792,
    );
    path_3.lineTo(size.width * 0.7104000, size.height * 0.6458333);
    path_3.arcToPoint(
      Offset(size.width * 0.7161750, size.height * 0.6413333),
      radius: Radius.elliptical(
        size.width * 0.02925000,
        size.height * 0.02437500,
      ),
      clockwise: false,
    );
    path_3.cubicTo(
      size.width * 0.7193250,
      size.height * 0.6360833,
      size.width * 0.7136750,
      size.height * 0.6330000,
      size.width * 0.7124000,
      size.height * 0.6282083,
    );
    path_3.cubicTo(
      size.width * 0.7111500,
      size.height * 0.6261250,
      size.width * 0.7067500,
      size.height * 0.6271667,
      size.width * 0.7042250,
      size.height * 0.6240417,
    );
    path_3.cubicTo(
      size.width * 0.7130250,
      size.height * 0.6208958,
      size.width * 0.7256000,
      size.height * 0.6151042,
      size.width * 0.7199500,
      size.height * 0.6061875,
    );
    path_3.cubicTo(
      size.width * 0.7161750,
      size.height * 0.6014583,
      size.width * 0.7105250,
      size.height * 0.5930625,
      size.width * 0.7174500,
      size.height * 0.5883333,
    );
    path_3.cubicTo(
      size.width * 0.7262500,
      size.height * 0.5841667,
      size.width * 0.7388250,
      size.height * 0.5851875,
      size.width * 0.7426000,
      size.height * 0.5783542,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.7353000, size.height * 0.5557500),
      radius: Radius.elliptical(
        size.width * 0.02845000,
        size.height * 0.02370833,
      ),
      clockwise: false,
    );
    path_3.lineTo(size.width * 0.7334250, size.height * 0.5535000);
    path_3.arcToPoint(
      Offset(size.width * 0.7281500, size.height * 0.5468333),
      radius:
          Radius.elliptical(size.width * 0.1188500, size.height * 0.09904167),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.7149500, size.height * 0.5310625),
      radius:
          Radius.elliptical(size.width * 0.1728500, size.height * 0.1440417),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.7017500, size.height * 0.5100417),
      radius:
          Radius.elliptical(size.width * 0.1075000, size.height * 0.08958333),
    );
    path_3.cubicTo(
      size.width * 0.6979750,
      size.height * 0.5021667,
      size.width * 0.7030000,
      size.height * 0.4953333,
      size.width * 0.7030000,
      size.height * 0.4874583,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6948250, size.height * 0.4427917),
      radius:
          Radius.elliptical(size.width * 0.1586750, size.height * 0.1322292),
      clockwise: false,
    );
    path_3.cubicTo(
      size.width * 0.6916750,
      size.height * 0.4354375,
      size.width * 0.6904250,
      size.height * 0.4275625,
      size.width * 0.6866500,
      size.height * 0.4207292,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6810000, size.height * 0.4086458),
      radius: Radius.elliptical(
        size.width * 0.02800000,
        size.height * 0.02333333,
      ),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6810000, size.height * 0.4018125),
      radius: Radius.elliptical(
        size.width * 0.009375000,
        size.height * 0.007812500,
      ),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6954750, size.height * 0.3918333),
      radius:
          Radius.elliptical(size.width * 0.1218500, size.height * 0.1015417),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6904750, size.height * 0.3771250),
      radius: Radius.elliptical(
        size.width * 0.01417500,
        size.height * 0.01181250,
      ),
      clockwise: false,
    );
    path_3.cubicTo(
      size.width * 0.6823000,
      size.height * 0.3739792,
      size.width * 0.6829750,
      size.height * 0.3839583,
      size.width * 0.6772750,
      size.height * 0.3860625,
    );
    path_3.lineTo(size.width * 0.6735000, size.height * 0.3860625);
    path_3.cubicTo(
      size.width * 0.6722500,
      size.height * 0.3834375,
      size.width * 0.6747500,
      size.height * 0.3823750,
      size.width * 0.6772750,
      size.height * 0.3802917,
    );
    path_3.cubicTo(
      size.width * 0.6772750,
      size.height * 0.3792500,
      size.width * 0.6772750,
      size.height * 0.3771458,
      size.width * 0.6760250,
      size.height * 0.3771458,
    );
    path_3.cubicTo(
      size.width * 0.6710250,
      size.height * 0.3771458,
      size.width * 0.6666000,
      size.height * 0.3760833,
      size.width * 0.6653250,
      size.height * 0.3740000,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6188000, size.height * 0.3472083),
      radius: Radius.elliptical(
        size.width * 0.09892500,
        size.height * 0.08243750,
      ),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6332750, size.height * 0.3492917),
      radius: Radius.elliptical(
        size.width * 0.05797500,
        size.height * 0.04831250,
      ),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6584250, size.height * 0.3472083),
      radius: Radius.elliptical(
        size.width * 0.04175000,
        size.height * 0.03479167,
      ),
      clockwise: false,
    );
    path_3.cubicTo(
      size.width * 0.6641000,
      size.height * 0.3456250,
      size.width * 0.6653500,
      size.height * 0.3372292,
      size.width * 0.6678500,
      size.height * 0.3325000,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6640750, size.height * 0.3193542),
      radius: Radius.elliptical(
        size.width * 0.02000000,
        size.height * 0.01666667,
      ),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6414250, size.height * 0.3036042),
      radius: Radius.elliptical(
        size.width * 0.05472500,
        size.height * 0.04560417,
      ),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6244500, size.height * 0.2962500),
      radius:
          Radius.elliptical(size.width * 0.2282500, size.height * 0.1902083),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6181750, size.height * 0.2936250),
      radius: Radius.elliptical(
        size.width * 0.02380000,
        size.height * 0.01983333,
      ),
      clockwise: false,
    );
    path_3.cubicTo(
      size.width * 0.5440500,
      size.height * 0.2626875,
      size.width * 0.3914500,
      size.height * 0.2894583,
      size.width * 0.3798250,
      size.height * 0.2936250,
    );
    path_3.lineTo(size.width * 0.3796000, size.height * 0.2936250);
    path_3.arcToPoint(
      Offset(size.width * 0.3483750, size.height * 0.3035208),
      radius:
          Radius.elliptical(size.width * 0.2061000, size.height * 0.1717500),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.2892500, size.height * 0.3548750),
      radius: Radius.elliptical(
        size.width * 0.09805000,
        size.height * 0.08170833,
      ),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.2559250, size.height * 0.3863125),
      radius: Radius.elliptical(
        size.width * 0.09572500,
        size.height * 0.07977083,
      ),
      clockwise: false,
    );
    path_3.cubicTo(
      size.width * 0.2452250,
      size.height * 0.4029792,
      size.width * 0.2295250,
      size.height * 0.4177500,
      size.width * 0.2320250,
      size.height * 0.4366042,
    );
    path_3.cubicTo(
      size.width * 0.2345250,
      size.height * 0.4528542,
      size.width * 0.2389500,
      size.height * 0.4675208,
      size.width * 0.2427250,
      size.height * 0.4842917,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.2477250, size.height * 0.5009583),
      radius:
          Radius.elliptical(size.width * 0.1167000, size.height * 0.09725000),
      clockwise: false,
    );
    path_3.cubicTo(
      size.width * 0.2502250,
      size.height * 0.5067083,
      size.width * 0.2477250,
      size.height * 0.5140625,
      size.width * 0.2515000,
      size.height * 0.5187708,
    );
    path_3.cubicTo(
      size.width * 0.2533750,
      size.height * 0.5219167,
      size.width * 0.2521250,
      size.height * 0.5255833,
      size.width * 0.2571750,
      size.height * 0.5276875,
    );
    path_3.lineTo(size.width * 0.2571750, size.height * 0.5318542);
    path_3.cubicTo(
      size.width * 0.2584250,
      size.height * 0.5328958,
      size.width * 0.2584250,
      size.height * 0.5339375,
      size.width * 0.2609500,
      size.height * 0.5339375,
    );
    path_3.lineTo(size.width * 0.2609500, size.height * 0.5381042);
    path_3.arcToPoint(
      Offset(size.width * 0.2886250, size.height * 0.5679792),
      radius:
          Radius.elliptical(size.width * 0.1611500, size.height * 0.1342917),
    );
    path_3.cubicTo(
      size.width * 0.2911250,
      size.height * 0.5737292,
      size.width * 0.2766750,
      size.height * 0.5711250,
      size.width * 0.2711250,
      size.height * 0.5690208,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.2428250, size.height * 0.5491042),
      radius:
          Radius.elliptical(size.width * 0.1494750, size.height * 0.1245625),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.2415500, size.height * 0.5511875),
      radius: Radius.elliptical(
        size.width * 0.004375000,
        size.height * 0.003645833,
      ),
      clockwise: false,
    );
    path_3.cubicTo(
      size.width * 0.2465500,
      size.height * 0.5585208,
      size.width * 0.2642000,
      size.height * 0.5674375,
      size.width * 0.2547500,
      size.height * 0.5721458,
    );
    path_3.cubicTo(
      size.width * 0.2497500,
      size.height * 0.5742292,
      size.width * 0.2440500,
      size.height * 0.5690000,
      size.width * 0.2390250,
      size.height * 0.5732083,
    );
    path_3.cubicTo(
      size.width * 0.2377750,
      size.height * 0.5747708,
      size.width * 0.2390250,
      size.height * 0.5768750,
      size.width * 0.2390250,
      size.height * 0.5789583,
    );
    path_3.cubicTo(
      size.width * 0.2321000,
      size.height * 0.5747917,
      size.width * 0.2245750,
      size.height * 0.5768750,
      size.width * 0.2176500,
      size.height * 0.5747917,
    );
    path_3.cubicTo(
      size.width * 0.2126500,
      size.height * 0.5737500,
      size.width * 0.2113500,
      size.height * 0.5658958,
      size.width * 0.2057000,
      size.height * 0.5658958,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.1604250, size.height * 0.5590833),
      radius:
          Radius.elliptical(size.width * 0.3790500, size.height * 0.3158750),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.1169500, size.height * 0.5557708),
      radius:
          Radius.elliptical(size.width * 0.3784250, size.height * 0.3153542),
      clockwise: false,
    );
    path_3.lineTo(size.width * 0.1169500, size.height * 0.3272500);
    path_3.arcToPoint(
      Offset(size.width * 0.1246000, size.height * 0.3163333),
      radius: Radius.elliptical(
        size.width * 0.01515000,
        size.height * 0.01262500,
      ),
    );
    path_3.lineTo(size.width * 0.4992750, size.height * 0.1338125);
    path_3.lineTo(size.width * 0.8741250, size.height * 0.3145833);
    path_3.arcToPoint(
      Offset(size.width * 0.8817750, size.height * 0.3255000),
      radius: Radius.elliptical(
        size.width * 0.01512500,
        size.height * 0.01260417,
      ),
    );
    path_3.close();
    path_3.moveTo(size.width * 0.6829250, size.height * 0.5061458);
    path_3.arcToPoint(
      Offset(size.width * 0.6758750, size.height * 0.5092500),
      radius: Radius.elliptical(
        size.width * 0.008125000,
        size.height * 0.006770833,
      ),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6688250, size.height * 0.5149375),
      radius: Radius.elliptical(
        size.width * 0.07107500,
        size.height * 0.05922917,
      ),
      clockwise: false,
    );
    path_3.cubicTo(
      size.width * 0.6713250,
      size.height * 0.5149375,
      size.width * 0.6688250,
      size.height * 0.5180417,
      size.width * 0.6713250,
      size.height * 0.5180417,
    );
    path_3.cubicTo(
      size.width * 0.6662000,
      size.height * 0.5226875,
      size.width * 0.6732500,
      size.height * 0.5325000,
      size.width * 0.6662000,
      size.height * 0.5345625,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6380250, size.height * 0.5345625),
      radius: Radius.elliptical(
        size.width * 0.05440000,
        size.height * 0.04533333,
      ),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6422000, size.height * 0.5342292),
      radius: Radius.elliptical(
        size.width * 0.01805000,
        size.height * 0.01504167,
      ),
    );
    path_3.lineTo(size.width * 0.6443250, size.height * 0.5342292);
    path_3.arcToPoint(
      Offset(size.width * 0.6527500, size.height * 0.5314792),
      radius: Radius.elliptical(
        size.width * 0.009550000,
        size.height * 0.007958333,
      ),
      clockwise: false,
    );
    path_3.lineTo(size.width * 0.6527500, size.height * 0.5273125);
    path_3.cubicTo(
      size.width * 0.6527500,
      size.height * 0.5262708,
      size.width * 0.6514750,
      size.height * 0.5262708,
      size.width * 0.6502500,
      size.height * 0.5262708,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6477500, size.height * 0.5273125),
      radius: Radius.elliptical(
        size.width * 0.004025000,
        size.height * 0.003354167,
      ),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6439000, size.height * 0.5231458),
      radius: Radius.elliptical(
        size.width * 0.005575000,
        size.height * 0.004645833,
      ),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6259500, size.height * 0.5174583),
      radius: Radius.elliptical(
        size.width * 0.02017500,
        size.height * 0.01681250,
      ),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6368500, size.height * 0.5164167),
      radius: Radius.elliptical(
        size.width * 0.01675000,
        size.height * 0.01395833,
      ),
    );
    path_3.cubicTo(
      size.width * 0.6400500,
      size.height * 0.5164167,
      size.width * 0.6387750,
      size.height * 0.5117708,
      size.width * 0.6426250,
      size.height * 0.5097083,
    );
    path_3.lineTo(size.width * 0.6464750, size.height * 0.5097083);
    path_3.cubicTo(
      size.width * 0.6541500,
      size.height * 0.5019583,
      size.width * 0.6682500,
      size.height * 0.4998958,
      size.width * 0.6708250,
      size.height * 0.4921458,
    );
    path_3.cubicTo(
      size.width * 0.6708250,
      size.height * 0.4900625,
      size.width * 0.6637750,
      size.height * 0.4900625,
      size.width * 0.6586500,
      size.height * 0.4890417,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6381500, size.height * 0.4900833),
      radius: Radius.elliptical(
        size.width * 0.05647500,
        size.height * 0.04706250,
      ),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6118750, size.height * 0.4957708),
      radius:
          Radius.elliptical(size.width * 0.1162500, size.height * 0.09687500),
      clockwise: false,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6349500, size.height * 0.4859583),
      radius: Radius.elliptical(
        size.width * 0.08062500,
        size.height * 0.06718750,
      ),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.6529000, size.height * 0.4817917),
      radius: Radius.elliptical(
        size.width * 0.09715000,
        size.height * 0.08095833,
      ),
    );
    path_3.lineTo(size.width * 0.6562000, size.height * 0.4812500);
    path_3.lineTo(size.width * 0.6595250, size.height * 0.4806875);
    path_3.arcToPoint(
      Offset(size.width * 0.6734250, size.height * 0.4806875),
      radius: Radius.elliptical(
        size.width * 0.02427500,
        size.height * 0.02022917,
      ),
    );
    path_3.cubicTo(
      size.width * 0.6792000,
      size.height * 0.4827708,
      size.width * 0.6888000,
      size.height * 0.4827708,
      size.width * 0.6900750,
      size.height * 0.4858542,
    );
    path_3.cubicTo(
      size.width * 0.6925750,
      size.height * 0.4915417,
      size.width * 0.6862250,
      size.height * 0.4972083,
      size.width * 0.6792000,
      size.height * 0.5013542,
    );
    path_3.cubicTo(
      size.width * 0.6777750,
      size.height * 0.5030417,
      size.width * 0.6829000,
      size.height * 0.5041667,
      size.width * 0.6829000,
      size.height * 0.5061458,
    );
    path_3.close();

    final paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xffffffff).withOpacity(1);
    canvas.drawPath(path_3, paint3Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

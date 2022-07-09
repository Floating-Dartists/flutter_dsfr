import 'package:flutter/material.dart';

/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/217186370/Couleurs+-+palette+-+Color#Couleurs-primaires
@immutable
abstract class ColorPalette {
  static const blueFranceMain525 = Color(0xFF6a6af4);
  static const blueFranceMain525Hover = Color(0xFF9898f8);
  static const blueFranceMain525Active = Color(0xFFaeaef9);

  static const blueFranceSun113 = Color(0xFF000091);
  static const blueFranceSun113Hover = Color(0xFF1212ff);
  static const blueFranceSun113Active = Color(0xFF2323ff);

  static const blueFrance975 = Color(0xFFf5f5fe);
  static const blueFrance975Hover = Color(0xFFdcdcfc);
  static const blueFrance975Active = Color(0xFFcbcbfa);

  static const blueFrance950 = Color(0xFFececfe);
  static const blueFrance950Hover = Color(0xFFcecefc);
  static const blueFrance950Active = Color(0xFFbbbbfc);

  static const blueFrance925 = Color(0xFFe3e3fd);
  static const blueFrance925Hover = Color(0xFFc1c1fb);
  static const blueFrance925Active = Color(0xFFadadf9);

  static const blueFrance850 = Color(0xFFcacafb);
  static const blueFrance850Hover = Color(0xFFa1a1f8);
  static const blueFrance850Active = Color(0xFF8b8bf6);

  static const blueFrance625 = Color(0xFF8585f6);
  static const blueFrance625Hover = Color(0xFFb1b1f9);
  static const blueFrance625Active = Color(0xFFc6c6fb);

  static const blueFrance200 = Color(0xFF313178);
  static const blueFrance200Hover = Color(0xFF5757ad);
  static const blueFrance200Active = Color(0xFF6c6cbb);

  static const blueFrance125 = Color(0xFF272747);
  static const blueFrance125Hover = Color(0xFF4a4a7d);
  static const blueFrance125Active = Color(0xFF5e5e90);

  static const blueFrance100 = Color(0xFF21213f);
  static const blueFrance100Hover = Color(0xFF424275);
  static const blueFrance100Active = Color(0xFF56568c);

  static const blueFrance75 = Color(0xFF1b1b35);
  static const blueFrance75Hover = Color(0xFF3a3a68);
  static const blueFrance75Active = Color(0xFF4d4d83);

  static const redMarianneMain472 = Color(0xFFe1000f);
  static const redMarianneMain472Hover = Color(0xFFff292f);
  static const redMarianneMain472Active = Color(0xFFff4347);

  static const redMarianne425 = Color(0xFFc9191e);
  static const redMarianne425Hover = Color(0xFFf93f42);
  static const redMarianne425Active = Color(0xFFf95a5c);

  static const redMarianne975 = Color(0xFFfef4f4);
  static const redMarianne975Hover = Color(0xFFfcd7d7);
  static const redMarianne975Active = Color(0xFFfac4c4);

  static const redMarianne950 = Color(0xFFfee9e9);
  static const redMarianne950Hover = Color(0xFFfdc5c5);
  static const redMarianne950Active = Color(0xFFfcafaf);

  static const redMarianne925 = Color(0xFFfddede);
  static const redMarianne925Hover = Color(0xFFfbb6b6);
  static const redMarianne925Active = Color(0xFFfa9e9e);

  static const redMarianne850 = Color(0xFFfcbfbf);
  static const redMarianne850Hover = Color(0xFFfb8f8f);
  static const redMarianne850Active = Color(0xFFfa7474);

  static const redMariane472 = Color(0xFFe1000f);
  static const redMariane472Hover = Color(0xFFff292f);
  static const redMariane472Active = Color(0xFFff4347);

  static const redMariane625 = Color(0xFFf95c5e);
  static const redMariane625Hover = Color(0xFFfa9293);
  static const redMariane625Active = Color(0xFFfbabac);

  static const redMarianne200 = Color(0xFF5e2a2b);
  static const redMarianne200Hover = Color(0xFF9c4a4c);
  static const redMarianne200Active = Color(0xFFbe5c5e);

  static const redMarianne125 = Color(0xFF3b2424);
  static const redMarianne125Hover = Color(0xFF6b4545);
  static const redMarianne125Active = Color(0xFF865757);

  static const redMarianne100 = Color(0xFF331f1f);
  static const redMarianne100Hover = Color(0xFF613f3f);
  static const redMarianne100Active = Color(0xFF7b5151);

  static const redMarianne75 = Color(0xFF2b1919);
  static const redMarianne75Hover = Color(0xFF573737);
  static const redMarianne75Active = Color(0xFF704848);

  static const greyMain525 = Color(0xFF7b7b7b);
  static const greyMain525Hover = Color(0xFFa6a6a6);
  static const greyMain525Active = Color(0xFFbababa);

  static const grey50 = Color(0xFF161616);
  static const grey50Hover = Color(0xFF343434);
  static const grey50Active = Color(0xFF474747);

  static const grey100 = Color(0xFF242424);
  static const grey125 = Color(0xFF2a2a2a);
  static const grey425 = Color(0xFF666666);
  static const grey925 = Color(0xFFe5e5e5);
  static const grey950 = Color(0xFFeeeeee);
  static const grey975 = Color(0xFFdfdfdf);

  static const grey1000 = Color(0xFFffffff);
  static const grey1000Hover = Color(0xFFf6f6f6);
  static const grey1000Active = Color(0xFFededed);

  static const error = Color(0xFFe10600);
  static const success = Color(0xFF008941);
  static const info = Color(0xFF0762c8);
  static const warning = Color(0xFFb34000);
  static const errorDarkMode = Color(0xFFFf3333);
  static const successDarkMode = Color(0xFF00eb5e);
  static const infoDarkMode = Color(0xFF2b8bf7);
  static const warningDarkMode = Color(0xFFff5d00);

  static const black = Color(0xFF000000);
  static const transparent = Color(0x00000000);
}

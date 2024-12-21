import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff6c5e00),
      surfaceTint: Color(0xff6c5e00),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffe75a),
      onPrimaryContainer: Color(0xff554a00),
      secondary: Color(0xff695f24),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfff3e49b),
      onSecondaryContainer: Color(0xff52490f),
      tertiary: Color(0xff496800),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffc8f672),
      onTertiaryContainer: Color(0xff395200),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff9eb),
      onSurface: Color(0xff1e1c11),
      onSurfaceVariant: Color(0xff4b4733),
      outline: Color(0xff7d7761),
      outlineVariant: Color(0xffcec6ad),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff333025),
      inversePrimary: Color(0xffdfc722),
      primaryFixed: Color(0xfffde341),
      onPrimaryFixed: Color(0xff211c00),
      primaryFixedDim: Color(0xffdfc722),
      onPrimaryFixedVariant: Color(0xff514700),
      secondaryFixed: Color(0xfff2e39b),
      onSecondaryFixed: Color(0xff211c00),
      secondaryFixedDim: Color(0xffd5c781),
      onSecondaryFixedVariant: Color(0xff50470d),
      tertiaryFixed: Color(0xffc4f26f),
      onTertiaryFixed: Color(0xff131f00),
      tertiaryFixedDim: Color(0xffa9d556),
      onTertiaryFixedVariant: Color(0xff364e00),
      surfaceDim: Color(0xffe0dac9),
      surfaceBright: Color(0xfffff9eb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffaf3e2),
      surfaceContainer: Color(0xfff4eddc),
      surfaceContainerHigh: Color(0xffeee8d7),
      surfaceContainerHighest: Color(0xffe8e2d1),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff4d4300),
      surfaceTint: Color(0xff6c5e00),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff847500),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff4c4309),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff807538),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff334a00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5a8000),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff9eb),
      onSurface: Color(0xff1e1c11),
      onSurfaceVariant: Color(0xff474330),
      outline: Color(0xff645f4a),
      outlineVariant: Color(0xff807b64),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff333025),
      inversePrimary: Color(0xffdfc722),
      primaryFixed: Color(0xff847500),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff695c00),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff807538),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff665c22),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5a8000),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff476500),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe0dac9),
      surfaceBright: Color(0xfffff9eb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffaf3e2),
      surfaceContainer: Color(0xfff4eddc),
      surfaceContainerHigh: Color(0xffeee8d7),
      surfaceContainerHighest: Color(0xffe8e2d1),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff282200),
      surfaceTint: Color(0xff6c5e00),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff4d4300),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff282200),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff4c4309),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff192600),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff334a00),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff9eb),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff272413),
      outline: Color(0xff474330),
      outlineVariant: Color(0xff474330),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff333025),
      inversePrimary: Color(0xffffed8e),
      primaryFixed: Color(0xff4d4300),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff342d00),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff4c4309),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff342d00),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff334a00),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff213200),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe0dac9),
      surfaceBright: Color(0xfffff9eb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffaf3e2),
      surfaceContainer: Color(0xfff4eddc),
      surfaceContainerHigh: Color(0xffeee8d7),
      surfaceContainerHighest: Color(0xffe8e2d1),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xffdfc722),
      onPrimary: Color(0xff383000),
      primaryContainer: Color(0xffeed533),
      onPrimaryContainer: Color(0xff493f00),
      secondary: Color(0xffd5c781),
      onSecondary: Color(0xff383000),
      secondaryContainer: Color(0xff463d04),
      onSecondaryContainer: Color(0xffdfd18a),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff243600),
      tertiaryContainer: Color(0xffb6e362),
      onTertiaryContainer: Color(0xff304600),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff15130a),
      onSurface: Color(0xffe8e2d1),
      onSurfaceVariant: Color(0xffcec6ad),
      outline: Color(0xff979179),
      outlineVariant: Color(0xff4b4733),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe8e2d1),
      inversePrimary: Color(0xff6c5e00),
      primaryFixed: Color(0xfffde341),
      onPrimaryFixed: Color(0xff211c00),
      primaryFixedDim: Color(0xffdfc722),
      onPrimaryFixedVariant: Color(0xff514700),
      secondaryFixed: Color(0xfff2e39b),
      onSecondaryFixed: Color(0xff211c00),
      secondaryFixedDim: Color(0xffd5c781),
      onSecondaryFixedVariant: Color(0xff50470d),
      tertiaryFixed: Color(0xffc4f26f),
      onTertiaryFixed: Color(0xff131f00),
      tertiaryFixedDim: Color(0xffa9d556),
      onTertiaryFixedVariant: Color(0xff364e00),
      surfaceDim: Color(0xff15130a),
      surfaceBright: Color(0xff3c392e),
      surfaceContainerLowest: Color(0xff100e06),
      surfaceContainerLow: Color(0xff1e1c11),
      surfaceContainer: Color(0xff222015),
      surfaceContainerHigh: Color(0xff2d2a1f),
      surfaceContainerHighest: Color(0xff383529),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xffdfc722),
      onPrimary: Color(0xff383000),
      primaryContainer: Color(0xffeed533),
      onPrimaryContainer: Color(0xff251f00),
      secondary: Color(0xffd9cb85),
      onSecondary: Color(0xff1b1600),
      secondaryContainer: Color(0xff9d9151),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff243600),
      tertiaryContainer: Color(0xffb6e362),
      onTertiaryContainer: Color(0xff162300),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff15130a),
      onSurface: Color(0xfffffaf4),
      onSurfaceVariant: Color(0xffd2cbb1),
      outline: Color(0xffa9a38b),
      outlineVariant: Color(0xff89836d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe8e2d1),
      inversePrimary: Color(0xff524800),
      primaryFixed: Color(0xfffde341),
      onPrimaryFixed: Color(0xff151100),
      primaryFixedDim: Color(0xffdfc722),
      onPrimaryFixedVariant: Color(0xff3e3600),
      secondaryFixed: Color(0xfff2e39b),
      onSecondaryFixed: Color(0xff151100),
      secondaryFixedDim: Color(0xffd5c781),
      onSecondaryFixedVariant: Color(0xff3e3600),
      tertiaryFixed: Color(0xffc4f26f),
      onTertiaryFixed: Color(0xff0b1400),
      tertiaryFixedDim: Color(0xffa9d556),
      onTertiaryFixedVariant: Color(0xff283c00),
      surfaceDim: Color(0xff15130a),
      surfaceBright: Color(0xff3c392e),
      surfaceContainerLowest: Color(0xff100e06),
      surfaceContainerLow: Color(0xff1e1c11),
      surfaceContainer: Color(0xff222015),
      surfaceContainerHigh: Color(0xff2d2a1f),
      surfaceContainerHighest: Color(0xff383529),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xffdfc722),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffeed533),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffffaf4),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffd9cb85),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffb6e362),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff15130a),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffffaf4),
      outline: Color(0xffd2cbb1),
      outlineVariant: Color(0xffd2cbb1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe8e2d1),
      inversePrimary: Color(0xff312a00),
      primaryFixed: Color(0xffffe860),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffe4cb27),
      onPrimaryFixedVariant: Color(0xff1b1600),
      secondaryFixed: Color(0xfff6e89f),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffd9cb85),
      onSecondaryFixedVariant: Color(0xff1b1600),
      tertiaryFixed: Color(0xffc8f673),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffadd95a),
      onTertiaryFixedVariant: Color(0xff0f1900),
      surfaceDim: Color(0xff15130a),
      surfaceBright: Color(0xff3c392e),
      surfaceContainerLowest: Color(0xff100e06),
      surfaceContainerLow: Color(0xff1e1c11),
      surfaceContainer: Color(0xff222015),
      surfaceContainerHigh: Color(0xff2d2a1f),
      surfaceContainerHighest: Color(0xff383529),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}

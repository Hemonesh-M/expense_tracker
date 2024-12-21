import "package:flutter/material.dart";

class MaterialTheme1 {
  final TextTheme textTheme;

  const MaterialTheme1(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff256a4a),
      surfaceTint: Color(0xff256a4a),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffabf2c9),
      onPrimaryContainer: Color(0xff002112),
      secondary: Color(0xff4e6356),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd0e8d7),
      onSecondaryContainer: Color(0xff0b1f15),
      tertiary: Color(0xff3c6472),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffc0e9fa),
      onTertiaryContainer: Color(0xff001f28),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff5fbf4),
      onSurface: Color(0xff171d19),
      onSurfaceVariant: Color(0xff404943),
      outline: Color(0xff707972),
      outlineVariant: Color(0xffc0c9c1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322e),
      inversePrimary: Color(0xff90d5ae),
      primaryFixed: Color(0xffabf2c9),
      onPrimaryFixed: Color(0xff002112),
      primaryFixedDim: Color(0xff90d5ae),
      onPrimaryFixedVariant: Color(0xff005234),
      secondaryFixed: Color(0xffd0e8d7),
      onSecondaryFixed: Color(0xff0b1f15),
      secondaryFixedDim: Color(0xffb4ccbc),
      onSecondaryFixedVariant: Color(0xff364b3f),
      tertiaryFixed: Color(0xffc0e9fa),
      onTertiaryFixed: Color(0xff001f28),
      tertiaryFixedDim: Color(0xffa4cddd),
      onTertiaryFixedVariant: Color(0xff234c59),
      surfaceDim: Color(0xffd6dbd5),
      surfaceBright: Color(0xfff5fbf4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ef),
      surfaceContainer: Color(0xffeaefe9),
      surfaceContainerHigh: Color(0xffe4eae3),
      surfaceContainerHighest: Color(0xffdee4de),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff004d31),
      surfaceTint: Color(0xff256a4a),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff3e815f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff32473b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff637a6b),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff1e4855),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff537a89),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fbf4),
      onSurface: Color(0xff171d19),
      onSurfaceVariant: Color(0xff3c453f),
      outline: Color(0xff58615b),
      outlineVariant: Color(0xff747d76),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322e),
      inversePrimary: Color(0xff90d5ae),
      primaryFixed: Color(0xff3e815f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff226848),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff637a6b),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4b6153),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff537a89),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3a616f),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dbd5),
      surfaceBright: Color(0xfff5fbf4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ef),
      surfaceContainer: Color(0xffeaefe9),
      surfaceContainerHigh: Color(0xffe4eae3),
      surfaceContainerHighest: Color(0xffdee4de),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002818),
      surfaceTint: Color(0xff256a4a),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004d31),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff12261b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff32473b),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002631),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff1e4855),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fbf4),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff1e2621),
      outline: Color(0xff3c453f),
      outlineVariant: Color(0xff3c453f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322e),
      inversePrimary: Color(0xffb5fcd2),
      primaryFixed: Color(0xff004d31),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003420),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff32473b),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff1c3126),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff1e4855),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff00313e),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dbd5),
      surfaceBright: Color(0xfff5fbf4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ef),
      surfaceContainer: Color(0xffeaefe9),
      surfaceContainerHigh: Color(0xffe4eae3),
      surfaceContainerHighest: Color(0xffdee4de),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff90d5ae),
      surfaceTint: Color(0xff90d5ae),
      onPrimary: Color(0xff003823),
      primaryContainer: Color(0xff005234),
      onPrimaryContainer: Color(0xffabf2c9),
      secondary: Color(0xffb4ccbc),
      onSecondary: Color(0xff203529),
      secondaryContainer: Color(0xff364b3f),
      onSecondaryContainer: Color(0xffd0e8d7),
      tertiary: Color(0xffa4cddd),
      onTertiary: Color(0xff053542),
      tertiaryContainer: Color(0xff234c59),
      onTertiaryContainer: Color(0xffc0e9fa),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0f1511),
      onSurface: Color(0xffdee4de),
      onSurfaceVariant: Color(0xffc0c9c1),
      outline: Color(0xff8a938c),
      outlineVariant: Color(0xff404943),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee4de),
      inversePrimary: Color(0xff256a4a),
      primaryFixed: Color(0xffabf2c9),
      onPrimaryFixed: Color(0xff002112),
      primaryFixedDim: Color(0xff90d5ae),
      onPrimaryFixedVariant: Color(0xff005234),
      secondaryFixed: Color(0xffd0e8d7),
      onSecondaryFixed: Color(0xff0b1f15),
      secondaryFixedDim: Color(0xffb4ccbc),
      onSecondaryFixedVariant: Color(0xff364b3f),
      tertiaryFixed: Color(0xffc0e9fa),
      onTertiaryFixed: Color(0xff001f28),
      tertiaryFixedDim: Color(0xffa4cddd),
      onTertiaryFixedVariant: Color(0xff234c59),
      surfaceDim: Color(0xff0f1511),
      surfaceBright: Color(0xff353b36),
      surfaceContainerLowest: Color(0xff0a0f0c),
      surfaceContainerLow: Color(0xff171d19),
      surfaceContainer: Color(0xff1b211d),
      surfaceContainerHigh: Color(0xff262b27),
      surfaceContainerHighest: Color(0xff303632),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff94dab2),
      surfaceTint: Color(0xff90d5ae),
      onPrimary: Color(0xff001b0e),
      primaryContainer: Color(0xff5b9e7a),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffb8d1c0),
      onSecondary: Color(0xff061a10),
      secondaryContainer: Color(0xff7f9687),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffa8d1e1),
      onTertiary: Color(0xff001921),
      tertiaryContainer: Color(0xff6f97a6),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0f1511),
      onSurface: Color(0xfff7fcf6),
      onSurfaceVariant: Color(0xffc4cdc5),
      outline: Color(0xff9ca59e),
      outlineVariant: Color(0xff7c857e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee4de),
      inversePrimary: Color(0xff025335),
      primaryFixed: Color(0xffabf2c9),
      onPrimaryFixed: Color(0xff00150a),
      primaryFixedDim: Color(0xff90d5ae),
      onPrimaryFixedVariant: Color(0xff003f27),
      secondaryFixed: Color(0xffd0e8d7),
      onSecondaryFixed: Color(0xff02150b),
      secondaryFixedDim: Color(0xffb4ccbc),
      onSecondaryFixedVariant: Color(0xff263b2f),
      tertiaryFixed: Color(0xffc0e9fa),
      onTertiaryFixed: Color(0xff00141a),
      tertiaryFixedDim: Color(0xffa4cddd),
      onTertiaryFixedVariant: Color(0xff0e3b48),
      surfaceDim: Color(0xff0f1511),
      surfaceBright: Color(0xff353b36),
      surfaceContainerLowest: Color(0xff0a0f0c),
      surfaceContainerLow: Color(0xff171d19),
      surfaceContainer: Color(0xff1b211d),
      surfaceContainerHigh: Color(0xff262b27),
      surfaceContainerHighest: Color(0xff303632),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffeefff2),
      surfaceTint: Color(0xff90d5ae),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff94dab2),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffeefff2),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffb8d1c0),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff6fcff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffa8d1e1),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0f1511),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff4fdf4),
      outline: Color(0xffc4cdc5),
      outlineVariant: Color(0xffc4cdc5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee4de),
      inversePrimary: Color(0xff00311e),
      primaryFixed: Color(0xffb0f6cd),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff94dab2),
      onPrimaryFixedVariant: Color(0xff001b0e),
      secondaryFixed: Color(0xffd4eddb),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffb8d1c0),
      onSecondaryFixedVariant: Color(0xff061a10),
      tertiaryFixed: Color(0xffc4edfe),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffa8d1e1),
      onTertiaryFixedVariant: Color(0xff001921),
      surfaceDim: Color(0xff0f1511),
      surfaceBright: Color(0xff353b36),
      surfaceContainerLowest: Color(0xff0a0f0c),
      surfaceContainerLow: Color(0xff171d19),
      surfaceContainer: Color(0xff1b211d),
      surfaceContainerHigh: Color(0xff262b27),
      surfaceContainerHighest: Color(0xff303632),
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

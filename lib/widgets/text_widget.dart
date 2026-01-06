import 'package:fino/core/constant.dart';
import 'package:fino/export.dart';

class AppText extends StatelessWidget {
  final String? text;
  final double? size;
  final FontWeight? weight;
  final Color? color;
  final TextAlign? align;
  final TextDecoration? decoration;
  final Color decorationColor;
  final double? decorationThinkness;
  final FontStyle? fontStyle;
  final TextOverflow? textOverflow;
  final int? maxLines;
  final bool softWrap;
  final double? letterSpacing;
  final double? wordSpacing;
  final String? fontFamily;
  final List<String>? fontFamilyFallback;
  final VoidCallback? onTap;
  final TextBaseline? textBaseline;
  final TextHeightBehavior? textHeightBehavior;
  final Locale? locale;
  final bool strutEnabled;
  final StrutStyle? strutStyle;
  final TextScaler textScaler;
  final EdgeInsets padding;
  final double lineHeight;

  const AppText({
    super.key,
    required this.text,
    this.size,
    this.weight = FontWeight.normal,
    this.color,
    this.align = TextAlign.start,
    this.decoration = TextDecoration.none,
    this.decorationThinkness,
    this.decorationColor = Colors.transparent,
    this.fontStyle,
    this.textOverflow = TextOverflow.ellipsis,
    this.maxLines = 100,
    this.softWrap = true,
    this.letterSpacing,
    this.wordSpacing,
    this.fontFamily,
    this.fontFamilyFallback,
    this.onTap,
    this.textBaseline,
    this.textHeightBehavior,
    this.locale,
    this.strutEnabled = false,
    this.strutStyle,
    this.padding = EdgeInsets.zero,
    this.lineHeight = 1.5,
    this.textScaler = const TextScaler.linear(1.0),
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          text ?? '',
          style: TextStyle(
            fontSize: size,
            fontWeight: weight,
            color: color,
            decoration: decoration,
            decorationColor: decorationColor,
            decorationThickness: decorationThinkness,
            fontFamily: fontFamily ?? AppFonts.Raleway,
            height: lineHeight,
            fontStyle: fontStyle,
            letterSpacing: letterSpacing,
            wordSpacing: wordSpacing,
            textBaseline: textBaseline,
            leadingDistribution: TextLeadingDistribution.even,
            shadows: const [],
            fontFeatures: const [],
          ),
          textAlign: align,
          overflow: textOverflow,
          maxLines: maxLines,
          softWrap: softWrap,
          textScaler: textScaler,
          locale: locale,
          strutStyle: strutStyle,
          textHeightBehavior: textHeightBehavior,
        ),
      ),
    );
  }
}

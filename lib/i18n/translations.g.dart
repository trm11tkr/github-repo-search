/// Generated file. Do not edit.
///
/// Locales: 2
/// Strings: 66 (33 per locale)

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<_TranslationsEn> {
  en(languageCode: 'en', build: _TranslationsEn.build),
  ja(languageCode: 'ja', build: _TranslationsJa.build);

  const AppLocale(
      {required this.languageCode,
      this.scriptCode,
      this.countryCode,
      required this.build}); // ignore: unused_element

  @override
  final String languageCode;
  @override
  final String? scriptCode;
  @override
  final String? countryCode;
  @override
  final TranslationBuilder<_TranslationsEn> build;

  /// Gets current instance managed by [LocaleSettings].
  _TranslationsEn get translations =>
      LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of i18n).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = i18n.someKey.anotherKey;
_TranslationsEn get i18n => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final i18n = Translations.of(context); // Get i18n variable.
/// String a = i18n.someKey.anotherKey; // Use i18n variable.
class Translations {
  Translations._(); // no constructor

  static _TranslationsEn of(BuildContext context) =>
      InheritedLocaleData.of<AppLocale, _TranslationsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider
    extends BaseTranslationProvider<AppLocale, _TranslationsEn> {
  TranslationProvider({required super.child})
      : super(
          initLocale: LocaleSettings.instance.currentLocale,
          initTranslations: LocaleSettings.instance.currentTranslations,
        );

  static InheritedLocaleData<AppLocale, _TranslationsEn> of(
          BuildContext context) =>
      InheritedLocaleData.of<AppLocale, _TranslationsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.i18n.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
  _TranslationsEn get i18n => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings
    extends BaseFlutterLocaleSettings<AppLocale, _TranslationsEn> {
  LocaleSettings._()
      : super(
          locales: AppLocale.values,
          baseLocale: _baseLocale,
          utils: AppLocaleUtils.instance,
        );

  static final instance = LocaleSettings._();

  // static aliases (checkout base methods for documentation)
  static AppLocale get currentLocale => instance.currentLocale;
  static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
  static AppLocale setLocale(AppLocale locale) => instance.setLocale(locale);
  static AppLocale setLocaleRaw(String rawLocale) =>
      instance.setLocaleRaw(rawLocale);
  static AppLocale useDeviceLocale() => instance.useDeviceLocale();
  static List<Locale> get supportedLocales => instance.supportedLocales;
  static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
  static void setPluralResolver(
          {String? language,
          AppLocale? locale,
          PluralResolver? cardinalResolver,
          PluralResolver? ordinalResolver}) =>
      instance.setPluralResolver(
        language: language,
        locale: locale,
        cardinalResolver: cardinalResolver,
        ordinalResolver: ordinalResolver,
      );
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _TranslationsEn> {
  AppLocaleUtils._()
      : super(baseLocale: _baseLocale, locales: AppLocale.values);

  static final instance = AppLocaleUtils._();

  // static aliases (checkout base methods for documentation)
  static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
  static AppLocale findDeviceLocale() => instance.findDeviceLocale();
}

// translations

// Path: <root>
class _TranslationsEn implements BaseTranslations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _TranslationsEn.build(
      {PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
      : _cardinalResolver = cardinalResolver,
        _ordinalResolver = ordinalResolver;

  final PluralResolver? _cardinalResolver; // ignore: unused_field
  final PluralResolver? _ordinalResolver; // ignore: unused_field

  late final _TranslationsEn _root = this; // ignore: unused_field

  // Translations
  String get notFound => 'Sorry... Not Found';
  String get retry => 'Retry';
  String get repository => 'Repository: ';
  String get language => 'language';
  String get star => 'star';
  String get watch => 'watch';
  String get fork => 'fork';
  String get issue => 'issue';
  String get search => 'Search Repository';
  String get sort => 'Sort';
  String get sort_recommendation => 'Recommendation';
  String get sort_star => 'Stars';
  String get sort_fork => 'Forks';
  String get sort_updated => 'Updated';
  String totalRepo({required Object totalCount}) => 'Total: $totalCount';
  String get settingTitle => 'Settings';
  String get themeTerminate => 'Terminal Settings';
  String get themeLightMode => 'Light Mode';
  String get themeDarkMode => 'Dark Mode';
  String get errorNetwork => 'No Internet connection.';
  String get errorTimeout => 'Connection timeout.';
  String get error403 => 'Request Limitations. Please wait for a while.';
  String get error422Null => 'Invalid field.';
  String get error422Missing => 'The resource does not exist.';
  String get error422MissingField => 'Required fields have not been filled in.';
  String get error422Invalid => 'Invalid field format.';
  String get error422Exists => 'Resource content is duplicated.';
  String get error422UnProcessable => 'Invalid input.';
  String get errorDefault => 'Error occurred.';
  String get validationHasValue => 'Enter the name of the repository.';
  String validationMaxLength({required Object maxLength}) =>
      'Please enter up to $maxLength characters.';
  String get navLabelSearch => 'Search';
  String get navLabelSettings => 'Settings';
}

// Path: <root>
class _TranslationsJa implements _TranslationsEn {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _TranslationsJa.build(
      {PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
      : _cardinalResolver = cardinalResolver,
        _ordinalResolver = ordinalResolver;

  @override
  final PluralResolver? _cardinalResolver; // ignore: unused_field
  @override
  final PluralResolver? _ordinalResolver; // ignore: unused_field

  @override
  late final _TranslationsJa _root = this; // ignore: unused_field

  // Translations
  @override
  String get notFound => '見つかりませんでした。';
  @override
  String get retry => '再試行';
  @override
  String get repository => 'リポジトリ: ';
  @override
  String get language => '言語';
  @override
  String get star => 'スター数';
  @override
  String get watch => 'ウォッチ数';
  @override
  String get fork => 'フォーク数';
  @override
  String get issue => 'イシュー数';
  @override
  String get search => 'レポジトリを検索';
  @override
  String get sort => '並び替え';
  @override
  String get sort_recommendation => 'おすすめ順';
  @override
  String get sort_star => 'スター';
  @override
  String get sort_fork => 'フォーク';
  @override
  String get sort_updated => '更新日';
  @override
  String totalRepo({required Object totalCount}) => '合計$totalCount件';
  @override
  String get settingTitle => '設定';
  @override
  String get themeTerminate => '端末の設定';
  @override
  String get themeLightMode => 'ライトモード';
  @override
  String get themeDarkMode => 'ダークモード';
  @override
  String get errorNetwork => 'インタネットに接続されていません。';
  @override
  String get errorTimeout => 'タイムアウトしました。';
  @override
  String get error403 => 'リクエスト制限です。しばらくお待ちください。';
  @override
  String get error422Null => '無効なフィールドです。';
  @override
  String get error422Missing => 'リソースが存在しません。';
  @override
  String get error422MissingField => '必須リソースが存在しません。';
  @override
  String get error422Invalid => '無効なフォーマットです。';
  @override
  String get error422Exists => '重複したリソースがあります。';
  @override
  String get error422UnProcessable => '無効な入力です。';
  @override
  String get errorDefault => 'エラーが発生しました。';
  @override
  String get validationHasValue => 'リポジトリ名を入力してください。';
  @override
  String validationMaxLength({required Object maxLength}) =>
      '$maxLength 文字以内で入力してください。';
  @override
  String get navLabelSearch => '検索';
  @override
  String get navLabelSettings => '設定';
}

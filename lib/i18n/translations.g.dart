
/*
 * Generated file. Do not edit.
 *
 * Locales: 2
 * Strings: 56 (28.0 per locale)
 */

import 'package:flutter/widgets.dart';

const AppLocale _baseLocale = AppLocale.en;
AppLocale _currLocale = _baseLocale;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale {
	en, // 'en' (base locale, fallback)
	ja, // 'ja'
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of i18n).
///
/// Usage:
/// String a = i18n.someKey.anotherKey;
_TranslationsEn _i18n = _currLocale.translations;
_TranslationsEn get i18n => _i18n;

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

	static _TranslationsEn of(BuildContext context) {
		final inheritedWidget = context.dependOnInheritedWidgetOfExactType<_InheritedLocaleData>();
		if (inheritedWidget == null) {
			throw 'Please wrap your app with "TranslationProvider".';
		}
		return inheritedWidget.translations;
	}
}

class LocaleSettings {
	LocaleSettings._(); // no constructor

	/// Uses locale of the device, fallbacks to base locale.
	/// Returns the locale which has been set.
	static AppLocale useDeviceLocale() {
		final locale = AppLocaleUtils.findDeviceLocale();
		return setLocale(locale);
	}

	/// Sets locale
	/// Returns the locale which has been set.
	static AppLocale setLocale(AppLocale locale) {
		_currLocale = locale;
		_i18n = _currLocale.translations;

		// force rebuild if TranslationProvider is used
		_translationProviderKey.currentState?.setLocale(_currLocale);

		return _currLocale;
	}

	/// Sets locale using string tag (e.g. en_US, de-DE, fr)
	/// Fallbacks to base locale.
	/// Returns the locale which has been set.
	static AppLocale setLocaleRaw(String rawLocale) {
		final locale = AppLocaleUtils.parse(rawLocale);
		return setLocale(locale);
	}

	/// Gets current locale.
	static AppLocale get currentLocale {
		return _currLocale;
	}

	/// Gets base locale.
	static AppLocale get baseLocale {
		return _baseLocale;
	}

	/// Gets supported locales in string format.
	static List<String> get supportedLocalesRaw {
		return AppLocale.values
			.map((locale) => locale.languageTag)
			.toList();
	}

	/// Gets supported locales (as Locale objects) with base locale sorted first.
	static List<Locale> get supportedLocales {
		return AppLocale.values
			.map((locale) => locale.flutterLocale)
			.toList();
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils {
	AppLocaleUtils._(); // no constructor

	/// Returns the locale of the device as the enum type.
	/// Fallbacks to base locale.
	static AppLocale findDeviceLocale() {
		final String? deviceLocale = WidgetsBinding.instance.window.locale.toLanguageTag();
		if (deviceLocale != null) {
			final typedLocale = _selectLocale(deviceLocale);
			if (typedLocale != null) {
				return typedLocale;
			}
		}
		return _baseLocale;
	}

	/// Returns the enum type of the raw locale.
	/// Fallbacks to base locale.
	static AppLocale parse(String rawLocale) {
		return _selectLocale(rawLocale) ?? _baseLocale;
	}
}

// context enums

// interfaces generated as mixins

// translation instances

late _TranslationsEn _translationsEn = _TranslationsEn.build();
late _TranslationsJa _translationsJa = _TranslationsJa.build();

// extensions for AppLocale

extension AppLocaleExtensions on AppLocale {

	/// Gets the translation instance managed by this library.
	/// [TranslationProvider] is using this instance.
	/// The plural resolvers are set via [LocaleSettings].
	_TranslationsEn get translations {
		switch (this) {
			case AppLocale.en: return _translationsEn;
			case AppLocale.ja: return _translationsJa;
		}
	}

	/// Gets a new translation instance.
	/// [LocaleSettings] has no effect here.
	/// Suitable for dependency injection and unit tests.
	///
	/// Usage:
	/// final t = AppLocale.en.build(); // build
	/// String a = t.my.path; // access
	_TranslationsEn build() {
		switch (this) {
			case AppLocale.en: return _TranslationsEn.build();
			case AppLocale.ja: return _TranslationsJa.build();
		}
	}

	String get languageTag {
		switch (this) {
			case AppLocale.en: return 'en';
			case AppLocale.ja: return 'ja';
		}
	}

	Locale get flutterLocale {
		switch (this) {
			case AppLocale.en: return const Locale.fromSubtags(languageCode: 'en');
			case AppLocale.ja: return const Locale.fromSubtags(languageCode: 'ja');
		}
	}
}

extension StringAppLocaleExtensions on String {
	AppLocale? toAppLocale() {
		switch (this) {
			case 'en': return AppLocale.en;
			case 'ja': return AppLocale.ja;
			default: return null;
		}
	}
}

// wrappers

GlobalKey<_TranslationProviderState> _translationProviderKey = GlobalKey<_TranslationProviderState>();

class TranslationProvider extends StatefulWidget {
	TranslationProvider({required this.child}) : super(key: _translationProviderKey);

	final Widget child;

	@override
	_TranslationProviderState createState() => _TranslationProviderState();

	static _InheritedLocaleData of(BuildContext context) {
		final inheritedWidget = context.dependOnInheritedWidgetOfExactType<_InheritedLocaleData>();
		if (inheritedWidget == null) {
			throw 'Please wrap your app with "TranslationProvider".';
		}
		return inheritedWidget;
	}
}

class _TranslationProviderState extends State<TranslationProvider> {
	AppLocale locale = _currLocale;

	void setLocale(AppLocale newLocale) {
		setState(() {
			locale = newLocale;
		});
	}

	@override
	Widget build(BuildContext context) {
		return _InheritedLocaleData(
			locale: locale,
			child: widget.child,
		);
	}
}

class _InheritedLocaleData extends InheritedWidget {
	final AppLocale locale;
	Locale get flutterLocale => locale.flutterLocale; // shortcut
	final _TranslationsEn translations; // store translations to avoid switch call

	_InheritedLocaleData({required this.locale, required Widget child})
		: translations = locale.translations, super(child: child);

	@override
	bool updateShouldNotify(_InheritedLocaleData oldWidget) {
		return oldWidget.locale != locale;
	}
}

// pluralization feature not used

// helpers

final _localeRegex = RegExp(r'^([a-z]{2,8})?([_-]([A-Za-z]{4}))?([_-]?([A-Z]{2}|[0-9]{3}))?$');
AppLocale? _selectLocale(String localeRaw) {
	final match = _localeRegex.firstMatch(localeRaw);
	AppLocale? selected;
	if (match != null) {
		final language = match.group(1);
		final country = match.group(5);

		// match exactly
		selected = AppLocale.values
			.cast<AppLocale?>()
			.firstWhere((supported) => supported?.languageTag == localeRaw.replaceAll('_', '-'), orElse: () => null);

		if (selected == null && language != null) {
			// match language
			selected = AppLocale.values
				.cast<AppLocale?>()
				.firstWhere((supported) => supported?.languageTag.startsWith(language) == true, orElse: () => null);
		}

		if (selected == null && country != null) {
			// match country
			selected = AppLocale.values
				.cast<AppLocale?>()
				.firstWhere((supported) => supported?.languageTag.contains(country) == true, orElse: () => null);
		}
	}
	return selected;
}

// translations

// Path: <root>
class _TranslationsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsEn.build();

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
	String validationMaxLength({required Object maxLength}) => 'Please enter up to $maxLength characters.';
	String get navLabelSearch => 'Search';
	String get navLabelSettings => 'Settings';
}

// Path: <root>
class _TranslationsJa implements _TranslationsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsJa.build();

	@override late final _TranslationsJa _root = this; // ignore: unused_field

	// Translations
	@override String get notFound => '見つかりませんでした。';
	@override String get retry => '再試行';
	@override String get repository => 'リポジトリ: ';
	@override String get language => '言語';
	@override String get star => 'スター数';
	@override String get watch => 'ウォッチ数';
	@override String get fork => 'フォーク数';
	@override String get issue => 'イシュー数';
	@override String get search => 'レポジトリを検索';
	@override String totalRepo({required Object totalCount}) => '合計$totalCount件';
	@override String get settingTitle => '設定';
	@override String get themeTerminate => '端末の設定';
	@override String get themeLightMode => 'ライトモード';
	@override String get themeDarkMode => 'ダークモード';
	@override String get errorNetwork => 'インタネットに接続されていません。';
	@override String get errorTimeout => 'タイムアウトしました。';
	@override String get error403 => 'リクエスト制限です。しばらくお待ちください。';
	@override String get error422Null => '無効なフィールドです。';
	@override String get error422Missing => 'リソースが存在しません。';
	@override String get error422MissingField => '必須リソースが存在しません。';
	@override String get error422Invalid => '無効なフォーマットです。';
	@override String get error422Exists => '重複したリソースがあります。';
	@override String get error422UnProcessable => '無効な入力です。';
	@override String get errorDefault => 'エラーが発生しました。';
	@override String get validationHasValue => 'リポジトリ名を入力してください。';
	@override String validationMaxLength({required Object maxLength}) => '$maxLength 文字以内で入力してください。';
	@override String get navLabelSearch => '検索';
	@override String get navLabelSettings => '設定';
}

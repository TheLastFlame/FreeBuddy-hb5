///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsRu implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsRu _root = this; // ignore: unused_field

	// Translations
	@override String get appTitle => 'FreeBuddy';
	@override String get helloWorld => 'Привет мир!';
	@override String get leftBudShort => 'Левый';
	@override String get rightBudShort => 'Правый';
	@override String get caseShort => 'Кейс';
	@override String get pageHomeConnected => 'Подключено';
	@override String get pageHomeDisconnected => 'Наушники не подключены 🙅';
	@override String get pageHomeDisconnectedDesc => 'Ваши наушники не подключены к вашему телефону 😨';
	@override String get pageHomeDisconnectedOpenSettings => 'Откройте настройки Bluetooth для подключения 💙';
	@override String get pageHomeConnecting => 'Подключение...';
	@override String get pageHomeUnknown => 'Неизвестно :(';
	@override String get pageHomeNoPermission => 'Нет разрешения на доступ к Bluetooth 😢';
	@override String get pageHomeNoPermissionGrant => 'Разрешить 🔑';
	@override String get pageHomeNoPermissionOpenSettings => 'Откройте настройки для разрешения ⚙';
	@override String get pageHomeBluetoothDisabled => 'Bluetooth отключен 📶🚫';
	@override String get pageHomeBluetoothDisabledEnable => 'Включить ☝';
	@override String get pageHomeBluetoothDisabledOpenSettings => 'Откройте настройки для включения 💙';
	@override String get pageHomeNotPaired => 'В вашем телефоне нет сопряженных поддерживаемых наушников 😿';
	@override String get pageHomeNotPairedPairOpenSettings => 'Откройте настройки Bluetooth для сопряжения 🔌';
	@override String get pageHomeNotPairedPairOpenDemo => 'Попробуйте приложение без наушников 🌐';
	@override String get pageHomeConnectedClosed => 'Наушники подключены, но не к FreeBuddy 🤨';
	@override String get pageHomeConnectedClosedDesc => 'Вы, вероятно, открыли другое приложение - подключите снова 👀';
	@override String get pageHomeConnectedClosedConnect => 'Подключиться к наушникам';
	@override String get autoPause => 'Автоматическая пауза ⏸';
	@override String get autoPauseDesc => 'Музыка автоматически приостанавливается при снятии наушников';
	@override String get pageHeadphonesSettingsTitle => 'Настройки наушников 🔧';
	@override String get pageHeadphonesSettingsDoubleTap => 'Двойное нажатие';
	@override String get pageHeadphonesSettingsDoubleTapDesc => 'Дважды нажмите на наушник для:';
	@override String get pageHeadphonesSettingsDoubleTapPlayPause => 'Воспроизведение/Пауза';
	@override String get pageHeadphonesSettingsDoubleTapNextSong => 'Следующая песня';
	@override String get pageHeadphonesSettingsDoubleTapPrevSong => 'Предыдущая песня';
	@override String get pageHeadphonesSettingsDoubleTapAssist => 'Голосовой ассистент';
	@override String get pageHeadphonesSettingsDoubleTapNone => 'Нет';
	@override String get pageHeadphonesSettingsLeftBud => 'Левый наушник';
	@override String get pageHeadphonesSettingsRightBud => 'Правый наушник';
	@override String get pageHeadphonesSettingsHold => 'Нажмите и удерживайте';
	@override String get pageHeadphonesSettingsHoldDesc => 'Удержание наушника переключит режимы ANC:';
	@override String get ancNoiseCancel => 'Шумоподавление 🔇';
	@override String get ancNoiseCancelDesc => 'Уменьшает внешний шум';
	@override String get ancOff => 'Откл. 🤷';
	@override String get ancOffDesc => 'Выключает ANC';
	@override String get ancAwareness => 'Режим прозрачности 🔊';
	@override String get ancAwarenessDesc => 'Позволяет слышать окружающие звуки';
	@override String get settings => 'Настройки';
	@override String get privacyPolicy => 'Политика конфиденциальности';
	@override String get privacyPolicyTitle => '"Политика конфиденциальности"';
	@override String get privacyPolicyText => 'Это приложение не собирает никакой личной информации о вас - ни электронной почты, ни идентификаторов, или чего-либо подобного, ни на каком сервере, потому что у меня его нет :D\nFreeBuddy также не использует Google Analytics или какие-либо другие сервисы, собирающие ваши данные <3';
	@override String get privacyPolicyUrl => 'https://the.lastgimbus.com/privacy-policy/freebuddy/';
	@override String get pageAboutTitle => 'О приложении';
	@override String get pageAboutMeHeader => 'Об этом приложении и обо мне';
	@override String get pageAboutMeBio => 'Привет 👋 Я @TheLastGimbus, создатель этого приложения 🧑‍💻 Надеюсь, вам оно нравится! Я создал его из чистой страсти 💖';
	@override String get pageAboutMeAnyQuestions => 'Если у вас есть *ЛЮБЫЕ* вопросы, предложения или просто хотите пообщаться, свяжитесь со мной по любому из указанных ниже способов:';
	@override String get pageAboutMeOpenSource => 'FreeBuddy является полностью опенсорсным 💯 - вы можете прочитать его исходный код или присоединиться к разработке: ';
	@override String get pageAboutMeBlog => 'Также я завел блог о создании приложения 🧑‍🎓, вы можете прочитать его здесь: ';
	@override String get pageAboutMentionsHeader => 'Особые благодарности 🎖';
	@override String get pageAboutMentionsPeopleHeader => 'Люди 🧑:';
	@override String get pageAboutMentionsPeopleStreet => 'Всем людям на улице с Freebuds 4i, которые не оставили меня в одиночестве 👻';
	@override String get pageAboutMentionsPeopleHuawei => 'Huawei, за создание паршивого приложения, чтобы мотивировать меня 💩';
	@override String get pageAboutMentionsTechHeader => 'Библиотеки и технологии 🤖:';
	@override String get pageAboutOpenSourceLicensesBtn => 'Открытые лицензии';
	@override String get pageIntroTitle => 'Добро пожаловать в FreeBuddy 👋';
	@override String get pageIntroWhatIsThis => 'FreeBuddy - это приложение с открытым исходным кодом для ваших наушников 🎧';
	@override String get pageIntroSupported => 'В настоящее время поддерживаются:\n - Huawei FreeBuds 4i\n - Huawei FreeBuds 3i';
	@override String get pageIntroShortPrivacyPolicy => 'Это приложение не собирает электронные письма, идентификаторы или какие-либо личные данные 🎉 Подробнее об этом можно прочитать здесь: ';
	@override String get pageIntroAnyQuestions => 'Если у вас есть вопросы, не стесняйтесь связаться со мной 💌 Ознакомьтесь с разделом «Настройки->О приложении», чтобы узнать мои контакты!';
	@override String get pageIntroQuit => 'Хорошо 👍';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsRu {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appTitle': return 'FreeBuddy';
			case 'helloWorld': return 'Привет мир!';
			case 'leftBudShort': return 'Левый';
			case 'rightBudShort': return 'Правый';
			case 'caseShort': return 'Кейс';
			case 'pageHomeConnected': return 'Подключено';
			case 'pageHomeDisconnected': return 'Наушники не подключены 🙅';
			case 'pageHomeDisconnectedDesc': return 'Ваши наушники не подключены к вашему телефону 😨';
			case 'pageHomeDisconnectedOpenSettings': return 'Откройте настройки Bluetooth для подключения 💙';
			case 'pageHomeConnecting': return 'Подключение...';
			case 'pageHomeUnknown': return 'Неизвестно :(';
			case 'pageHomeNoPermission': return 'Нет разрешения на доступ к Bluetooth 😢';
			case 'pageHomeNoPermissionGrant': return 'Разрешить 🔑';
			case 'pageHomeNoPermissionOpenSettings': return 'Откройте настройки для разрешения ⚙';
			case 'pageHomeBluetoothDisabled': return 'Bluetooth отключен 📶🚫';
			case 'pageHomeBluetoothDisabledEnable': return 'Включить ☝';
			case 'pageHomeBluetoothDisabledOpenSettings': return 'Откройте настройки для включения 💙';
			case 'pageHomeNotPaired': return 'В вашем телефоне нет сопряженных поддерживаемых наушников 😿';
			case 'pageHomeNotPairedPairOpenSettings': return 'Откройте настройки Bluetooth для сопряжения 🔌';
			case 'pageHomeNotPairedPairOpenDemo': return 'Попробуйте приложение без наушников 🌐';
			case 'pageHomeConnectedClosed': return 'Наушники подключены, но не к FreeBuddy 🤨';
			case 'pageHomeConnectedClosedDesc': return 'Вы, вероятно, открыли другое приложение - подключите снова 👀';
			case 'pageHomeConnectedClosedConnect': return 'Подключиться к наушникам';
			case 'autoPause': return 'Автоматическая пауза ⏸';
			case 'autoPauseDesc': return 'Музыка автоматически приостанавливается при снятии наушников';
			case 'pageHeadphonesSettingsTitle': return 'Настройки наушников 🔧';
			case 'pageHeadphonesSettingsDoubleTap': return 'Двойное нажатие';
			case 'pageHeadphonesSettingsDoubleTapDesc': return 'Дважды нажмите на наушник для:';
			case 'pageHeadphonesSettingsDoubleTapPlayPause': return 'Воспроизведение/Пауза';
			case 'pageHeadphonesSettingsDoubleTapNextSong': return 'Следующая песня';
			case 'pageHeadphonesSettingsDoubleTapPrevSong': return 'Предыдущая песня';
			case 'pageHeadphonesSettingsDoubleTapAssist': return 'Голосовой ассистент';
			case 'pageHeadphonesSettingsDoubleTapNone': return 'Нет';
			case 'pageHeadphonesSettingsLeftBud': return 'Левый наушник';
			case 'pageHeadphonesSettingsRightBud': return 'Правый наушник';
			case 'pageHeadphonesSettingsHold': return 'Нажмите и удерживайте';
			case 'pageHeadphonesSettingsHoldDesc': return 'Удержание наушника переключит режимы ANC:';
			case 'ancNoiseCancel': return 'Шумоподавление 🔇';
			case 'ancNoiseCancelDesc': return 'Уменьшает внешний шум';
			case 'ancOff': return 'Откл. 🤷';
			case 'ancOffDesc': return 'Выключает ANC';
			case 'ancAwareness': return 'Режим прозрачности 🔊';
			case 'ancAwarenessDesc': return 'Позволяет слышать окружающие звуки';
			case 'settings': return 'Настройки';
			case 'privacyPolicy': return 'Политика конфиденциальности';
			case 'privacyPolicyTitle': return '"Политика конфиденциальности"';
			case 'privacyPolicyText': return 'Это приложение не собирает никакой личной информации о вас - ни электронной почты, ни идентификаторов, или чего-либо подобного, ни на каком сервере, потому что у меня его нет :D\nFreeBuddy также не использует Google Analytics или какие-либо другие сервисы, собирающие ваши данные <3';
			case 'privacyPolicyUrl': return 'https://the.lastgimbus.com/privacy-policy/freebuddy/';
			case 'pageAboutTitle': return 'О приложении';
			case 'pageAboutMeHeader': return 'Об этом приложении и обо мне';
			case 'pageAboutMeBio': return 'Привет 👋 Я @TheLastGimbus, создатель этого приложения 🧑‍💻 Надеюсь, вам оно нравится! Я создал его из чистой страсти 💖';
			case 'pageAboutMeAnyQuestions': return 'Если у вас есть *ЛЮБЫЕ* вопросы, предложения или просто хотите пообщаться, свяжитесь со мной по любому из указанных ниже способов:';
			case 'pageAboutMeOpenSource': return 'FreeBuddy является полностью опенсорсным 💯 - вы можете прочитать его исходный код или присоединиться к разработке: ';
			case 'pageAboutMeBlog': return 'Также я завел блог о создании приложения 🧑‍🎓, вы можете прочитать его здесь: ';
			case 'pageAboutMentionsHeader': return 'Особые благодарности 🎖';
			case 'pageAboutMentionsPeopleHeader': return 'Люди 🧑:';
			case 'pageAboutMentionsPeopleStreet': return 'Всем людям на улице с Freebuds 4i, которые не оставили меня в одиночестве 👻';
			case 'pageAboutMentionsPeopleHuawei': return 'Huawei, за создание паршивого приложения, чтобы мотивировать меня 💩';
			case 'pageAboutMentionsTechHeader': return 'Библиотеки и технологии 🤖:';
			case 'pageAboutOpenSourceLicensesBtn': return 'Открытые лицензии';
			case 'pageIntroTitle': return 'Добро пожаловать в FreeBuddy 👋';
			case 'pageIntroWhatIsThis': return 'FreeBuddy - это приложение с открытым исходным кодом для ваших наушников 🎧';
			case 'pageIntroSupported': return 'В настоящее время поддерживаются:\n - Huawei FreeBuds 4i\n - Huawei FreeBuds 3i';
			case 'pageIntroShortPrivacyPolicy': return 'Это приложение не собирает электронные письма, идентификаторы или какие-либо личные данные 🎉 Подробнее об этом можно прочитать здесь: ';
			case 'pageIntroAnyQuestions': return 'Если у вас есть вопросы, не стесняйтесь связаться со мной 💌 Ознакомьтесь с разделом «Настройки->О приложении», чтобы узнать мои контакты!';
			case 'pageIntroQuit': return 'Хорошо 👍';
			default: return null;
		}
	}
}


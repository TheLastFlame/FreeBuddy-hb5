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
class TranslationsPl implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.pl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsPl _root = this; // ignore: unused_field

	// Translations
	@override String get appTitle => 'FreeBuddy';
	@override String get helloWorld => 'Witaj świecie!';
	@override String get leftBudShort => 'Lewa';
	@override String get rightBudShort => 'Prawa';
	@override String get caseShort => 'Etui';
	@override String get pageHomeConnected => 'Połączone';
	@override String get pageHomeDisconnected => 'Słuchawki nie połączone 🙅';
	@override String get pageHomeDisconnectedDesc => 'Twoje słuchawki nie są połączone z telefonem 😨';
	@override String get pageHomeDisconnectedOpenSettings => 'Otwórz ustawienia bluetooth żeby połączyć 💙';
	@override String get pageHomeConnecting => 'Łączenie...';
	@override String get pageHomeUnknown => 'Nieznane :(';
	@override String get pageHomeNoPermission => 'Nie mam pozwolenia na blutut 😢';
	@override String get pageHomeNoPermissionGrant => 'Pozwól na blutut 🔑';
	@override String get pageHomeNoPermissionOpenSettings => 'Otwórz ustawienia żeby pozwolić ⚙';
	@override String get pageHomeBluetoothDisabled => 'Bluetooth jest wyłączony 📶🚫';
	@override String get pageHomeBluetoothDisabledEnable => 'Włącz ☝';
	@override String get pageHomeBluetoothDisabledOpenSettings => 'Otwórz ustawienia żeby włączyć 💙';
	@override String get pageHomeNotPaired => 'Nie masz żadnych wspieranych słuchawek sparowanych z telefonem 😿';
	@override String get pageHomeNotPairedPairOpenSettings => 'Otwórz ustawienia bluetooth żeby sparować 🔌';
	@override String get pageHomeNotPairedPairOpenDemo => 'Wypróbuj apke bez słuchawek 🌐';
	@override String get pageHomeConnectedClosed => 'Słuchawki są połączone, но nie z FreeBuddy 🤨';
	@override String get pageHomeConnectedClosedDesc => 'Pewnie otworzyłeś inną apke - połącz spowrotem 👀';
	@override String get pageHomeConnectedClosedConnect => 'Połącz ze słuchawkami';
	@override String get autoPause => 'Auto pauza ⏸';
	@override String get autoPauseDesc => 'Muzyka automatycznie się zatrzyma kiedy ściągniesz słuchawki';
	@override String get pageHeadphonesSettingsTitle => 'Ustawienia słuchawek 🔧';
	@override String get pageHeadphonesSettingsDoubleTap => 'Dwukrotny tap';
	@override String get pageHeadphonesSettingsDoubleTapDesc => 'Tapnięcie dwa razy w słuchawkę spowoduje::';
	@override String get pageHeadphonesSettingsDoubleTapPlayPause => 'Start/pauza';
	@override String get pageHeadphonesSettingsDoubleTapNextSong => 'Następny utwór';
	@override String get pageHeadphonesSettingsDoubleTapPrevSong => 'Poprzedni utwór';
	@override String get pageHeadphonesSettingsDoubleTapAssist => 'Asystent głosowy';
	@override String get pageHeadphonesSettingsDoubleTapNone => 'Nic';
	@override String get pageHeadphonesSettingsLeftBud => 'Lewa słuchawka';
	@override String get pageHeadphonesSettingsRightBud => 'Prawa słuchawka';
	@override String get pageHeadphonesSettingsHold => 'Przytrzymanie';
	@override String get pageHeadphonesSettingsHoldDesc => 'Przytrzymanie słuchawki będzie przełączać te tryby ANC:';
	@override String get ancNoiseCancel => 'Redukcja hałasu 🔇';
	@override String get ancNoiseCancelDesc => 'Wygłusza hałas dookoła Ciebie';
	@override String get ancOff => 'Wyłączona 🤷';
	@override String get ancOffDesc => 'Wyłącza ANC';
	@override String get ancAwareness => 'Przepuszczanie 🔊';
	@override String get ancAwarenessDesc => 'Pozwala ci słyszeć twoje otoczenie';
	@override String get settings => 'Ustawienia';
	@override String get privacyPolicy => 'Polityka prywatności';
	@override String get privacyPolicyTitle => '"Polityka prywatności"';
	@override String get privacyPolicyText => 'Ta aplikacja nie zbiera żadnych informacji o tobie - żadnych emaili, identyfikatorów, lub czegokolwiek takiego na serwerze, bo nawet go nie mam :D\nFreeBuddy nie korzysta też z Google Analytics, czy innego serwisu który zbierałby twoje dane <3';
	@override String get privacyPolicyUrl => 'https://the.lastgimbus.com/privacy-policy/freebuddy/';
	@override String get pageAboutTitle => 'O aplikacji';
	@override String get pageAboutMeHeader => 'O aplikacji i o mnie';
	@override String get pageAboutMeBio => 'Heja 👋 Jestem @TheLastGimbus, twórca tej apki 🧑‍💻 Mam nadzieje że cie ona raduje! Stworzyłem ją z czystej pasji 💖';
	@override String get pageAboutMeAnyQuestions => 'Jeśli masz *JAKIEKOLWIEK* pytania, sugestie, albo po prostu chcesz zagadać, możesz śmiało pisać do mnie na poniższych:';
	@override String get pageAboutMeOpenSource => 'FreeBuddy jest w 💯% open source - co znaczy, że możesz obejrzeć kod z którego jest stworzone: ';
	@override String get pageAboutMeBlog => 'Napisałem też bloga o tym jak FreeBuddy zostało stworzone 🧑‍🎓 możesz go przeczytać tutaj: ';
	@override String get pageAboutMentionsHeader => 'Wyróżnienia 🎖';
	@override String get pageAboutMentionsPeopleHeader => 'Ludzie 🧑:';
	@override String get pageAboutMentionsPeopleStreet => 'Wszyscy ludzie na ulicy z Freebudsami którzy mnie nie zlali 🚿';
	@override String get pageAboutMentionsPeopleHuawei => 'Huawei, za stworzenie ciulowej apki na motywacje 💩';
	@override String get pageAboutMentionsTechHeader => 'Biblioteki i technologie 🤖:';
	@override String get pageAboutOpenSourceLicensesBtn => 'Licencje open source';
	@override String get pageIntroTitle => 'Witaj we FreeBuddy 👋';
	@override String get pageIntroWhatIsThis => 'FreeBuddy to open-source aplikacja do twoich słuchaweczek 🎧';
	@override String get pageIntroSupported => 'Obecnie wspierane są:\n - Huawei FreeBuds 4i\n - Huawei FreeBuds 3i';
	@override String get pageIntroShortPrivacyPolicy => 'Ta aplikacja nie zbiera żadnych maili, identyfikatorów, czy innych osobistych danych 🎉 Możesz o tym poczytać tutaj: ';
	@override String get pageIntroAnyQuestions => 'Jeśli masz jakiekolwiek pytania, napisz do mnie śmiało 💌 Wejdź w "Ustawienia->O aplikacji" po moje socjale!';
	@override String get pageIntroQuit => 'Oki doki 👍';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsPl {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appTitle': return 'FreeBuddy';
			case 'helloWorld': return 'Witaj świecie!';
			case 'leftBudShort': return 'Lewa';
			case 'rightBudShort': return 'Prawa';
			case 'caseShort': return 'Etui';
			case 'pageHomeConnected': return 'Połączone';
			case 'pageHomeDisconnected': return 'Słuchawki nie połączone 🙅';
			case 'pageHomeDisconnectedDesc': return 'Twoje słuchawki nie są połączone z telefonem 😨';
			case 'pageHomeDisconnectedOpenSettings': return 'Otwórz ustawienia bluetooth żeby połączyć 💙';
			case 'pageHomeConnecting': return 'Łączenie...';
			case 'pageHomeUnknown': return 'Nieznane :(';
			case 'pageHomeNoPermission': return 'Nie mam pozwolenia na blutut 😢';
			case 'pageHomeNoPermissionGrant': return 'Pozwól na blutut 🔑';
			case 'pageHomeNoPermissionOpenSettings': return 'Otwórz ustawienia żeby pozwolić ⚙';
			case 'pageHomeBluetoothDisabled': return 'Bluetooth jest wyłączony 📶🚫';
			case 'pageHomeBluetoothDisabledEnable': return 'Włącz ☝';
			case 'pageHomeBluetoothDisabledOpenSettings': return 'Otwórz ustawienia żeby włączyć 💙';
			case 'pageHomeNotPaired': return 'Nie masz żadnych wspieranych słuchawek sparowanych z telefonem 😿';
			case 'pageHomeNotPairedPairOpenSettings': return 'Otwórz ustawienia bluetooth żeby sparować 🔌';
			case 'pageHomeNotPairedPairOpenDemo': return 'Wypróbuj apke bez słuchawek 🌐';
			case 'pageHomeConnectedClosed': return 'Słuchawki są połączone, но nie z FreeBuddy 🤨';
			case 'pageHomeConnectedClosedDesc': return 'Pewnie otworzyłeś inną apke - połącz spowrotem 👀';
			case 'pageHomeConnectedClosedConnect': return 'Połącz ze słuchawkami';
			case 'autoPause': return 'Auto pauza ⏸';
			case 'autoPauseDesc': return 'Muzyka automatycznie się zatrzyma kiedy ściągniesz słuchawki';
			case 'pageHeadphonesSettingsTitle': return 'Ustawienia słuchawek 🔧';
			case 'pageHeadphonesSettingsDoubleTap': return 'Dwukrotny tap';
			case 'pageHeadphonesSettingsDoubleTapDesc': return 'Tapnięcie dwa razy w słuchawkę spowoduje::';
			case 'pageHeadphonesSettingsDoubleTapPlayPause': return 'Start/pauza';
			case 'pageHeadphonesSettingsDoubleTapNextSong': return 'Następny utwór';
			case 'pageHeadphonesSettingsDoubleTapPrevSong': return 'Poprzedni utwór';
			case 'pageHeadphonesSettingsDoubleTapAssist': return 'Asystent głosowy';
			case 'pageHeadphonesSettingsDoubleTapNone': return 'Nic';
			case 'pageHeadphonesSettingsLeftBud': return 'Lewa słuchawka';
			case 'pageHeadphonesSettingsRightBud': return 'Prawa słuchawka';
			case 'pageHeadphonesSettingsHold': return 'Przytrzymanie';
			case 'pageHeadphonesSettingsHoldDesc': return 'Przytrzymanie słuchawki będzie przełączać te tryby ANC:';
			case 'ancNoiseCancel': return 'Redukcja hałasu 🔇';
			case 'ancNoiseCancelDesc': return 'Wygłusza hałas dookoła Ciebie';
			case 'ancOff': return 'Wyłączona 🤷';
			case 'ancOffDesc': return 'Wyłącza ANC';
			case 'ancAwareness': return 'Przepuszczanie 🔊';
			case 'ancAwarenessDesc': return 'Pozwala ci słyszeć twoje otoczenie';
			case 'settings': return 'Ustawienia';
			case 'privacyPolicy': return 'Polityka prywatności';
			case 'privacyPolicyTitle': return '"Polityka prywatności"';
			case 'privacyPolicyText': return 'Ta aplikacja nie zbiera żadnych informacji o tobie - żadnych emaili, identyfikatorów, lub czegokolwiek takiego na serwerze, bo nawet go nie mam :D\nFreeBuddy nie korzysta też z Google Analytics, czy innego serwisu który zbierałby twoje dane <3';
			case 'privacyPolicyUrl': return 'https://the.lastgimbus.com/privacy-policy/freebuddy/';
			case 'pageAboutTitle': return 'O aplikacji';
			case 'pageAboutMeHeader': return 'O aplikacji i o mnie';
			case 'pageAboutMeBio': return 'Heja 👋 Jestem @TheLastGimbus, twórca tej apki 🧑‍💻 Mam nadzieje że cie ona raduje! Stworzyłem ją z czystej pasji 💖';
			case 'pageAboutMeAnyQuestions': return 'Jeśli masz *JAKIEKOLWIEK* pytania, sugestie, albo po prostu chcesz zagadać, możesz śmiało pisać do mnie na poniższych:';
			case 'pageAboutMeOpenSource': return 'FreeBuddy jest w 💯% open source - co znaczy, że możesz obejrzeć kod z którego jest stworzone: ';
			case 'pageAboutMeBlog': return 'Napisałem też bloga o tym jak FreeBuddy zostało stworzone 🧑‍🎓 możesz go przeczytać tutaj: ';
			case 'pageAboutMentionsHeader': return 'Wyróżnienia 🎖';
			case 'pageAboutMentionsPeopleHeader': return 'Ludzie 🧑:';
			case 'pageAboutMentionsPeopleStreet': return 'Wszyscy ludzie na ulicy z Freebudsami którzy mnie nie zlali 🚿';
			case 'pageAboutMentionsPeopleHuawei': return 'Huawei, za stworzenie ciulowej apki na motywacje 💩';
			case 'pageAboutMentionsTechHeader': return 'Biblioteki i technologie 🤖:';
			case 'pageAboutOpenSourceLicensesBtn': return 'Licencje open source';
			case 'pageIntroTitle': return 'Witaj we FreeBuddy 👋';
			case 'pageIntroWhatIsThis': return 'FreeBuddy to open-source aplikacja do twoich słuchaweczek 🎧';
			case 'pageIntroSupported': return 'Obecnie wspierane są:\n - Huawei FreeBuds 4i\n - Huawei FreeBuds 3i';
			case 'pageIntroShortPrivacyPolicy': return 'Ta aplikacja nie zbiera żadnych maili, identyfikatorów, czy innych osobistych danych 🎉 Możesz o tym poczytać tutaj: ';
			case 'pageIntroAnyQuestions': return 'Jeśli masz jakiekolwiek pytania, napisz do mnie śmiało 💌 Wejdź w "Ustawienia->O aplikacji" po moje socjale!';
			case 'pageIntroQuit': return 'Oki doki 👍';
			default: return null;
		}
	}
}


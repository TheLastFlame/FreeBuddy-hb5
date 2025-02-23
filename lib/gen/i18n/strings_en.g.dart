///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get appTitle => 'FreeBuddy';
	String get helloWorld => 'Hello World!';
	String get leftBudShort => 'Left';
	String get rightBudShort => 'Right';
	String get caseShort => 'Case';
	String get pageHomeConnected => 'Connected';
	String get pageHomeDisconnected => 'Headphones not connected 🙅';
	String get pageHomeDisconnectedDesc => 'Your headphones are not connected to your phone 😨';
	String get pageHomeDisconnectedOpenSettings => 'Open bluetooth settings to connect them 💙';
	String get pageHomeConnecting => 'Connecting...';
	String get pageHomeUnknown => 'Unknown :(';
	String get pageHomeNoPermission => 'No permission to access bluetooth 😢';
	String get pageHomeNoPermissionGrant => 'Grant permission 🔑';
	String get pageHomeNoPermissionOpenSettings => 'Open settings to grant ⚙';
	String get pageHomeBluetoothDisabled => 'Bluetooth is disabled 📶🚫';
	String get pageHomeBluetoothDisabledEnable => 'Enable ☝';
	String get pageHomeBluetoothDisabledOpenSettings => 'Open settings to enable 💙';
	String get pageHomeNotPaired => 'You don\'t have any supported headphones paired to your phone 😿';
	String get pageHomeNotPairedPairOpenSettings => 'Open bluetooth settings to pair 🔌';
	String get pageHomeNotPairedPairOpenDemo => 'Try app without headphones 🌐';
	String get pageHomeConnectedClosed => 'Headphones are connected, but not with FreeBuddy 🤨';
	String get pageHomeConnectedClosedDesc => 'You probably opened another app - connect again 👀';
	String get pageHomeConnectedClosedConnect => 'Connect to headphones';
	String get autoPause => 'Auto pause ⏸';
	String get autoPauseDesc => 'Music will automatically pause when you take off headphones';
	String get pageHeadphonesSettingsTitle => 'Headphones settings 🔧';
	String get pageHeadphonesSettingsDoubleTap => 'Double tap';
	String get pageHeadphonesSettingsDoubleTapDesc => 'Tap a bud twice to:';
	String get pageHeadphonesSettingsDoubleTapPlayPause => 'Play/Pause';
	String get pageHeadphonesSettingsDoubleTapNextSong => 'Next song';
	String get pageHeadphonesSettingsDoubleTapPrevSong => 'Previous song';
	String get pageHeadphonesSettingsDoubleTapAssist => 'Voice assistant';
	String get pageHeadphonesSettingsDoubleTapNone => 'None';
	String get pageHeadphonesSettingsLeftBud => 'Left bud';
	String get pageHeadphonesSettingsRightBud => 'Right bud';
	String get pageHeadphonesSettingsHold => 'Touch and hold';
	String get pageHeadphonesSettingsHoldDesc => 'Holding a bud will toggle these ANC modes:';
	String get ancNoiseCancel => 'Noise cancelling 🔇';
	String get ancNoiseCancelDesc => 'Reduces noise around you';
	String get ancOff => 'Off 🤷';
	String get ancOffDesc => 'Turns ANC off';
	String get ancAwareness => 'Awareness 🔊';
	String get ancAwarenessDesc => 'Allows you to hear your surroundings';
	String get settings => 'Settings';
	String get privacyPolicy => 'Privacy policy';
	String get privacyPolicyTitle => '"Privacy policy"';
	String get privacyPolicyText => 'This app does not collect any personal information about you - no emails, identifiers, or anything like that, on any server, because I don’t even have one :D\nFreeBuddy also doesn’t use Google Analytics, or any other service that would collect your data <3';
	String get privacyPolicyUrl => 'https://the.lastgimbus.com/privacy-policy/freebuddy/';
	String get pageAboutTitle => 'About app';
	String get pageAboutMeHeader => 'About this app and me';
	String get pageAboutMeBio => 'Hi there 👋 I\'m @TheLastGimbus, creator of this app 🧑‍💻 I hope you\'re enjoying it! I created it out of pure passion 💖';
	String get pageAboutMeAnyQuestions => 'If you have *ANY* questions, suggestions, or just want to chat, feel free to contact me on any of below:';
	String get pageAboutMeOpenSource => 'FreeBuddy is 💯% open source - meaning, you can read the source code it was made with: ';
	String get pageAboutMeBlog => 'I also made a blog about how it was created 🧑‍🎓 you can give it a read here: ';
	String get pageAboutMentionsHeader => 'Honorable mentions 🎖';
	String get pageAboutMentionsPeopleHeader => 'People 🧑:';
	String get pageAboutMentionsPeopleStreet => 'All people on the street with Freebuds 4i that did\'t ghost me 👻';
	String get pageAboutMentionsPeopleHuawei => 'Huawei, for creating a crappy app to motivate me 💩';
	String get pageAboutMentionsTechHeader => 'Libraries and tech 🤖:';
	String get pageAboutOpenSourceLicensesBtn => 'Open source licenses';
	String get pageIntroTitle => 'Welcome to FreeBuddy 👋';
	String get pageIntroWhatIsThis => 'FreeBuddy is open source app for your headphones 🎧';
	String get pageIntroSupported => 'Currently supported are:\n - Huawei FreeBuds 4i\n - Huawei FreeBuds 3i';
	String get pageIntroShortPrivacyPolicy => 'This app doesn\'t collect any emails, identifiers, or any personal data 🎉 You can read more about it here: ';
	String get pageIntroAnyQuestions => 'If you have any questions, feel free to contact me 💌 Look at "Settings->About" for my socials!';
	String get pageIntroQuit => 'Okay 👍';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appTitle': return 'FreeBuddy';
			case 'helloWorld': return 'Hello World!';
			case 'leftBudShort': return 'Left';
			case 'rightBudShort': return 'Right';
			case 'caseShort': return 'Case';
			case 'pageHomeConnected': return 'Connected';
			case 'pageHomeDisconnected': return 'Headphones not connected 🙅';
			case 'pageHomeDisconnectedDesc': return 'Your headphones are not connected to your phone 😨';
			case 'pageHomeDisconnectedOpenSettings': return 'Open bluetooth settings to connect them 💙';
			case 'pageHomeConnecting': return 'Connecting...';
			case 'pageHomeUnknown': return 'Unknown :(';
			case 'pageHomeNoPermission': return 'No permission to access bluetooth 😢';
			case 'pageHomeNoPermissionGrant': return 'Grant permission 🔑';
			case 'pageHomeNoPermissionOpenSettings': return 'Open settings to grant ⚙';
			case 'pageHomeBluetoothDisabled': return 'Bluetooth is disabled 📶🚫';
			case 'pageHomeBluetoothDisabledEnable': return 'Enable ☝';
			case 'pageHomeBluetoothDisabledOpenSettings': return 'Open settings to enable 💙';
			case 'pageHomeNotPaired': return 'You don\'t have any supported headphones paired to your phone 😿';
			case 'pageHomeNotPairedPairOpenSettings': return 'Open bluetooth settings to pair 🔌';
			case 'pageHomeNotPairedPairOpenDemo': return 'Try app without headphones 🌐';
			case 'pageHomeConnectedClosed': return 'Headphones are connected, but not with FreeBuddy 🤨';
			case 'pageHomeConnectedClosedDesc': return 'You probably opened another app - connect again 👀';
			case 'pageHomeConnectedClosedConnect': return 'Connect to headphones';
			case 'autoPause': return 'Auto pause ⏸';
			case 'autoPauseDesc': return 'Music will automatically pause when you take off headphones';
			case 'pageHeadphonesSettingsTitle': return 'Headphones settings 🔧';
			case 'pageHeadphonesSettingsDoubleTap': return 'Double tap';
			case 'pageHeadphonesSettingsDoubleTapDesc': return 'Tap a bud twice to:';
			case 'pageHeadphonesSettingsDoubleTapPlayPause': return 'Play/Pause';
			case 'pageHeadphonesSettingsDoubleTapNextSong': return 'Next song';
			case 'pageHeadphonesSettingsDoubleTapPrevSong': return 'Previous song';
			case 'pageHeadphonesSettingsDoubleTapAssist': return 'Voice assistant';
			case 'pageHeadphonesSettingsDoubleTapNone': return 'None';
			case 'pageHeadphonesSettingsLeftBud': return 'Left bud';
			case 'pageHeadphonesSettingsRightBud': return 'Right bud';
			case 'pageHeadphonesSettingsHold': return 'Touch and hold';
			case 'pageHeadphonesSettingsHoldDesc': return 'Holding a bud will toggle these ANC modes:';
			case 'ancNoiseCancel': return 'Noise cancelling 🔇';
			case 'ancNoiseCancelDesc': return 'Reduces noise around you';
			case 'ancOff': return 'Off 🤷';
			case 'ancOffDesc': return 'Turns ANC off';
			case 'ancAwareness': return 'Awareness 🔊';
			case 'ancAwarenessDesc': return 'Allows you to hear your surroundings';
			case 'settings': return 'Settings';
			case 'privacyPolicy': return 'Privacy policy';
			case 'privacyPolicyTitle': return '"Privacy policy"';
			case 'privacyPolicyText': return 'This app does not collect any personal information about you - no emails, identifiers, or anything like that, on any server, because I don’t even have one :D\nFreeBuddy also doesn’t use Google Analytics, or any other service that would collect your data <3';
			case 'privacyPolicyUrl': return 'https://the.lastgimbus.com/privacy-policy/freebuddy/';
			case 'pageAboutTitle': return 'About app';
			case 'pageAboutMeHeader': return 'About this app and me';
			case 'pageAboutMeBio': return 'Hi there 👋 I\'m @TheLastGimbus, creator of this app 🧑‍💻 I hope you\'re enjoying it! I created it out of pure passion 💖';
			case 'pageAboutMeAnyQuestions': return 'If you have *ANY* questions, suggestions, or just want to chat, feel free to contact me on any of below:';
			case 'pageAboutMeOpenSource': return 'FreeBuddy is 💯% open source - meaning, you can read the source code it was made with: ';
			case 'pageAboutMeBlog': return 'I also made a blog about how it was created 🧑‍🎓 you can give it a read here: ';
			case 'pageAboutMentionsHeader': return 'Honorable mentions 🎖';
			case 'pageAboutMentionsPeopleHeader': return 'People 🧑:';
			case 'pageAboutMentionsPeopleStreet': return 'All people on the street with Freebuds 4i that did\'t ghost me 👻';
			case 'pageAboutMentionsPeopleHuawei': return 'Huawei, for creating a crappy app to motivate me 💩';
			case 'pageAboutMentionsTechHeader': return 'Libraries and tech 🤖:';
			case 'pageAboutOpenSourceLicensesBtn': return 'Open source licenses';
			case 'pageIntroTitle': return 'Welcome to FreeBuddy 👋';
			case 'pageIntroWhatIsThis': return 'FreeBuddy is open source app for your headphones 🎧';
			case 'pageIntroSupported': return 'Currently supported are:\n - Huawei FreeBuds 4i\n - Huawei FreeBuds 3i';
			case 'pageIntroShortPrivacyPolicy': return 'This app doesn\'t collect any emails, identifiers, or any personal data 🎉 You can read more about it here: ';
			case 'pageIntroAnyQuestions': return 'If you have any questions, feel free to contact me 💌 Look at "Settings->About" for my socials!';
			case 'pageIntroQuit': return 'Okay 👍';
			default: return null;
		}
	}
}


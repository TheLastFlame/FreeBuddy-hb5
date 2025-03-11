enum DoubleTap { none, voiceAssistant, playPause, next, previous }

enum DoubleTapWhenCall { none, answerEndCall }

enum TripleTap { none, next, previous }

enum Hold { none, cycleAnc }

enum HoldWhenCall { none, rejectCall }

enum Swipe { none, volume }


class HuaweiFreeBuds5Settings {
  final DoubleTap? doubleTapLeft;
  final DoubleTap? doubleTapRight;
  final DoubleTapWhenCall? doubleTapWhenCall;

  final TripleTap? tripleTapLeft;
  final TripleTap? tripleTapRight;

  final Hold? holdLeft;
  final Hold? holdRight;
  final HoldWhenCall? holdWhenCall;

  final Swipe? swipe;

  final bool? autoPause;

  const HuaweiFreeBuds5Settings({
    this.doubleTapLeft,
    this.doubleTapRight,
    this.doubleTapWhenCall,
    this.tripleTapLeft,
    this.tripleTapRight,
    this.holdLeft,
    this.holdRight,
    this.holdWhenCall,
    this.swipe,
    this.autoPause,
  });

  HuaweiFreeBuds5Settings copyWith({
    DoubleTap? doubleTapLeft,
    DoubleTap? doubleTapRight,
    DoubleTapWhenCall? doubleTapWhenCall,
    TripleTap? tripleTapLeft,
    TripleTap? tripleTapRight,
    Hold? holdLeft,
    Hold? holdRight,
    HoldWhenCall? holdWhenCall,
    Swipe? swipe,
    bool? autoPause,
  }) {
    return HuaweiFreeBuds5Settings(
      doubleTapLeft: doubleTapLeft ?? this.doubleTapLeft,
      doubleTapRight: doubleTapRight ?? this.doubleTapRight,
      doubleTapWhenCall: doubleTapWhenCall ?? this.doubleTapWhenCall,
      tripleTapLeft: tripleTapLeft ?? this.tripleTapLeft,
      tripleTapRight: tripleTapRight ?? this.tripleTapRight,
      holdLeft: holdLeft ?? this.holdLeft,
      holdRight: holdRight ?? this.holdRight,
      holdWhenCall: holdWhenCall ?? this.holdWhenCall,
      swipe: swipe ?? this.swipe,
      autoPause: autoPause ?? this.autoPause,
    );
  }
}

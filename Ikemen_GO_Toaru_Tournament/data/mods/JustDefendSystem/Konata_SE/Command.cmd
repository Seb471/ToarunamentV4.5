;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;====================<BUTTON REMAPPING>====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;====================<DEFAULT VALUES>====================

[Defaults]
command.time = 15
command.buffer.time = 1

;====================<SINGLE BUTTON>====================

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;==================<HOLD DIRECTION>==================

[Command]
name = "holdfwd"
command=/$F
time=1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time=1

[Command]
name = "holddown"
command = /$D
time = 1

;====================<HOLD BUTTON>====================

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1

;====================<DIRECTION>====================

[Command]
name = "fwd"
command = $F
time = 1

[Command]
name = "back"
command = $B
time = 1

[Command]
name = "up"
command = $U
time = 1

[Command]
name = "down"
command = $D
time = 1

;====================<RELEASE DIR>====================

[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1

;====================<RELEASE BUTTON>====================

[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1

;====================<SUPER MOTIONS>===================

[Command]
name = "SGS"
command = ~D, DB, B, D, DB, B, a+x
time = 32

[Command]
name = "SGS"
command = ~D, DB, B, D, DB, B, b+y
time = 32

[Command]
name = "SGS"
command = ~D, DB, B, D, DB, B, c+z
time = 32

[Command]
name = "SGS"
command = ~D, DB, B, D, DB, B, x+y+z
time = 32


[Command]
name = "SGS2"
command = ~x, x, F, a, z
time = 32

[Command]
name = "SGS2"
command = ~x, x, F, a+z
time = 32

[Command]
name = "SGS2"
command = ~x, x, F+a+z
time = 32


[Command]
name = "FullPower"
command = ~D, DF, F, D, DF, F, a+x
time = 32

[Command]
name = "FullPower"
command = ~D, DF, F, D, DF, F, b+y
time = 32

[Command]
name = "FullPower"
command = ~D, DF, F, D, DF, F, c+z
time = 32

[Command]
name = "FullPower"
command = ~D, DF, F, D, DF, F, x+y+z
time = 32


[Command]
name = "MaxKiai"
command = ~D, DF, F, D, DF, F, x+y
time = 32

[Command]
name = "MaxKiai"
command = ~D, DF, F, D, DF, F, y+z
time = 32

[Command]
name = "MaxKiai"
command = ~D, DF, F, D, DF, F, x+z
time = 32


[Command]
name = "Kiai"
command = ~D, DF, F, D, DF, F, x
time = 32

[Command]
name = "Kiai"
command = ~D, DF, F, D, DF, F, y
time = 32

[Command]
name = "Kiai"
command = ~D, DF, F, D, DF, F, z
time = 32

[Command]
name = "Kiai"
command = ~D, DF, F, D, DF, F, ~x
time = 32

[Command]
name = "Kiai"
command = ~D, DF, F, D, DF, F, ~y
time = 32

[Command]
name = "Kiai"
command = ~D, DF, F, D, DF, F, ~z
time = 32


[Command]
name = "MaxReppa"
command = ~D, DF, F, D, DB, B, x+y
time = 32

[Command]
name = "MaxReppa"
command = ~D, DF, F, D, DB, B, y+z
time = 32

[Command]
name = "MaxReppa"
command = ~D, DF, F, D, DB, B, x+z
time = 32


[Command]
name = "Reppa"
command = ~D, DF, F, D, DB, B, x
time = 32

[Command]
name = "Reppa"
command = ~D, DF, F, D, DB, B, y
time = 32

[Command]
name = "Reppa"
command = ~D, DF, F, D, DB, B, z
time = 32

[Command]
name = "Reppa"
command = ~D, DF, F, D, DB, B, ~x
time = 32

[Command]
name = "Reppa"
command = ~D, DF, F, D, DB, B, ~y
time = 32

[Command]
name = "Reppa"
command = ~D, DF, F, D, DB, B, ~z
time = 32


[Command]
name = "MaxRasen"
command = ~D, DB, B, D, DB, B, x+y
time = 32

[Command]
name = "MaxRasen"
command = ~D, DB, B, D, DB, B, y+z
time = 32

[Command]
name = "MaxRasen"
command = ~D, DB, B, D, DB, B, x+z
time = 32


[Command]
name = "Rasen"
command = ~D, DB, B, D, DB, B, x
time = 32

[Command]
name = "Rasen"
command = ~D, DB, B, D, DB, B, y
time = 32

[Command]
name = "Rasen"
command = ~D, DB, B, D, DB, B, z
time = 32

[Command]
name = "Rasen"
command = ~D, DB, B, D, DB, B, ~x
time = 32

[Command]
name = "Rasen"
command = ~D, DB, B, D, DB, B, ~y
time = 32

[Command]
name = "Rasen"
command = ~D, DB, B, D, DB, B, ~z
time = 32

;====================<SPECIAL MOTIONS>====================
[Command]
name = "Hadoken"
command = ~D, DF, F, x
time = 16

[Command]
name = "Hadoken"
command = ~D, DF, F, y
time = 16

[Command]
name = "Hadoken"
command = ~D, DF, F, z
time = 16

[Command]
name = "Hadoken"
command = ~D, DF, F, ~x
time = 16

[Command]
name = "Hadoken"
command = ~D, DF, F, ~y
time = 16

[Command]
name = "Hadoken"
command = ~D, DF, F, ~z
time = 16


[Command]
name = "EXHadoken"
command = ~D, DF, F, x+y
time = 16

[Command]
name = "EXHadoken"
command = ~D, DF, F, y+z
time = 16

[Command]
name = "EXHadoken"
command = ~D, DF, F, x+z
time = 16


[Command]
name = "Shoryuken"
command = ~F, D, DF, x
time = 16

[Command]
name = "Shoryuken"
command = ~F, D, DF, y
time = 16

[Command]
name = "Shoryuken"
command = ~F, D, DF, z
time = 16

[Command]
name = "Shoryuken"
command = ~F, D, DF, ~x
time = 16

[Command]
name = "Shoryuken"
command = ~F, D, DF, ~y
time = 16

[Command]
name = "Shoryuken"
command = ~F, D, DF, ~z
time = 16


[Command]
name = "EXShoryuken"
command = ~F, D, DF, x+y
time = 16

[Command]
name = "EXShoryuken"
command = ~F, D, DF, y+z
time = 16

[Command]
name = "EXShoryuken"
command = ~F, D, DF, x+z
time = 16


[Command]
name = "TatsumakiSenpukyaku"
command = ~D, DB, B, x
time = 16

[Command]
name = "TatsumakiSenpukyaku"
command = ~D, DB, B, y
time = 16

[Command]
name = "TatsumakiSenpukyaku"
command = ~D, DB, B, z
time = 16

[Command]
name = "TatsumakiSenpukyaku"
command = ~D, DB, B, ~x
time = 16

[Command]
name = "TatsumakiSenpukyaku"
command = ~D, DB, B, ~y
time = 16

[Command]
name = "TatsumakiSenpukyaku"
command = ~D, DB, B, ~z
time = 16


[Command]
name = "EXTatsumakiSenpukyaku"
command = ~D, DB, B, x+y
time = 16

[Command]
name = "EXTatsumakiSenpukyaku"
command = ~D, DB, B, y+z
time = 16

[Command]
name = "EXTatsumakiSenpukyaku"
command = ~D, DB, B, x+z
time = 16


[Command]
name = "EXMelonpan"
command = ~B, DB, D, DF, F, x+y
time = 16

[Command]
name = "EXMelonpan"
command = ~B, DB, D, DF, F, y+z
time = 16

[Command]
name = "EXMelonpan"
command = ~B, DB, D, DF, F, x+z
time = 16


[Command]
name = "Melonpan"
command = ~B, DB, D, DF, F, x
time = 16

[Command]
name = "Melonpan"
command = ~B, DB, D, DF, F, y
time = 16

[Command]
name = "Melonpan"
command = ~B, DB, D, DF, F, z
time = 16

[Command]
name = "Melonpan"
command = ~B, DB, D, DF, F, ~x
time = 16

[Command]
name = "Melonpan"
command = ~B, DB, D, DF, F, ~y
time = 16

[Command]
name = "Melonpan"
command = ~B, DB, D, DF, F, ~z
time = 16

;====================<OTHER>====================

[Command]
name = "highjump"
command = $D, $U
time = 15

;====================<DOUBLE TAP>====================

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;====================<2/3 BUTTON COMBINATION>====================

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "pp"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1

[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "kk"
command = b+c
time = 1

[Command]
name = "a+x"
command = a+x
time=1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1

;==============================================================================================
;========================================<-1 STATES>===========================================
;==============================================================================================
[StateDef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerall = 0
triggerall = RoundState = 2
triggerall = !ctrl
triggerall = MoveType != H
trigger1 = (stateno = 52 || stateno = 101 || stateno = 5120) && !AnimTime
trigger2 = (stateno = [200,299]) && !AnimTime
trigger3 = (stateno = [400,499]) && !AnimTime
trigger4 = (stateno = [700,715]) && !AnimTime
trigger5 = (stateno = [760,762]) && !AnimTime
value = 1

[State -1, CtrlSet For Helpers]
type = CtrlSet
trigger1 = IsHelper
value = 0

[State -1, Hit Count For Helpers]
type = Null;ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -1, Juggle Count For Helpers]
type = Null;ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State -1, Don't look down on me!]
type = ChangeState
value = 3400
triggerall = !var(58)||(var(58)&&sysfvar(4)=0)
triggerall = command = "SGS" || command = "SGS2"
triggerall = RoundState = 2 && StateType != A
triggerall = (power >= 3000 && var(20) <= 0 && var(53)<=0 && var(54)!=2) || (power >= 1000 && var(53) > 0) || (var(42) > 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)
trigger3 = StateNo = 200 && command = "SGS2"

[State -1, Full power of the long-awaited!]
type = ChangeState
value = 3300
triggerall = !var(58)||(var(58)&&sysfvar(4)=0)
triggerall = command = "FullPower" 
triggerall = RoundState = 2 && StateType != A
triggerall = (power >= 3000 && var(20) <= 0 && var(53)<=0 && var(54)!=2) || (power >= 1000 && var(53) > 0) || (var(42) > 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, MAX Messatsu Gou Senpu]
type = ChangeState
value = 3275
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "MaxRasen"
triggerAll = RoundState = 2 && StateType = A
triggerAll = (power >= 2000 && var(20) <= 60 && var(53)<=0 && var(54)!=2) || (power >= 500 && var(53) > 0) || (var(42) > 0)
triggerAll = (var(3) != [1,2])
trigger1 = ctrl && pos y <= -40
trigger2 = var(7) || var(8) && var(22) < 1

[State -1, MAX Messatsu Gou Rasen]
type = ChangeState
value = 3225
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "MaxRasen"
triggerAll = RoundState = 2 && StateType != A
triggerAll = (power >= 2000 && var(20) <= 60 && var(53)<=0 && var(54)!=2) || (power >= 500 && var(53) > 0) || (var(42) > 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8) && var(22) < 1

[State -1, MAX Shoryureppa]
type = ChangeState
value = 3150
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "MaxReppa"
triggerAll = RoundState = 2 && StateType != A
triggerAll = (power >= 2000 && var(20) <= 60 && var(53)<=0 && var(54)!=2) || (power >= 500 && var(53) > 0) || (var(42) > 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8) && var(22) < 1

[State -1, MAX Kiai No Hadoken]
type = ChangeState
value = 3050
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "MaxKiai"
triggerAll = RoundState = 2 && StateType != A
triggerAll = (power >= 2000 && var(20) <= 60 && var(53)<=0 && var(54)!=2) || (power >= 500 && var(53) > 0) || (var(42) > 0)
triggerAll = !var(39) || var(8)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8) && var(22) < 1

[State -1, Messatsu Gou Senpu]
type = ChangeState
value = 3250
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "Rasen"
triggerAll = RoundState = 2 && StateType = A
triggerAll = (power >= 1000 && var(20) <= 60 && var(53)<=0 && var(54)!=2) || (var(53) > 0) || (var(42) > 0)
triggerAll = (var(3) != [1,2])
trigger1 = ctrl && pos y <= -40
trigger2 = var(7) || (var(8) && var(22) < 2 && StateNo != 3200 && StateNo != 3250)

[State -1, Messatsu Gou Rasen]
type = ChangeState
value = 3200
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "Rasen"
triggerAll = RoundState = 2 && StateType != A
triggerAll = (power >= 1000 && var(20) <= 60 && var(53)<=0 && var(54)!=2) || (var(53) > 0) || (var(42) > 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || (var(8) && var(22) < 2 && StateNo != 3200 && StateNo != 3250)

[State -1, Shoryureppa]
type = ChangeState
value = 3100
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "Reppa"
triggerAll = RoundState = 2 && StateType != A
triggerAll = (power >= 1000 && var(20) <= 60 && var(53)<=0 && var(54)!=2) || (var(53) > 0) || (var(42) > 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || (var(8) && var(22) < 2 && StateNo != 3100)

[State -1, Kiai No Hadoken]
type = ChangeState
value = 3000
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "Kiai"
triggerAll = RoundState = 2 && StateType != A
triggerAll = (power >= 1000 && var(20) <= 60 && var(53)<=0 && var(54)!=2) || (var(53) > 0) || (var(42) > 0)
triggerAll = !var(39) || var(8)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || (var(8) && var(22) < 2 && StateNo != 3000)

[State -1, EX Nanchattenmakujinkyaku]
type = ChangeState
value = 1330
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "EXHadoken"
triggerAll = RoundState = 2 && StateType = A
triggerAll = (var(3) != [1,2]); && StateNo != 215
triggerAll = (power >= 500 && var(20) <= 60 && var(54) != 2) || var(53) > 0 || (power >= 500 && var(42) > 0)
trigger1 = ctrl
trigger2 = var(6)

[State -1, EX Airborne Tatsumaki Senpukyaku]
type = ChangeState
value = 1245
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "EXTatsumakiSenpukyaku"
triggerAll = RoundState = 2 && StateType = A
triggerAll = (var(3) != [1,2]); && StateNo != 215
triggerAll = (power >= 500 && var(20) <= 60 && var(54) != 2) || var(53) > 0 || (power >= 500 && var(42) > 0)
trigger1 = ctrl
trigger2 = var(6)

[State -1, EX Tatsumaki Senpukyaku]
type = ChangeState
value = 1230
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "EXTatsumakiSenpukyaku"
triggerAll = RoundState = 2 && StateType != A
triggerAll = (power >= 500 && var(20) <= 60 && var(54) != 2) || var(53) > 0 || (power >= 500 && var(42) > 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Shoryuken]
type = ChangeState
value = 1130
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "EXShoryuken"
triggerAll = RoundState = 2 && StateType != A
triggerAll = (power >= 500 && var(20) <= 60 && var(54) != 2) || var(53) > 0 || (power >= 500 && var(42) > 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Melonpan / Choco Cornet]
type = ChangeState
value = 1430
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "EXMelonpan"
triggerAll = RoundState = 2 && StateType != A
triggerAll = (power >= 500 && var(20) <= 60 && var(54) != 2) || var(53) > 0 || (power >= 500 && var(42) > 0)
triggerAll = !numhelper(1405) && !numhelper(1406) && !numhelper(1435) && !numhelper(1436)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Hadoken]
type = ChangeState
value = 1030
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "EXHadoken"
triggerAll = RoundState = 2 && StateType != A
triggerAll = (power >= 500 && var(20) <= 60 && var(54) != 2) || var(53) > 0 || (power >= 500 && var(42) > 0)
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Nanchatteenmakujinkyaku]
type = ChangeState
value = 1300
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = (command = "Hadoken")
triggerAll = RoundState = 2 && StateType = A
triggerAll = (var(3) != [1,2]) && (StateNo != 215 || var(20) > 0)
trigger1 = ctrl
trigger2 = var(6)

[State -1, Airborne Tatsumaki Senpukyaku]
type = ChangeState
value = 1240
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = (command = "TatsumakiSenpukyaku")
triggerAll = RoundState = 2 && StateType = A
triggerAll = (var(3) != [1,2]) && (StateNo != 215 || var(20) > 0)
trigger1 = ctrl
trigger2 = var(6)

[State -1, Tatsumaki Senpukyaku]
type = ChangeState
value = 1200
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "TatsumakiSenpukyaku"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Shoryuken]
type = ChangeState
value = 1100
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "Shoryuken"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Melonpan / Choco Cornet]
type = ChangeState
value = 1400
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "Melonpan"
triggerAll = RoundState = 2 && StateType != A
triggerAll = !numhelper(1405) && !numhelper(1406) && !numhelper(1435) && !numhelper(1436)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Hadoken]
type = ChangeState
value = 1000
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "Hadoken"
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Zero Counter]
type = ChangeState
value = 750
triggerAll = !AILevel
trigger1 = (StateNo = 150 || StateNo = 152) && var(52) = -1
trigger1 = command = "holdfwd" && command = "pp"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20) && !var(53) && (var(54) != 2 || var(42) && power >= 3000)

[State -1, Guard Cancel Roll]
type = ChangeState
value = 740
triggerAll = !AILevel
trigger1 = (StateNo = 150 || StateNo = 152) && var(52) = -1
trigger1 = (command = "holdfwd" || command = "holdback") && command = "a"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20) && !var(53) && (var(54) != 2 || var(42) && power >= 3000)

[State -1, Rage Explosion]
type = ChangeState
value = 790
triggerAll = !AILevel
triggerall = (command = "c"&&var(54)=2)
triggerall = RoundState = 2 && StateType != A
triggerall = var(53) <= 0 && Power >= 3000 && !var(42)
trigger1 = ctrl || (Stateno = [100,101])

[State -1, MAX Mode]
type = ChangeState
value = 770
triggerAll = !AILevel
triggerall = (command = "c"&&var(54)=1)||(command = "holddown"&&command = "c"&&var(54)>=3)
triggerall = RoundState = 2 && StateType != A
triggerall = var(53) <= 0 && Power >= 1000 && !var(20)
trigger1 = ctrl || (Stateno = [100,101])

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerAll = !AILevel
trigger1 = command = "c"&&(!var(54)||var(54)>=3)
trigger1 = RoundState = 2
trigger1 = power >= 1000 && !var(20) && !var(53)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])

[State -1, Power Charging]
type = ChangeState
value = 730
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
trigger1 = command = "holdb"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20) && !var(53) && (var(54) != 2 || var(42))
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerAll = !AILevel
triggerAll = command = "a" && !(command = "y" || command = "z")
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"

[State -1, Roll Backward]
type = ChangeState
value = 715
triggerAll = !AILevel
triggerAll = command = "a" && !(command = "y" || command = "z")
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Dodge]
type = ChangeState
value = 700
triggerAll = !AILevel
triggerAll = command = "a" && !(command = "y" || command = "z")
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Dash Forward/Run]
type = ChangeState
value = 100
triggerAll = !AILevel
trigger1 = (command = "FF" && p2dist x >= 0) || (command = "BB" && p2dist x < 0)
trigger1 = roundstate = 2 && StateType = S
trigger1 = ctrl

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = !AILevel
trigger1 = (command = "BB" && p2dist x >= 0) || (command = "FF" && p2dist x < 0)
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && command = "pp" 
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Standing Heavy Attack]
type = ChangeState
value = 220 
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
trigger3 = ((StateNo = [200,210]) || (StateNo = [400,410])) && MoveContact && Var(55)

[State -1, Senpuukyaku]
type = ChangeState
value = 215
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "holdfwd" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
trigger3 = (StateNo = 200 || StateNo = 400) && MoveContact && Var(55)

[State -1, Standing Medium Attack]
type = ChangeState
value = 210
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
trigger3 = (StateNo = 200 || StateNo = 400) && MoveContact && Var(55)

[State -1, Standing Light Attack]
type = ChangeState
value = 200 
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = 1||(var(12):=0)
trigger2 = (StateNo = 200 || StateNo = 400) && Time >= 4 && !MoveContact
trigger2 = 1||(var(12):=0)
trigger3 = var(4)
trigger3 = 1||(var(12):=var(12)+1)
trigger4 = (StateNo = 200 || StateNo = 400) && MoveContact && var(12) < 2
trigger4 = 1||(var(12):=var(12)+1)

[State -1, Crouching Heavy Attack]
type = ChangeState
value = 420
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
trigger3 = ((StateNo = [200,210]) || (StateNo = [400,410])) && MoveContact && Var(55)

[State -1, Crouching Medium Attack]
type = ChangeState
value = 410
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command  ="holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
trigger3 = (StateNo = 200 || StateNo = 400) && MoveContact && Var(55)

[State -1, Crouching Light Attack]
type = ChangeState
value = 400
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = 1||(var(12):=0)
trigger2 = (StateNo = 200 || StateNo = 400) && Time >= 4 && !MoveContact
trigger2 = 1||(var(12):=0)
trigger3 = var(4)
trigger3 = 1||(var(12):=var(12)+1)
trigger4 = (StateNo = 200 || StateNo = 400) && MoveContact && var(12) < 2
trigger4 = 1||(var(12):=var(12)+1)

[State -1, Jumping Heavy Attack]
type = ChangeState
value = 620
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "z"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Attack]
type = ChangeState
value = 610
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "y"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Attack]
type = ChangeState
value = 600
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = !AILevel
triggerAll = command = "x"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = !AILevel&&Roundstate=2&&StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)

;==============================================================================================
;===========================================< A.I >============================================
;==============================================================================================

[State -1, AI Parry Stand]
type = Null;HitOverride
triggerall = AILevel&&statetype != A && ctrl
triggerall = var(54) != 2 || (var(54) = 2 && var(42))
trigger1 = random < (250 * (var(59) ** 2 / 64.0))
slot = 0
stateno = 6080
attr = SA, AA, AP
time = 3

[State -1, AI Crouching Parry]
type = Null;HitOverride
triggerall = AILevel&&statetype != A && ctrl
triggerall = var(54) != 2 || (var(54) = 2 && var(42))
trigger1 =random < (250 * (var(59) ** 2 / 64.0))
slot = 0
stateno = 6081
attr = C, AA, AP
time = 3

[State -1, AI Aerial Parry]
type = Null;HitOverride
triggerall = AILevel&& statetype = A && ctrl
triggerall = var(54) != 2 || (var(54) = 2 && var(42))
trigger1 = random < (250 * (var(59) ** 2 / 64.0))
slot = 0
stateno = 6082
forceair = 1
attr = SCA, AA, AP
time = 3

[State -1, Jump]
type = ChangeState
value = 40
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A && ctrl
trigger1 = EnemyNear, MoveType = A && P2BodyDist x < 160 && EnemyNear, HitDefAttr = SC, AT

[State -1, Roll Forward]
type = ChangeState
value = 710
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (var(59) ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [92,122])

[State -1, Dodge]
type = ChangeState
value = 700
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (var(59) ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [0,60])

[State -1, Dodge]
type = ChangeState
value = 700
triggerall = AIlevel && numenemy
triggerall = (facing=1 && (enemy,facing=-1)) || (facing=-1 && (enemy,facing=1))
triggerall = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (145 * (var(59) ** 2 / 64.0))
triggerall = roundstate=2  && statetype != A
trigger1 = enemynear,movetype=A && (p2bodydist x=[0,40])&&(p2bodydist y=[0,0])
trigger2 = ((enemynear,numproj) || (enemynear,numhelper)) && inguarddist && p2bodydist x>=25 
trigger3 = RoundState = 2 && InGuardDist
trigger3 = ctrl && (StateNo != [120, 155]) && !var(20)
trigger3 = !var(26) || P2BodyDist x >= 40
trigger3 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger3 = StateType != A || P2StateType = A
trigger3 = ifElse(StateType = A, ((var(3) != [1, 2]) || StateNo = 5210), 1)
trigger3 = Random <  (ifElse((P2StateNo = [200, 699]), 125, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (var(59) ** 2 / 64.0))

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = ctrl && (StateNo != [100,106]) && var(20) <= 150 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && BackEdgeDist >= 80 && (P2BodyDist x = [80,120]) && (EnemyNear, vel x)
trigger1 = Random < (ifElse((EnemyNear, HitDefAttr = SC, AT), 150, 50) * (var(59) ** 2 / 64.0))
trigger2 = (P2BodyDist x = [0,80]) && BackEdgeBodyDist >= 80
trigger2 = EnemyNear, StateNo = 5120 && EnemyNear, AnimTime = -4 && Random < (750 * (var(59) ** 2 / 64.0))

[State -1, Guard]
type = ChangeState
value = 120
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && InGuardDist
trigger1 = ctrl && (StateNo != [120, 155]) && !var(20)
trigger1 = !var(26) && (P2Dist x >= 0 || StateType != A)
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger1 = StateType != A || P2StateType = A
trigger1 = ifElse(StateType = A, ((var(3) != [1, 2]) || StateNo = 5210), 1)
trigger1 = Random < (ifElse((P2StateNo = [200, 699]), 100, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (var(59) ** 2 / 64.0))

[State -1, AI Custom Combo]
type = ChangeState
value = 900
triggerall = AILevel && power >= 1000 && !var(20) && roundstate = 2 && statetype != A && numenemy && (!var(54)||var(54)>=3)
triggerall = p2statetype != A && p2statetype != L && p2movetype = A && (p2stateno = [0,499])
triggerall = numenemy = 1 || (numenemy = 2 && ((enemy, alive = 0) || (enemy(numenemy = 2), alive = 0))) || (numenemy = 2 && (((enemy, facing = 1) && (enemy(numenemy = 2), facing = 1)) || ((enemy, facing = -1) && (enemy(numenemy = 2), facing = -1))))
triggerall = (ctrl || stateno = 21 || stateno = 22 || stateno = 52 || stateno = 100 || ((Stateno = [120,131]) && movetype != H)) && random < (150 * (var(59) ** 2 / 64.0))
trigger1 = (p2bodydist x = [51,80]) && power >= 1000
trigger2 = (p2bodydist x = [0,80]) && power >= 2000

[State -1, MAX Mode]
type = ChangeState
value = 770
triggerall = AILevel && NumEnemy
triggerall = (var(54) = 1 || var(54) >= 3) && var(59) >= 4
triggerall = RoundState = 2 && StateType != A
triggerall = var(53) <= 0 && Power >= 1000 && !var(20)
triggerall = ctrl || (Stateno = [100,101])
triggerall = p2movetype !=A
triggerall = enemynear, vel x <= 0
trigger1 = random < ifelse(var(59) < 7,(50 * (var(59) ** 2 / 64.0)),(200 * (var(59) ** 2 / 64.0)))
trigger1 = power > 1000
trigger1 = p2statetype = L && p2dist x > 120
trigger2 = power > 2000
trigger2 = p2dist x > 140
trigger2 = random < ifelse(var(59) < 7,(50 * (var(59) ** 2 / 64.0)),(900 * (var(59) ** 2 / 64.0)))
trigger3 = p2dist x > 120
trigger3 = prevstateno = 731
trigger3 = power = 3000

[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = AILevel && NumEnemy
trigger1 = (StateNo = 150 || StateNo = 152) && var(52) = -1
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 1000 && !var(20) && !var(53) && (var(54) != 2 || var(42) && Power >= 3000)
trigger1 = Random < (25 * (var(59) ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Guard Cancel Roll]
type = ChangeState
value = 740
trigger1 = AILevel && NumEnemy
trigger1 = stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && statetype != A
trigger1 = power >= 1000 && !var(20) && !var(53) && (var(54) != 2 || var(42) && Power >= 3000)
trigger1 = (p2bodydist x = [0,50]) && (life < 0.5 * lifemax)
trigger1 = enemynear, animtime = [-45,-30]
trigger1 = random < (power / 10.0)
trigger1 = random < (50 * (var(59) ** 2.0 / 64.0))

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power < const(data.power) && !var(20) && !var(53) && (var(54) != 2 || var(42))
trigger1 = ctrl && Power < const(data.power) && Power < PowerMax && !var(20) && PrevStateNo != 5120
trigger1 = !InGuardDist && P2BodyDist x >= 160 && Random < (50 * (var(59) ** 2 / 64.0))

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20,40]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (125 * (var(59) ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (250 * (var(59) ** 2 / 64.0))

[State -1, Run]
type = ChangeState
value = 100
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl && (StateNo != [100,106])
trigger1 = (EnemyNear, MoveType != A) && P2BodyDist x >= 160 && Random < (25 * (var(59) ** 2 / 64.0))

[State -1, Standing Heavy Attack]
type = ChangeState
value = 220 
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,57]) && (P2Dist y = [-60,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (var(59) ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (var(59) ** 2 / 64.0))

[State -1, Crouching Heavy Attack]
type = ChangeState
value = 420
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,78]) && (P2Dist y = [-33,0]) && P2StateType != A && P2StateType != L
triggerAll = (P2StateType = S || (P2StateType = C && P2MoveType = H))
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (var(59) ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 6) && Random < (250 * (var(59) ** 2 / 64.0))

[State -1, Jumping Heavy Attack]
type = ChangeState
value = 620
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,51]) && (P2Dist y = [-101,76]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (100 * (var(59) ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (var(59) ** 2 / 64.0))

[State -1, Standing Far/Close Medium Attack]
type = ChangeState
value = 210
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,35]) && (P2Dist y = [-60,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (var(59) ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (var(59) ** 2 / 64.0))

[State -1, Crouching Medium Attack]
type = ChangeState
value = 410
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,52]) && (P2Dist y = [-50,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (var(59) ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (var(59) ** 2 / 64.0))

[State -1, Jumping Medium Attack]
type = ChangeState
value = 610
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,40]) && (P2Dist y = [-80,72]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (var(59) ** 2 / 64.0))

[State -1, Standing Light Attack]
type = ChangeState
value = 200 
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,44]) && (P2Dist y = [-68,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (85 * (var(59) ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (var(59) ** 2 / 64.0))

[State -1, Crouching Light Attack]
type = ChangeState
value = 400
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,55]) && (P2Dist y = [-44,0]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (var(59) ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (var(59) ** 2 / 64.0))

[State -1, Jumping Light Attack]
type = ChangeState
value = 600
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,40]) && (P2Dist y = [-51,60]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (var(59) ** 2 / 64.0))

[State -1, Shoryuken]
type = ChangeState
value = ifElse(((var(53) <= 0 && Power >= 500 && var(54) != 2) || (var(53) > 0) || (var(42) > 0 && Power >= 500)) && Random < 133 && var(20) <= 60, 1130, 1100)
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = ((P2BodyDist x = [-48,48]) && P2StateType != A) || ((P2BodyDist x = [-140,140]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (var(59) ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (100 * (var(59) ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (var(59) ** 2 / 64.0))

[State -1, Airborne Tatsumaki Senpukyaku]
type = ChangeState
value = ifElse(((var(53) <= 0 && Power >= 500 && var(54) != 2) || (var(53) > 0) || (var(42) > 0 && Power >= 500)) && Random < 500 && var(20) <= 60, 1245, 1240)
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = var(3) != [1,2]
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType = A
triggerAll = (P2BodyDist x = [-8,160]) && P2Dist y >= -120
trigger1 = ctrl && Random < (50 * (var(59) ** 2 / 64.0))
trigger2 = var(6) && MoveHit && P2StateType = A

[State -1, Tatsumaki Senpukyaku]
type = ChangeState
value = ifElse(((var(53) <= 0 && Power >= 500 && var(54) != 2) || (var(53) > 0) || (var(42) > 0 && Power >= 500)) && Random < 100 && var(20) <= 60, 1230, 1200)
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateNo = [200, 499])
triggerAll = (P2BodyDist x = [-8,165]) && P2StateType != A && (P2StateType != L || P2StateNo = 5120)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger1 = P2BodyDist x >= 15 && Random < (50 * (var(59) ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = (EnemyNear, StateNo = 5120 || EnemyNear, StateNo = 5201) && (EnemyNear, AnimTime = -18) && Random < (250 * (var(59) ** 2 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (var(59) ** 2 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 6

[State -1, Hadoken]
type = ChangeState
value = ifElse(((var(53) <= 0 && Power >= 500 && var(54) != 2) || (var(53) > 0) || (var(42) > 0 && Power >= 500)) && Random < 100 && var(20) <= 60, 1030, 1000)
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (var(59) ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (var(59) ** 2 / 64.0))

[State -1, Melonpan / Choco Cornet]
type = ChangeState
value = ifElse(((var(53) <= 0 && Power >= 500 && var(54) != 2) || (var(53) > 0) || (var(42) > 0 && Power >= 500)) && Random < 100 && var(20) <= 60, 1430, 1400)
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !numhelper(1405) && !numhelper(1406) && !numhelper(1435) && !numhelper(1436)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (var(59) ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (var(59) ** 2 / 64.0))

[State -1, Nanchattenmakujinkyaku]
type = ChangeState
value = ifElse(((var(53) <= 0 && Power >= 500 && var(54) != 2) || (var(53) > 0) || (var(42) > 0 && Power >= 500)) && Random < 500 && var(20) <= 60, 1330, 1300)
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = var(3) != [1,2]
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType = A
triggerAll = (P2BodyDist x = [-8,160]) && P2Dist y >= -120
trigger1 = ctrl && Random < (50 * (var(59) ** 2 / 64.0))
trigger2 = var(6) && MoveHit && P2StateType = A

[State -1, Don't look down on me!]
type = ChangeState
value = 3400
triggerall = !var(58)||(var(58)&&sysfvar(4)=0)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && ((var(53) <= 0 && Power >= 3000 && var(20) <= 0 && var(54) != 2) || (var(53) > 0 && Power >= 1000) || (var(42) > 0))
triggerall = !(enemynear, ctrl) && (enemynear, movetype != A) && (enemynear, statetype != L) && (p2stateno != [5030, 5119])
triggerall = (p2dist x = [0, 160]) && (p2stateno != 40)
triggerall = ifelse((enemynear, vel y > 0), (enemynear, vel x < 0), (enemynear, vel y >= 0))
trigger1 = ctrl && (p2bodydist x = [0, 90]) && (p2dist y = [ -5, 5]) && random < (150 * (var(59) ** 2 / 64.0))
trigger2 = ctrl && (p2stateno = [120, 155]) && p2statetype != A && random < (250 * (var(59) ** 2 / 64.0))
trigger3 = ctrl && (p2bodydist x = [0, 90]) && (p2dist y = [ -5, 5]) && random < (150 * (var(59) ** 2 / 64.0))

[State -1, Full power of the long-awaited!]
type=ChangeState
value=3300
triggerall=!var(58)||(var(58)&&sysfvar(4)=0)
triggerall=AILevel && numenemy && RoundState=2 && StateType != A && ((var(53) <= 0 && Power >= 3000 && var(20) <= 0 && var(54) != 2) || (var(53) > 0 && Power >= 1000) || (var(42) > 0)) && random < (350 * (var(59) ** 2 / 64.0))
triggerall=(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(p2bodydist x >=120)&&(p2bodydist y=[-150,5])&&(enemynear,stateno!=[120,155])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(7)&&movehit&&random<250

[State -1, Max Messatsu Gou Senpu]
type=ChangeState
value=3275
triggerall=!var(58)||(var(58)&&sysfvar(4)=0)
triggerall=AILevel && numenemy && RoundState=2 && stateno!= 3275 && StateType = A && Pos y<=-40 && ((var(53) <= 0 && Power >= 2000 && var(20) <= 60 && var(54) != 2) || (var(53) > 0 && Power >= 500) || (var(42) > 0)) && random < (320 * (var(59) ** 2 / 64.0))
triggerall=(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])
triggerall=(p2bodydist x =[-30,30])&&(p2bodydist y=[-70,-5])&&(enemynear,statetype=A)
trigger1=ctrl
trigger2=var(7)&&movehit&&random<250
trigger3=(stateno=[600,620])&&movehit&&random<250

[State -1, Messatsu Gou Senpu]
type=ChangeState
value=3250
triggerall=!var(58)||(var(58)&&sysfvar(4)=0)
triggerall=AILevel && numenemy && RoundState=2 && stateno!= 3250 && StateType = A && Pos y<=-40 && ((var(53) <= 0 && Power >= 1000 && var(20) <= 60 && var(54) != 2) || (var(53) > 0) || (var(42) > 0)) && random < (320 * (var(59) ** 2 / 64.0))
triggerall=(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])
triggerall=(p2bodydist x =[-30,30])&&(p2bodydist y=[-70,-5])&&(enemynear,statetype=A)
trigger1=ctrl
trigger2=var(7)&&movehit&&random<250
trigger3=(stateno=[600,620])&&movehit&&random<250

[State -1, Max Messatsu Gou Rasen]
type=ChangeState
value=3225
triggerall=!var(58)||(var(58)&&sysfvar(4)=0)
triggerall=AILevel && numenemy && RoundState=2 && stateno!= 3225 && StateType != A && ((var(53) <= 0 && Power >= 2000 && var(20) <= 60 && var(54) != 2) || (var(53) > 0 && Power >= 500) || (var(42) > 0)) && random < (300 * (var(59) ** 2 / 64.0))
triggerall=(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])
triggerall=(p2bodydist x =[-30,30])&&(p2bodydist y=[-90,5])&&(enemynear,statetype!=C)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(7)&&movehit&&random<150

[State -1, Messatsu Gou Rasen]
type=ChangeState
value=3200
triggerall=!var(58)||(var(58)&&sysfvar(4)=0)
triggerall=AILevel && numenemy && RoundState=2 && stateno!= 3200 && StateType != A && ((var(53) <= 0 && Power >= 1000 && var(20) <= 60 && var(54) != 2) || (var(53) > 0) || (var(42) > 0)) && random < (300 * (var(59) ** 2 / 64.0))
triggerall=(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])
triggerall=(p2bodydist x =[-30,30])&&(p2bodydist y=[-90,5])&&(enemynear,statetype!=C)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(7)&&movehit&&random<150

[State -1, MAX Shoryureppa]
type = ChangeState
value = 3150
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && StateNo!= 3150
triggerAll = ((var(53) <= 0 && Power >= 2000 && var(20) <= 60 && var(54) != 2) || (var(53) > 0 && Power >= 500) || (var(42) > 0))
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-140,140]) && (P2Dist y = [-32,32])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (var(59) ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (var(59) ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Shoryureppa]
type = ChangeState
value = 3100
triggerAll = !var(58)||(var(58)&&sysfvar(4)=0)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && StateNo!= 3100
triggerAll = ((var(53) <= 0 && Power >= 1000 && var(20) <= 60 && var(54) != 2) || (var(53) > 0) || (var(42) > 0))
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-100,100]) && (P2Dist y = [-32,32])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (var(59) ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (var(59) ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Max Kiai No Hadoken]
type=ChangeState
value=3050
triggerall=!var(58)||(var(58)&&sysfvar(4)=0)
triggerall=AILevel && numenemy && RoundState=2 && stateno!= 3050 && StateType != A && ((var(53) <= 0 && Power >= 2000 && var(20) <= 60 && var(54) != 2) || (var(53) > 0 && Power >= 500) || (var(42) > 0))
triggerall=!var(39)||var(8)
triggerall=(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155]) && random < (100 * (var(59) ** 2 / 64.0))
triggerall=(p2bodydist x >=80)&&(p2bodydist y=[-80,5])&&(enemynear,statetype!=A)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=(var(7)|| var(8))&&movehit&&random<100

[State -1, Kiai No Hadoken]
type=ChangeState
value=3000
triggerall=!var(58)||(var(58)&&sysfvar(4)=0)
triggerall=AILevel && numenemy && RoundState=2 && stateno!= 3000 && StateType != A && ((var(53) <= 0 && Power >= 1000 && var(20) <= 60 && var(54) != 2) || (var(53) > 0) || (var(42) > 0))
triggerall=!var(39)||var(8)
triggerall=(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155]) && random < (80 * (var(59) ** 2 / 64.0))
triggerall=(p2bodydist x >=60)&&(p2bodydist y=[-80,5])&&(enemynear,statetype!=A)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=(var(7)|| var(8))&&movehit&&random<250
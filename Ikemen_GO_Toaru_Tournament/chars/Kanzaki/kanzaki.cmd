; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below.
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10


;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

;-| Special Motions |------------------------------------------------------
[Command]
name = "blocking"
command = $F,x
time = 3

[Command]
name = "blocking" ;Same name as above (buttons in opposite order)
command = x,$F
time = 3

[Command]
name = "41236_b"
command = ~B, DB, D, DF, F, b
time = 32
buffer.Time=16

[Command]
name = "41236_c"
command = ~B, DB, D, DF, F, c
time = 32
buffer.Time=16

[Command]
name = "236_a"
command = ~D, DF, F, a
time = 20
buffer.Time=10

[Command]
name = "236_b"
command = ~D, DF, F, b
time = 20
buffer.Time=10

[Command]
name = "236_c"
command = ~D, DF, F, c
time = 20
buffer.Time=10

[Command]
name = "623_a"
command = ~F, D, DF, a
time = 20
buffer.Time=10

[Command]
name = "623_b"
command = ~F, D, DF, b
time = 20
buffer.Time=10

[Command]
name = "623_c"
command = ~F, D, DF, c
time = 20
buffer.Time=10

[Command]
name = "214_a"
command = ~D, DB, B, a
time = 20
buffer.Time=10

[Command]
name = "214_b"
command = ~D, DB, B, b
time = 20
buffer.Time=10

[Command]
name = "214_c"
command = ~D, DB, B, c
time = 20
buffer.Time=10

[Command]
name = "2366_c"
command = ~D, DF, F,  F, c
time = 20
buffer.Time=10

[Command]
name = "2364_c"
command = ~D, DF, F,  B, c
time = 20
buffer.Time=10

[Command]
name = "2362_c"
command = ~D, DF, F,  D, c
time = 20
buffer.Time=10

[Command]
name = "FF_ab"
command = F, F, a+b
time = 20
buffer.Time=10

[Command]
name = "FF_a"
command = F, F, a
time = 20
buffer.Time=10

[Command]
name = "FF_b"
command = F, F, b
time = 20
buffer.Time=10

[Command]
name = "a+b"
command = a+b


[Command]
name = "22_a"
command = ~D, D, a
time = 20
buffer.Time=10

[Command]
name = "22_b"
command = ~D, D, b
time = 20
buffer.Time=10

[Command]
name = "22_c"
command = ~D, D, c
time = 20
buffer.Time=10

[Command]
name = "2214_c"
command = ~D, D, DB, B, c
time = 20
buffer.Time=10

[Command]
name = "2236_c"
command = ~D, D, DF, F, c
time = 20
buffer.Time=10

[Command]
name = "BB_x"
command = B, B, x
time = 20
buffer.Time=10

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x
time = 1
[Command]
name = "recovery";Required (do not remove)
command = y
time = 1
[Command]
name = "recovery";Required (do not remove)
command = z
time = 1
[Command]
name = "recovery";Required (do not remove)
command = a
time = 1
[Command]
name = "recovery";Required (do not remove)
command = b
time = 1
[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,b
time = 1
;-| Single Button |---------------------------------------------------------
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
name = "~x"
command = ~x
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
name = "start"
command = s
time = 1

[Command]
name = "hold_x"
command = /x
time = 1
[Command]
name = "hold_y"
command = /y
time = 1
[Command]
name = "hold_z"
command = /z
time = 1
[Command]
name = "hold_a"
command = /a
time = 1
[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "fwd";Required (do not remove)
command = $F
time = 1

[Command]
name = "6a";Required (do not remove)
command = $F,a
time = 1
[Command]
name = "6b";Required (do not remove)
command = $F,b
time = 1
[Command]
name = "6c";Required (do not remove)
command = $F,c
time = 1

[Command]
name = "back";Required (do not remove)
command = $B
time = 1

[Command]
name = "down";Required (do not remove)
command = $D
time = 1

[Command]
name = "up";Required (do not remove)
command = $U
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "jump"    ;???????
command = $U
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]



;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1=movetype=H
trigger2 = stateno = [0,160]
var(1) = 0

;[State -1, Combo condition Check]
;type = VarSet
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact
;trigger3 = stateno = 1310 || stateno = 1330 ;From blocking
;var(1) = 1

[State -1, 41236_c]
type = Changestate
value = 3020
triggerall = command = "41236_c"
triggerall = movetype!=H
triggerall=power>=4000
triggerall = statetype!=A
trigger1=ctrl
trigger2=var(1)

[State -1, 41236_b]
type = ChangeState
value = ifelse(statetype = A,3000,3010)
triggerall = movetype!=H
triggerall = command = "41236_b"
triggerall=stateno!=3000
triggerall=power>=2000
trigger1=ctrl
trigger2=var(1)


[State -1, 2236_c]
type = Changestate
value = 2600
triggerall = power >= 2000
triggerall = !numhelper(2701) && !numhelper(2702) && !numhelper(2703) && !numhelper(2704) && !numhelper(2705) && !numhelper(2706) && !numhelper(2707)
triggerall = command = "2236_c" && (var(20)=-1 || var(20)=2) && statetype != A && stateno!=[5000,6000]
triggerall = movetype!=H
trigger1 = stateno = 2001
trigger2 = ctrl
trigger3 = var(1)

[State -1, 2214_c]
type = Changestate
value = 2700
triggerall = power >= 1000
triggerall = command = "2214_c" && (var(20)=-1 || var(20)=2) && statetype != A && stateno!=[5000,6000]
triggerall = movetype!=H
;triggerall=power>=2000
trigger1 = stateno = 2001
trigger2 = ctrl

[State -1, 2366_c]
type = Changestate
value = 1600
triggerall = command = "2366_c" && var(20)=-1 && statetype != A && stateno!=[5000,6000]
triggerall = movetype!=H
triggerall = stateno!=[1600,1640]
triggerall = power>=1000
trigger1 = ctrl
trigger2 = var(1)

[State -1, 2366_c]
type = Changestate
value = 1601
triggerall = command = "2366_c" && var(20)=1 && statetype != A && stateno!=[5000,6000]
triggerall = movetype!=H
triggerall = power>=1000
trigger1 = (stateno=1000) || (stateno=1001) || (stateno=1010) ||(stateno=1020) || (stateno=[1040,1041])
trigger2 = var(1)

[State -1, 2364_c]
type = Changestate
value = 1500
triggerall = command = "2364_c" && var(20)=-1 && statetype != A && stateno!=[5000,6000]
triggerall = movetype!=H
triggerall = stateno!=[1500,1520]
triggerall = power>=2000
trigger1 = ctrl
trigger2 = var(1)

[State -1, 2364_c]
type = Changestate
value = 1503
triggerall = command = "2364_c" && var(20)=1 && statetype != A && stateno!=[5000,6000]
triggerall = movetype!=H
triggerall = stateno!=[1500,1520]
triggerall = power>=2000
trigger1 = (stateno=1000) || (stateno=1001) || (stateno=1010) ||(stateno=1020) || (stateno=[1040,1041])
trigger2 = var(1)
;trigger1 = ctrl

[State -1, 2362_c]
type = Changestate
value = 1850
triggerall = command = "2362_c" && (var(20)=-1 || var(20) =1) && stateno!=[5000,6000]
triggerall = movetype!=H
triggerall = stateno!=[1850,1851]
triggerall = power>=2000
trigger1= stateno=[1000,1029]
trigger2= stateno=[1040,1041]
trigger3= stateno=[1200,1229]
trigger4= stateno=[1240,1241]
trigger5 = ctrl
trigger6 = var(1)

;---------------------------------------------------------------------------
[State -1, 214_c]
type = ChangeState
value = ifelse(statetype!=A,920,930) ;ifelse(pos Y >= 0,920,930)
triggerall = command="214_c" && (var(20)=-1 || var(20)=0) && power >= 1000 && stateno!=[5000,6000]
triggerall = movetype!=H
triggerall=stateno!=[920,939]
trigger1 = ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
[State -1, 22_c]
type = ChangeState
value = 2500
triggerall = !numhelper(2701) && !numhelper(2702) && !numhelper(2703) && !numhelper(2704) && !numhelper(2705) && !numhelper(2706) && !numhelper(2707)
triggerall = command="22_c" && (var(20)=-1 || var(20)=2) && statetype != A && power >= 1000 && stateno!=[5000,6000]
triggerall = movetype!=H
trigger1 = stateno = 2001
trigger2 = ctrl

;---------------------------------------------------------------------------
[State -1, 22_a]
type = ChangeState
value = 2400
triggerall = stateno != [2400,2405]
triggerall = command="22_a" && (var(20)=-1 || var(20)=2) && statetype != A && stateno!=[5000,6000]
triggerall = movetype!=H
trigger1 = stateno = 2001
trigger2 = ctrl

;---------------------------------------------------------------------------
[State -1, 22_b]
type = ChangeState
value = 2400
triggerall = stateno != [2400,2405]
triggerall = command="22_b" && (var(20)=-1 || var(20)=2) && statetype != A && stateno!=[5000,6000]
triggerall = movetype!=H
trigger1 = stateno = 2001
trigger2 = ctrl
;---------------------------------------------------------------------------
[State -1, 214_a]
type = ChangeState
value = 900
triggerall = command="214_a" && (var(20)=-1 || var(20)=0)
triggerall = movetype!=H
triggerall = stateno!=[5000,6000]
trigger1 =(StateNo=[200,699]) && var(1)
trigger2 = ctrl

;---------------------------------------------------------------------------
[State -1, 214_b]
type = ChangeState
value = ifelse(statetype!=A,910,911)
triggerall = command="214_b" && (var(20)=-1 || var(20)=0)
triggerall = movetype!=H
triggerall = stateno!=[5000,6000]
trigger1 =(StateNo=[200,699]) && var(1)
trigger2 = ctrl

;---------------------------------------------------------------------------
[State -1, 623_a]
type = ChangeState
value = ifelse(pos Y >= 0,1700,1710)
triggerall = command="623_a" && (var(20)=-1 || var(20)=1) && var(21)=1
triggerall = movetype!=H
triggerall = stateno!=[5000,6000]
trigger1 =(StateNo=[200,499]) && var(1)
trigger2 =(StateNo=[1100,1150]) && var(1)
trigger3= stateno=[1000,1029]
trigger4= stateno=[1040,1041]
trigger5= stateno=[1200,1229]
trigger6= stateno=[1240,1241]
trigger7 = ctrl

;---------------------------------------------------------------------------
[State -1, 623_b]
type = ChangeState
value = ifelse(pos Y >= 0,1705,1715)
triggerall = command="623_b" && (var(20)=-1 || var(20)=1) && var(21)=1
triggerall = movetype!=H
triggerall = stateno!=[5000,6000]
trigger1 =(StateNo=[200,499]) && var(1)
trigger2 =(StateNo=[1100,1150]) && var(1)
trigger3= stateno=[1000,1029]
trigger4= stateno=[1040,1041]
trigger5= stateno=[1200,1229]
trigger6= stateno=[1240,1241]
trigger7 = ctrl

;---------------------------------------------------------------------------
[State -1, 623_c]
type = ChangeState
value = ifelse(pos Y >= 0,1706,1716)
triggerall = command="623_c" && (var(20)=-1 || var(20)=1) && var(21)=1
triggerall = movetype!=H
triggerall = stateno!=[5000,6000]
trigger1 =(StateNo=[200,499]) && var(1)
trigger2 =(StateNo=[1100,1150]) && var(1)
trigger3= stateno=[1000,1029]
trigger4= stateno=[1040,1041]
trigger5= stateno=[1200,1229]
trigger6= stateno=[1240,1241]
trigger7 = ctrl

;---------------------------------------------------------------------------
[State -1, 236_a]
type = ChangeState
value = ifelse(pos Y >= 0,1400,1460)
triggerall = command="236_a" && (var(20)=-1 || var(20)=1)
triggerall = movetype!=H
triggerall = stateno!=[5000,6000]
trigger1 =(StateNo=[200,499]) && var(1)
trigger2 =(StateNo=[1100,1150]) && var(1)
trigger3= stateno=[1000,1029]
trigger4= stateno=[1040,1041]
trigger5= stateno=[1200,1229]
trigger6= stateno=[1240,1241]
trigger7 = ctrl
;triggerall = (stateno=[1400,1402]) && var(1)

;---------------------------------------------------------------------------
[State -1, 236_b]
type = ChangeState
value = ifelse(pos Y >= 0,1410,1470)
triggerall = command="236_b" && (var(20)=-1 || var(20)=1)
triggerall = movetype!=H
triggerall = stateno!=[5000,6000]
trigger1 =(StateNo=[200,499]) && var(1)
trigger2 =(StateNo=[1100,1150]) && var(1)
trigger3= stateno=[1000,1029]
trigger4= stateno=[1040,1041]
trigger5= stateno=[1200,1229]
trigger6= stateno=[1240,1241]
trigger7 = ctrl
;triggerall = (stateno=[1400,1402]) && var(1)

;---------------------------------------------------------------------------
[State -1, 236_c]
type = ChangeState
value = ifelse(pos Y >= 0,1420,1480)
triggerall = movetype!=H
triggerall = command="236_c" && (var(20)=-1 || var(20)=1)
triggerall = stateno!=[5000,6000]
trigger1 =(StateNo=[200,499]) && var(1)
trigger2 =(StateNo=[1100,1150]) && var(1)
trigger3= stateno=[1000,1029]
trigger4= stateno=[1040,1041]
trigger5= stateno=[1200,1229]
trigger6= stateno=[1240,1241]
trigger7 = ctrl
;triggerall = (stateno=[1400,1402]) && var(1)




[State -1, godbreaker]
type = ChangeState
value = 6000
triggerall=!ishelper
triggerall = stateno!=805 && stateno!=810 && stateno!=812 && stateno!=814
triggerall = stateno!=6000
triggerall = command = "x" && command = "holddown" && cond(var(21)=0,power>=500,1)
triggerall = movetype!=H
trigger1=ctrl
trigger2=var(1)
trigger3= stateno=[1000,1029]
trigger4= stateno=[1040,1041]
trigger5= stateno=[1200,1229]
trigger6= stateno=[1240,1241]
trigger7= stateno=[2000,2010]
trigger8= stateno=[2200,2201]
trigger9= stateno=4000
trigger10= stateno=[4200,4201]


[State -1, st > st -1]
type = ChangeState
value = ifelse(statetype!=A,4000,4200)
triggerall = stateno!=6000
triggerall = stateno!=805 && stateno!=810 && stateno!=812 && stateno!=814
triggerall = stateno!=[920,930]
triggerall = stateno!=1503 && stateno!=1513
triggerall = stateno!=1601 && stateno!=1612 && stateno!=1613
triggerall = stateno!=[1850,1851]
triggerall = !((stateno=[2500,2510]) && var(1)=0)
triggerall = stateno!=2600
triggerall = stateno!=2700
triggerall = stateno!=3000 && stateno!=3010 && stateno!=3011 && stateno!=3013
triggerall = stateno!=3020 && stateno!=3021
triggerall = movetype!=H
triggerall=!ishelper
trigger1 = command = "y" && command = "holddown" && var(20)!=-1 && power>0

[State -1, st-1 > st 0]
type = ChangeState
value = ifelse(statetype!=A,4030,4230)
triggerall = stateno!=6000
triggerall = stateno!=805 && stateno!=810 && stateno!=812 && stateno!=814
triggerall = stateno!=[920,930]
triggerall = stateno!=1500 && stateno!=1510
triggerall = stateno!=1600 && stateno!=1610 && stateno!=1611
triggerall = stateno!=[1850,1851]
triggerall =!((stateno=[2500,2510]) && var(1)=0)
triggerall = stateno!=2600
triggerall = stateno!=2700
triggerall = stateno!=3020 && stateno!=3021
triggerall = stateno!=3000 && stateno!=3010 && stateno!=3011 && stateno!=3013
triggerall = movetype!=H
triggerall=!ishelper
triggerall = command = "y" && command != "holdfwd" && command != "holddown"  && command != "holdback"
trigger1 = var(20)=-1

[State -1, st1 > st 0]
type = ChangeState
value = ifelse(statetype!=A,1030,1230)
triggerall = stateno!=6000
triggerall = stateno!=805 && stateno!=810 && stateno!=812 && stateno!=814
triggerall = stateno!=[920,930]
triggerall = stateno!=1503 && stateno!=1513
triggerall = stateno!=1601 && stateno!=1612 && stateno!=1613
triggerall = stateno!=[1850,1851]
triggerall =!((stateno=[2500,2510]) && var(1)=0)
triggerall = stateno!=3020 && stateno!=3021
triggerall = stateno!=3000 && stateno!=3010 && stateno!=3011 && stateno!=3013
triggerall = movetype!=H
triggerall=!ishelper
triggerall = command = "y" && command != "holdfwd" && command != "holddown"  && command != "holdback"
trigger1 = var(20)=1

[State -1, st -1 0 2 > st 1]
type = ChangeState
value = ifelse(statetype!=A,1000,1200)
triggerall = stateno!=6000
triggerall = stateno!=805 && stateno!=810 && stateno!=812 && stateno!=814
triggerall = stateno!=[920,930]
triggerall = stateno!=1500 && stateno!=1510
triggerall = stateno!=1600 && stateno!=1610 && stateno!=1611
triggerall = stateno!=[1850,1851]
triggerall =!((stateno=[2500,2510]) && var(1)=0)
triggerall = stateno!=2600
triggerall = stateno!=2700
triggerall = stateno!=3020 && stateno!=3021
triggerall = stateno!=3000 && stateno!=3010 && stateno!=3011 && stateno!=3013
triggerall = movetype!=H
triggerall=!ishelper
triggerall = command = "y" && command = "holdfwd"  && command != "holdback" && command != "holddown"
trigger1 = var(20)!=1

[State -1, st2 > st 0]
type = ChangeState
value = ifelse(statetype!=A,2030,2230)
triggerall = stateno!=6000
triggerall = stateno!=805 && stateno!=810 && stateno!=812 && stateno!=814
triggerall = stateno!=[920,930]
triggerall =!((stateno=[2500,2510]) && var(1)=0)
triggerall = stateno!=2600
triggerall = stateno!=2700
triggerall = stateno!=3020 && stateno!=3021
triggerall = stateno!=3000 && stateno!=3010 && stateno!=3011 && stateno!=3013
triggerall = movetype!=H
triggerall=!ishelper
triggerall = command = "y" && command != "holdfwd"  && command != "holdback" && command != "holddown"
trigger1 = var(20)=2

[State -1, st -1 0 1 > st 2]
type = ChangeState
value = ifelse(statetype!=A,2000,2200)
triggerall = stateno!=6000
triggerall = stateno!=805 && stateno!=810 && stateno!=812 && stateno!=814
triggerall = stateno!=[920,930]
triggerall = stateno!=1500 && stateno!=1510
triggerall = stateno!=1600 && stateno!=1610 && stateno!=1611
triggerall = stateno!=1503 && stateno!=1513
triggerall = stateno!=1601 && stateno!=1612 && stateno!=1613
triggerall = stateno!=[1850,1851]
triggerall =!((stateno=[2500,2510]) && var(1)=0)
triggerall = stateno!=2600
triggerall = stateno!=2700
triggerall = stateno!=3020 && stateno!=3021
triggerall = stateno!=3000 && stateno!=3010 && stateno!=3011 && stateno!=3013
triggerall = movetype!=H
triggerall=!ishelper
triggerall = command = "y" && command != "holdfwd"  && command = "holdback" && command != "holddown"
trigger1 = var(20)!=2
;===========================================================================
;---------------------------------------------------------------------------
[State -1, wall cling]
type = ChangeState
value = 950
triggerall = command = "holdback" && command = "x"
triggerall = var(20)=-1
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Run Fwd st 1]
type = ChangeState
value = ifelse(statetype!=A,1040,1240)
triggerall = power>=250
triggerall = command = "FF" && (var(20)=1 || (var(20)=-1 && command = "hold_z"))
triggerall = movetype!=H
triggerall=!ishelper
trigger1 = stateno!=6000
trigger1 = stateno!=805 && stateno!=810 && stateno!=812 && stateno!=814
trigger1 = stateno!=[920,930]
trigger1 = stateno!=[1500,1520]
trigger1 = stateno!=[1600,1650]
trigger1 = stateno!=[1850,1851]
trigger1 =!((stateno=[2500,2510]) && var(1)=0)
trigger1 = stateno!=2600
trigger1 = stateno!=2700
trigger1 = stateno!=3020 && stateno!=3021
trigger1 = stateno!=3000 && stateno!=3010 && stateno!=3011 && stateno!=3013
trigger2 = ctrl

[State -1, Run Fwd st 0]
type = ChangeState
value = 100
triggerall=var(20)=[-1,0]
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Run Back st 1]
type = ChangeState
value = ifelse(statetype!=A,1041,1241)
triggerall = power>=250
triggerall = command = "BB" && (var(20)=1 || (var(20)=-1 && command = "hold_z"))
triggerall = movetype!=H
triggerall=!ishelper
trigger1 = stateno!=6000
trigger1 = stateno!=805 && stateno!=810 && stateno!=812 && stateno!=814
trigger1 = stateno!=[920,930]
trigger1 = stateno!=[1500,1520]
trigger1 = stateno!=[1600,1650]
trigger1 = stateno!=[1850,1851]
trigger1 =!((stateno=[2500,2510]) && var(1)=0)
trigger1 = stateno!=2600
trigger1 = stateno!=2700
trigger1 = stateno!=3020 && stateno!=3021
trigger1 = stateno!=3000 && stateno!=3010 && stateno!=3011 && stateno!=3013
trigger2 = ctrl

[State -1, Run Back st 0]
type = ChangeState
value = 105
triggerall=var(20)=[-1,0]
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, Airdash];
	Type=ChangeState
	value=110
	TriggerAll = Alive
	TriggerAll = command="FF"
	TriggerAll = StateType=A
	TriggerAll = pos Y<=-30+(vel y>0)*20
	TriggerAll = var(17) < 2+2*(var(21)=1)
	triggerall= (var(20)=0) ||  (var(20)= -1)
	TriggerAll = anim!=110
	Trigger1 = Ctrl
	trigger2 = var(1)
	trigger3 = stateno = [1120,1122]

[State -1, Backairdash];
	Type=ChangeState
	value=115
	TriggerAll = Alive
	TriggerAll = command="BB"
	TriggerAll = StateType=A
	TriggerAll = pos Y<=-30+(vel y>0)*20
	triggerall= (var(20)=0) ||  (var(20)= -1)
	TriggerAll = var(17) < 2+2*(var(21)=1)
	TriggerAll = anim!=115
	Trigger1 = Ctrl
	trigger2 = var(1)
	trigger3 = stateno = [1120,1122]

[State -1, JumpC]
	Type=ChangeState
	value=40
	TriggerAll = StateType != A
	TriggerAll = command = "holdup"
	triggerall = var(21)=1
	triggerall = var(1)
	trigger1 = stateno = [200,220]
	trigger2 = stateno = [400,420]
	trigger3 = (stateno = [1100,1110]) && var(20)=-1
	;trigger2 = stateno = 52
	;Trigger2 = (!var(1) && time >= 3) ||(var(1) && time >= 9)


[state -1, air jump]
type = ChangeState
value = 45
triggerall = statetype = A
triggerall = command = "holdup"
triggerall = var(23) = 0 || var(23)=2 || (var(23)=4 && var(21)=1) ;var(23) has to be pair to be considered "not holding up"
trigger1 = ctrl
trigger2=var(1)
trigger2=(Stateno = [600,699]) && var(21)=1
trigger3=var(1)
trigger3=(Stateno = [1300,1330]) && var(21)=1
trigger3 = var(20)=-1
trigger4 = stateno = 1120 && var(20)=-1
trigger5 = var(1)
trigger5 = (stateno = [1120,1122]) && var(21)=1
trigger5 = var(20)=-1

[state -1, Battou JC]
type = ChangeState
value = 1201
triggerall = command = "holdup"
triggerall = var(23) = 0 || var(23)=2 || (var(23)=4 && var(21)=1) ;var(23) has to be pair to be considered "not holding up"
triggerall = var(1)
triggerall = var(20)!=-1
trigger1 = (Stateno = [1300,1330]) && var(21)=1
trigger2 = (stateno = [1100,1122]) && var(21)=1


[State -1, Throw]
Type = ChangeState
value = 800
	TriggerAll=Alive!=0
	TriggerAll=StateType!=A
	TriggerAll=var(20)=[-1,0]
	TriggerAll=command="x"
	TriggerAll=command="holdfwd"
	Trigger1=ctrl
	trigger2=var(1)

;Spot Dodge
[State -1, Spot Dodge]
type = ChangeState
value = ifelse(statetype=A,751,750)
triggerall = command = "x" && var(24) < 1+(var(21)=1)
trigger1 = stateno = [0,52]
trigger2 = stateno = [1000,1030]
trigger3 = stateno = [1200,1230]
trigger4 = stateno = [2000,2030]
trigger5 = stateno = [2200,2230]

;===========================================================================
[State -1, 5a+c (charge)]
	Type=ChangeState
	value=850
	TriggerAll = StateType != A
	TriggerAll = command = "hold_a"
	TriggerAll = command = "hold_c"
	TriggerAll = Power < PowerMax
	;triggerall = var(20)=0
	trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, 5a st0]
type = ChangeState
value = 200
triggerall = command = "a" && (var(20)=0 || (var(20)=-1 && command != "holdfwd" && command != "hold_z"))
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && (var(1) || animelemtime(4)>=0)
trigger3 = stateno = 400 && var(1)
;---------------------------------------------------------------------------
[State -1, 5a st1]
type = ChangeState
value = 1100
triggerall = command = "a" && (var(20)=1 || (var(20)=-1 && command = "holdfwd" && command != "hold_z"))
triggerall = stateno!=[5000,6000]
triggerall = statetype != A
trigger1 = (stateno=1000) || (stateno=1001) || (stateno=1010) ||(stateno=1020) || (stateno=[1040,1041])
trigger2 = anim=1060 && animelemtime(5)>=0
trigger3 = ctrl
Trigger4 = (StateNo = [200,220]) && var(1)
Trigger5 = (StateNo = [400,420]) && var(1)
;---------------------------------------------------------------------------
[State -1, 5a st2]
type = ChangeState
value = 2100
triggerall = command = "a" && (var(20)=2 || (var(20)=-1 && command = "hold_z"))
triggerall = stateno!=[5000,6000]
triggerall = stateno != [2400,2700]
trigger1 = stateno=2000 || stateno=2001
trigger2 = stateno = 2200 || stateno = 2201
trigger3 = stateno = [1120,1122]
trigger4 = ctrl
;---------------------------------------------------------------------------
[State -1, 5b st0]
type = ChangeState
value = 210
triggerall = command = "b" && (var(20)=0 || (var(20)=-1 && command != "holdfwd" && command != "hold_z"))
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
Trigger2 = StateNo = 200 && (var(1) || animelemtime(4)>=0)
trigger3 = (StateNo = [400,410])&& var(1)
;---------------------------------------------------------------------------
[State -1, 5b st1]
type = ChangeState
value = 1110
triggerall = command = "b" && (var(20)=1 || (var(20)=-1 && command = "holdfwd" && command != "hold_z")) && stateno!=[5000,6000]
triggerall = statetype != A
trigger1 = (stateno=1000) || (stateno=1001) || (stateno=1010) ||(stateno= 1020) || (stateno=[1040,1041])
Trigger2 = StateNo = 1100 && var(1) 
trigger3 = ctrl
Trigger4 = (StateNo = [200,220]) && var(1)
Trigger5 = (StateNo = [400,420]) && var(1)
;---------------------------------------------------------------------------
[State -1, 5b st2]
type = ChangeState
value = 2100
triggerall = command = "b" && (var(20)=2 || (var(20)=-1 && command = "hold_z"))
triggerall = stateno!=[5000,6000]
triggerall = stateno != [2400,2700]
trigger1 = stateno=2000 || stateno=2001
trigger2 = stateno = 2200 || stateno = 2201
trigger3 = stateno = [1120,1122]
trigger4 = ctrl
;---------------------------------------------------------------------------
[State -1, 5c st0]
type = ChangeState
value = 220
triggerall = command = "c" && (var(20)=0 || (var(20)=-1 && command != "holdfwd" && command != "hold_z"))
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
Trigger2 = (StateNo = [200,210]) && var(1)
Trigger3 = (StateNo = [400,420]) && var(1)
;---------------------------------------------------------------------------
[State -1, 5c st1]
type = ChangeState
value = 1120
triggerall = command = "c" && (var(20)=1 || (var(20)=-1 && command = "holdfwd" && command != "hold_z")) && stateno!=[5000,6000]
triggerall = statetype != A
trigger1 = (stateno=1000) || (stateno=1001) || (stateno=1010) || (stateno= 1020) || (stateno=[1040,1041])
Trigger2 = (StateNo = [1100,1110]) && (var(1))
trigger3 = ctrl
Trigger4 = (StateNo = [200,220]) && var(1)
Trigger5 = (StateNo = [400,420]) && var(1)
;---------------------------------------------------------------------------
[State -1, 5c st2]
type = ChangeState
value = 2100
triggerall = command = "c" && (var(20)=2 || (var(20)=-1 && command = "hold_z"))
triggerall = stateno!=[5000,6000]
triggerall = stateno != [2400,2700]
trigger1 = stateno=2000 || stateno=2001
trigger2 = stateno = 2200 || stateno = 2201
trigger3 = stateno = [1120,1122]
trigger4 = ctrl



;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = null;ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno=700 || stateno=195

;---------------------------------------------------------------------------
[State -1, 2a]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = stateno = 400 && var(1)

;---------------------------------------------------------------------------
[State -1, 2b]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = stateno = 400 && var(1)
;---------------------------------------------------------------------------
[State -1, 2c]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype !=A
trigger1 = ctrl
Trigger2 = StateNo = 400 && var(1)
Trigger3 = StateNo = 410 && var(1)
;---------------------------------------------------------------------------
[State -1, j.a st0]
type = ChangeState
value = 600
triggerall = command = "a"  && (var(20)=0 || (var(20)=-1 && command != "holdfwd" && command != "hold_z"))
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && var(1)
trigger3 = stateno = [1120,1122]
;---------------------------------------------------------------------------
[State -1, j.a st1]
type = ChangeState
value = 1300
triggerall = command = "a" && (var(20)=1 || (var(20)=-1 && command = "holdfwd" && command != "hold_z"))
triggerall = statetype = A
triggerall = stateno!=[5000,5999]
trigger1 = stateno = 1200 || stateno = 1201 || stateno = [1120,1122]
trigger2 = ctrl
trigger3 = (stateno = [600, 620]) && var(1)
;---------------------------------------------------------------------------
[State -1, j.b st0]
type = ChangeState
value = 610
triggerall = command = "b" && (var(20)=0 || (var(20)=-1 && command != "holdfwd" && command != "hold_z"))
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && var(1)
trigger3 = stateno = [1120,1122]
;---------------------------------------------------------------------------
[State -1, j.b st1]
type = ChangeState
value = 1310
triggerall = command = "b" && (var(20)=1 || (var(20)=-1 && command = "holdfwd" && command != "hold_z"))
triggerall = statetype = A
triggerall = stateno!=[5000,5999]
trigger1 = stateno = 1200 || stateno = 1201 || stateno = [1120,1122]
Trigger2 = StateNo = 1300 && var(1)
trigger3 = ctrl
trigger4 = (stateno = [600, 620]) && var(1)
;---------------------------------------------------------------------------
[State -1, j.c st0]
type = ChangeState
value = 620
triggerall = command = "c" && (var(20)=0 || (var(20)=-1 && command != "holddown" && command != "holdfwd" && command != "hold_z"))
;triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600, 610]) && var(1)
trigger3 = stateno = [1120,1122]
;---------------------------------------------------------------------------
[State -1, j.5c st1]
type = ChangeState
value = 1320
triggerall = command = "c" && (var(20)=1 || (var(20)=-1 && command = "holdfwd" && command != "hold_z"))
triggerall = command != "holddown"
triggerall = statetype = A
triggerall = stateno!=[5000,5999]
trigger1 = stateno = 1200 || stateno = 1201 || stateno = [1120,1122]
Trigger2 = (StateNo = [1300,1310]) && var(1)
trigger3 = ctrl
trigger4 = (stateno = [600, 620]) && var(1)
;---------------------------------------------------------------------------
[State -1, j.2c st1]
type = ChangeState
value = 1325
triggerall = command = "c" && (var(20)=1 || (var(20)=-1 && command != "hold_z"))
triggerall = command = "holddown"
triggerall = statetype = A
triggerall = stateno!=[5000,5999]
trigger1 = stateno = 1200 || stateno = 1201 || stateno = [1120,1122]
Trigger2 = (StateNo = [1300,1320]) && var(1)
trigger3 = ctrl
trigger4 = (stateno = [600, 620]) && var(1)
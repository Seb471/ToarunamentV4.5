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
[Command]
name = "QCF_s"
command = ~D, DF, F, s
time = 20
buffer.time=10

[Command]
name = "HCF_c"
command = ~B, DB, D, DF, F, c
time = 32
buffer.time=16



[Command]
name = "HCB_c"
command = ~F, DF, D, DB, B, c
time = 32
buffer.time=16

[Command]
name = "RDP_c"
command = ~B, D, DB, c
time = 20
buffer.time=10




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
name = "HCF_z"
command = ~B,DB, D, DF,F, z
time = 32
buffer.time=16



[Command]
name = "DP_a+b+c"
command = ~F, D, DF, a+b+c
time = 20
buffer.time=10

[Command]
name = "DP_a+b"
command = ~F, D, DF, a+b
time = 20
buffer.time=10

[Command]
name = "DP_a+c"
command = ~F, D, DF, a+c
time = 20
buffer.time=10

[Command]
name = "DP_b+c"
command = ~F, D, DF, b+c
time = 20
buffer.time=10

[Command]
name = "DP_a"
command = ~F, D, DF, a
time = 20
buffer.time=10

[Command]
name = "DP_b"
command = ~F, D, DF, b
time = 20
buffer.time=10

[Command]
name = "DP_c"
command = ~F, D, DF, c
time = 20
buffer.time=10


[Command]
name = "QCF_z"
command = ~D, DF, F, z
time = 20
buffer.time=10

[Command]
name = "QCF_a+b+c"
command = ~D, DF, F, a+b+c
time = 20
buffer.time=10

[Command]
name = "QCF_a+b"
command = ~D, DF, F, a+b
time = 20
buffer.time=10

[Command]
name = "QCF_a+c"
command = ~D, DF, F, a+c
time = 20
buffer.time=10

[Command]
name = "QCF_b+c"
command = ~D, DF, F, b+c
time = 20
buffer.time=10

[Command]
name = "QCB_a"
command = ~D, DB, B, a
time = 20
buffer.time=10

[Command]
name = "QCB_b"
command = ~D, DB, B, b
time = 20
buffer.time=10


[Command]
name = "QCB_c"
command = ~D, DB, B, c
time = 20
buffer.time=10



[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 20
buffer.time=10

[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 20
buffer.time=10

[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 20
buffer.time=10

[Command]
name = "DD_a+b+c"
command = D, D, a+b+c
time = 20
buffer.time=10

[Command]
name = "DD_a+b"
command = D, D, a+b
time = 20
buffer.time=10

[Command]
name = "DD_a+c"
command = D, D, a+c
time = 20
buffer.time=10

[Command]
name = "DD_b+c"
command = D, D, b+c
time = 20
buffer.time=10


[Command]
name = "DD_a"
command = D, D, a
time = 20
buffer.time=10

[Command]
name = "DD_b"
command = D, D, b
time = 20
buffer.time=10

[Command]
name = "DD_c"
command = D, D, c
time = 20
buffer.time=10

[Command]
name = "DD_z"
command = D, D, z
time = 20
buffer.time=10

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10
buffer.time=5

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10
buffer.time=5

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x
time = 1


[Command]
	name="recovery"
	command=y
	Time=1

[Command]
	name="recovery"
	command=z
	Time=1

[Command]
	name="recovery"
	command=a
	Time=1

[Command]
	name="recovery"
	command=b
	Time=1

[Command]
	name="recovery"
	command=c
	Time=1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
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

;-------------------------------------------------------------------------
[Command]
name = "hold_a"
command = /a
time = 1


[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1
[Command]
name = "hold_y"
command = /y
time = 1
[Command]
name = "hold_z"
command = /z
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



;---------------------------------------------------------------------------
;Lvl3
[State -1, 41236c]
type = ChangeState
value = 3000
triggerall = command = "HCF_c"
triggerall = power >= 3000
triggerall = statetype !=A
triggerall = stateno != [3000,3050)
trigger1 = ctrl
trigger2 = var(1)
;trigger3 = stateno = 1310 || stateno = 1330 ;From blocking


;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = stateno = [5000,5210]
trigger2 = stateno = [0,160]
var(1) = 0

;[State -1, Combo condition Check]
;type = VarSet
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = movecontact

;var(1) = 1



[State -1, 236s]
type=ChangeState
value=196
trigger1 = command= "QCF_s"
trigger1 = statetype != A
trigger1 = ctrl

;Lvl2 DP
[State -1, 623a+b+c]
type=ChangeState
value=1050
triggerall = P2dist Y <= 0 && power >= 2000
triggerall= command = "RDP_c"
triggerall=stateno!=1080
triggerall=stateno!=1050
triggerall = stateno != [3000,3050)
trigger1 = ctrl
trigger2 = var(1)

;B DP
[State -1, 623a+b]
type=ChangeState
value=1041
;triggerall = power >= 1000
triggerall = command = "DP_b"
trigger1=ctrl
trigger2 = var(1) && stateno = [200,799]

;EX C DP
[State -1, 623a+c]
type=ChangeState
value=1042
triggerall = power >= 1000
triggerall = command = "DP_c"
triggerall=stateno!=1080
triggerall=stateno!=1050
triggerall = stateno != [3000,3050)
;triggerall=stateno!=1042
trigger1 = ctrl
trigger2 = var(1); && stateno = [200,799]

;[State -1, 623b+c]
;type=ChangeState
;value=1042
;triggerall = power >= 1000
;trigger1 = command = "DP_b+c"
;trigger2 = command = "DP_b+c" && stateno = [200,799]
;trigger1 = ctrl
;A DP
[State -1, 623a]
type=ChangeState
value=1030
triggerall = command = "DP_a"
trigger1 = ctrl
trigger2 = var(1) && stateno = [200,799]

;[State -1, 623b]
;type=ChangeState
;value=1031
;trigger1 = command = "DP_b"
;trigger2 = command = "DP_b" && stateno = [200,799]
;trigger1 = ctrl
;[State -1, 623c]
;type=ChangeState
;value=1032
;trigger1 = command = "DP_c"
;trigger2 = command = "DP_c" && stateno = [200,799]
;trigger1 = ctrl

;Beams Hyper
[State -1, 236a+b+c]
type=ChangeState
value=1080
triggerall = power>=2000
triggerall = command = "HCB_c"
triggerall= statetype != A
triggerall = stateno != [3000,3050)
triggerall=stateno!=1050
triggerall=stateno!=1080
trigger1 = ctrl
trigger2 =var(1) 

;Beam Top and diagonal
[State -1, 236a+b]
type=ChangeState
value=1070
triggerall = power>=1000
triggerall = command = "QCB_c" && statetype != A
triggerall=stateno!=1080
triggerall=stateno!=1050
triggerall = stateno != [3000,3050)
trigger1 = ctrl
trigger2 = var(1) 

;Beam EX top and front
[State -1, 236a+c]
type=ChangeState
value=1071
;triggerall = power>=1000
triggerall = command = "QCB_b" && statetype != A
trigger1 = ctrl
trigger2 = var(1) && stateno = [200,599]
;Beam EX front and diagonal
[State -1, 236b+c]
type=ChangeState
value=1072
triggerall = power>=1000
triggerall = command = "QCF_c" && statetype != A
triggerall=stateno!=1080
triggerall=stateno!=1050
triggerall = stateno != [3000,3050)
trigger1 = ctrl
trigger2 = var(1)

;Beam top
[State -1, 236a]
type=ChangeState
value=1060
triggerall = command = "QCB_a" && statetype != A
trigger1 = ctrl
trigger2 = var(1) && stateno = [200,599]

;Beam Diagonal
[State -1, 236b]
type=ChangeState
value=1061
triggerall = command = "QCF_b" && statetype != A
trigger1 = ctrl
trigger2 = var(1) && stateno = [200,599]
;Beam Front
[State -1, 236c]
type=ChangeState
value=1059
triggerall = command = "QCF_a" && statetype != A
trigger1 = ctrl
trigger2 = var(1) && stateno = [200,599]

;EX Stun
[State -1, 22a+b+c]
type=ChangeState
value=1020
triggerall = command = "DD_c" 
triggerall= power>=1000
triggerall=stateno!=1080
triggerall=stateno!=1050
triggerall = statetype != A
trigger1 = ctrl
trigger2=var(1)
;Stun B
[State -1, 22a+b]
type=ChangeState
value=1010
triggerall = command = "DD_b" 
triggerall = statetype != A
trigger1 = ctrl
;[State -1, 22a+c]
;type=ChangeState
;value=1011
;trigger1 = command = "DD_a+c" && power>=1000
;trigger1 = statetype != A
;trigger1 = ctrl

;[State -1, 22b+c]
;type=ChangeState
;value=1012
;trigger1 = command = "DD_b+c" && power>=1000
;trigger1 = statetype != A
;trigger1 = ctrl

[State -1, 22a]
type=ChangeState
value=1000
triggerall = command = "DD_a" 
triggerall = statetype != A
trigger1 = ctrl
;[State -1, 22b]
;type=ChangeState
;value=1001
;trigger1 = command = "DD_b"
;trigger1 = statetype != A
;trigger1 = ctrl
;[State -1, 22c]
;type=ChangeState
;value=1002
;trigger1 = command = "DD_c"
;trigger1 = statetype != A
;trigger1 = ctrl

[State -1, 22z]
type=ChangeState
value=1530
trigger1 = command = "DD_z"
trigger1 = statetype != A
triggerall = numhelper(1531) = 0 && numhelper(1521) = 0 && numhelper(1510) = 0 && numhelper(1541) = 0
trigger1 = ctrl
[State -1, 623z]
type=ChangeState
value=1540
trigger1 = command = "HCF_z"
trigger1 = statetype != A
triggerall = numhelper(1531) = 0 && numhelper(1521) = 0 && numhelper(1510) = 0 && numhelper(1541) = 0
trigger1 = ctrl
[State -1, 236z]
type=ChangeState
value=1500
trigger1 = command = "QCF_z"
trigger1 = statetype != A
triggerall=power>=1000
triggerall = numhelper(1531) = 0 && numhelper(1521) = 0 && numhelper(1510) = 0 && numhelper(1541) = 0
trigger1 = ctrl

[State -1, 5z]
type=ChangeState
value=1520
trigger1 = command = "z"
trigger1 = statetype != A
triggerall = numhelper(1531) = 0 && numhelper(1521) = 0 && numhelper(1510) = 0 && numhelper(1541) = 0
trigger1 = ctrl


[State -1, 5y]
	Type=ChangeState
	value=6500;6499
	TriggerAll=Alive
	TriggerAll = command != "holddown"
	TriggerAll = StateType != A
	TriggerAll = Power < PowerMAX
	TriggerAll=command="hold_y" ||( command="hold_a" && command="hold_c")
	Trigger1=Ctrl
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype !=A
trigger1 = ctrl

[State -1,AirDash];空中ダッシュ
	Type=ChangeState
	value=110
	TriggerAll = command = "FF"
	TriggerAll = StateType = A
	triggerall = ishelper = 0
	TriggerAll = pos Y <= -4 + (vel y > 0) * 5
	TriggerAll = anim != 110
	TriggerAll = var(17) < 2
	Trigger1 = Ctrl
	Trigger2 = var(1)

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype !=A
trigger1 = ctrl


[State -1, Backairdash];
	Type=ChangeState
	value=115
	TriggerAll = Alive
	TriggerAll = command="BB"
	TriggerAll = StateType=A
	triggerall = ishelper = 0
	TriggerAll = pos Y <= -4 + (vel y > 0) * 5
	TriggerAll = var(17) < 2
	TriggerAll = anim!=115
	triggerall=stateno!=105
	Trigger1 = Ctrl
	trigger2 = var(1)


[State -1,JumpC];ジャンプキャンセル
	Type=ChangeState
	value=40
	TriggerAll = StateType != A
	TriggerAll = command = "holdup"
	Trigger1 = stateno=[430,432]
	Trigger1 = var(1)
	trigger2 = stateno = 52
	Trigger2 = (!var(1) && time >= 3) ||(var(1) && time >= 9)




;---------------------------------------------------------------------------
[State -1, 2a]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = (stateno = 410) && var(1)

;---------------------------------------------------------------------------
;Crouching Strong Punch
;[State -1, Crouching Strong Punch]
;type = ChangeState
;value = 410
;triggerall = command = "y"
;triggerall = command = "holddown"
;trigger1 = statetype = C
;trigger1 = ctrl
;trigger2 = (stateno = 400) || (stateno = 430)
;trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
[State -1, 2b]
type = ChangeState
value = 420
triggerall = command = "b"
triggerall = command = "holddown" && command != "holdfwd"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = (stateno = 410 || stateno = 421) && var(1)
anim = ifelse(stateno = 410 || stateno = 421,7,1)

;---------------------------------------------------------------------------
[State -1, 3b]
type = ChangeState
value = 421
triggerall = command = "b"
triggerall = command = "holddown" && command = "holdfwd"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = (stateno = 410 || stateno = 420) && var(1)
anim = ifelse(stateno = 410 || stateno = 420,7,1)

;---------------------------------------------------------------------------
[State -1, 1c]
type = ChangeState
value = 430
triggerall = command = "c"
triggerall = command = "holddown" && command != "holdfwd" && command = "holdback"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [410,421]) && var(1)

;---------------------------------------------------------------------------
[State -1, 2c]
type = ChangeState
value = 431
triggerall = command = "c"
triggerall = command = "holddown" && command != "holdfwd" && command != "holdback"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [410,421]) && var(1)

;---------------------------------------------------------------------------
[State -1, 3c]
type = ChangeState
value = 432
triggerall = command = "c"
triggerall = command = "holddown" && command = "holdfwd" && command != "holdback"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [410,421]) && var(1)

;---------------------------------------------------------------------------
[State -1, 5a]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [400,499]) && var(1)
trigger3 = (stateno = 210) && var(1)

[State -1, 6b]
type = ChangeState
value = 225
triggerall = command = "b"
triggerall = command != "holddown" && command= "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210 || stateno = 220 || stateno = 221 || stateno = 222 || stateno = 223 || stateno = 410 || stateno = 420 || stateno = 421 || stateno = 430 || stateno = 431 || stateno = 432) && var(1)

;---------------------------------------------------------------------------
[State -1, 5b]
type = ChangeState
value = 220
triggerall = command = "b"
triggerall = command != "holddown" && command!= "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210 || stateno = 410 || stateno = 420 || stateno = 421 || stateno = 430 || stateno = 431 || stateno = 432) && var(1)
anim=ifelse((stateno=210 || stateno = [400,499]),2,1)

[State -1, 6c]
type = ChangeState
value = 232
triggerall = command = "c"
triggerall = command != "holddown" && command = "holdfwd"
triggerall = statetype!= A
trigger1 = ctrl
trigger2 = (stateno = 210 || stateno = 220 || stateno = 221 || stateno = 222 || stateno = 223 || stateno = 225 || stateno = 230 || stateno = 410 || stateno = 420 || stateno = 421 || stateno = 430 || stateno = 431 || stateno = 432) && var(1)
anim=ifelse((stateno = [210,499]),5,1)

;---------------------------------------------------------------------------
[State -1, 5c]
type = ChangeState
value = 230
triggerall = command = "c"
triggerall = command != "holddown" && command != "holdfwd"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = (stateno = 210 || stateno = 220 || stateno = 221 || stateno = 222 || stateno = 223 || stateno = 225 || stateno = 410 || stateno = 420 || stateno = 421 || stateno = 430 || stateno = 431 || stateno = 432) && var(1)
anim=ifelse((stateno = [210,499]),5,1)



[State -1, 6x]
Type = ChangeState
value = 800
	TriggerAll=Alive!=0
	TriggerAll=StateType!=A
	TriggerAll=Ctrl
	TriggerAll=command="x"
	TriggerAll=command="holdfwd"
	TriggerAll=StateNo!=100
	Trigger1=Ctrl
	Trigger1=enemynear,StateType=S||enemynear,StateType=C
	Trigger1=enemynear,MoveType!=H


[State -1, 5x]
type = ChangeState
value = 300
trigger1 = command = "x"
TriggerAll=command!="holdfwd"
trigger1 = statetype != A
trigger1 = ctrl 


;---------------------------------------------------------------------------
[State -1, j.a]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 631 && var(1)
;trigger3 = stateno = 1030 && var(1) && animelemtime(8)>=0
;---------------------------------------------------------------------------
[State -1, j.b]
type = ChangeState
value = 620
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && var(1)

[State -1, j.2c]
type = ChangeState
value = 631
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && var(1)
trigger3 = stateno = 630 && var(1)
trigger4 = stateno = 620 && var(1)
trigger5 = stateno = 1041 && var(1)
;---------------------------------------------------------------------------
[State -1, j.c]
type = ChangeState
value = 630
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && var(1)
trigger3 = stateno = 620 && var(1)
trigger4 = stateno = 1041 && var(1)
anim = ifelse(stateno = 610,10,1)
;---------------------------------------------------------------------------

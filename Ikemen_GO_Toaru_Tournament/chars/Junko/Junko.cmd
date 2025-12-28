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


;-| Hyper Motions |--------------------------------------------------------

[Command]
name = "HCB_c"
command = ~F,DF,D,DB,B, c
time = 32
buffer.Time=16

[Command]
name = "HCF_c"  
command = ~B, DB, D, DF, F, c
time = 32
buffer.Time=16


;-| Super Motions |--------------------------------------------------------


[Command]
name = "HCF_a"  
command = ~B, DB, D, DF, F, a
time = 32
buffer.Time=16


[Command]
name = "DP_c"
command = ~F,DF,D,DF,c
Time=20
buffer.Time=10

[Command]
name = "DP_c"
command = ~DF,D,DF,c
Time=20
buffer.Time=10


[Command]
name = "RDP_c"
command = ~B,DB, D, DB, c
time = 20
buffer.time = 10

[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 10
buffer.time = 7

[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 20
buffer.time = 14

[Command]
name = "QCF_y"
command = ~DF, F, y
time = 20
buffer.time = 14

[Command]
name = "QCF_y"
command = ~D, DF, y
time = 20
buffer.time = 14





[Command]
name = "QCF_z"
command = ~D, DF, F, z
time = 20
buffer.time = 14

[Command]
name = "QCB_z"
command = ~D, DB, B, z
time = 20
buffer.time = 14

[Command]
name = "QCF_z"
command = ~DF, F, z
time = 20
buffer.time = 14

[Command]
name = "QCB_z"
command = ~DB, B, z
time = 20
buffer.time = 14

[Command]
name = "QCF_z"
command = ~D, DF, z
time = 20
buffer.time = 14

[Command]
name = "QCB_z"
command = ~D, DB, z
time = 20
buffer.time = 14


[Command]
name = "QCB_c"
command = ~D, DB, B, c
time = 10
buffer.time = 7

[Command]
name = "QCB_c_air"
command = ~D, DB, B, c
time = 20
buffer.time = 10

[Command]
name = "DD_c"
command = ~D, D, c
time = 20
buffer.time = 10





;-| Special Motions |------------------------------------------------------


[Command]
name = "DP_a"
command = ~F,DF,D,DF,a
Time=20
buffer.Time=10

[Command]
name = "DP_a"
command = ~DF,D,DF,a
Time=20
buffer.Time=10


[Command]
name = "DP_b"
command = ~F,DF,D,DF,b
Time=20
buffer.Time=10

[Command]
name = "DP_b"
command = ~DF,D,DF,b
Time=20
buffer.Time=10


[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 20
buffer.time = 10

[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 20
buffer.time = 10

[Command]
name = "QCB_a"
command = ~D, DB, B, a
time = 20
buffer.time = 10

[Command]
name = "QCB_b"
command = ~D, DB, B, b
time = 20
buffer.time = 10

[Command]
name = "DD_a"
command = ~D, D, a
time = 20
buffer.time = 10

[Command]
name = "DD_b"
command = ~D, D, b
time = 20
buffer.time = 10

[Command]
name = "DD_y"
command = ~D, D, y
time = 20
buffer.time = 10

[Command]
name = "RDP_a"
command = ~B,DB, D, DB, a
time = 20
buffer.time = 10

[Command]
name = "RDP_b"
command = ~B,DB, D, DB, b
time = 20
buffer.time = 10

[Command]
name = "F_z"
command = F,z
time = 15
buffer.time = 10

[Command]
name = "B_c+y"
command = B,c+y
time = 15
buffer.time = 10

[Command]
	name = "RC"
	command = z
	time = 1


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

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

[Command]
	name = "Burst"
	command = a+b
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

[Command]
	name="hold_a"
	command=/a
	time = 1

[Command]
	name="hold_c"
	command=/c
	time = 1

[Command]
	name="hold_y"
	command=/y
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

;Astral Buddy Hyper
[State -1, Astral Buddy Hyper]
type = ChangeState
value = 3100
triggerall = command = "HCB_c"
triggerall = statetype !=A
TriggerAll = (var(20)=2 && power>2999) || (var(20)=1 && power>3999)
triggerall=var(20)!=0
TriggerAll = stateno != [3000,3199] 
trigger1 = ctrl
trigger2 =var(1)



;Triple Kick Hyper
[State -1, Triple Kick Hyper]
type = ChangeState
value = 3000
triggerall = command = "HCF_c"
triggerall = statetype !=A
TriggerAll = Power>2999
TriggerAll = stateno != [3000,3199] 
trigger1 = ctrl
trigger2 =var(1)


;-----------------------------------------

;Handstand Upperkick EX
[State -1, Handstand UK EX]
type = ChangeState
value = 2600
triggerall = command = "c"
triggerall=power>999
trigger1 = stateno=106

;DP EX Lvl 1
[State -1, DP EX Lvl 1]
type = ChangeState
value = 2100
triggerall = command = "DP_c"
triggerall = statetype !=A
TriggerAll = Power>999 
TriggerAll = stateno != 2100
TriggerAll = stateno != [3000,3199] 
trigger1 = ctrl
trigger2 =var(1)


;Hyper Combo
[State -1, Hyper Combo]
type = ChangeState
value = 2500
triggerall = command = "QCF_c"
triggerall= command!= "DP_c"
triggerall= command!= "HCF_c"
triggerall = statetype !=A
TriggerAll = Power>1999
TriggerAll = stateno != [2500,2599]
TriggerAll = stateno != [3000,3199] 
trigger1 = ctrl
trigger2 =var(1)



;Iron Beam Throw
[State -1, Iron Beam Throw]
type = ChangeState
value = 2400
triggerall = command = "HCF_a"
triggerall = statetype !=A
TriggerAll = Power>999 
TriggerAll = stateno != [3000,3199] 
trigger1 = ctrl
trigger2 =var(1)


;Divekick EX lvl 2
[State -1,Divekick EX lvl 2]
	Type=ChangeState
	value=2300
	;triggerall= stateno!=930
	TriggerAll = command = "QCB_c"
	TriggerAll = StateType = A
	TriggerAll = (pos Y <= -15 && stateno = 630) || pos Y <= -25 || stateno=[800,830]
	TriggerAll = stateno != [2300,2399] 
	TriggerAll = stateno != [3000,3199] 
	triggerall=power>1999
	Trigger1 = Ctrl
	Trigger2 = var(1)
	trigger3= (stateno= [930,932]) && var(1)

;Flying Kick EX lvl 1
[State -1,Flying Kick EX lvl 1]
	Type=ChangeState
	value=2200
	triggerall= stateno!=930
	TriggerAll = command = "QCF_c"
	TriggerAll = StateType = A
	;TriggerAll = (pos Y <= -15 && stateno = 630) || pos Y <= -25 || stateno=[800,830]
	TriggerAll = stateno != [3000,3199] 
	triggerall=power>999
	Trigger1 = Ctrl
	Trigger2 = var(1)
	trigger3= (stateno= [930,932]) && var(1)



;Scissor Kick C Second Kick
[State -1, Scissor Kick C]
type = ChangeState
value = 2110
triggerall = stateno=2100
trigger1 = animelemtime(6)>=0

;Lunge EX Lvl 1
[State -1, Lunge EX Lvl 1]
type = ChangeState
value = 2000
triggerall = command = "QCB_c"
triggerall=(var(20)!=0 && power>2999 &&  command!= "HCB_c") || !(var(20)!=0 && power>2999)
triggerall = statetype !=A
TriggerAll = Power>999 
TriggerAll = stateno != [2000,2099] 
TriggerAll = stateno != [3000,3199] 
trigger1 = ctrl
trigger2 =var(1)

;===========================================================================


;Scissor Kick EX
[State -1, Scissor Kick A]
type = ChangeState
value = 1370
triggerall = command = "hold_y"
triggerall = command = "DP_a" || command = "DP_b"
triggerall = statetype !=A
triggerall=cond(var(20)=0,power>499,1)
trigger1 = ctrl
Trigger2 = StateNo = [200,499] 
trigger2 = var(1)
Trigger3 = StateNo = 1000
trigger3 = var(1)
trigger4=stateno=[100,101]
trigger5=stateno=1399
trigger6=stateno=1250
trigger6 = var(1)
Trigger7 = StateNo = 1150
trigger7 = var(1)
trigger8=stateno=[1510,1529]
trigger8=var(1)
trigger9 = StateNo = 1200 && var(1) && Var(2) >= 2;When counter attacking and doing a lunge punch A
trigger10 = StateNo = 1250 && var(1) && Var(2) >= 2;When counter attacking and doing a lunge punch B
trigger11 = StateNo = 1280 && var(1) && Var(2) >= 2;When counter attacking and doing a lunge punch EX



;Scissor Kick EX Second Kick
[State -1, Scissor Kick A]
type = ChangeState
value = 1380
triggerall = stateno=1370
trigger1 = animelemtime(6)>=0
trigger2 = movecontact

;Scissor Kick A
[State -1, Scissor Kick A]
type = ChangeState
value = 1300
triggerall = command = "DP_a"
triggerall = statetype !=A
trigger1 = ctrl
Trigger2 = StateNo = [200,499] 
trigger2 = var(1)
Trigger3 = StateNo = 1000
trigger3 = var(1)
trigger4=stateno=[100,101]
Trigger5 = StateNo = 1150
trigger5 = var(1)
trigger6 = StateNo = 1200 && var(1) && Var(2) >= 2;When counter attacking and doing a lunge punch A
trigger7 = StateNo = 1250 && var(1) && Var(2) >= 2;When counter attacking and doing a lunge punch B
trigger8 = StateNo = 1280 && var(1) && Var(2) >= 2;When counter attacking and doing a lunge punch EX

;Scissor Kick A Second Kick
[State -1, Scissor Kick A]
type = ChangeState
value = 1310
triggerall = command = "a"
triggerall = stateno=1300
trigger1 = animelemtime(6)>=0
trigger2 = movecontact

;Scissor Kick B
[State -1, Scissor Kick B]
type = ChangeState
value = 1350
triggerall = command = "DP_b"
triggerall = statetype !=A
trigger1 = ctrl
Trigger2 = StateNo = [200,499] 
trigger2 = var(1)
Trigger3 = StateNo = 1000
trigger3 = var(1)
trigger4=stateno=[100,101]
Trigger5 = StateNo = 1150
trigger5 = var(1)
trigger6 = StateNo = 1200 && var(1) && Var(2) >= 2;When counter attacking and doing a lunge punch A
trigger7 = StateNo = 1250 && var(1) && Var(2) >= 2;When counter attacking and doing a lunge punch B
trigger8 = StateNo = 1280 && var(1) && Var(2) >= 2;When counter attacking and doing a lunge punch EX


;Scissor Kick B Second Kick
[State -1, Scissor Kick B]
type = ChangeState
value = 1360
triggerall = command = "b"
triggerall = stateno=1350
trigger1 = animelemtime(6)>=0
trigger2 = movecontact

;------------------------------

;Lunge EX
[State -1, Lunge EX]
type = ChangeState
value = 1280
triggerall = command = "QCB_a" || command = "QCB_b"
triggerall = command = "hold_y"
triggerall = statetype !=A
triggerall=cond(var(20)=0,power>499,1)
trigger1 = ctrl
Trigger2 = StateNo = [200,499] 
trigger2 = var(1)
Trigger3 = StateNo = 1000
trigger3 = var(1)
trigger4=stateno=[100,101]
trigger5=stateno=1250
trigger5 = var(1)
trigger6=stateno=1399
trigger7=stateno=[1510,1529]
trigger7=var(1)
trigger8=stateno=109 && animelemtime(2)>=0



;Lunge A
[State -1, Lunge A]
type = ChangeState
value = 1200
triggerall = command = "QCB_a"
triggerall = statetype !=A
trigger1 = ctrl
Trigger2 = StateNo = [200,499] 
trigger2 = var(1)
Trigger3 = StateNo = 1000
trigger3 = var(1)
trigger4=stateno=[100,101]

;Lunge B
[State -1, Lunge B]
type = ChangeState
value = 1250
triggerall = command = "QCB_b"
triggerall = statetype !=A
trigger1 = ctrl
Trigger2 = StateNo = [200,499] 
trigger2 = var(1)
Trigger3 = StateNo = 1000
trigger3 = var(1)
trigger4=stateno=[100,101]

;--------------------------

;EX Punch Flurry
[State -1, Punch Flurry B]
type = ChangeState
value = 1180
triggerall = command = "QCF_a" || command = "QCF_b" 
triggerall = command = "hold_y"
triggerall=command!="DP_b"
triggerall=command!="DP_a"
triggerall = statetype !=A
triggerall=cond(var(20)=0,power>499,1)
triggerall=var(20)!=0 ;Stage 1-2
trigger1 = ctrl
Trigger2 = StateNo = [200,499] 
trigger2 = var(1)
Trigger3 = StateNo = 1000
trigger3 = var(1)
trigger4=stateno=[100,101]
trigger5=stateno=1250
trigger5 = var(1)
trigger6=stateno=1399
trigger7=stateno=[1510,1529]
trigger7=var(1)



;Punch Flurry A
[State -1, Punch Flurry A]
type = ChangeState
value = 1100
triggerall = command = "QCF_a"
triggerall=command!="DP_a"
triggerall = statetype !=A
trigger1 = ctrl
Trigger2 = StateNo = [200,499] 
trigger2 = var(1)
Trigger3 = StateNo = 1000
trigger3 = var(1)
trigger4=stateno=[100,101]
trigger5 = stateno=1250
trigger5 = var(1)

;Punch Flurry B
[State -1, Punch Flurry B]
type = ChangeState
value = 1150
triggerall = command = "QCF_b"
triggerall=command!="DP_b"
triggerall = statetype !=A
trigger1 = ctrl
Trigger2 = StateNo = [200,499] 
trigger2 = var(1)
Trigger3 = StateNo = 1000
trigger3 = var(1)
trigger4=stateno=[100,101]

;--------------------------


;Kick Flurry B
[State -1, Kick Flurry B]
type = ChangeState
value = 1000
triggerall = command = "b"
triggerall = command !="holddown"
triggerall = statetype !=A
triggerall= var(31)>=5
trigger1 = ctrl
Trigger2 = StateNo = [200,499] 
trigger2 = var(1)

;EX Overhead Kick
[State -1, EX Overhead Kick]
type = ChangeState
value = 250
triggerall = (command = "c") || (command = "B_c+y")
triggerall = (command = "holdback") || (command = "B_c+y")
triggerall = (command = "hold_y") || (command = "B_c+y")
triggerall = statetype !=A && stateno!=105
triggerall=stateno!=250
triggerall=cond(var(20)=0,power>499,1)
trigger1 = ctrl
Trigger2 =(StateNo = [200,499]) && (var(1))
trigger3=stateno=[100,101]
trigger4=stateno=1000 && var(1)
trigger5=stateno=1250
trigger5 = var(1)
trigger6=stateno=1399
trigger7=stateno=[1510,1529]
trigger7=var(1)
trigger8=stateno=105 && time<=5

;Upkick EX
[State -1,Upkick EX]
	Type=ChangeState
	value=640
	TriggerAll=command="c"
	triggerall=command="holdup"
	triggerall = command = "hold_y"
	TriggerAll = StateType = A
	triggerall=cond(var(20)=0,power>499,1)
	triggerall=stateno!=640
	Trigger1 = Ctrl
	Trigger2 = (StateNo = [600,699])
	Trigger2 = var(1)
	trigger3=stateno=[1510,1529]
	trigger3=var(1)
	trigger4=stateno=1310
	trigger4=var(1)
	trigger5=stateno=1360
	trigger5=var(1)
	trigger6= stateno= 2110 && var(1)




;EX Kick Flurry C
[State -1, Kick Flurry C]
type = ChangeState
value = 1050
triggerall = command = "c"
triggerall = command = "hold_y"
triggerall = command != "holdback"
triggerall=cond(var(20)=0,power>499,1)
triggerall=var(20)>0 ;Stage 1-2
triggerall = statetype !=A
triggerall= var(32)>=5
trigger1 = ctrl
Trigger2 = StateNo = [200,499] 
trigger2 = var(1)
trigger3=stateno=[100,101]
trigger4=stateno=1000 && var(1)
trigger5=stateno=1250
trigger5 = var(1)
trigger6=stateno=1399
trigger7=stateno=[1510,1529]
trigger7=var(1)


;-----------------------------------------------

;Flying Kick EX
[State -1,Flying Kick EX]
	Type=ChangeState
	value=1480
	triggerall= stateno!=930
	TriggerAll = command = "QCF_a" || command = "QCF_b"
	triggerall = command = "hold_y"
	TriggerAll = StateType = A
	;TriggerAll = (pos Y <= -15 && stateno = 630) || pos Y <= -25;-15
	triggerall=cond(var(20)=0,power>499,1)
	triggerall=stateno!=640 || var(20)=2
	Trigger1 = Ctrl
	Trigger2 = (StateNo = [600,699])
	Trigger2 = var(1)
	trigger3=stateno=[1510,1529]
	trigger3=var(1)
	trigger4= stateno= 931 && time >=3

;Flying Kick A
[State -1,Flying Kick A]
	Type=ChangeState
	value=1400
	triggerall= stateno!=930
	TriggerAll = command = "QCF_a"
	TriggerAll = StateType = A
	TriggerAll = (pos Y <= -10 && prevstateno = 6700) || pos Y <= -25;-15
	triggerall=stateno!=640
	Trigger1 = Ctrl
	Trigger2 = (StateNo = [600,699])
	Trigger2 = var(1)
	trigger3= stateno= 931 && time >=3

;Flying Kick B
[State -1,Flying Kick B]
	Type=ChangeState
	value=1450
	triggerall= stateno!=930
	TriggerAll = command = "QCF_b"
	TriggerAll = StateType = A
	TriggerAll = (pos Y <= -10 && prevstateno = 6700) || pos Y <= -15;-15
	triggerall=stateno!=640
	Trigger1 = Ctrl
	Trigger2 = (StateNo = [600,699])
	Trigger2 = var(1)
	trigger3= stateno= 1360 && var(1)
	trigger4= stateno= 2110 && var(1)
	trigger5= stateno= 931 && time >=3





;-----------------------------------------------

;Divekick EX
[State -1,Dive EX]
	Type=ChangeState
	value=1580
	;triggerall= stateno!=930
	TriggerAll =command = "QCB_a" || command = "QCB_b"
	triggerall = command = "hold_y"
	TriggerAll = StateType = A
	triggerall=cond(var(20)=0,power>499,1)
	;triggerall=var(20)>0 ;Stage 1-2
	TriggerAll = (pos Y <= -30 && stateno = 630) || pos Y <= -45;-15
	triggerall=stateno!=640 || var(20)=2
	Trigger1 = Ctrl
	Trigger2 = (StateNo = [600,699])
	Trigger2 = var(1)
	trigger3=stateno=[1510,1529]
	trigger3=var(1)
	trigger4= (stateno= [930,932]) && var(1)


;Divekick A
[State -1,Dive A]
	Type=ChangeState
	value=1500
	;triggerall= stateno!=930
	TriggerAll = command = "QCB_a"
	TriggerAll = StateType = A
	TriggerAll = (pos Y <= -30 && stateno = 630) || pos Y <= -45;-15
	triggerall=stateno!=640
	Trigger1 = Ctrl
	Trigger2 = (StateNo = [600,699])
	Trigger2 = var(1)
	trigger3= (stateno= [930,932]) && var(1)


;Divekick B
[State -1,Dive B]
	Type=ChangeState
	value=1550
	;triggerall= stateno!=930
	TriggerAll = command = "QCB_b"
	TriggerAll = StateType = A
	TriggerAll = (pos Y <= -30 && stateno = 630) || pos Y <= -45;-15
	triggerall=stateno!=640
	Trigger1 = Ctrl
	Trigger2 = (StateNo = [600,699])
	Trigger2 = var(1)
	trigger3= (stateno= [930,932]) && var(1)




;===========================================================================

;Wall Jump
[State -1, Wall Jump]
type = ChangeState
value = 930
;;triggerall = command = "holdback"
triggerall=command="hold_y"
triggerall = statetype =A
triggerall = ctrl
triggerall=backedgebodydist <10
trigger1= anim=62
trigger1=animelemtime(3)>=0
trigger1=animelemtime(11)<0
trigger2= anim=60
trigger2=animelemtime(3)>=0
trigger2=animelemtime(6)<0
ignorehitpause=1




[State -1,Charge];Charge
	Type=ChangeState
	value=700
	TriggerAll=StateType!=A
	TriggerAll=command="hold_a"
	TriggerAll=command="hold_c"
	TriggerAll=Power<PowerMax
	Trigger1=Ctrl

;Burst
[State -1]
	type = ChangeState
	value = ifelse(statetype != A,6200,6250)
	TriggerAll = Alive
	triggerall=ishelper=0
	triggerall = command =  "Burst"
	triggerall = MoveType = H
	triggerall = var(14) = 0
	trigger1 = stateno = 5000 && time > 0
	trigger2 = stateno = 5010 && time > 0
	trigger3 = stateno = 5020 && time > 0
	trigger4 = stateno = 5070 && time > 0
	trigger5 = stateno != 5000 && stateno != 5010 && stateno != 5020 && stateno != 5070
	trigger5 = stateno = [5001,5099]

;Parry Forward
[State -1, Super Armor]
type = ChangeState
value = 750
triggerall=stateno!=757
triggerall = command = "QCF_z"
triggerall = statetype !=A
trigger1 = ctrl
trigger2=(stateno=[755,756]) && var(1)


;Parry Backwards
[State -1, Super Armor]
type = ChangeState
value = 751
triggerall=stateno!=757
triggerall = command = "QCB_z"
triggerall = statetype !=A
trigger1 = ctrl
trigger2=(stateno=[755,756]) && var(1)

;Air Parry
[State -1, Super Armor]
type = ChangeState
value = 757
triggerall = (command = "F_z") && (command != "QCF_z")
triggerall = statetype =A
trigger1 = ctrl



;Flash Step
[State -1, Flash Step]
type = ChangeState
value = 780
triggerall = command = "QCF_y"
triggerall=command!="QCF_a"
triggerall=command!="QCF_b"
triggerall=command!="QCF_c"
triggerall=command!="DP_a"
triggerall=command!="DP_b"
triggerall=command!="DP_c"
triggerall=var(20)!=0
triggerall = statetype !=A
trigger1 = ctrl
trigger2=stateno=[100,101]
trigger3=stateno=6700 && var(1)
trigger4=(stateno=[755,756]) && var(1)
trigger5=stateno=1520 && time >=3
trigger6=stateno=1399 && time>=3

;Rampage Dress Mode
[State -1, Rampage Dress Mode]
type = ChangeState
value = 990
triggerall = command = "DD_y"
triggerall = statetype !=A
triggerall=power>=2000
triggerall=fvar(7)=0
trigger1 = ctrl
trigger2= var(1)
trigger3=stateno=700

;Rampage Dress Mode Stage 2 Upgrade
[State -1, Rampage Dress Mode]
type = ChangeState
value = 995
triggerall = command = "DD_y"
triggerall = statetype !=A
triggerall=power>=1000
triggerall=var(20)=1
trigger1 = ctrl
trigger2= var(1)
trigger3=stateno=700

;Roman Cancel
[State -1];????????1
	type = ChangeState
	value = 6700
	triggerall = var(35) <3 ;RC counter per combo
	triggerall = command = "RC"
	triggerall = movetype=A
	triggerall=!moveguarded
	triggerall = stateno != [2300,2399]
	triggerall = stateno != [2500,2599]
	trigger1 = var(1)
	trigger1 = stateno != [1050,1060]
	trigger1 = stateno != 1180
	trigger1 = stateno != 1280
	trigger1 = stateno != [1370,1380]
	trigger1 = stateno != 250
	trigger1=stateno!=[2000,3999]
	trigger1=var(20)=1
	trigger2 = var(1)
	trigger2=var(20)=2
	trigger2=stateno!=[3000,3999]

;Forward Throw
[State -1]
Type = ChangeState
value = 800
	TriggerAll=Alive!=0
	TriggerAll = StateType != A
	TriggerAll=command="x"
	TriggerAll=command="holdfwd"
	Trigger1=Ctrl
	trigger2=stateno=[100,101]

;Back Throw
[State -1]
Type = ChangeState
value = 900
	TriggerAll=Alive!=0
	TriggerAll = StateType != A
	TriggerAll=command="x"
	TriggerAll=command="holdback"
	Trigger1=Ctrl
	trigger2=stateno=[100,101]

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
;triggerall=var(20)=0
triggerall = command = "FF"
triggerall = statetype = S
trigger1 = ctrl
trigger2=stateno= 2400 && var(1)
trigger3=stateno= 6700 && var(1)
trigger4=stateno= 990 && var(1)
trigger5=stateno= 995 && var(1)
trigger6=stateno=1520  && var(20)!=0
trigger7=stateno=1399  && var(20)!=0


;Run Fwd Button
[State -1, Run Fwd]
type = ChangeState
value = 100
;triggerall=var(20)=0
triggerall=(Command = "holdfwd" && Command = "y" )
triggerall=command!="QCF_a"
triggerall=command!="QCF_b"
triggerall=command!="QCF_c"
triggerall=command!="DP_a"
triggerall=command!="DP_b"
triggerall=command!="DP_c"
triggerall = command!= "QCF_y"
triggerall = statetype = S
trigger1 = ctrl
trigger2=stateno= 2400 && var(1)
trigger3=stateno= 6700 && var(1)
trigger4=stateno= 990 && var(1)
trigger5=stateno= 995 && var(1)
trigger6=stateno=1520  && var(20)!=0
trigger7=stateno=1399  && var(20)!=0

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = statetype = S
trigger1 = ctrl
trigger2=stateno=101
trigger3=stateno= 6700 && var(1)
trigger4=stateno= 990 && var(1)
trigger5=stateno= 995 && var(1)

;Run Back Button
[State -1, Run Back]
type = ChangeState
value = 105
;triggerall=var(20)=0
triggerall=(Command = "holdback" && Command = "y" )
triggerall=command!="QCB_a"
triggerall=command!="QCB_b"
triggerall=command!="QCB_c"
triggerall = command!= "QCF_y"
triggerall = !(command = "B_c+y")
triggerall = statetype = S
trigger1 = ctrl
trigger2=stateno=101
trigger3=stateno= 6700 && var(1)
trigger4=stateno= 990 && var(1)
trigger5=stateno= 995 && var(1)


;----------------------------------------------------------------------

;Run Down
[State -1, Run Down]
type = ChangeState
value = 103
triggerall=var(20)!=0
triggerall = command = "DD"
triggerall= statetype = A
trigger1 = ctrl
trigger2=stateno=6700 && var(1)

;Run Button
[State -1, Run Down]
type = ChangeState
value = 103
triggerall=var(20)!=0
triggerall = (Command = "holddown" && Command = "y" )
triggerall= statetype = A
trigger1 = ctrl
trigger2=stateno=6700 && var(1)


;------------------------------------------------------------------------

[State -1, Combo condition Reset]
type = VarSet
trigger1 = movetype=H;stateno = [5000,5210]
trigger2 = stateno = [0,160]
var(1) = 0
ignorehitpause=1


[State -1,JumpC];ジャンプキャンセル
	Type=ChangeState
	value=40
	TriggerAll = StateType != A || stateno=106
	TriggerAll = command = "holdup"
	Trigger1 = StateNo = [1250,1251]
	Trigger1 = var(1)
	trigger2 = stateno = 52
	Trigger2 = (!var(1) && time >= 5) ||(var(1) && time >= 9)
	trigger3=stateno=100
	trigger4=stateno=106
	;trigger5=stateno=1180 && var(1)
	;trigger6=stateno=1520  && var(20)!=0
	trigger5=stateno=1399  && prevstateno=1360

;Handstand to Crouch
[State -1, Handstand to crouch]
type = ChangeState
value = 109
triggerall = command = "holddown"
triggerall = command != "holdup"
trigger1 = stateno=106

;Handstand Double Kick
[State -1, Handstand DK]
type = ChangeState
value = 270
triggerall = command = "a"
trigger1 = stateno=106

;Handstand Upperkick
[State -1, Handstand UK]
type = ChangeState
value = 280
triggerall = command = "b"
trigger1 = stateno=106


;===================================================================

[State -1, Crouching Low Kick]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = stateno = 400 && var(1)
trigger3=stateno=103 
trigger3=anim=108
trigger3 =  AnimElemTime(3) >=0
trigger4=stateno=109 && animelemtime(4)>=0
trigger5=stateno=[100,101]

;Crouching Punch
[State -1, Crouching Punch]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = stateno = 400 && var(1)
trigger3=stateno=103 
trigger3=anim=108
trigger3 = AnimElemTime(3) >=0
trigger4=stateno=109 && animelemtime(4)>=0
trigger5=stateno=[100,101]

;Crouching Anti Air
[State -1, Crouching Sweep]
type = ChangeState
value = 430
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = command = "holdfwd" ;back
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = 0;stateno = 400 && var(1)
trigger3 = 0;stateno = 410 && var(1)
trigger4 = stateno = 420 && var(1)
trigger5=stateno=103 
trigger5=anim=108
trigger5 = AnimElemTime(3) >=0
trigger6=stateno=109&& animelemtime(4)>=0
trigger7=stateno=[100,101]

;Crouching Sweep
[State -1, Crouching Sweep]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = stateno = 400 && var(1)
trigger3 = stateno = 410 && var(1)
trigger4=stateno=103 
trigger4=anim=108
trigger4 = AnimElemTime(3) >=0
trigger5=stateno=109 && animelemtime(4)>=0
trigger6=stateno=[100,101]


;-------------------------------------------------------------------


;Standing Jab
[State -1, Standing Jab]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype !=A
trigger1 = ctrl
Trigger2 = StateNo = 200 && (var(1) || animelemtime(5)>=0)
trigger3=stateno=[100,101]
trigger4=stateno=780 && var(1)

;High Kick
[State -1, High Kick]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype !=A
trigger1 = ctrl
Trigger2 = StateNo = 200 && (var(1))
trigger3=stateno=[100,101]
Trigger4 = StateNo = 430 && (var(1))

;Overhead Kick
[State -1, Overhead Kick]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "hold_y"
triggerall = statetype !=A
trigger1 = ctrl
Trigger2 = StateNo = 200 && (var(1))
Trigger3 = StateNo = 210 && (var(1))
trigger4=stateno=[100,101]




;Roundhouse Kick
[State -1, Roundhouse Kick]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype !=A
trigger1 = ctrl
Trigger2 = StateNo = 200 && (var(1))
Trigger3 = StateNo = 210 && (var(1))
trigger4=stateno=[100,101]

;================================================

;Air palm
[State -1,Air Palm]
	Type=ChangeState
	value=600
	triggerall= stateno!=930
	TriggerAll=command="a"
	Triggerall = StateType = A
	Trigger1 = Ctrl
	trigger2= stateno= 931 && time >=6

;Air High Kick
[State -1,Air Kick]
	Type=ChangeState
	value=610
	triggerall= stateno!=930
	TriggerAll=command="b"
	Triggerall = StateType = A
	Trigger1 = Ctrl
	Trigger2 = stateno=600 & var(1)
	trigger3= stateno= 931 && time >=6

;Air UpKick
[State -1,Air UpKick]
	Type=ChangeState
	value=630
	triggerall= stateno!=930
	TriggerAll=command="c"
	triggerall=command="holdup"
	Triggerall = StateType = A
	Trigger1 = Ctrl
	Trigger2 = stateno=600 & var(1)
	Trigger3 = stateno=610 & var(1)
	Trigger4 = stateno=620 & var(1)
	trigger5= stateno= 1360 && var(1)
	trigger6= stateno= 2110 && var(1)
	trigger7= stateno= 931 && time >=6

;Air Low Kick
[State -1,Air Kick]
	Type=ChangeState
	value=620
	triggerall= stateno!=930
	TriggerAll=command="c"
	Triggerall = StateType = A
	Trigger1 = Ctrl
	Trigger2 = stateno=600 & var(1)
	Trigger3 = stateno=610 & var(1)
	trigger4= stateno= 931 && time >=6

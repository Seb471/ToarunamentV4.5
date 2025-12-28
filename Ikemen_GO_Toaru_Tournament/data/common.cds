;--|Input Library|--------
;=|optional|======
;If you want to only allow a cancel to be done in a certain amount of time
;you can use Map(MoveCancelTime) defined in the input.zss. You can change 
;value to whatever you wish. 

;Map(CanCancel) - When an attack hits a timer goes off that is based on Map(MoveCancelTime)
;                 This Map will be  true until that timer finishes.

;Map(turncheck) - When this value is set to 1, it means that commands are
;                 not switched based on the opponent being behind you while you are facing the same direction. IE jumping over the opponent
;                 This value is set to 0 by default and is not required. But you must define what triggers you want to set it to one elsewhere.

;Map(LockInput) - When this value is set to 1, it will prevent any inputs from being processed. 
;Map(LockInputSp) - When this value is set to 1, it will prevent any special inputs from being processed. 
;Map(LockInputHy) - When this value is set to 1, it will prevent any hyper inputs from being processed. 
;Map(Buffer_Snk) -When this value is set to 1, it will treat all inputs as such: 
;You have 30 frames max to complete a given input.
;You are not restricted by input buffer timers that would otherwise increment as you complete the motion.
;This will make inputs accurate to the majority of SNK neogeo titles and any KOF titles afterward. 

;--using proper charge mechanics: These are defined below and should be in the -1 of your character
;although, you can put it where ever if  you wish to have them be variable options.
;Map(D_ChargeTime);Down charge ala Flash Kick 
;Map(B_ChargeTime);How much time a complete charge is stored
;Map(B_ChargeTime);Back charge ala Sonic Boom 
;Map(B_BufferTime);How much time a complete charge is stored

;===|When using built in charge times|
;Map(B_ChargeReady) will be true if you've stored enough charge frames
;Map(D_ChargeReady) will be true if you stored enough charge frames


;=================

;====|Rapid Input instructions|============
;adjusting the "MashCt" map in turtlewax.zss will alter how many times you need
;to press the punch/kick to activate the motion. You still need to use Map(x)/Map(a) in combination
;for proper response. an example is listed below.
;adjusting the "btn6" map in turtlewax.zss will either allow or not allow z/c to be counted as an input for HHSP/HHSK
;by default it is set to 1. futher instructions are in turtlewax.zss to change this.


;--regular inputs
;Map(x)    - x press
;Map(y)    - y press
;Map(z)    - z press
;Map(w)    - w press
;Map(a)    - a press
;Map(b)    - b press
;Map(c)    - c press
;Map(d)    - d press
;Map(p_Up) - U press
;Map(p_Dn) - D press
;Map(p_Bk) - B press
;Map(p_Fd) - F press
;Map(h_x)  - x hold : /x
;Map(h_y)  - y hold : /y
;Map(h_z)  - z hold : /z
;Map(h_w)  - w hold : /w
;Map(h_a)  - a hold : /a
;Map(h_b)  - b hold : /b
;Map(h_c)  - c hold : /c
;Map(h_d)  - d hold : /d
;Map(h_Up) - U hold : /$U
;Map(h_Dn) - D hold : /$D
;Map(h_Bk) - B hold : /$B
;Map(h_Fd) - F hold : /$F
;Map(r_x)  - x release : ~x
;Map(r_y)  - y release : ~y
;Map(r_z)  - z release : ~z
;Map(r_w)  - w release : ~w
;Map(r_a)  - a release : ~a
;Map(r_b)  - b release : ~b
;Map(r_c)  - c release : ~c
;Map(r_d)  - d release : ~d
;Map(r_Up) - U release : ~U
;Map(r_Dn) - D release : ~D
;Map(r_Bk) - B release : ~B
;Map(r_Fd) - F release : ~F

;---multi inputs
;Map(xy)
;Map(yz)
;Map(ab)
;Map(bc)
;Map(xa)
;Map(yb)
;Map(zc)
;Map(dw)
;Map(zw)
;Map(cd)

;Map(Mashing) - used to break out of mashing grabs or dizzy. reads all inputs as presses

;--super inputs
;Note: all of these motions will count the reverse if you turn around on their own
;      YOU DO NOT NEED TO CHECK THAT MANUALLY!
;Map(f720) - F,D,B,U,F,D,B,U or any two forward circle motions
;Map(r720) - B,D,F,U,B,D,F,U or any two backward circle motions
;Map(QCFQC) - D,DF,F,D,DF ;capcom games use this instead of QCFx2 
;Map(QCBQC) - D,DB,B,D,DB ;capcom games use this instead of QCBx2 
;Map(QCFx2) - D,DF,F,D,DF,F
;Map(QCBx2) - D,DB,B,D,DB,B
;Map(HCFx2) - B,DB,D,DF,F,B,DB,D,DF,F
;Map(HCBx2) - F,DF,D,DB,B,F,DF,D,DB,B
;Map(FHCF) - F,B,DB,D,DF,F 
;Map(BHCB) - B,F,DB,D,DB,B 
;Map(HCBF) - F,DB,D,DB,B,F 
;Map(HCFB) - B,DB,D,DF,F,B
;Map(QCFHCB) - D,DF,F,DF,D,DB,B
;Map(QCBHCF) -  D,DB,B,DB,D,DF,F
;Map(JKF) - DB,DF,DB,UF  ; can use optional charge value in conjunction
;Map(RJKF) - DF,DB,DF,UB ; can use optional charge value in conjunction
;Map(BFBF) - B,F,B,F  ; can use optional charge value in conjunction
;Map(FBFB) - F,B,F,B ; can use optional charge value in conjunction
;Map(SGS6) - x,x,F,a,z ; Raging demon 6 button input
;Map(RSGS6) ; x,x,B,a,z ; Raging demon 6 button input
;Map(SGS4) - x,x,F,a,y ; Raging demon 4 button input
;Map(RSGS4) ; x,x,B,a,y ; Raging demon 4 button input
;Map(PRTZ) - DB,F,DF,D,DB,B,DF ; Pretzel motion
;Map(RPRTZ) ; DF,B,DB,D,DF,F,DB ; Pretzel motion reverse

;--special inputs
;Map(QCB) - D,DB,B
;Map(QCF) - D,DF,F
;Map(QCD) - F,DF,D
;MAP(RQCD) - B,DB,D ; aka koyrusai
;Map(DP) - F,D,DF ; dragon punch
;Map(RDP) - B,D,DB ;reverse dragon punch
;Map(MiB) - D,F,DF ; midnight bliss/
;Map(RMiB) - D,B,DB ;reverse midnight bliss
;Map(HCF) - B,D,$F
;Map(HCB) - F,D,$B
;Map(sHCF) - B,DB,D,DF,F (use this for later Capcom games such as SFA3, VSav, and CvS2)
;Map(sHCB) - F,DF,D,DB,B (use this for later Capcom games such as SFA3, VSav, and CvS2)
;Map(TGK) - DB,D,DF,F,UF ; Tiger Knee motion
;Map(RTGK) - DF,D,DB,B,UB ; Tiger Knee motion reverse
;Map(f360) - F,D,B,U or any forward circle motion
;Map(r360) - B,D,F,U or any backward circle motion
;Map(FBF) - F,B,F ;zanretsuken
;Map(BFB) - B,F,B ;zanretsuken reverse
;Map(BF) - charge B,F ; can disable the charge with Map(NoCharge) = 1
;Map(FB) - charge F,B; can disable the charge with Map(NoCharge) = 1
;Map(CDU) - charge D,U; can disable the charge with Map(NoCharge) = 1
;Map(DD) - D,D
;Map(LFF) - F,F; for specials that use this command
;Map(LBB) - B,B; for specials that use this command
;Map(FF) - F,F but much more strict, you have to end on F; very rare circumstance map (use for run and forward dash)
;Map(BB) - B,B; but much more strict, you have to end on F; very rare circumstance map (use for back dash)
;Map(longjump) - $D; just a buffer for the down part of a longjump; either combine with Map(h_Up) or place on its own in state 40 to achieve desired results
;Map(TBF) - tap B,F but much more strict, you have to end on F; very rare circumstance map
;Map(TFB) - tap F,B but much more strict, you have to end on F; very rare circumstance map
;Map(HHSP) - hundred hand slap motion aka hit the a punch rapidly. the amount of times can be set following 
;            the instructions above
;Map(HHSK) - hundred hand slap motion aka hit the a kick rapidly. the amount of times can be set following 
;            the instructions above
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
name = "d"
command = d
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
name = "w"
command = w
time = 1

[Command]
name = "start"
command = s
time = 1
[Command]
name = "m"
command = m
time = 1

[Command]
name = "back"     ; REQUIRED for command buffering
command = B
time = 1
[Command]
name = "fwd"      ; REQUIRED for command buffering
command = F
time = 1
[Command]
name = "up"       ; REQUIRED for command buffering
command = U
time = 1
[Command]
name = "down"     ; REQUIRED for command buffering
command = D
time = 1

[Command]
name = "fwd2"     ; REQUIRED for command buffering
command = $F
time = 1
[Command]
name = "back2"    ; REQUIRED for command buffering
command = $B
time = 1
[Command]
name = "up2"
command = $U      ; REQUIRED for command buffering
time = 1
[Command]
name = "down2"    ; REQUIRED for command buffering
command = $D
time = 1

[Command]
name = "TagShiftBack"
command = d
time = 1

[Command]
name = "TagShiftFwd"
command = w
time = 1

;-| Two Button |---------------------------------------------------------------
[Command]
name = "recovery"
command = x+a
time = 3

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"     ; REQUIRED for command buffering
command = /x
time = 1
[Command]
name = "hold_y"     ; REQUIRED for command buffering
command = /y
time = 1
[Command]
name = "hold_z"     ; REQUIRED for command buffering
command = /z
time = 1
[Command]
name = "hold_w"     ; REQUIRED for command buffering
command = /w
time = 1
[Command]
name = "hold_a"     ; REQUIRED for command buffering
command = /a
time = 1
[Command]
name = "hold_b"     ; REQUIRED for command buffering
command = /b
time = 1
[Command]
name = "hold_c"     ; REQUIRED for command buffering
command = /c
time = 1
[Command]
name = "hold_d"     ; REQUIRED for command buffering
command = /d
time = 1
[Command]
name = "hold_start" ; REQUIRED for command buffering
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1
[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1
[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1
[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

;-| Release Button |---------------------------------------------------------

[Statedef -1]
;============|EXAMPLE DISABLE CHARGE|==============================
;Disable charge for Charge attacks completely (put right below statedef -1)
;[State -1, MapSet]
;type = MapSet
;trigger1 = 1
;map = "NoCharge"
;value = 1

;============|EXAMPLE CUSTOM COMBO|================================
;Disable charge for Charge attacks during Custom Combo
;(put right below statedef -1)
;[State -1, MapSet]
;type = MapSet
;trigger1 = 1
;map = "NoCharge"
;value = (var(16) > 0) ; for Warusaki3, var(30) for Jesuszilla, etc.

;============|EXAMPLE SPECIAL/SUPER|===============================

;---------------------------------------------------------------------------
;Light Kung Fu Palm
;[State -1, Light Kung Fu Palm]
;type = ChangeState
;value = 1000
;triggerall = roundstate=2
;triggerall = AILevelF =0
;triggerall = Map(CanCancel) || !movecontact ;only if you dont want too much delayed cancels other wise optional
;triggerall = Map(QCF)
;triggerall =  Map(x) ||  Map(y)
;trigger1=ctrl&& statetype!=A
;because IKEMEN GO has even less input delay this kara will help specials drop less map to the appropriate
;button for the special 
;trigger2 = stateno=[200,440] 
;trigger2= time <3

;Charge attack
;[State -1, Light Kung Fu Palm]
;type = ChangeState
;value = 1000
;triggerall = roundstate=2
;triggerall = AIlevelF =0
;triggerall = Map(CanCancel) || !movecontact ;only if you dont want too much delayed cancels other wise optional
;triggerall = Map(BF)
;triggerall =  (Map(x) ||  Map(y))
;trigger1=ctrl&& statetype!=A
;trigger2 = stateno=[200,440] 
;trigger2= time <3

;[State -1, Fast Kung Fu Upper]
;type = ChangeState
;value = 1100
;triggerall = roundstate=2
;triggerall = AILevelF =0
;triggerall = Map(HHSP)&&(Map(x)||Map(y)||Map(z));ending with the appropriate punch will determine it's strength because you either press x, y or z at the end
;trigger1=ctrl&& statetype!=A 
;trigger2 = stateno=[200,440] 
;trigger2=time<3
;======================|EXAMPLE NORMAL ATTACK|=========================
;[State -1, Stand Light Punch]
;type = ChangeState
;value = 200
;triggerall = Map(CanCancel) || !movecontact ;only if you dont want too much delayed cancels other wise optional
;triggerall = roundstate=2
;triggerall = AILevelF =0
;triggerall = Map(x)
;triggerall = command != "holddown" ;holds are still fine to use on their own in instances like this.
;triggerall = statetype != A
;trigger1 = ctrl
;=========================|EXAMPLE LONG JUMP|==========================
; This needs to be done within the Jump state (State 40) itself.
; An example implementation is provided below.
;[State 40, 4]
;type = VarSet
;triggerall = !AILevel
;triggerall = Time = 0
;trigger1 = (PrevStateNo = 100 || PrevStateNo = 101) && sysvar(1) = 1   ; cancel from run
;trigger2 = Map(longjump)
;var(x) = 1                                                             ; long jump active
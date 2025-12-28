
[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;-| デフォルト設定 |-----------------------------------------------------------
[Defaults]
command.time = 15  ;標準のコマンド入力受付時間。
                   ;各コマンドで省略している場合に有効。
                   ;このパラメータを消した場合、デフォルトは１フレームになる。
                   ;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

command.buffer.time = 1  ;標準のコマンド入力記憶時間。
                         ;入力した直後にコマンドを記憶し、
                         ;指を離してもコマンドが成功している状態を
                         ;ここで設定した時間の分維持する。
                         ;１～３０フレームまでの間で設定可能。
                         ;デフォルトは１フレーム。

;============================================================================== 
; コマンド定義パート（入力キーを設定する）
;==============================================================================
;------------------------------------------------------------------------------
; ここがキーとボタンの組み合わせで格闘ゲームにおける
;『入力コマンド』を直接設定・編集するパート。
;
; 一つずつコマンドに名前を付けて入力キーを組み合わせる単純な作業になるけど、
; 組み合わせが独特だから覚えるのは難易度が少し高い。
;
; 下記で「書式の決まり」と「組み合わせに必要なアルファベットと記号」を
; 全て説明しましょう。
;------------------------------------------------------------------------------
;■書式の決まり■
;
; [Command]         ：入力コマンドを１個定義する。
; name = "***"      ：コマンド名を決める。大文字と小文字も区別される。
; command = ###     ：実際に入力するキーを組み合わせる。詳細は後述。
; time = &&&        ：入力受付時間を設定（オプション）。
; buffer.time = @@@ ：入力記憶時間を設定（オプション）。
;
; 小ネタでも説明している通り、登録が可能な数は最大『１２８個』まで。
;
;
;※『必須コマンド名』と書いてるコマンドは、システム側で処理してます。
;　コマンド名を変えたり、消してはいけません。キーの変更は出来ます。
;------------------------------------------------------------------------------
;■必要なアルファベットと記号■
;
; 上記の「command = ###」の『###』に該当する部分で、
; 組み合わせるキーとボタンを設定しなければならない。
;
; ※設定したキーやボタンはM.U.G.E.Nのオプションモードにある
;  「キーコンフィグ」にて設定したキーなどに対応しています。
;
; ★方向キー★（全て必ず大文字で）
;
; 　B 　：「後方」にキーを入れる（ Backward ）
; 　D 　：「下方」にキーを入れる（ Downward ）
; 　F 　：「前方」にキーを入れる（ Forward ）
; 　U 　：「上方」にキーを入れる（ Upward ）
;
; 　DB　：「後ろ斜め下」にキーを入れる（「D」と「B」が同時に入力された事を認識）
; 　UB　：「後ろ斜め上」にキーを入れる（「U」と「B」が同時に入力された事を認識）
; 　DF　：「前斜め下」にキーを入れる（「D」と「F」が同時に入力された事を認識）
; 　UF　：「前斜め上」にキーを入れる（「U」と「F」が同時に入力された事を認識）
;
; ★ボタン★（全て必ず小文字で）
;
; 　a 　：「Ａボタン」を押す
; 　b 　：「Ｂボタン」を押す
; 　c 　：「Ｃボタン」を押す
; 　x 　：「Ｘボタン」を押す
; 　y 　：「Ｙボタン」を押す
; 　z 　：「Ｚボタン」を押す
; 　s 　：「スタートボタン」を押す
;
; ★記号★（入力効果を変化させる命令）
;
; 　/ 　：（スラッシュ）キーやボタンを「押しっぱなし」にしている事を認識する場合に追加する
;
; 　　（例）：　/b       = Ｂボタンを押したままにする
; 　　　　　　　/F       = 前キーを押したままにする
; 　　　　　　　/U,z     = 上キーを押したままＺボタンを入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　~ 　：（チルダ）キーやボタンが「離された時」を認識する場合に追加する
;
; 　　（例）：　~x       = Ｘボタンを離す
; 　　　　　　　~DF      =「前斜め下」のキーを離す
; 　　　　　　　~DB,F,c  =「後ろ斜め下」を離した後に前キー・Ｃボタンの順番に入力する
;
; 　　　　　　※「ボタンを離すまでの時間（溜め時間）」も設定する事が出来る
;
; 　　　　　　　~30x     = Ｘボタンを押したままにして、３０フレーム以上経ったら離す
; 　　　　　　　~50B,F,a = 後ろキーを５０フレームまで溜めて前キー・Ａボタンの順番に入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　$ 　：（ドル）方向キーの「複数の内どれかが入力されている事」を認識する場合に追加する
;
; 　　（例）：　$B       =「後方」「後ろ斜め下」「後ろ斜め上」のどれかが入力されている状態
; 　　　　　　　$UF      =「前」「上」「前斜め上」のどれかが入力されている状態
;
; 　　　　　　※この記号は「方向キー」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　+ 　：（プラス）ボタンを「同時押し」している事を認識する場合に追加する
;
; 　　（例）：　x+y      = ＸボタンとＹボタンを同時押しする
; 　　　　　　　a+b+c    = ＡボタンとＢボタンとＣボタンを同時押しする
;
; 　　　　　　※この記号は「ボタン」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　> 　：（グレーターザン）大なり（Win版で追加された記号）
; 　　　　　　　　　　　　「他のキーが入力されていない事を確認して、そのキーを押す」場合
;
; 　　（例）：　a,>~a    = Ａボタン以外が入力されていない状態でＡボタンを離す
; 　　　　　　　F,>~F,>F = 前キー以外が入力されていない状態で前キーを離し、
;　　　　　　　　　　　　　もう一度前キーを入力する
;
;-------------------------------------------------------------------------------
; ●これらの記号は全て組み合わせて使う事が出来る●
;
; 　　（例）：　~80$DB,DF,F,/a+y+c
; 　　　　　　　
; 　　　　　　「後方」「下」「後ろ斜め下」のどれかを８０フレームまで溜めて
; 　　　　　　「前斜め下」→「前」を入力した後、ＡとＹとＣを同時押ししたままにする
;
;------------------------------------------------------------------------------

;-| CPUアルゴリズム用コマンド |------------------------------
[Command]
	Name = "CPU1"
	Command = a, U, D, F, F, B, B, D, U, U
	Time = 1
[Command]
	Name = "CPU2"
	Command = b, U, D, F, B, F, B, D, U, D
	Time = 1
[Command]
	Name = "CPU3"
	Command = c, U, D, B, F, B, F, D, U, B
	Time = 1
[Command]
	Name = "CPU4"
	Command = x, U, D, B, F, F, B, D, U, F
	Time = 1
[Command]
	Name = "CPU5"
	Command = y, U, D, F, F, B, B, D, U, a
	Time = 1
[Command]
	Name = "CPU6"
	Command = z, U, D, F, B, F, B, D, U, b
	Time = 1
[Command]
	Name = "CPU7"
	Command = s, U, D, B, F, B, F, D, U, c
	Time = 1
[Command]
	Name = "CPU8"
	Command = b, U, D, B, F, F, B, D, U, x
	Time = 1
[Command]
	Name = "CPU9"
	Command = c, U, D, F, B, F, B, D, U, y
	Time = 1
[Command]
	Name = "CPU10"
	Command = y, U, D, B, F, B, F, D, U, z
	Time = 1
[Command]
	Name = "CPU11"
	Command = z, U, D, B, F, F, B, D, U, s
	Time = 1
[Command]
	Name = "CPU12"
	Command = U, D, F, F, B, B, D, U, a+x
	Time = 1
[Command]
	Name = "CPU13"
	Command = U, D, F, B, F, B, D, U, b+y
	Time = 1
[Command]
	Name = "CPU14"
	Command = U, D, B, F, B, F, D, U, c+z
	Time = 1
[Command]
	Name = "CPU15"
	Command = U, D, s, B, F, F, B, s, D, U
	Time = 1
[Command]
	Name = "CPU16"
	Command = a, U, D, F, x, B, B, D, U, U
	Time = 1
[Command]
	Name = "CPU17"
	Command = c, U, D, B, z, B, F, D, U, B
	Time = 1
[Command]
	Name = "CPU18"
	Command = U, D, F, b, B, B, D, U, a+x
	Time = 1
[Command]
	Name = "CPU19"
	Command = b, U, D, B, y, F, B, D, U, x
	Time = 1
[Command]
	Name = "CPU20"
	Command = c, U, D, F, B, z, B, D, U, y
	Time = 1
[Command]
	Name = "CPU21"
	Command = z, U, D, F, B, c, B, D, U, b
	Time = 1
[Command]
	Name = "CPU22"
	Command = s, U, D, B, x, B, F, D, U, c
	Time = 1
[Command]
	Name = "CPU23"
	Command = y, U, D, B, s, B, F, D, U, z
	Time = 1
[Command]
	Name = "CPU24"
	Command = z, U, D, B, a, F, B, D, U, s
	Time = 1
[Command]
	Name = "CPU25"
	Command = U, D, F, B, c, B, D, U, b+y
	Time = 1
[Command]
	Name = "CPU26"
	Command = U, D, B, F, B, s, D, U, c+z
	Time = 1
[Command]
	Name = "CPU27"
	Command = U, B, s, F, B, D, U, s, D, F
	Time = 1
[Command]
	Name = "CPU28"
	Command = b, U, D, F, B, y, B, D, U, D
	Time = 1
[Command]
	Name = "CPU29"
	Command = x, U, D, B, a, F, B, D, U, F
	Time = 1
[Command]
	Name = "CPU30"
	Command = y, U, D, F, b, B, B, D, U, a
	Time = 1
[Command]
	Name = "CPU31"
	Command = U, U, D, B, B, F, F, D, U, a
	Time = 1
[Command]
	Name = "CPU32"
	Command = D, U, D, B, F, B, F, D, U, b
	Time = 1
[Command]
	Name = "CPU33"
	Command = B, U, D, F, B, F, B, D, U, c
	Time = 1
[Command]
	Name = "CPU34"
	Command = F, U, D, B, F, F, B, D, U, x
	Time = 1
[Command]
	Name = "CPU35"
	Command = a, U, D, B, B, F, F, D, U, y
	Time = 1
[Command]
	Name = "CPU36"
	Command = z, U, D, F, B, F, B, D, U, b
	Time = 1
[Command]
	Name = "CPU37"
	Command = c, U, D, F, B, F, B, D, U, s
	Time = 1
[Command]
	Name = "CPU38"
	Command = b, U, D, B, F, F, B, D, U, x
	Time = 1
[Command]
	Name = "CPU39"
	Command = y, U, D, B, F, B, F, D, U, c
	Time = 1
[Command]
	Name = "CPU40"
	Command = z, U, D, F, B, F, B, D, U, y
	Time = 1
[Command]
	Name = "CPU41"
	Command = s, U, D, B, F, F, B, D, U, z
	Time = 1
[Command]
	Name = "CPU42"
	Command = x+a, U, D, B, B, F, F, D, U
	Time = 1
[Command]
	Name = "CPU43"
	Command = y+b, U, D, B, F, B, F, D, U
	Time = 1
[Command]
	Name = "CPU44"
	Command = z+c, U, D, F, B, F, B, D, U
	Time = 1
[Command]
	Name = "CPU45"
	Command = U, D, s, B, F, F, B, s, D, U
	Time = 1
[Command]
	Name = "CPU46"
	Command = U, U, D, B, B, x, F, D, U, a
	Time = 1
[Command]
	Name = "CPU47"
	Command = B, U, D, F, B, z, B, D, U, c
	Time = 1
[Command]
	Name = "CPU48"
	Command = x+a, U, D, B, B, b, F, D, U
	Time = 1
[Command]
	Name = "CPU49"
	Command = x, U, D, B, F, y, D, B, U, b
	Time = 1
[Command]
	Name = "CPU50"
	Command = c, U, D, F, B, z, B, D, U, y
	Time = 1
[Command]
	Name = "CPU51"
	Command = b, U, D, B, c, B, F, D, U, z
	Time = 1
[Command]
	Name = "CPU52"
	Command = c, U, D, F, B, x, B, D, U, s
	Time = 1
[Command]
	Name = "CPU53"
	Command = z, U, D, F, B, s, B, D, U, y
	Time = 1
[Command]
	Name = "CPU54"
	Command = s, U, D, B, F, a, B, D, U, z
	Time = 1
[Command]
	Name = "CPU55"
	Command = y+b, U, D, B, c, B, F, D, U
	Time = 1
[Command]
	Name = "CPU56"
	Command = z+c, U, D, s, B, F, B, D, U
	Time = 1
[Command]
	Name = "CPU57"
	Command = F, D, s, U, D, B, F, s, B, U
	Time = 1
[Command]
	Name = "CPU58"
	Command = D, U, D, B, y, B, F, D, U, b
	Time = 1
[Command]
	Name = "CPU59"
	Command = F, U, D, B, F, a, B, D, U, x
	Time = 1
[Command]
	Name = "CPU60"
	Command = a, U, D, B, B, b, F, D, U, y
	Time = 1

;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "白翼"
command = ~B , DB , D , DF , F , B , DB , D , DF , F,c
time = 32
buffer.Time=16

[Command]
name = "白翼"
command = ~B , D , F , B , D , F,c
time = 32
buffer.Time=16

;---------------------------------------


[Command]
name = "黒翼"
command = ~B , DB , D , DF , F,c
time = 32
buffer.Time=16

[Command]
name = "黒翼"
command = ~B , D , F,c
time = 32
buffer.Time=16

;---------------------------------------
;[Command]
;name = "プラズマ"
;command = ~F,DF,D,DB,B, c;~D , DB , B , D , DB , B ,a
;time = 32
;buffer.Time=16

;[Command]
;name = "プラズマ"
;command = ~F,DF,D,DB,B, b;~D , DB , B , D , DB , B ,b
;time = 32
;buffer.Time=16

[Command]
name = "プラズマ"
command = ~F,DF,D,DB,B, a;~D , DB , B , D , DB , B ,c
time = 32
buffer.Time=16

;---------------------------------------
[Command]
name = "超鉄筋"
command = ~D , DF , F , D , DF , F ,a
time = 32
buffer.Time=16

[Command]
name = "超鉄筋"
command = ~D , DF , F , D , DF , F ,b
time = 32
buffer.Time=16

[Command]
name = "超鉄筋"
command = ~D , DF , F , D , DF , F ,c
time = 32
buffer.Time=16

;---------------------------------------
[Command]
name = "捕獲"
command = ~F , B , DB , D,a
time = 20
buffer.Time=10

[Command]
name = "捕獲"
command = ~F , B , DB , D,b
time = 20
buffer.Time=10

[Command]
name = "捕獲"
command = ~F , B , DB , D,c
time = 20
buffer.Time=10

;---------------------------------------
[Command]
name = "a+b"
command = a+b
time = 10

;---------------------------------------
[Command]
name = "電池回復"
command = a+c
time = 10

;---------------------------------------
[Command]
name = "補正回復"
command = b+c
time = 10

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "鉄筋A"
command = ~D , DF , F ,a
time = 20
buffer.Time=10

[Command]
name = "鉄筋B"
command = ~D , DF , F ,b
time = 20
buffer.Time=10

[Command]
name = "鉄筋C"
command = ~D , DF , F ,c
time = 20
buffer.Time=10

;---------------------------------------
[Command]
name = "対空A"
command = ~F , D , DF ,a
time = 20
buffer.Time=10

[Command]
name = "対空B"
command = ~F , D , DF ,b
time = 20
buffer.Time=10

[Command]
name = "対空C"
command = ~F , D , DF ,c
time = 20
buffer.Time=10

;---------------------------------------
[Command]
name = "突進A"
command = ~D , DB , B ,a
time = 20
buffer.Time=10

[Command]
name = "突進B"
command = ~D , DB , B ,b
time = 20
buffer.Time=10

[Command]
name = "突進C"
command = ~D , DB , B ,c
time = 20
buffer.Time=10

;---------------------------------------
[Command]
name = "当身"
command = ~B , DB , D ,a
time = 20
buffer.Time=10

[Command]
name = "当身"
command = ~B , DB , D ,b
time = 20
buffer.Time=10

[Command]
name = "当身"
command = ~B , DB , D ,c
time = 20
buffer.Time=10

;------------------------------------------------------------------------------
;-| 基本 |---------------------------------------------------------------------

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
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

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1


[Command]
name = "F_c"
command = /$F,c
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

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


;------------------------------------------------------------------------------
;-| 特殊 |---------------------------------------------------------------

[Command]
name = "down"
command = $D
time = 1

[Command]
name = "y_up"
command = ~y
time = 1

[Command]
name = "z_up"
command = ~z
time = 1


[Command]
	name="hold_z"
	command=/z
	time = 1

;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

;============================================================================== 第４部
; ステートエントリーパート（技などを出せるようにするための条件を設定）
;==============================================================================
;------------------------------------------------------------------------------
; ■準常時監視ステート（‐１）■
; コマンドファイル（のステートエントリーパート）に必要な項目です。
; 絶対に消してはいけないので要注意。
;
; 通常の食らい状態以外の「P2StateNo」や「TargetState」等で制御された、
; 作成者が任意に指定した相手側の食らいステートに限り、
; 登録したステートコントローラが有効にはなりません。
;------------------------------------------------------------------------------

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;------------------------------------------------------------------------------
;超必殺技
;-----------------------------------------------------------------------------
;[State -1, 白翼]
;	type = ChangeState
;	value = 3000
;	triggerAll = Var(9) = 1
;	triggerAll = Life < ( LifeMax / 4)
;	TriggerAll = Var(59) = [0,1]
;	triggerall = command = "白翼"
;	triggerall = Power >= 5000
;	trigger1 = ctrl

;---------------------------------------------------
[State -1, 黒翼]
	type = ChangeState
	value = 3100
	triggerAll = Fvar(10) >= 100
;	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "黒翼"
	triggerall = Power >= 3000
	triggerall = statetype != A
	trigger1 = ctrl
	trigger2 = stateno = [200,2999]
	trigger2 = Var(2) = 1
	trigger3 = stateno = [3200,3220]
	trigger3 = Var(2) = 1

;---------------------------------------------------
[State -1, プラズマ]
	type = ChangeState
	value = 3200
	triggerAll = Fvar(10) >= 100
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "プラズマ"
	triggerall = statetype != A
	triggerall = Power >= 1000
	trigger1 = ctrl
	trigger2 = stateno = [200,2999]
	trigger2 = Var(2) = 1

[State -1, プラズマ放射]
	type = VarSet
	var(8) = 1
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "a"
	triggerall = statetype != A
	triggerall = Power >= 1000
	trigger1 = stateno = 3200

[State -1, プラズマ投げ]
	type = VarSet
	var(8) = 2
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "b"
	triggerall = statetype != A
	triggerall = Power >= 1000
	trigger1 = stateno = 3200

;---------------------------------------------------
;[State -1, 捕獲]
;	type = ChangeState
;	value = 3500
;	triggerAll = Fvar(10) >= 100
;	triggerAll = Var(9) = 0
;	TriggerAll = Var(59) = [0,1]
;	triggerall = command = "捕獲"
;	triggerall = statetype != A
;	triggerall = Power >= 2000
;	trigger1 = ctrl
;	trigger2 = stateno = [200,2999]
;	trigger2 = Var(2) = 1

;---------------------------------------------------
;[State -1, 超鉄筋]
;	type = ChangeState
;	value = 3300
;	triggerAll = Fvar(10) >= 100
;	triggerAll = Var(9) = 0
;	TriggerAll = Var(59) = [0,1]
;	triggerall = command = "超鉄筋"
;	triggerall = statetype != A
;	triggerall = Power >= 1000
;	trigger1 = ctrl
;	trigger2 = stateno = [200,699]
;	trigger2 = Var(2) = 1

;---------------------------------------------------

[State -1, 反射開放]
	type = null;VarSet
	var(25) = 1
	TriggerAll = RoundState = 2			;戦闘中
	triggerAll = Fvar(10) >= 100
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	;triggerall = command = "反射開放"
	triggerall = Power >= 1000
	TriggerAll = Var(31) = 0
	trigger1 = var(25) = 0
	trigger1 = var(37) = 0
	tirgger1 = var(20) = [0,2]

[State -1, 反射開放制御]
	type = null;VarSet
	var(37) = 1
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	trigger1 = var(25) = 1

[State -1, 反射開放制御]
	type = null;VarSet
	var(37) = 0
	triggerAll = Var(9) = 0
	Trigger1 = Var(59) = [0,1]
	;trigger1 = command != "反射開放"

;---------------------------------------------------
[State -1, 電池回復]
	type = VarSet
	var(26) = 1
	TriggerAll = RoundState = 2			;戦闘中
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "電池回復"
	triggerall = Power >= 1000
	triggerAll = Var(20) != 3
	trigger1 = var(26) = 0
	trigger1 = var(38) = 0

[State -1, 電池回復制御]
	type = VarSet
	var(38) = 1
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	trigger1 = var(26) = 1

[State -1, 電池回復制御]
	type = VarSet
	var(38) = 0
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	trigger1 = command != "電池回復"

;---------------------------------------------------
[State -1, 補正回復]
	type = VarSet
	var(27) = 1
	TriggerAll = RoundState = 2			;戦闘中
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "補正回復"
	triggerall = Power >= 1000
	trigger1 = var(27) = 0
	trigger1 = var(39) = 0

[State -1, 補正回復制御]
	type = VarSet
	var(39) = 1
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	trigger1 = var(27) = 1

[State -1, 補正回復制御]
	type = VarSet
	var(39) = 0
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	trigger1 = command != "補正回復"

;------------------------------------------------------------------------------
;必殺技
;------------------------------------------------------------------------------
[State -1, 対空A]
	type = ChangeState
	value = 2050
	triggerAll = Fvar(10) >= 50
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "対空A"
	triggerall = statetype != A
	trigger1 = ctrl
	trigger2 = stateno = [200,699]
	trigger2 = Var(2) = 1
	trigger3 = stateno = 810
	trigger3 = Var(2) = 1

[State -1, 対空B]
	type = ChangeState
	value = 2051
	triggerAll = Fvar(10) >= 50
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "対空B"
	triggerall = statetype != A
	trigger1 = ctrl
	trigger2 = stateno = [200,699]
	trigger2 = Var(2) = 1
	trigger3 = stateno = 810
	trigger3 = Var(2) = 1

[State -1, 対空C]
	type = ChangeState
	value = 2052
	triggerAll = Fvar(10) >= 50
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "対空C"
	triggerall = statetype != A
	trigger1 = ctrl
	trigger2 = stateno = [200,699]
	trigger2 = Var(2) = 1
	trigger3 = stateno = 810
	trigger3 = Var(2) = 1

;---------------------------------------------------
[State -1, 鉄筋A]
	type = ChangeState
	value = 2000
	triggerAll = Fvar(10) >= 50
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "鉄筋A"
	triggerall = statetype != A
	trigger1 = ctrl
	trigger2 = stateno = [200,699]
	trigger2 = Var(2) = 1

[State -1, 鉄筋B]
	type = ChangeState
	value = 2001
	triggerAll = Fvar(10) >= 50
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "鉄筋B"
	triggerall = statetype != A
	trigger1 = ctrl
	trigger2 = stateno = [200,699]
	trigger2 = Var(2) = 1

[State -1, 鉄筋C]
	type = ChangeState
	value = 2030
	triggerAll = Fvar(10) >= 50
	triggerall=power>999
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "鉄筋C"
	triggerall = statetype != A
	triggerall=!(stateno=2030 && time<20)
	trigger1 = ctrl
	;trigger2 = stateno = [200,699]
	trigger2 = Var(2) = 1


;---------------------------------------------------
[State -1, 突進A]
	type = ChangeState
	value = 2100
	triggerAll = Fvar(10) >= 50
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "突進A"
	trigger1 = ctrl
	trigger2 = stateno = [200,699]
	trigger2 = Var(2) = 1

[State -1, 突進B]
	type = ChangeState
	value = 2101
	triggerAll = Fvar(10) >= 50
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "突進B"
	trigger1 = ctrl
	trigger2 = stateno = [200,699]
	trigger2 = Var(2) = 1

[State -1, 突進C]
	type = ChangeState
	value = 2102
	triggerall=power>999
	triggerall=stateno!=[2100,2120]
	triggerAll = Fvar(10) >= 50
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "突進C"
	trigger1 = ctrl
	;trigger2 = stateno = [200,699]
	trigger2 = Var(2) = 1

;Throw 
[State -1, Throw]
Type = ChangeState
value = 800
	TriggerAll=Alive!=0
	TriggerAll = StateType != A
	TriggerAll=command="a+b"
	triggerAll = Var(9) = 0
	;TriggerAll=command="holdfwd"
	;TriggerAll=StateNo!=100
	Triggerall=enemynear,StateType=S||enemynear,StateType=C
	Triggerall=enemynear,MoveType!=H
	Trigger1=Ctrl

;---------------------------------------------------
;[State -1, 当身]
;	type = ChangeState
;	value = 2150
;	triggerAll = Fvar(10) >= 50
;	triggerAll = Var(9) = 0
;	TriggerAll = Var(59) = [0,1]
;	triggerall = command = "当身"
;	trigger1 = ctrl

;------------------------------------------------------------------------------
; 移動関連
;------------------------------------------------------------------------------
[State -1, 走る]
	type = ChangeState
	value = 100
	triggerAll = Fvar(10) >= 5
	triggerAll = Var(9) = 0
	trigger1 = command = "FF"
	trigger1 = statetype = S
	trigger1 = ctrl

[State -1, バックステップ]
	type = ChangeState
	value = 105
	triggerAll = Fvar(10) >= 5
	triggerAll = Var(9) = 0
	trigger1 = command = "BB"
	trigger1 = statetype = S
	trigger1 = ctrl

;------------------------------------------------------------------------------
; 特殊技
;------------------------------------------------------------------------------
[State -1, ハイジャンプ準備]
	type = VarSet
	triggerAll = Fvar(10) >= 5
	triggerAll = Var(9) = 0
	trigger1 = command = "down"
	trigger1 = statetype != A
	var(4) = 20

;------------------------------------------------------------------------------
; 通常攻撃技
;------------------------------------------------------------------------------
[State -1, 立ち弱EX]
	type = ChangeState
	value = 230
	triggerAll = Fvar(10) >= 10
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "a"
	triggerall = command != "holddown"
	triggerall = command = "holdfwd"
	triggerall = statetype = S
	trigger1 = ctrl
	trigger2 = stateno = [200,220]
	trigger2 = Var(2) = 1

[State -1, 立ち中EX]
	type = ChangeState
	value = 240
	triggerAll = Fvar(10) >= 20
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall=var(16)<=7
	triggerall = command = "b"
	triggerall = command != "holddown"
	triggerall = command = "holdfwd"
	triggerall = statetype = S
	trigger1 = ctrl
	trigger2 = stateno = [200,220]
	trigger2 = Var(2) = 1

[State -1, 立ち強EX]
	type = ChangeState
	value = 250
	triggerAll = Fvar(10) >= 30
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall=var(16)<=7
	triggerall = command = "c"
	triggerall = command != "holddown"
	triggerall = command = "holdfwd"
	triggerall = statetype = S
	trigger1 = ctrl
	trigger2 = stateno = [200,220]
	trigger2 = Var(2) = 1

[State -1, 立ち弱]
	type = ChangeState
	value = 200
	TriggerAll = Var(59) = [0,1]
	triggerAll = Var(9) = 0
	triggerall = command = "a"
	triggerall = command != "holddown"
	triggerall = statetype = S
	trigger1 = ctrl
	trigger2 = stateno = 200
	trigger2 = Var(2) = 1
	trigger3 = stateno = 2130 && var(19)=1
	trigger3=anim=2120 && animelemtime(4)>=0
	trigger3 = Var(2) = 1
	trigger4 = stateno = 2130 && var(19)=3
	trigger4=anim=2120 && animelemtime(4)>=0
	trigger4 = Var(2) = 1


[State -1, 立ち中]
	type = ChangeState
	value = 210
	TriggerAll = Var(59) = [0,1]
	triggerAll = Var(9) = 0
	triggerall = command = "b"
	triggerall = command != "holddown"
	triggerall = statetype = S
	trigger1 = ctrl
	trigger2 = stateno = 200
	trigger2 = Var(2) = 1
	trigger3 = stateno = 2130 && var(19)=1
	trigger3=anim=2120 && animelemtime(4)>=0
	trigger3 = Var(2) = 1
	trigger4 = stateno = 2130 && var(19)=3
	trigger4=anim=2120 && animelemtime(4)>=0
	trigger4 = Var(2) = 1
[State -1, 立ち強]
	type = ChangeState
	value = 220
	TriggerAll = Var(59) = [0,1]
	triggerAll = Var(9) = 0
	triggerall = command = "c"
	triggerall = command != "holddown"
	triggerall = statetype = S
	trigger1 = ctrl
	trigger2 = stateno = [200,210]
	trigger2 = Var(2) = 1
	trigger3 = stateno = 2130 && var(19)=1
	trigger3=anim=2120 && animelemtime(4)>=0
	trigger3 = Var(2) = 1
	trigger4 = stateno = 2130 && var(19)=3
	trigger4=anim=2120 && animelemtime(4)>=0
	trigger4 = Var(2) = 1

;------------------------------------------------------------------------------
[State -1, しゃがみ弱EX]
	type = ChangeState
	value = 430
	triggerAll = Fvar(10) >= 10
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "a"
	triggerall = command = "holddown"
	triggerall = command = "holdfwd"
	triggerall = statetype = C
	trigger1 = ctrl
	trigger2 = stateno = [400,420]
	trigger2 = Var(2) = 1

[State -1, しゃがみ中EX]
	type = ChangeState
	value = 440
	triggerAll = Fvar(10) >= 20
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "b"
	triggerall = command = "holddown"
	triggerall = command = "holdfwd"
	triggerall=var(16)<=7
	triggerall = statetype = C
	trigger1 = ctrl
	trigger2 = stateno = [400,420]
	trigger2 = Var(2) = 1

[State -1, しゃがみ強EX]
	type = ChangeState
	value = 450
	triggerAll = Fvar(10) >= 30
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "c"
	triggerall = command = "holddown"
	triggerall = command = "holdfwd"
	triggerall=var(16)<=7
	triggerall = statetype = C
	trigger1 = ctrl
	trigger2 = stateno = [400,420]
	trigger2 = Var(2) = 1

[State -1, しゃがみ弱]
	type = ChangeState
	value = 400
	TriggerAll = Var(59) = [0,1]
	triggerAll = Var(9) = 0
	triggerall = command = "a"
	triggerall = command = "holddown"
	triggerall = statetype = C
	trigger1 = ctrl
	trigger2 = StateNo = 400
	trigger2 = Var(2) = 1

[State -1, しゃがみ中]
	type = ChangeState
	value = 410
	TriggerAll = Var(59) = [0,1]
	triggerAll = Var(9) = 0
	triggerall = command = "b"
	triggerall = command = "holddown"
	triggerall = statetype = C
	trigger1 = ctrl
	trigger2 = stateno = 400
	trigger2 = Var(2) = 1

[State -1, しゃがみ強]
	type = ChangeState
	value = 420
	TriggerAll = Var(59) = [0,1]
	triggerAll = Var(9) = 0
	triggerall = command = "c"
	triggerall = command = "holddown"
	triggerall = statetype = C
	trigger1 = ctrl
	trigger2 = stateno = [400,410]
	trigger2 = Var(2) = 1

;------------------------------------------------------------------------------
[State -1, ジャンプ弱EX]
	type = ChangeState
	value = 630
	triggerAll = Fvar(10) >= 10
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "a"
	triggerall = statetype = A
	triggerall = command = "holdfwd"
	trigger1 = ctrl
	trigger2 = stateno = [600,620]
	trigger2 = Var(2) = 1

[State -1, ジャンプ中EX]
	type = ChangeState
	value = 640
	triggerAll = Fvar(10) >= 20
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "b"
	triggerall = statetype = A
	triggerall = command = "holdfwd"
	triggerall=var(16)<=7
	trigger1 = ctrl
	trigger2 = stateno = [600,620]
	trigger2 = Var(2) = 1

[State -1, ジャンプ強EX]
	type = ChangeState
	value = 650
	triggerAll = Fvar(10) >= 30
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "c"
	triggerall = statetype = A
	triggerall = command = "holdfwd" || command = "holddown"
	triggerall=var(16)<=7
	trigger1 = ctrl
	trigger2 = stateno = [600,620]
	trigger2 = Var(2) = 1

[State -1, ジャンプ弱]
	type = ChangeState
	value = 600
	TriggerAll = Var(59) = [0,1]
	triggerAll = Var(9) = 0
	triggerall = command = "a"
	triggerall = statetype = A
	trigger1 = ctrl
	trigger2 = stateno = 600
	trigger2 = Var(2) = 1

[State -1, ジャンプ中]
	type = ChangeState
	value = 610
	TriggerAll = Var(59) = [0,1]
	triggerAll = Var(9) = 0
	triggerall = command = "b"
	triggerall = statetype = A
	trigger1 = ctrl
	trigger2 = stateno = 600
	trigger2 = Var(2) = 1

[State -1, ジャンプ強]
	type = ChangeState
	value = 620
	TriggerAll = Var(59) = [0,1]
	triggerAll = Var(9) = 0
	triggerall = command = "c"
	triggerall = statetype = A
	trigger1 = ctrl
	trigger2 = stateno = [600,610]
	trigger2 = Var(2) = 1

;------------------------------------------------------------------------------
[State -1, 反射タイプ切り替え]
	type = ChangeState
	value = 7090
	triggerall = statetype != A
	TriggerAll = RoundState = 2
	triggerall = stateno != 7090
	triggerall = ctrl			;戦闘中
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "x"
	TriggerAll = Palno<9
	trigger1 = var(20) = [0,2]
	trigger1 = var(24) = 0
	trigger1 = helper(20000),var(7) = 1
	trigger2 = var(24) = 0
	trigger2 = helper(20000),var(7) = 0

;------------------------------------------------------------------------------
[State -1, 溜め]
	type = ChangeState
	value = 850
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "y"
	triggerall = statetype != A
	TriggerAll = Power < PowerMax
	trigger1 = ctrl

[State -1, 溜め終了]
	type = VarSet
	trigger1 = command = "y_up"
	trigger1 = Var(30) = 1
	var(30) = 0

;------------------------------------------------------------------------------
[State -1, 充電]
	type = ChangeState
	value = 900
	triggerAll = Var(9) = 0
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "z"
	triggerall = statetype != A
	triggerAll = Var(20) != 3
	triggerAll = Var(20) != 4
	trigger1 = ctrl

[State -1, 充電終了]
	type = VarSet
	trigger1 = command = "z_up"
	trigger1 = Var(31) = 1
	var(31) = 0

;------------------------------------------------------------------------------
[State -1, 挑発]
	type = ChangeState
	value = 160
	TriggerAll = Var(59) = [0,1]
	triggerAll = Var(9) = 0
	triggerall = command = "start"
	triggerall = statetype = S
	trigger1 = ctrl

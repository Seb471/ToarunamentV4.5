
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
	Name = "岩投げA"
	command = ~D, D, D, a
	time = 20
buffer.Time=10

[Command]
	Name = "岩投げB"
	command = ~D, D, D, b
	time = 20
buffer.Time=10

[Command]
	Name = "岩投げC"
	command = ~D, D, D, c
	time = 20
buffer.Time=10

[Command]
	Name = "ハリセンA"
	command = ~B, D, F, a
	time = 20
buffer.Time=10

[Command]
	Name = "ハリセンB"
	command = ~B, D, F, b
	time = 20
buffer.Time=10

[Command]
	Name = "ハリセンC"
	command = ~B, D, F, c
	time = 20
buffer.Time=10

;DeepBlood

[Command]
	Name = "血の香りC"
	command = ~D,D,z
	time = 20
buffer.Time=10

[Command]
	Name = "ブローA"
	command = ~D, D, a
	time = 20
buffer.Time=10

[Command]
	Name = "ブローB"
	command = ~D, D, b
	time = 20
buffer.Time=10

[Command]
	Name = "ブローC"
	command = ~D, D, c
	time = 20
buffer.Time=10


;???
[Command]
	Name = "バックドロップA"
	command =  F, a
	time = 20

[Command]
	Name = "バックドロップB"
	command = ~B, D, F, B, D, F, b
	time = 32
buffer.Time=10

[Command]
	Name = "バックドロップC"
	command = ~B, D, F, B, D, F, c
	time = 32
buffer.Time=10

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------


;Down air kick
[Command]
	Name = "ダウン追撃"
	command = ~D, a
	time = 10

[Command]
	Name = "ダウン追撃"
	command = ~D, b
	time = 10

[Command]
	Name = "ダウン追撃"
	command = ~D, c
	time = 10


[Command]
	Name = "スプレーA"
	command = ~B, D, DB, a
	time = 20
buffer.Time=10

[Command]
	Name = "スプレーB"
	command = ~B, D, DB, b
	time = 20
buffer.Time=10

[Command]
	Name = "ダッシュアタックA"
	command = ~D, DB ,B , a
	time = 20
buffer.Time=10

[Command]
	Name = "ダッシュアタックB"
	command = ~D, DB ,B , b
	time = 20
buffer.Time=10

[Command]
	Name = "ダッシュアタックC"
	command = ~D, DB ,B , c
	time = 20
buffer.Time=10

;taser
[Command]
	Name = "スタンガン"
	command = ~F, DF, D, DB , B, y
	time = 32
buffer.Time=16

;StickCombo
[Command]
	Name = "StickCombo"
	command = ~B, DB, D, DF , F, y
	time = 20
buffer.Time=10

[Command]
	Name = "石投げA"
	command = ~D, DF, F, a
	time = 20
buffer.Time=10

[Command]
	Name = "石投げB"
	command = ~D, DF, F, b
	time = 20
buffer.Time=10

[Command]
	Name = "石投げC"
	command = ~D, DF, F, c
	time = 20
buffer.Time=10
[Command]
	Name = "ステッキB"
	command = /B, y
	time = 10
[Command]
	Name = "ステッキA"
	command =  y
	time = 10



;------------------------------------------------------------------------------
;-| 基本 |-------------------------------------------------------------------



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

[Command]
name = "hold_s"   ;必須コマンド名
command = /s
time = 1
[Command]
name = "hold_x"   ;必須コマンド名
command = /x
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
;ハリセン
[State -1,ハリセン]
	type = ChangeState
	value = 3000
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "ハリセンA" 
	triggerall = statetype != A
	triggerall = Var(23) = 0
	triggerall = 1000 <= power	;ゲージチェック
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1
	trigger3 = (StateNo = [1000,1900])  ;必殺キャンセル
	trigger3 = var(2) = 1

[State -1,ハリセン]
	type = ChangeState
	value = 3001
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "ハリセンB" 
	triggerall = statetype != A
	triggerall = Var(23) = 0
	triggerall = 2000 <= power	;ゲージチェック
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1
	trigger3 = (StateNo = [1000,1900])  ;必殺キャンセル
	trigger3 = var(2) = 1

[State -1,ハリセン]
	type = ChangeState
	value = 3002
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "ハリセンC" 
	triggerall = statetype != A
	triggerall = Var(23) = 0
	triggerall = 3000 <= power	;ゲージチェック
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1
	trigger3 = (StateNo = [1000,1900])  ;必殺キャンセル
	trigger3 = var(2) = 1

;------------------------------------------------------------
;岩投げ
[State -1,岩投げ]
	type = ChangeState
	value = 3100
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "岩投げA" 
	triggerall = statetype != A
	triggerall = 1000 <= power	;ゲージチェック
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1
	trigger3 = (StateNo = [1000,1900])  ;必殺キャンセル
	trigger3 = var(2) = 1

[State -1,岩投げ]
	type = ChangeState
	value = 3101
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "岩投げB" 
	triggerall = statetype != A
	triggerall = 2000 <= power	;ゲージチェック
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1
	trigger3 = (StateNo = [1000,1900])  ;必殺キャンセル
	trigger3 = var(2) = 1

[State -1,岩投げ]
	type = ChangeState
	value = 3102
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "岩投げC" 
	triggerall = statetype != A
	triggerall = 3000 <= power	;ゲージチェック
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1
	trigger3 = (StateNo = [1000,1900])  ;必殺キャンセル
	trigger3 = var(2) = 1

;------------------------------------------------------------
;血の香り

[State -1,血の香り]
	type = ChangeState
	value = 3350
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "血の香りC" 
	triggerall = statetype != A
	triggerall= life <lifemax*0.25
	triggerall = power >2999	;ゲージチェック
	TriggerAll = var(13) = 0
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1
	trigger3 = (StateNo = [1000,1900])  ;必殺キャンセル
	trigger3 = var(2) = 1

;------------------------------------------------------------
;ブロー
[State -1,ブローA]
	type = ChangeState
	value = 3400
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "ブローA" 
	triggerall = statetype != A
	triggerall = 1000 <= power	;ゲージチェック
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1
	trigger3 = (StateNo = [1000,1900])  ;必殺キャンセル
	trigger3 = var(2) = 1

[State -1,ブローB]
	type = ChangeState
	value = 3401
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "ブローB" 
	triggerall = statetype != A
	triggerall = 2000 <= power	;ゲージチェック
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1
	trigger3 = (StateNo = [1000,1900])  ;必殺キャンセル
	trigger3 = var(2) = 1

[State -1,ブローC]
	type = ChangeState
	value = 3402
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "ブローC" 
	triggerall = statetype != A
	triggerall = 3000 <= power	;ゲージチェック
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1
	trigger3 = (StateNo = [1000,1900])  ;必殺キャンセル
	trigger3 = var(2) = 1

;------------------------------------------------------------------------------
;必殺技
;------------------------------------------------------------------------------
;スタンガン
[State -1,スタンガン]
	type = ChangeState
	value = 1700 
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "スタンガン" 
	triggerall = statetype != A
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1

;ダッシュアタックA
[State -1,ダッシュアタックA]
	type = ChangeState
	value = 1800
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "ダッシュアタックA" 
	triggerall = statetype != A
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1

;ダッシュアタックB
[State -1,ダッシュアタックB]
	type = ChangeState
	value = 1801
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "ダッシュアタックB" 
	triggerall = statetype != A
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1

;ダッシュアタックC
[State -1,ダッシュアタックC]
	type = ChangeState
	value = 1802
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "ダッシュアタックC" 
	triggerall = statetype != A
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1

;石投げA
[State -1,石投げA]
	type = ChangeState
	value = 1500
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "石投げA" 
	triggerall = statetype != A
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1
	trigger3 = StateNo = 1550
	trigger3 = var(2) = 1

;石投げB
[State -1,石投げB]
	type = ChangeState
	value = 1501
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "石投げB" 
	triggerall = statetype != A
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1
	trigger3 = StateNo = 1550
	trigger3 = var(2) = 1

;石投げC
[State -1,石投げC]
	type = ChangeState
	value = 1502
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "石投げC" 
	triggerall = statetype != A
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1
	trigger3 = StateNo = 1550
	trigger3 = var(2) = 1

;スプレーA
[State -1,スプレーA]
	type = ChangeState
	value = 1000 
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "スプレーA" 
	triggerall = statetype != A
	trigger1 = ctrl

;スプレーB
[State -1,スプレーB]
	type = ChangeState
	value = 1010 
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "スプレーB" 
	triggerall = statetype != A
	trigger1 = ctrl

[State -1,StickCombo]
	type = ChangeState
	value = 3500
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "StickCombo" 
	triggerall = statetype != A
	triggerall = 1000 <= power	;ゲージチェック
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1
	trigger3 = StateNo = 1300
	trigger3 = var(29) = 1
	trigger3 = var(2) = 1

;ステッキB
[State -1,ステッキB]
	type = ChangeState
	value = 1200 
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "ステッキB" 
	triggerall = statetype != A
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1
	trigger3 = StateNo = 1300
	trigger3 = var(29) = 2
	trigger3 = var(2) = 1

;ステッキA
[State -1,ステッキA]
	type = ChangeState
	value = 1210 
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "ステッキA" 
	triggerall = statetype != A
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル
	trigger2 = var(2) = 1
	trigger3 = StateNo = 1300
	trigger3 = var(29) = 1
	trigger3 = var(2) = 1



;ダウン追撃
[State -1,ダウン追撃]
	type = ChangeState
	value = 1900 
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "ダウン追撃" 
	triggerall = statetype = A
	trigger1 = ctrl
	trigger2 = (StateNo = [200,699])    ;通常キャンセル

[State -1, ステッキ電撃]
	Type     = Helper
	TriggerAll = Var(59) = [0,1]
	triggerall = StateNo = 1300
	triggerall = NumHelper(4200) = 0
	triggerall = MoveContact > 0
	triggerall = MoveContact < 10
	trigger1 = command = "y"
	trigger1 = command != "holddown"
	trigger2 = command = "y"
	trigger2 = command != "holddown"
	helpertype = normal
	Stateno  = 4200
	ID       = 4200
	Postype  = P1
	Pos      = 50,IfElse(var(29) = 1,-103,-40)
	Ownpal   = 1
	Keyctrl  = 0
	Persistent = 0
	size.xscale = 1
	size.yscale = 1



;--------------------------------------------------------------------------
[State -1]
Type = ChangeState
Value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;?o?b?N?X?e?b?v
[State -1]
Type = ChangeState
Value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;おはか
[State -1,おはか]
	type = ChangeState
	value = 1400
	TriggerAll = Var(59) = [0,1]
	triggerall = statetype != A
	triggerall = stateno = 5110
	triggerall = var(15) = 0
	triggerall = NumHelper(1410) = 0
	trigger1 = command = "a"
	trigger1 = command != "holddown"


;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

;[State -1, 走る]
;	type = ChangeState
;	value = 100
;	trigger1 = command = "FF"
;	trigger1 = statetype = S
;	trigger1 = ctrl
;
;[State -1, バックステップ]
;	type = ChangeState
;	value = 105
;	trigger1 = command = "BB"
;	trigger1 = statetype = S
;	trigger1 = ctrl

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------


;------------------------------------------------------------------------------


;==============================================================================
; 通常攻撃技
;==============================================================================
[State -1, 立ち弱]
	type = ChangeState
	value = 200
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "a"
	triggerall = command != "holddown"
	triggerall = statetype = S
	trigger1 = ctrl
	trigger2 = stateno = 200
	trigger2 = Var(2) = 1

[State -1, 立ち中]
	type = ChangeState
	value = 210
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "b"
	triggerall = command != "holddown"
	triggerall = statetype = S
	trigger1 = ctrl
	trigger2 = stateno = 200
	trigger2 = Var(2) = 1

[State -1, 立ち強]
	type = ChangeState
	value = 220
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "c"
	triggerall = command != "holddown"
	triggerall = statetype = S
	trigger1 = ctrl
	trigger2 = stateno = [200,210]
	trigger2 = Var(2) = 1

;------------------------------------------------------------------------------
[State -1, しゃがみ弱]
	type = ChangeState
	value = 400
	TriggerAll = Var(59) = [0,1]
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
	triggerall = command = "c"
	triggerall = command = "holddown"
	triggerall = statetype = C
	trigger1 = ctrl
	trigger2 = stateno = [400,410]
	trigger2 = Var(2) = 1

;------------------------------------------------------------------------------
[State -1, ジャンプ弱]
	type = ChangeState
	value = 600
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "a"
	triggerall = statetype = A
	trigger1 = ctrl
	trigger2 = stateno = 600
	trigger2 = Var(2) = 1

[State -1, ジャンプ中]
	type = ChangeState
	value = 610
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "b"
	triggerall = statetype = A
	trigger1 = ctrl
	trigger2 = stateno = 600
	trigger2 = Var(2) = 1

[State -1, ジャンプ強]
	type = ChangeState
	value = 620
	TriggerAll = Var(59) = [0,1]
	triggerall = command = "c"
	triggerall = statetype = A
	trigger1 = ctrl
	trigger2 = stateno = [600,610]
	trigger2 = Var(2) = 1

[State -1,Charge];Charge
	Type=ChangeState
	value=700
	TriggerAll=!IsHelper
	TriggerAll=Alive!=0
	TriggerAll=StateType!=A
	TriggerAll=command="hold_s"
	TriggerAll=Power<PowerMax
	Trigger1=Ctrl
[State -1,Dodge];Dodge
	Type=ChangeState
	value=800
	TriggerAll=!IsHelper
	TriggerAll=Alive!=0
	TriggerAll=StateType!=A
	TriggerAll=command="hold_x"
	Trigger1=Ctrl
[State -1];FRC
	type = ChangeState
	value = 6700
	triggerall = command = "z"
	triggerall = movetype = A ||stateno = 1865
	triggerall = power >= 499
	trigger1 = var(1)

;¥¥¥¥¥¥¥¥イベントバッド_イベント5.5手紙イベントバット¥¥¥¥¥¥¥¥
;○数日後手紙がかえってくる
*start
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*10_3 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;【背景】ヒロインの部屋
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;===========================================================
#
数日後。　兄[sp]"文矢"からの手紙がかえってきた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、ありがとう。下がって頂戴」[p]
#
;ここまで共通
;○文矢バット手紙
[手紙文矢 fumi_number=]
[名前]へ[r]
[r]
華織を呼び出そうとしました。[r]
ですが、今は家族のことで奔走してるようで難しいそうです。[r]
[r]
どうやらご兄弟のうちのひとりが、失踪して不幸があったようです。[r]
家の立場上、婚姻関係破棄は、しないと思いますが、[r]
;婚姻関係の破棄？
今はそっとしてあげて下さい。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　　文矢[p]
[手紙読了]
;驚きと悲しみ
[主人公困り]
[wait time=10]
;控えめに口をあけて
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そんな……」[p]
;============================================================
[暗転２ storage="bg/bg_prologue.jpg"]
[主人公口ムッ]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;============================================================
;ナレーター
文矢の言う通り、その後、四条家と[名字]家の[r]
結納は、たしかに執り行われた。[p]
しかし、その2人の間に拭いきれない影を[r] 
落としていた。[p] 
;============================================================
;メッセージをもどします
[resetfont]
;メッセージレイヤを会話窓用に設定変更
[暗転]
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[暗転２終了]
;============================================================
[メッセージウィンドウ上ボタン表示]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「もし、あの時、華織様のことを"想って"いたら、[r]
[主人公目閉じ]
[wait time=10]
[sp]状況は変わっていたのでしょうか？」[p]
#
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[主人公退場]

[chara_mod name="bg" storage="toumei.gif" time=500]
[wait time=10]
[chara_mod name="bg" storage="bg/bg_prologue_dark.jpg" time=1000]
[wait time=10]

;画面中央に「完」
[テキスト全画面白文字暗]
[wait time=10]
[layopt layer=28 visible=true]
[ptext text="完" x=460 y=300 size=35 color="white" layer=28 time=1000]
[p]
[freeimage layer = 28]
[stopbgm]
[chara_mod name="bg" storage="toumei.gif" time=500]
[wait time=10]

;badED処理追記予定
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
@jump storage="test_sijyou.ks"
[s]

*window_close
[cm]
[chara_mod name="girl_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false
[layopt layer=27 visible=true]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
[l]

;会話ウィンドウ表示
[chara_mod name="message_bg" storage=&f.message_storage time=1]
;機能ボタン表示
;セーブ等ボタン配置
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;メッセージレイヤを表示
[if exp="f.kaogura!='off'"]
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[endif]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[freeimage layer = 27]
[wait time=10]

[return]

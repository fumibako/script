;¥¥¥¥¥¥¥¥イベントバッド¥¥¥¥¥¥¥¥
;イベント5.5手紙イベントバット
;○数日後手紙がかえってくる
;【背景】ヒロインの部屋
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

#
数日後、兄[sp]"文矢"からの手紙がかえってきた。[p]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、ありがとう。下がって頂戴」[p]
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
[主人公退場]
#
;ナレーター
[テキスト全画面白文字暗]
文矢の言う通り、その後、四条家と[名字]家の[r]
結納は、たしかに執り行われた。[p]
しかし、その2人の間には拭いきれない影が[r]
落とされていたのであった……。[p]
[イベントシーン構築]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[主人公困り]
[wait time=10]
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

[wait time=100]
[layopt layer=29 visible=true]
[image layer=29 x=1 y=1 width=960 height=640 storage="bg/black.png" time=1000]
[テキスト全画面白文字暗]
[image layer=29 x=1 y=1 width=960 height=640 storage="toumei.gif" time=1500]
[freeimage layer = 29]

;画面中央に
[font color=white size=35]
[r]
[r]
[r]
[r]
[sp]　　　　　　　　完[p]
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

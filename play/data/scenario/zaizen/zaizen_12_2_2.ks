=============================================
財前ルート1２月2週
=============================================
;金融恐慌の町の様子を主人公自身でも見る
;=======================お芝居の準備中です==========================================
*replay_zaizen_12_2_2
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*12_2 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo by ゆうあかり http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[主人公真剣]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

そして私は実際の様子を見ていないことに気づいた。[p]

;【立ち絵】主人公通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「……磯野、銀行の様子を[r]
[sp] 見に行きたいのですが、いいでしょうか？」[p]

[whosay name="磯野"]
「いけません！[r]
[sp] 銀行の前では人が暴動一歩手前なのですよ？[r]
[sp] 巻き込まれたらどうするのですか？」[p]

;【立ち絵】主人公目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「私はそれでも現実を知りたいのです[r]
[sp] 今何が起こり、どうなっているのか[r]
[sp] いち国民として知る権利があると思います」[p]

[whosay name="磯野"]
「新聞だけで十分ではありませんか」[p]

;【立ち絵】主人公通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「私もただ守られているだけでなく[r]
[sp] 財前様がどのような立場にたたされているかだけでも[r]
[sp] 感じてお手紙を出したいと思います百聞は一見にしかずといいますわ！」[p]

[whosay name="磯野"]
「しかし……」[p]

;【立ち絵】主人公通常
[主人公通常]
「遠くからでもいいのです。[r]
[sp] 現場の事を知り、できることがあるかも知れませんお願いです！」[p]

[whosay name="磯野"]
「はあ……。遠くからですよ。[r]
[sp] ……事件の現場を見ようなどと野次馬と噂されても困りますから、[r]
[sp] 私もご一緒します」[p]

;【立ち絵】主人ほほえみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
[主人公眉下げ下]
[主人公口ほほえみ]
「磯野、ありがとう」[p]

[暗転]

; 背景銀行
全画面背景
＃
財前様の立たされている立場を[r]
知って励ましたいその想いで出かけた[r]
……だけどすぐにもう恐ろしい[p]

遠くからでも聞こえた怒声見身が震える。[p]

「早くしろ」、「金を返せ！」[r]
人々は警察と衝突寸前だった。[p]

[イベントシーン構築]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
[主人公憂い]

「こんな中で財前様は逃げずに立ち向かっているのね[r]
[sp] 私も財前様と町の皆が落ち着けるために何かしたいわ[r]
[sp] 皆とても辛い思いをしているのね」[p]


＃
町はいつも活気があって皆、明るい顔をしていたのに、[r]
今は皆怒り、困り、混乱している。[p]

[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(胸が痛いわ）[p]

＃磯野
「お嬢様そろそろ」[p]


[主人公目閉じ]　
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、帰りましょう今ここで私にできることはないのね」[p]

[主人公通常]
（けれど、財前様はこの現状と戦っているわ！）[p]
[イベントシーン終了]
;=================================================================================================
[if exp="tf.okeiko_gamen==true"]
@jump storage="event.ks" target=*event_owari
[endif]
@jump storage="test_zaizen.ks"
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

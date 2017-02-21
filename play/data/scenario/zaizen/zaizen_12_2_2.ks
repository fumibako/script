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
*seen1
;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

そして、私は実際の様子を見ていないことに気づいた。[p]

;【立ち絵】主人公通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「……磯野、銀行の様子を見に行きたいのですが、[r]
[sp]いいでしょうか？」[p]

[whosay name="磯野"]
「いけません！[r]
[sp]銀行の前では人が暴動一歩手前なのですよ？[r]
[sp]巻き込まれたらどうするのですか？」[p]

;【立ち絵】主人公目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「私はそれでも現実を知りたいのです。[r]
[sp]今、何が起こり、どうなっているのか、[r]
[sp]いち国民として知る権利があると思います」[p]

[whosay name="磯野"]
「新聞だけで充分ではありませんか」[p]

;【立ち絵】主人公通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「私もただ、守られているだけでなく、財前様がどのような立場に[r]
[sp]立たされているか理解した上で、お手紙を出したいと思います」[p]
;理解した上で

;【立ち絵】主人公通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
「百聞は一見にしかずといいますわ！」[p]

[whosay name="磯野"]
「しかし……」[p]

;【立ち絵】主人公通常
[主人公通常]
「遠くからでもいいのです。[r]
[sp]現場の事を知り、できることがあるかも知れません。[r]
[sp]お願いです！」[p]

[whosay name="磯野"]
「はあ……。 遠くからですよ。[r]
[sp]……野次馬と噂されても困りますから、[r]
[sp]私もご一緒します」[p]
;見るのは分かっているので　……野次馬と噂されても困りますから、でいいはす。　。

;【立ち絵】主人ほほえみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
[主人公眉下げ下]
[主人公口ほほえみ]
「磯野、ありがとう」[p]
;全画面時はない↓
[主人公通常]
[暗転]
#
;===============================================================
;ﾒｯｾｰｼﾞｸﾘｯｸ表示隠し
[layopt layer=message0 visible=false]
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
[position left=200 width=500 height=300 top=100 page=fore margint="50"]
;【背景】銀行 全画面背景
[image layer=29 x=1 y=1 storage="bg/bg_zaizen_ginkou_mae.jpg" time=1000 visible=true]
;【背景】町並み　ひとまず
[chara_mod name="bg" storage="bg/bg_zaizen_ginkou_mae1.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
;ﾒｯｾｰｼﾞｸﾘｯｸ表示
[layopt layer=message0 visible=true]
;テキスト全画面
[font color=white size=27]
;===============================================================
;テキスト全画面

財前様の立たされている立場を知って励ましたい。[r]
その想いで、騒乱の起きている財前様の経営する銀行支店向かった。[r]
;「どんな」（新聞に書いてあった　事件の最中　騒動　被害　抗争　激突　騒乱）
;「どこへ」　銀行へと出掛けた　向かった。
[r]
……だけど、既に状況は深刻な事態になっていた。[p]
;だけど、恐ろしい状況（惨事など）が目に飛び込んできた。　
;だけど、既に状況は深刻な事態になっていた。　など
見た事のないほどの人の行列に圧倒されてしまう。[p]

銀行員の、"順番にお待ちください"[r]
という悲鳴のような声が聞こえる中、[r]
人々の「早くしろ」、「金を返せ！」[r]
遠くからでも聞こえる怒声に身が震える。[p]
;遠くからでも聞こえる怒声に身が震える。[p]


;===============================================================
;メッセージをもどします
[resetfont]
;ｸﾘｯｸがみえる場合は追加↓
[layopt layer=message0 visible=false]
[freeimage layer = 29 time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;ｸﾘｯｸがみえる場合は追加↓
[layopt layer=message0 visible=true]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
;===============================================================

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「こんな中で財前様は、逃げずに立ち向かっているのね。[r]
[sp]私も財前様と町の皆が落ち着けるために何かしたいわ。[r]
[sp]皆、とても辛い思いをしているのね」[p]

#
町は、いつも活気があって皆、明るい顔をしていたのに、[r]
今は、怒り、、動揺、困惑に満ち溢れている。[p]
;２回目は皆はなくてもいい
;今は、怒り、動揺、困惑に満ち溢れている。

[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(胸が痛いわ）[p]

[whosay name=磯野 color="#cf5a7f"]
「お嬢様、そろそろ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「ええ、帰りましょう。　今ここで私にできることはないのね」[p]

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

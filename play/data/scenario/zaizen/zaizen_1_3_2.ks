;=============================================
;イベント８、８回目【新聞の記事に載る】１月３週　数日後　財前視点
;=======================お芝居の準備中です=======================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*1_3_2 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
;【背景】洋館居間
[chara_mod name="bg" storage="bg/test_room_zaizen_ima.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版枠茶色]
#
;【立ち絵】財前：真剣　;変更してください
;[財前サイズ通常]
[財前ベーススーツ]
[財前通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

[whosay name="女中"]
「美彬様、新聞をどうぞ」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「ああ」[p]

（各新聞社には釘を打ってあるから、下手な事は書いていないだろう[r]
[sp]が……）[p]

#
主要な各新聞社の記事をチェックする為、朝一番に新聞を読む習慣と[r]
なっている。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

;【立ち絵】財前：驚
[whosay name="財前美彬" color="#7a65b2"]
[財前驚き]
「この記事は！」[p]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】;[新聞] 裏で画面構成 test_bg_sinbun.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=1 y=1 storage="bg/test_bg_sinbun.jpg" time=1000 visible=true]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

[sp]国の経済を揺るがす銀行の取り付け騒ぎは[r]
日増しに激しくなり、町の人たちが「泥棒！」と[r]
張り裂けんばかりに叫び、ガラスを割るのをみて、[r]
この不安定に揺れるこの時代に失望を覚えました。[r]
[r]
放漫な経営をし、企業と癒着し[r]
多くの不良債権をかかえた多くの銀行に[r]
預金者は自分の預金まで奪われる不安に駆られ、[r]
憤るのは当然の事です[p]


私にできる事はないかと専門書を調べ、[r]
新聞を読みながら、また元の、[r]
明るい町の人たちに出会えないかと[r]
願っています。[r]
私は何もできない自分が悔しくてたまりません。[p]

[sp]政府も緊急に対応し、[r]
また銀行も堅実な経営し、[r]
[sp] 今も預金者の事や社員の事を考えて[r]
働きかけている方もいます。[r]
[sp]私の大切な人はその一員です[r]
[r]
[sp] この騒ぎの痛みは後々まで尾を引く重い事態です。[r]
……[r]
（新聞社に寄せられた１６歳の少女の声より）[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
;【SE】紙に触れる（パラリ）
;[playse storage=paper_open.ogg loop=false ]
;メッセージをもどします
[resetfont]
[freeimage layer = 29 time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;[call target=*start storage="macro_tati_zaizen.ks"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================

;【立ち絵】財前：驚
[財前驚き]
[whosay name="財前美彬" color="#7a65b2"]
（文章の雰囲気が[名前]さんらしい大切な人はその一員……）[p]

[財前眉ひそめ]
（まさか、[名前]さんが？）[p]

#
そして複数の新聞が読者欄に[ruby text=とど]彼女の投稿した記事を[r]
載せていた。[p]

;前面に彼女の書いた投稿した記事を載せていた[p]上にします

#
各新聞社の記事は、どれも人の感情に訴える内容で[r]
彼女の気持ちが胸に迫るように伝わってきた。[p]

;#
;どれも各新聞社の記事を読みつつ人の感情に訴える記事で[r]
;彼女の気持は胸にせまるものがあった[p]上にします

;【立ち絵】財前：目閉じ
[財前目閉じ]
「……[名前]さん」[p]

（きっと[名前]さんだろう。[r]
[sp]……今すぐ彼女に会いに行きたい）[p]

（この沸き上がる熱い気持ちは何だろうか）[p]
[fadeoutbgm time=3000]
;===============================================================
[暗転２]
;黒背景を変更する場合 storage="" clegit=true　でクレジット表示可
[財前退場]
[暗転]
[暗転２終了]
;==========================
#
―― そして取り付け騒ぎは、次第に沈静化していった[p]

;===============================================================
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
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

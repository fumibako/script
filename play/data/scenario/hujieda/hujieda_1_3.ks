;=========================================================================
;イベント１3回目【時子さんからの手紙】１月3週、
*replay_hujieda_1_3
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*1_3 storage="hujieda/preload_hujieda.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_hujieda.ks"]
;【背景】主人公邸 部屋
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=========================================================================

[主人公目パチ1回]
#
磯野は手紙を差し出して言った。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[whosay name=磯野 color="dimgray"]
「三宮様からの手紙です。[r]
[sp]すっかりお嬢様が立ち直られたようで、三宮様には感謝しないと[r]
[sp]いけませんね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公ほほえみ]
「ええ！　私も感謝しています」[p]

（時子さんのおかげで光が見えたわ）[p]

[whosay name=磯野 color="dimgray"]
[主人公通常]
;微笑みから憂いに変わる間の表情
「お嬢様、私は仕事があるので失礼します。[r]
[sp]ですが旦那様の言いつけがありますので[r]
[sp]藤枝様が独逸へ行かれるまで女中は付けますよ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：ため息
[主人公憂い]
「わかっています」[p]
[主人公目閉]
（私は結局、身動きできないわ、[r]
[主人公目伏]
[sp]それでも、時子さんのお手紙まで磯野の目を通らないだけ[r]
[sp]いいのかもしれないわ）[p]

[whosay name=磯野 color="dimgray"]
「それでは……」[p]

;【SE】襖を閉める（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]

;【SE】落ち着いた足音（フェードアウト）
[playse storage=isono_out.ogg loop=false ]

#
磯野の足音が遠ざかるのを確認し、手紙の封を切り[r]
時子さんからの手紙を読む。[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

*fumi_toutyaku_tokiko_hujieda
[if exp="tf.okeiko_gamen==true"]
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「星も凍るような夜」　三宮　時子";//←仮タイトルです。お好みに変更してください
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*fumi_tokiko_hujieda");
f.fumi_list_all_location_taishou.push(6);
f.fumi_list_all_location_fumi.push(1);
f.fumi_all_number=f.fumi_all_number + 1;
[endscript]
[endif]

[手紙時子]
[名字]　[名前]様へ [l][r]
[r]
[sp]　星も凍るような寒い夜[r]
[名前]さんは穏やかに過ごされているでしょうか？[r]
私は変わりなく過ごしております。[r]
[r]
[sp]さて先日お調べするといった藤枝様ですが、[r]
独逸への留学についてお知らせします。[r]
独逸留学は藤枝様ともう[ruby text=ふた]二[ruby text=り]人が決定していたのですが[r]
[ruby text=さん]三枠が諸事情で[ruby text=いち]一枠となり独逸へ行けるのは[ruby text=ひと]一[ruby text=り]人となった。[r]
そうです。[p]
;はみだし修正
[sp][r][r][r]
[sp][ruby text=ひと]一[ruby text=り]人は女性なので、将来この国の音楽の指導者となるのは[r]
難しいだろうという事で藤枝様ともう[ruby text=ひと]一[ruby text=り]人の候補の原様という方の[r]
どちらかになるという結論になり、[r]
二月に[ruby text=ふた]二[ruby text=り]人の演奏を関係者の方が聴いて留学する[ruby text=ひと]一[ruby text=り]人を決定する[r]
だとか。[p]
[sp]藤枝様と原様の実力は拮抗していて[r]
どちらが留学してもおかしくないと言われてますが[r]
ただやはり毎日はピアノの練習できない藤枝様の方が[r]
当日不利ではないかとの噂ですわ。[r]
[r]
[sp]私は[名前]さんの事を応援しています。[r]
どのような結果になってもいつまでもお友達です[r]
[r]
[sp][名前]さんが今年も幸福に満ちた、一年となりますよう、[r]
心から祈っています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　三宮　時子[p]
[手紙読了]
[resetfont]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;【立ち絵】主人公：驚き
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（藤枝様の留学が無くなる……）[p]
;【立ち絵】主人公：目伏せ思案
[主人公口通常]
[主人公眉困り]
[主人公目閉じ]
（一瞬でも喜んでしまった自分が醜い。[r]
[sp]藤枝様の夢が叶うかもしれないのに）[p]
[主人公眉下げ下]
（藤枝様は、沢山お稽古を励ましてくれたわ。 [r]
[sp]だから悲しくとも応援したい）[p]

;【SE】ペンで書く
[playse storage=pen_write.ogg loop=false ]
;【SE】ペンで書く
[playse storage=pen_write.ogg loop=false ]

;【SE】ペンのキャップを閉める
[playse storage=pen_katya.ogg loop=false ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公　通常
[主人公通常]
「この手紙を出してくれますか？」[p]

[whosay name="女中"]
「かしこまりました……三宮様へですね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 目伏せ
[主人公目伏]
[主人公眉下げ下]
「ええ、よろしくお願いしますわ」[p]

;【立ち絵】主人公 目伏せ
[主人公目閉じ]
[主人公頬染め]
[主人公口ほほえみ]

#
時子さんの手紙の中に、藤枝様への手紙も入れてある。[r]
きっと私の気持ちをご存じでいらっしゃるなら届けて下さるでしょう。[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
（……どうか藤枝様へ辿り着きますように）[p]
[fadeoutbgm time=3000]
#
――最後に私が藤枝様の背中を押すのだわ。[r]
[sp]藤枝様が自由に飛び立てるように[p]

;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
[イベントシーン終了４]
@jump storage="test_hujieda.ks"
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

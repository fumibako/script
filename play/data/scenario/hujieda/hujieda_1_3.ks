;=============================================
;イベント１3回目【時子さんからの手紙】１月3週、
;=============================================
[背景_庭]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
#
[主人公ポーズ通常]
[主人公通常]
[主人公目パチ1回]

＃磯野は手紙を差し出していった

[whosay name=磯野 color="dimgray"]
「三宮様からの手紙です[r]
[sp] すっかりお嬢様が立ち直られたようで[r]
[sp] 三宮様には感謝しないといけませんね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
「ええ！　私も感謝しています」[r]
（時子さんのおかげで光が見えたわ）[p]

[whosay name=磯野 color="dimgray"]
「お嬢様、私は仕事があるので失礼します[r]
[sp] ですが旦那様の言いつけがありますので[r]
[sp] 藤枝さまが独逸へ行かれるまで女中は付けますよ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：ため息
「わかっています」[r]
（私は結局身動きできないわ、[r]
[sp] それでも時子さんのお手紙まで磯野の目を[r]
[sp] 通らないだけいいのかもしれないわ）[p]

[whosay name=磯野 color="dimgray"]
「それでは……」[p]

;【SE】襖を閉める（ゆっくり）

＃
磯野の足音が遠ざかるのを確認し
手紙の封を切り時子さんからの手紙を読む

;【SE】紙の音（カサッ）
[手紙]
[名字]　[名前]様へ [l][r]
[r]
[sp]啓白　星も凍るような寒い夜[r]
[名前]さんは穏やかに過ごされているでしょうか？[r]
私は変わりなく過ごしております。[r]
[r]
[sp] さて先日お調べするといった藤枝様ですが、[r]
独逸への留学についてお知らせします。[r]
独逸留学は藤枝様ともう２人が決定していたのですが[r]
３枠が諸事情で１枠となり独逸へ行けるのは一人となったそうです。[r]
[r]
[sp] 一人は女性なので将来この国の音楽の指導者となるのは[r]
難しいだろうという事で藤枝様ともう一人の候補の原様という方の[r]
どちらかになるという結論になり、[r]
２月に２人の演奏を関係者の方が聴いて留学する一人を決定するだとか。[r]
[r]
[sp]藤枝様と原様の実力は拮抗していて[r]
どちらが留学してもおかしくないと言われてますが[r]
ただやはり毎日ピアノの練習できない藤枝様の方が[r]
当日不利ではないかとの噂ですわ[r]
[r]
[sp]私は[名前]さんの事を応援しています。[r]
どのような結果になってもいつまでもお友達です[r]
[r]
[sp][名前]さんが今年も幸福に満ちた１年となりますよう、[r]
心から祈っています。[r]
[r]
かしこ[r]
[sp][sp][sp][sp][sp][sp][sp][sp][sp][sp] 三宮　時子[p]

[resetfont]
;【SE】紙に触れる（パラリ）
[背景_庭]
[主人公ポーズ通常]
;【立ち絵】主人公：驚き
（藤枝様の留学が無くなる……）[p]
;【立ち絵】主人公：目伏せ思案
（一瞬でも喜んでしまった自分が醜い[r]
[sp] 藤枝様の夢が叶うかもしれないのに[r]
[sp] 藤枝様は沢山お稽古を励ましてくれたわ[r]
[sp] だから悲しくとも応援したい)[p]

;【SE】ペンで書く
;【SE】ペンで書く

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公　通常
「この手紙を出してくれますか？」[p]

＃女中
「かしこまりました……三宮様へですね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 目伏せ
「ええ、よろしくお願いしますわ」[p]

;【立ち絵】主人公 目伏せ
（時子さんへと中に藤枝様への手紙が入ってある[r]
[sp] ……どうか藤枝様へ辿り着きますように）[p]

＃
最後に私が藤枝様の背中を押すのだわ
藤枝様が自由に飛び立てるように

;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
@jump storage="test_katuragi.ks"
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

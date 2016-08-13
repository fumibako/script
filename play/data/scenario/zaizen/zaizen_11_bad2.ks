;【背景】～指定ありません　一時的に書いてます。変更してください～
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]

;【立ち絵】主人公：目伏せ悲しみ
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……はい。そういたします」[r]
（お母様が心配だけれど財前様の為に[r]
[sp] はそっとしておくべきなのだわ）[p]

#
私は財前様に連れられ[r]
会場を後にしました[p]


;暗転
#
私と財前様は交際期間を終えた後[r]
華燭の典を挙げ財前様は[r]
私の夫となりました[p]

#
夫は仕事を次々に成功させ[r]
銀行を大きくし、[r]
私は社交界で夫を支える良き妻だと[r]
評判になり全てが順調でした[p]

#
けれど私は満たされない[r]
想いを抱えるようになり[r]
胸の内に寂しさを感じるように[r]
なりました[p]

ー数年後[p]
;洋館居間
;【立ち絵】主人公：目伏せ
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私は傍からみても幸せだわ[r]
[sp] 夫は私を大切にしてくれるし、[r]
[sp] 望めば大概の事を叶えてくれる[r]
[sp] 寂しいと感じるのは欲張りなのかしら？）[p]

;【立ち絵】主人公：目伏せ悲しみ
（私は夫を愛している。[r]
[sp] でも夫にとって私は妻として[r]
[sp] 役に立つだけの人形なのだわ。）[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「どうした？少し不満そうだが？」[p]

;【立ち絵】主人公：目伏せ憂い微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、なんでもありませんわ[r]
[sp] 今日も遅くまで仕事ですね[r]
[sp]お気おつけていってらっしゃいませ」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「ああ、行ってくる」[p]

#
彼は立ち上がり居間を後にする[r]
私はそつなく仕事が全てな[r]
夫の邪魔にならないように[r]
適度にいたわり、振る舞う[p]

;【立ち絵】主人公：目閉じ
 [主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（寂しいといえば鬱陶しがられるだろう[r]
[sp] 夫は割り切った関係を望んでいる[r]
[sp] でも私は夫を愛しているから苦しい）[p]

;【立ち絵】主人公：目閉じ悲しみ
（愛してほしいというのは欲張りだわ[r]
[sp] 私は夫を愛しているからこそ[r]
[sp] 夫が望む器量の良い[r]
[sp] 貞淑な妻の役目を果たそう）[p]

;bad2終わり


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

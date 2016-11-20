;========================================================================
;イベント１５回目【指切りエンド】3月4週、
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*3_4 storage="hujieda/preload_hujieda.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;【背景】公園
[chara_mod name="bg" storage="bg/I9IhvvVdPo/kouenn.jpg"]
[eval exp="f.haikei_credit=''"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=========================================================================

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目パチ1回]
「忙し時間を割いて頂いてありがとうございます[r]
[sp]それにしてもまたどうしてこの場所に？」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
#
木漏れ日は暖かく、もう桜も咲き始めている[r]
今日はお父様とお母様が公園に連れて行ってくれた[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「私たちも[名前]のお手紙の相手に興味をもったのでな。」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
「まあ……！　それは嬉しい事ですわ」[p]
[主人公驚]
#
そしてその後言葉を告げられなくなる[r]
まだ若葉の楓の木の下に藤枝様が立っていた[r]
こちらに気づいて彼は私に柔らかく微笑む[r]
そして彼お父様に礼をしていった[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】藤枝：真剣
[藤枝ベース私服]
[藤枝真剣]
[whosay name="藤枝 肇" color=%mp.color]
「[名字]様この度は機会を頂き[r]
ありがとうございます！」[p]

[主人公ほほえみ]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「新聞奨学生になり、[r]
[sp]音楽学校への編入試験も[r]
[sp]優秀な成績だったと聞いた[r]
[sp]君は努力家のようだな。」[p]

;【立ち絵】藤枝：微笑み
[藤枝微笑み]
[whosay name="藤枝 肇" color=%mp.color]
「自分の夢と恋の為ですから[r]
[sp]どんな努力を惜しむつもりはありません」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「良い目をしているな
[sp][名前]との仲を正式に認めるのは早いし[r]
[sp]君の努力が必ずしも報われとは限らない[r]
[sp]だが君が自力で道を開けたときは君を認めよう」[p]

;【立ち絵】藤枝：微笑み
[藤枝笑顔大]
[whosay name="藤枝 肇" color=%mp.color]
「今は僕にとって十分なお言葉です[r]
[sp]僕は慢心ぜず努力し、彼女にふさわしくなります」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]に苦労させるつもりはない[r]
[sp]君が一人前になるまではどれぐらいだろうな？　」[p]

;【立ち絵】藤枝：真剣
[藤枝通常]
[whosay name="藤枝 肇" color=%mp.color]
「あと一年したら学校は卒業ですが、数年は留学します[r]
ですが留学を終えたときには一人前になっているように[r]
色々なコンクールに出場つもりですし沢山作曲します」[p]

[fadeoutbgm time=3000]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「欧米諸国は音楽のレベルが高いと聞くが……」[p]

;【立ち絵】藤枝：真剣
[藤枝目閉じ]
[whosay name="藤枝 肇" color=%mp.color]
「ええ、[r]
でも僕も負けるつもりはありません」[p]

#
藤枝様の瞳は強く輝いていた[r]
初めて会った時よりもずっと生き生きしている[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公照れ目普通]
「お父様、藤枝様ならきっとやり遂げますわ[r]
[sp]大丈夫です！」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「そうか」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】はなごよみ〜さくら〜
[playbgm storage="ending_hanagoyomi_sakura.ogg" loop=true]
[eval exp="f.bgm_storage='ending_hanagoyomi_sakura.ogg'"]
[endif]

;【立ち絵】藤枝：目伏せ照れ
[藤枝目伏せ照れ]
[whosay name="藤枝 肇" color=%mp.color]
「貴方の事を[r]
[名前]さんとお呼びしてもいいですか？　」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公ほほえみ]
「はい、勿論です[r]
私もあなたを肇さまと[r]
お呼びしても構いませんか？」[p]

;【立ち絵】藤枝：微笑み照れ
[藤枝微笑み照れ]
[whosay name="藤枝 肇" color=%mp.color]
「はい！　ありがとうございます」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「全く、私達がいることを忘れているんじゃないのか？[r]
まだ二人きりで会わせるつもりはない、[r]
藤枝君も忙しいなか来てもらったのであまり時間はない」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：落ち込み
[主人公憂い]
「そうですの……」[p]

;【立ち絵】主人公：真剣
「肇様、約束をして頂けませんか？　」[p]

;【立ち絵】藤枝：驚き
[藤枝効果消]
[藤枝驚き]
[whosay name="藤枝 肇" color=%mp.color]
「何の約束ですか？　」[p]

;【立ち絵】主人公：真剣
[主人公通常]
[主人公口開]
「私はずっと肇様にお手紙を書き続けます[r]
[sp]だけど遠いところで離ればなれになるのは不安です[r]
[sp]必ず私を迎えに来てくれると約束してください」[p]

#
私は小指を立てて手を挙げる[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣
[主人公照れ目普通]
「指切りをしてくださいませんか？」[p]



;【立ち絵】藤枝：微笑み
[藤枝笑顔大]
[whosay name="藤枝 肇" color=%mp.color]
「ええ、約束を必ず守ります」[p]

指切りCG

#
「指切りげんまん嘘ついたら針千本呑ます」[r]

#
私たちは同時に声を合わせて指切りをした[r]
（離れても貴方を想いますーそうお互いに誓い合った）[p]
[fadeoutbgm time=3000]
[藤枝退場]
;ノーマルここまで

;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
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

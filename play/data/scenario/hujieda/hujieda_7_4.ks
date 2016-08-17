;=============================================
;イベント４回目【手紙を出す】７月２回以上お琴のお稽古
;=============================================
;【背景】お稽古部屋
;【背景】主人公邸 お稽古部屋
 [chara_mod name="bg" storage="bg/bg_okeiko.jpg" time=1000]
 [eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 微笑み
[主人公ほほえみ]
「お手紙書けたわ！」[r]
（私からの手紙も喜んでくれるかしら？） [p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
[if exp="sf.BGM=='ON'"]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[手紙主人公]

鳥文の君様へ[l][r]
[r]
[sp]初めてお手紙を差し上げます。[r]
[sp]貴方様の事を鳥文の君様と書いてもいいでしょうか？[r]
私は[名字]　[名前]と申します。[r]
[r]
[sp]いつもお琴の感想をありがとうございます。[r]
[sp]いつもお稽古の励みとなっています。[r]
[r]
[sp]先日の御手紙を読み、私も練習のし過ぎはよくないと思い、[r]
初めてお琴の曲を聴いた気持ちを思い出し、[r]
落ち着いて音を出すようになりました。[r]
[r]
[sp]最近私の弾く音色も変わってきたと感じています。[r]
[r]
[sp]先生にも私の事を熱心な生徒だと言っていただき、[r]
まだ早いと言われつつも六段の調べの楽譜を頂けました。[r]
六段の調べが弾けるようになれたらまた弾ける曲が[r]
増えるのが楽しみです。[r]
[r]
[sp]これほどお琴に夢中になったのも鳥文の君様のおかげです。[r]
貴方様は私にたくさんの事を教えてくれています。[r]
[r]
[sp]最近よく鳥文の君様の琴を考えています。[r]
ーどんな方なんだろうと[r]
[sp]よければ鳥文の君様の事も教えてください。[r]
[r]
[sp]お手紙心よりお待ちしています。
[sp][sp][sp][sp][sp][sp][sp][sp][sp][sp][sp かしこ　　　　　　　　　　　　　　　　　　　　　　　　　
[sp][sp][sp][sp][sp][sp][sp][sp][sp][sp][sp][名字]　[名前] [p]
[fadeoutbgm time=3000]
[手紙読了]
[resetfont]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]


[主人公通常]
[主人公目パチ1回]

#
わたしは琴に向かい、[r]
琴を弾くしばらく弾き続けた[r]
ふわっと琴の端に上に鳩が止まる[p]

[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]


;【SE】鳩の鳴き声

[主人公通常]
[主人公目パチ1回]
;【立ち絵】主人公　微笑み
[主人公ほほえみ]
「今日も手紙がくくってあるわね。[r]
……ありがとう。[r]
今日は私も返事をかいたの待ってね」[p]

;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

#
私は鳩の足に括り付けてある手紙をほどき[r]
自分の手紙を同じように足に括り付けた[p]

;【立ち絵】主人公　微笑み
[主人公照れ目普通]
「鳥文の君へよろしくね」[p]

;【SE】鳩の鳴き声

#
鳩が飛び立つのを見送って[r]
私は手紙を開いた。[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

[手紙藤枝 fumi_number=]
琴の奏者様へ[l][r]
[r]
[sp]盛夏のみぎり、[r]
[r]
[sp]また貴方様の演奏を聴きました [r]
音色がとても暖かく優しい響きを持っていました[r]
[r]
[sp]以前聴いた痛々しさはどこにもなく[r]
澄んだ音をかき鳴らされています。[r]
[r]
貴方様は心映えの素晴らしい方 [r]
なのかもしれませんね。[r]
[r]
[sp]偶然でいいので一目会いたいなどと[r]
思っていました。[r]
[r]
[sp]……申し訳ないこんなことを書いて[r]
ですが紙は貴重なのでこのまま綴ります。[r]
[r]
[sp]僕は心から貴方様成長を喜ばしく[r]
本当に、これほど短期間に[r]
成長されると思っていませんでした。[r]
[r]
[sp]きっと貴方様はこれからも成長できます[r]
僕も貴方様の成長が楽しみです。[r]
[r]
[r]
追伸
[sp]僕の伝書鳩でが最近貴方様のところへ[r]
行っていませんでしょうか？[r]
[r]
この伝書鳩は琴の音色が気に入っているのか[r]
よく母のお琴の練習を聴いていました。[r]
貴方様の邪魔になっていないといいのですが。[p]
[手紙藤枝読了 fumi_number=]
[resetfont]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[主人公通常]
[主人公目パチ1回]
;【立ち絵】主人公　目伏せ頬染
[主人公伏目]
[主人公口ほほえみ]
「一目で会いたい……。[r]
私も同じ気持ちだわ」[r]
（いつも優しい言葉で励ましてくれる）[p]

#
私は鳩の飛び立った空を見上げた[p]

[fadeoutbgm time=3000]
[主人公通常]
[主人公目パチ1回]
;【立ち絵】主人公　目閉じ
[主人公目閉じ]
[主人公口ほほえみ]
[主人公頬染め]
最近は文を付けないで来ることも[r]
たまにあるけど私の琴が気に入ってくれたのね[r]
……いつか鳥文の君へ会えるかしら。[p]
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


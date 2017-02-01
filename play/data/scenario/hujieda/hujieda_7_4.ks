;=========================================================================
;イベント４回目【手紙を出す】７月２回以上お琴のお稽古
;=======================お芝居の準備中です==================================
*replay_hujieda_7_4
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*7_4 storage="hujieda/preload_hujieda.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;【背景】主人公邸 お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg" time=30]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=========================================================================

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 微笑み
[主人公ほほえみ]
「お手紙書けたわ！」[p]
[主人公目閉]
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

鳥文の君へ[l][r]
[r]
[sp]初めてお手紙を差し上げます。[r]
[sp]貴方様の事を鳥文の君と書いてもいいでしょうか？[r]
私は[名字]　[名前]と申します。[r]
[r]
[sp]いつもお[ruby text=こと]箏の感想をありがとうございます。[r]
[sp]お稽古の励みとなっています。[r]
[sp]
[sp]先日の御手紙を読み、私も練習のし過ぎはよくないと思い、[r]
初めてお[ruby text=こと]箏の曲を聴いた気持ちを思い出し、[r]
落ち着いて音を出すようになりました。[p]
[sp][r]
[sp]最近私の弾く音色も変わってきたと感じています。[r]
先生にも私の事を熱心な生徒だと言っていただき、[r]
まだ早いと言われつつも六段の[ruby text=しらべ]調の楽譜を頂けました。[r]
六段の[ruby text=しらべ]調が弾けるようになれたら、また弾ける曲が[r]
増えるので楽しみです。[r]
[sp][r]
[sp]これ程、お[ruby text=こと]箏に夢中になったのも鳥文の君様のおかげです。[r]
貴方様は私にたくさんの事を教えてくれています。[p]
[sp][r]
[sp]最近よく貴方様のことを考えています。[r]
――どんな方なんだろうと。[r]
[sp]よければ貴方様の事も教えてください。[r]
[r]
[sp]お手紙心よりお待ちしています。[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　かしこ　[r]　　　　　　　　　　　　　　　　　　　　　　　　
[sp]　　　　　　　　　　　　　　　　　　　　　　[名字]　[名前] [p]
[fadeoutbgm time=3000]
[手紙読了]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
[主人公目通常]
[主人公目パチ1回]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（今日も、鳩さん来てくださるかしら？）[p]

#
[主人公目閉]
;時間経過　少し暗めのお稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko_anten.jpg" time=1000]
;わたしは琴に向かい、[sp]最近よく鳥文の君様のことを考えています。[r]を弾くしばらく弾き続けた。[p]

私は、しばらく[ruby text=こと]箏を弾き続けた。[p]

[chara_mod name="bg" storage="bg/bg_okeiko.jpg" time=1000]
[主人公目通常]
まもなくして、ふわっと[ruby text=こと]箏の上に鳩が止まった。[p]
;端に上に　どちらか

[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]
;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]

[主人公通常]
[主人公目パチ1回]
;【立ち絵】主人公　微笑み
[主人公ほほえみ]
「今日も手紙が[ruby text=くく]括ってあるわね。[r]
[sp]……ありがとう。 今日は私も返事をかいたの。 待ってね」[p]

;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

#
私は鳩の足に[ruby text=くく]括り付けてある手紙をほどき、自分の手紙を同じように[r]
鳩の足に[ruby text=くく]括り付けた。[p]

;【立ち絵】主人公　微笑み
[主人公目にこ]
[主人公口笑顔小]
「鳥文の君に よろしくね」[p]

;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]

#
[主人公口ほほえみ]
[主人公目伏]
[主人公眉下げ下]
鳩が飛び立つのを見送って、私は手紙を開いた。[p]
;【SE】鳩の羽ばたき（バサバサッ）
[playse storage=tori_habataki_hato.ogg loop=false ]

[if exp="tf.okeiko_gamen != true"]
@jump target=deback1
[endif]


;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

*fumi_toutyaku_hujieda_5
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「鳩の届けた手紙　四」";//←仮タイトルです。お好みに変更してください
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「鳩の届けた手紙　四」";//←仮タイトルです。お好みに変更してください
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi04");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(4);
f.fumi_list_hujieda_location_fumi.push(4);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi04");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[5]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_hujieda_number=f.fumi_hujieda_number + 1;
f.hensin_list_hairetsu[4][4] = -1;
f.para_hujieda_koukando = f.para_hujieda_koukando + f.hujieda_koukando_up_event_fumi;
[endscript]
;エラー回避をありがとうございます(◆jsYiJcqRkk
*deback1

[手紙藤枝 fumi_number=]
[sp][ruby text=こと]箏の奏者様へ[l][r]
[r]
[sp]盛夏のみぎり、[r]
[r]
[sp]また貴方様の演奏を聴きました [r]
音色がとても暖かく優しい響きを持っていました。[r]
[r]
[sp]以前聴いた痛々しさはどこにもなく[r]
澄んだ音をかき鳴らされています。[r]
[r]
貴方様は心映えの素晴らしい方 なのかもしれませんね。[r]
[sp]偶然でいいので一目会いたいなどと思っていました。[p]
[sp][r][r]
[sp]……申し訳ありません。　こんなことを書いて。[r]
ですが紙は貴重なので、このまま綴ります。[r]
[sp]僕は心から貴方様の成長を喜ばしく思っています。[r]
[sp]これほど短期間に上達されると思っていませんでした。[r]
[r]
[sp]きっと貴方様はこれからも成長するでしょう。[r]
僕も貴方様の成長が楽しみです。[p]
[sp][r][r]
追伸
[sp]僕の伝書鳩が、最近頻繁に貴方様のところへ[r]
行っていませんでしょうか？[r]
[r]
[sp]この伝書鳩は[ruby text=こと]箏の音色が気に入っているのか[r]
よく母のお[ruby text=こと]箏の練習を聴いていました。[r]
[sp]貴方様の邪魔になっていないといいのですが。[p]

[if exp="tf.okeiko_gamen != true"]
[手紙藤枝読了 fumi_number=]
@jump target=deback2
[endif]

;未読→既読処理
[eval exp="f.midoku_list_hairetsu[4][4] = 0"]
[手紙藤枝読了 fumi_number=]
[resetfont]

*deback2
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;【立ち絵】主人公　目伏せ頬染
[主人公柔和ほほえみ１]
「一目会いたい……。　私も同じ気持ちだわ」[p]
[主人公目閉]
[主人公眉下げ下]
（いつも優しい言葉で励ましてくれる）[p]

#
;【背景】空
[chara_mod name="bg" storage="bg/bg_bluesky.jpg" time=1000]
[eval exp="f.haikei_credit='---'"]
[主人公目伏柔]
私は、鳩の飛び立った空を見上げた。[p]

;【立ち絵】主人公　目閉じ[主人公目閉じ]
[主人公口ほほえみ]
[主人公頬染め]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（最近は文を付けないで来ることも、たまにあるけど[r]
[sp]私の[ruby text=こと]箏が気に入ってくれたのね)[p]
[主人公目閉]
(……いつか鳥文の君に会えるのかしら)[p]
[fadeoutbgm time=3000]
;@jump storage="event.ks" target=*event_owari

#
;次のイベントにでてしまう名前残りを消去
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


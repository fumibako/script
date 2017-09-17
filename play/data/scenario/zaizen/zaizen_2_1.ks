;=============================================
;イベント9回目【散策イベント３落ち着きを取り戻した町】２月１週
;=======================お芝居の準備中です==========================================
*replay_zaizen_2_1
[stopbgm]
[call target=*2_1 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

#
町は明るい活気を取り戻し、行きかう人々の表情は落ち着いている。[p]
私は見知った姿を見かけて声を掛けた。
[autosave]
[wait time=10]
[p]

[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[if exp="tf.test_gamen == true"]
テストページから開始しています。シナリオ終点にjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]


*jump_ok
[current layer="message0"]
[resetfont]
「はい」[r]
jumpします。[p]
[cm]
@jump target=*seen_end1
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
最初からはじめます。[p]
[cm]
[endif]

;【立ち絵】主人公　微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「お久しぶりです時子さん」[p]

[whosay name="三宮　時子" color="#c25232"]
「まあ、[名前]さんお元気でしたか？」[p]

; 【立ち絵】主人公　微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、おかげ様で。時子さんもお元気でしたか？」[p]

[whosay name="三宮　時子" color="#c25232"]
「ええ。[r]
[sp]そういえば、この度の金融恐慌の件では財前様が大活躍なさった[r]
[sp]そうね！」
[autosave]
[wait time=10]
[p]

「[名前]さんも、あの新聞記事は……。[r]
[sp]いえ、野暮なことをは申し上げません」[p]

;【立ち絵】主人公　微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとうございます」[p]

（記事のことも薄々察しながら、[r]
[sp]口に出さないようにして下さっているんだわ）[p]

;【立ち絵】主人公　目伏せ
[主人公通常]
「財前様は、今も忙しくしていらっしゃるようです」[p]

[whosay name="三宮　時子" color="#c25232"]
「ええ、今回の活躍もあって[r]
[sp]町での財前様の銀行はうなぎのぼりの評判なのですって」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公　目閉じ
[主人公目伏柔]
[主人公眉下げ下]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いい事ですね！[r]
[sp]きっと財前様なら、人の暮らしを安定させるような運営を[r]
[sp]されると思います」[p]

[whosay name="三宮　時子" color="#c25232"]
「あら、噂をすればあれは財前様ではなくて？」[p]

#
[表示準備]
[財前ベーススーツ]
[財前通常]
[表示開始 time=300]

;【立ち絵】主人公　驚
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「本当です！　町で何をされているのかしら？」[p]

[whosay name="三宮　時子" color="#c25232"]
「[名前]さん、行ってよろしいわよ。[r]
[sp]ずっと財前様の事が心配だったのでしょう？」[p]

[fadeoutbgm time=3000]

;【立ち絵】主人公　微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、行ってきます。[r]
[sp]時子さんにも久しぶりに会えて嬉しかったです」
[autosave]
[wait time=10]
[p]

#
そういって財前様の方に向かう。[r]
財前様は、茶屋から出てきたようだ。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

[主人公憂い]
財前様は年頃の女性と一緒だった。[p]

;【立ち絵】主人公　悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
（何の話をしているのかしら）[p]
#
何かズキズキと胸が痛い。　声を掛けようとして掛けられない。[p]
[主人公目閉じ]
（どうしてなの？）[p]
[主人公憂い]
#
年頃の女性が私の視線に気づき、目が合う。[r]
私は思わず視線をそらした。
[autosave]
[wait time=10]
[p]

[暗転２ storage="bg/bg_machi.jpg"]
[財前サイズ隣に並ぶ]
[財前ベーススーツ]
[財前驚き]
[暗転２終了]

;【立ち絵】財前　驚き
[whosay name="財前美彬" color="#7a65b2"]
「[名前]さん！[r]
[sp]……そんな落ち込んだような顔をしてどうしたんです？」[p]
[主人公口ほほえみ]
;【立ち絵】主人公　目伏せ落ち込み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「なんでもありませんわ。 あの……そちらの女性は？」[p]

;【立ち絵】財前　通常
[whosay name="財前美彬" color="#7a65b2"]
[財前通常]
「ああ、こちらは藤枝晶子さんです。 融資の話をしていたのですよ」[p]

#
彼女は私にぺこりと頭をさげ、その後、財前様に言った。[p]

[whosay name="藤枝晶子"]
「ここまでわざわざ様子を見に来てくれた……という事は、[r]
[sp]融資はして頂けるのかしら？」[p]

;【立ち絵】財前　通常
[whosay name="財前美彬" color="#7a65b2"]
[財前横目]
「もう少し調査予定ですので、この場で答えるつもりはありません」[p]
;つもり、が続くため表現を変更しました(◆jsYiJcqRkk
;原文：「もう少し調べるつもりですので、この場で答えるつもりはありません」[p]

[財前冷ややか]
「貴方の手紙からこの融資に興味を持ったのは確かです」[p]

[whosay name="藤枝晶子"]
「そう……返事を期待しています。それでは失礼いたしますわ」[p]
[主人公目大]
;【立ち絵】主人公　目伏せ落ち込み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……何の融資の話でしたの？」[p]


;【立ち絵】財前　通常
[whosay name="財前美彬" color="#7a65b2"]
[財前通常]
「今の方の、お父様がオルガンの修理を始められて、[r]
[sp]いずれ西洋の楽器を作るための工房を作りたいとの事でしたよ」[p]

;【立ち絵】主人公　目伏せ落ち込み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お知り合いですの？」
[主人公憂い]
[p]


;【立ち絵】財前　通常
[whosay name="財前美彬" color="#7a65b2"]
[財前目パチ1回]
「ええ、以前お手紙の相手の一人でした。[r]
[sp]まあ、彼女やその家族は、縁談で体面を保つのを嫌いましたが」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公　目伏せ落ち込み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[主人公眉困り]
「そう……でしたの」[p]
（なぜか余計に気が晴れないわ）[p]


;【立ち絵】財前　ため息
[whosay name="財前美彬" color="#7a65b2"]
[財前ため息]
「何を落ち込んだ顔をしているのです？[r]
[sp]もう少し嬉しそうな顔をしてもいいと思いますよ」[p]

;【立ち絵】主人公　目伏せ落ち込み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「なんでもありません」
[autosave]
[wait time=10]
[p]
（そうだわ。 折角お会いできたのに、こんな気持ちになるなんて……）[p]
;モヤモヤする→気持ちになる　に変更しました(◆jsYiJcqRkk
[fadeoutbgm time=3000]

;【立ち絵】財前　考え込み
[whosay name="財前美彬" color="#7a65b2"]
[財前横目]
「まさかとは思いますが、彼女に嫉妬でもしたのですか？」[p]
[財前通常]

;【立ち絵】主人公　驚き
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「な、何をおっしゃるんですか！」[p]
（嫉妬……まさかそんな嫌な感情なわけがないわ）[p]
;【立ち絵】主人公　目伏せ頬染困り
[主人公頬染め]
[主人公困り]
（でも、そういわれば納得してしまう）[p]
;表情変更ください
（でも嫉妬なんて財前様は嫌がるわ）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

;【立ち絵】財前　微笑み
[whosay name="財前美彬" color="#7a65b2"]
[財前口笑み]
「貴方は本当にまだ感情が表に出る人ですね。[r]
[sp]ほほえましいと思いますよ」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公　目伏せ頬染困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
「でも、財前様は恋愛がお嫌いでしょう？」[p]

;【立ち絵】財前　微笑み
[whosay name="財前美彬" color="#7a65b2"]
[財前目閉じ]
「今はそれほど嫌悪していませんよ」[p]


;【立ち絵】財前　目閉じ[r]
「――貴方となら恋をしてみてもいい」[p]
[財前口通常]

;【立ち絵】主人公　不思議そう
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「なんとおっしゃいましたか？」[p]

（最後の一言が小さくて聞こえなかった）[p]

;【立ち絵】財前　微笑み
[whosay name="財前美彬" color="#7a65b2"]
[財前目伏]
[財前口微笑み柔和]
「いえ、なんでもありません。[r]
[sp]予想以上に早く商談は終わりましたし、お送りしますよ」[p]
[財前目にこ]

#
[主人公目伏]
[主人公眉下げ下]
[主人公頬染め]
財前様の優しい微笑みを見て安心する。[p]

[主人公困り]
けれど、やはりまだ財前様は恋愛を厭っているのかしら？[p]
[主人公目閉じ]
胸が苦しい気持ちを打ち明けた時にどう変わるのか[r]
怖い……。[p]
#
[暗転２]
[財前退場]
[主人公退場]
[暗転１]
[fadeoutbgm time=3000]
*seen_end1
[eval exp="sf.event_zaizen_sansaku_2_1 = 1"]
;====================================================
[イベントシーン終了]
[if exp="f.okeiko_gamen == true"]
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
[locate x=580 y=357]
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[locate x=650 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=730 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=810 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=880 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;[メッセージウィンドウ上ボタン表示]
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

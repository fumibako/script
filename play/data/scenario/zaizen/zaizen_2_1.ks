;=============================================
;イベント9回目【散策イベント３落ち着きを取り戻した町】２月１週
;=======================お芝居の準備中です==========================================
*replay_zaizen_2_1
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*2_1 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
;【背景】町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

#
町は明るい活気を取り戻し、[r]
行きかう人々の表情は落ち着いている。[p]
私は見知った姿を見かけて声を掛けた。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

;【立ち絵】主人公　微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お久しぶりです時子さん」[p]

[whosay name="三宮　時子" color="#c25232"]
「まあ、[名前]さんお元気でしたか？」[p]

; 【立ち絵】主人公　微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、おかげ様で。時子さんも元気したか？」[p]

[whosay name="三宮　時子" color="#c25232"]
「ええ、そういえばこの度の金融恐慌の件では[r]
[sp] 財前様が大活躍なさったそうね！」[p]
「[名前]さんもあの新聞記事は……[r]
[sp]いえ、野暮なことをは申し上げません」[p]

;【立ち絵】主人公　微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとうございます」[p]
（記事のことも薄々察しながら、[r]
[sp]口に出さないようにして下さっているんだわ）[p]

;【立ち絵】主人公　目伏せ
[主人公通常]
「財前様は今も、[r]
[sp] 忙しくしていらっしゃるようです」[p]

[whosay name="三宮　時子" color="#c25232"]
「ええ、今回の活躍もあって[r]
[sp]町での財前様の銀行はうなぎのぼりの評判なのですって」[p]

;【立ち絵】主人公　目閉じ
[主人公目伏柔]
[主人公眉下げ下]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いい事ですね！[sp]きっと財前様なら[r]
[sp]人の暮らしを安定させるような運営をされると思います」[p]

[whosay name="三宮　時子" color="#c25232"]
「あら、噂をすればあれは財前様ではなくて？」[p]
[財前ベーススーツ]
[財前通常]
;【立ち絵】主人公　驚
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「本当です！町で何をされているのかしら？」[p]

[whosay name="三宮　時子" color="#c25232"]
「[名前]さん、行ってよろしいわよ[r]
[sp] ずっと財前様の事が心配だったのでしょう？」[p]

[fadeoutbgm time=3000]

;【立ち絵】主人公　微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、行ってきます。[r]
[sp]時子さんにも久しぶりに会えて嬉しかったです」[p]

#
そういって財前様の方に向かう。[r]
財前様は茶屋から出てきたようだ。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

財前様は年頃の女性と一緒だった。[p]

;【立ち絵】主人公　悲しみ
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（何の話をしているのかしら）[p]
#
何かズキズキと胸が痛い。声を掛けようとして掛けられない[p]
[主人公目閉じ]
（どうしてなの？）[p]
[主人公憂い]
#
年頃の女性が私の視線に気づき[r]
目が合い、私は思わず視線をそらした。[p]
[財前驚き]
;【立ち絵】財前　驚き
[whosay name="財前美彬" color="#7a65b2"]
「[名前]さん！[r]
[sp] ……そんな落ち込んだような顔をしてどうしたんです？」[p]
[主人公口ほほえみ]
;【立ち絵】主人公　目伏せ落ち込み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「なんでもありませんわ。[r]
[sp] あの……そちらの女性は？」[p]
[財前通常]
;【立ち絵】財前　通常
[whosay name="財前美彬" color="#7a65b2"]
「ああ、こちらは藤枝晶子さんです。[r]
[sp] 融資の話をしていたのですよ」[p]

#
彼女は私にぺこりと頭をさげ、その後、財前様に言った。[p]

[whosay name="藤枝晶子"]
「ここまでわざわざ様子を見に来てくれた[r]
[sp] ……という事は融資はして頂けるのかしら？」[p]

[財前横目]
;【立ち絵】財前　通常
[whosay name="財前美彬" color="#7a65b2"]
「もう少し調べるつもりですので[r]
[sp] この場で答えるつもりはありません」[p]
[財前冷ややか]
「貴方の手紙からこの融資に興味を持ったのは確かです」[p]

[whosay name="藤枝晶子"]
「そう……返事を期待しています。それでは失礼いたしますわ」[p]
[主人公目大]
;【立ち絵】主人公　目伏せ落ち込み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……何の融資の話でしたの？」[p]

[財前口笑み]
;【立ち絵】財前　通常
[whosay name="財前美彬" color="#7a65b2"]
「今の方の、お父様がオルガンの修理を始められて、[r]
[sp] いずれ西洋の楽器を作るための[r]
[sp] 工房を作りたいとの事でしたよ。」[p]

;【立ち絵】主人公　目伏せ落ち込み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お知り合いですの？」[p]

[主人公憂い]
;【立ち絵】財前　通常
[財前通常]
[whosay name="財前美彬" color="#7a65b2"]
「ええ、以前お手紙の相手の[r]
[sp] 一人でした、まあ彼女やその家族は[r]
[sp] 縁談で体面を保つのを嫌いましたが」[p]

;【立ち絵】主人公　目伏せ落ち込み
[主人公目閉じ]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そう……でしたの」[p]
（なぜか余計に気が晴れないわ）[p]
[財前ため息]
;【立ち絵】財前　ため息
[whosay name="財前美彬" color="#7a65b2"]
「何を落ち込んだ顔をしているのです？[r]
[sp] もう少し嬉しそうな顔をしてもいいと思いますよ」[p]

;【立ち絵】主人公　目伏せ落ち込み
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「なんでもありません」[p]
（そうだわ折角あえたのにこんなもやもやするなんて……）[p]

;【立ち絵】財前　考え込み
[財前口通常]
[whosay name="財前美彬" color="#7a65b2"]
「まさかとは思いますが、彼女に嫉妬でもしたのですか？」[p]

[fadeoutbgm time=3000]
[財前通常]
;【立ち絵】主人公　驚き
[主人公驚]
「な、何をおっしゃるんですか！」[p]
（嫉妬……まさかそんな嫌な感情な訳がないわ）[p]
;【立ち絵】主人公　目伏せ頬染困り
[主人公頬染め]
[主人公困り]
（でもそういわれば納得しまうでも嫉妬なんで財前様は嫌がるわ）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]
[財前口笑み]
;【立ち絵】財前　微笑み
[whosay name="財前美彬" color="#7a65b2"]
「貴方は本当にまだ感情が表に出る人ですね[r]
[sp] ほほえましいと思いますよ」[p]

;【立ち絵】主人公　目伏せ頬染困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
「でも財前様は恋愛がお嫌いでしょう？」[p]
[財前目閉じ]
;【立ち絵】財前　微笑み
[whosay name="財前美彬" color="#7a65b2"]
「今はそれほど嫌悪していませんよ」[p]
;【立ち絵】財前　目閉じ[r]
「ーー貴方となら恋をしてみてもいい」[p]
[財前口通常]

;【立ち絵】主人公　不思議そう
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「なんとおっしゃいましたか？」[p]
（最後の一言が小さくて聞こえなかった）[p]

;【立ち絵】財前　微笑み
[財前目伏]
[財前口微笑み柔和]
[whosay name="財前美彬" color="#7a65b2"]
「いえ、なんでもありません。[r]
[sp] 予想以上に早く商談は終わりましたし[r]
[sp] お送りしますよ」[p]
[財前目にこ]
[主人公目伏]
[主人公眉下げ下]
[主人公頬染め]
#
財前様の優しい微笑みを見て安心する[p]

[fadeoutbgm time=3000]

[主人公困り]
けれど、やはりまだ財前様は恋愛を厭っているのかしら？[p]
[主人公目閉じ]
胸が苦しい気持ちを打ち明けた時どう変わるのか怖い……。[p]
#
;====================================================
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

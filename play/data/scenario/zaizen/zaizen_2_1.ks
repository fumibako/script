;=============================================
;イベント9回目【散策イベント３落ち着きを取り戻した町】２月１週
;=============================================

;【背景】町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
;[eval exp="f.haikei_credit='－－－－　by　ーーーー　ーーーー'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]


[主人公ポーズ通常]
[主人公通常]

#
町は明るい活気を取り戻し、[r]
行きかう人の姿の表情は落ち着いている[r]
私は見知った姿を見かけて声を掛ける[p]

;【立ち絵】主人公　微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お久しぶりです時子さん」[p]

[whosay name="三宮　時子" color="#c25232"]
「まあ、[名前]さんお元気でしたか？」[p]

; 【立ち絵】主人公　微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、おかげ様で時子さんも元気したか？」[p]

[whosay name="三宮　時子" color="#c25232"]
「ええ、そういえばこの度の金融恐慌では[r]
[sp] 財前様が大活躍なさったそうね！[r]
[sp] [名前]さんもあの新聞記事は……[r]
[sp] いえ、野暮なことをは申し上げません」[p]

;【立ち絵】主人公　微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとうございます」[r]
（記事のことも薄々気づいていて[r]
[sp] 下さっているんだわ）[p]
;【立ち絵】主人公　目伏せ
「財前様は相変わらず今も[r]
[sp] 忙しくしていらっしるのか[r]
[sp] なかなか手紙のお返事は来ませんが……」[p]

[whosay name="三宮　時子" color="#c25232"]
「ええ、今回の活躍もあって[r]
町での財前様の人気はうなぎのぼりで[r]
預金者も増え、融資の話が[r]
沢山でていると聞きましたわ」[p]

;【立ち絵】主人公　目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いい事ですね！[r]
きっと財前様なら[r]
人の暮らしを安定させるような[r]
運営をされると思います」[p]

[whosay name="三宮　時子" color="#c25232"]
「あら、噂をすればあれは財前様ではなくて？」[p]

;【立ち絵】主人公　驚
[whosay name=&sf.girl_namae color="#cf5a7f"]
「本当です！町で何をされているのかしら？」[p]

[whosay name="三宮　時子" color="#c25232"]
「[名前]さん、行ってよろしいわよ[r]
ずっと財前様の事が心配だったのでしょう？」[p]

;【立ち絵】主人公　微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、行ってきます。[r]
[sp] 時子さんにも久しぶりに会えて[r]
[sp] 嬉しかったです」[p]

#
そういって財前様の方に向かう[r]
[sp] 財前様は茶屋から出てきたようだ[r]
[sp] 妙齢の女性と一緒だった[p]

;【立ち絵】主人公　悲しみ
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（何かズキズキと胸が痛い[r]
[sp] 何の話をしているのかしら[r]
[sp] 声を掛けようとして掛けられない[r]
[sp] どうしてなの？）[p]

#
妙齢の女性が私の視線に気づき[r]
視線が合い私は思わず視線を外した[p]

;【立ち絵】財前　驚き
[whosay name="財前美彬" color="#7a65b2"]
「[名前]さん！[r]
[sp] ……そんな落ち込んだような顔をして[r]
[sp] どうしたんです？」[p]

;【立ち絵】主人公　目伏せ落ち込み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「なんでもありませんわ[r]
[sp] あの……そちらの女性は？」[p]

;【立ち絵】財前　通常
「ああ、こちらは藤枝晶子さんです[r]
[sp] 融資の話をしていたのですよ」[p]

#
彼女はぺこりと頭をさげて[r]
財前様に言った[p]

#藤枝晶子
「ここまでわざわざ様子を見に来てくれた[r]
[sp] という事は融資はして頂けるのかしら？」[p]

;【立ち絵】財前　通常
[whosay name="財前美彬" color="#7a65b2"]
「もう少し調べるつもりですので[r]
[sp] この場で答えるつもりはありません。[r]
[sp] 貴方の手紙からこの融資に興味を持った[r]
[sp] のは確かです」[p]

#藤枝晶子
「そう……返事を期待しています[r]
[sp] それでは失礼いたしますわ」[p]

;【立ち絵】主人公　目伏せ落ち込み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……何の融資の話でしたの？」[p]

;【立ち絵】財前　通常
「今の方はお父様が[r]
[sp] オルガンの修理を始められて、[r]
[sp] いずれ西洋の楽器を作るための[r]
[sp] 工房を作りたいとの事でしたよ。」[p]

;【立ち絵】主人公　目伏せ落ち込み
「お知り合いですの？」[p]

;【立ち絵】財前　通常
「ええ、以前お手紙の相手の[r]
[sp] 一人でした、まあ彼女やその家族は[r]
[sp] 縁談で体面を保つのを嫌いましたが」[p]

;【立ち絵】主人公　目伏せ落ち込み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そう……でしたの」[r]
（なせか余計に気が晴れないわ）[p]

;【立ち絵】財前　ため息
[whosay name="財前美彬" color="#7a65b2"]
「何を落ち込んだ顔をしているのです？[r]
[sp] 久しぶりに会えたのなら[r]
[sp] もう少し嬉しそな顔をしても[r]
[sp] いいと思いますよ」[p]

;【立ち絵】主人公　目伏せ落ち込み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「なんでもありません」[r]
（そうだわ折角あえたのに[r]
[sp] こんなもやもやするなんて……）[p]

;【立ち絵】財前　考え込み
[whosay name="財前美彬" color="#7a65b2"]
「まさかとは思いますが[r]
[sp] 彼女に嫉妬でもしたのですか？」[p]

;【立ち絵】主人公　驚き
[主人公驚き]
「な、何をおっしゃるんですか！」[r]
（嫉妬……まさかそんな嫌な感情な訳がないわ）[p]
;【立ち絵】主人公　目伏せ頬染困り
[主人公頬染め]
[主人公困り]
（でもそういわれれば納得しまう[r]
[sp] でも嫉妬なんで財前様は嫌がるわ）[p]

;【立ち絵】財前　微笑み
[whosay name="財前美彬" color="#7a65b2"]
「貴方は本当にまだ感情が表に出る人ですね[r]
[sp] ほほえましいと思いますよ」[p]

;【立ち絵】主人公　目伏せ頬染困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
「でも財前様は恋愛がお嫌いでしょう？」[p]

;【立ち絵】財前　微笑み
[whosay name="財前美彬" color="#7a65b2"]
「今はそれほど嫌悪していませんよ[r]
;【立ち絵】財前　目閉じ[r]
ー貴方となら恋をしてみてもいい」[p]

;【立ち絵】主人公　不思議そう
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「なんとおっしゃいましたか？」[r]
（最後の一言が小さくて聞こえなかった）[p]

;【立ち絵】財前　微笑み
[whosay name="財前美彬" color="#7a65b2"]
「いえ、なんでもありません。[r]
[sp] 予想以上に早く商談は終わりましたし[r]
[sp] お送りしますよ」[p]

[主人公照れ目普通]
[主人公伏目パチ1回]
#
財前様の優しい微笑みを見て安心する[r]
けれど、やはりまだ財前様は恋愛を厭っているのかしら？[r]
[主人公困り]
[主人公目閉じ]
胸が苦しい気持ちを打ち明けた時[r]
どう変わるのか怖い……[p]



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

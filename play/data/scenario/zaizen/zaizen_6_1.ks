;夢イベント財前が好感度が一番高い場合発生
;=========================================================
*replay_zaizen_6_1
*start
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*6_1 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築ボタン無し版]
[暗転]
;[財前ベース背広]
;[財前通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
#
;ゆっくり表示
[chara_mod name="bg" storage="bg/bg_kinari_sakura.jpg" time=2000]
――　夢を見た。[p]

;【背景】財前邸居間
[chara_mod name="bg" storage="bg/test_room_zaizen_ima.jpg"  time=1000]

[whosay name="女中"]
「若旦那様、今朝の新聞と、[名字]様からの手紙が届いております。」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】五色（重いムードに
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]

#
女中から新聞と手紙を手渡され、新聞に目を通し、彼女の手紙を読んだ。[p]

;【SE】紙に触れる（スッ）

[手紙主人公]
財前美彬様へ[l][r]
[sp]拝啓　紫陽花の花が雨に濡れて鮮やかな季節。[r]
財前様にはお変わりなくお過ごしでしょうか？[r]
[r]
[sp]先日はお手紙のお返事ありがとうございます。 [r]
財前様の考え方もお手紙もとても真面目で[r]
私も見習いたいと思っております。[r]
[r]
[sp]財前様はお手紙にはよく私の考えを尋ねる事が[r]
多くて私も色々な事について深く考えるようになりました。[r]
[r]
[sp] 梅雨の季節は本当に雨ばかり降ります。[r]
[sp]けれど草木は生き生きとして美しくみえますわ。[r]
[r]
[sp] 財前様も雨に濡れて風邪など召さないように、[r]
気を付けて下さい。[r]
[r]
[sp]またお手紙をお出しします。[r]
[sp]財前様からのご返事お待ち申し上げております。[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　　　　　敬具 [r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　　　[名字][名前] [p]
[主人公手紙読了]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;[財前通常]
[whosay name=財前"]
（便宜上妻という者も必要と思うようになって[r]
[sp] 何人かと手紙を交わしたが、彼女は芯がある[r]
[sp] 媚びるでもなく、真面目に返している）[p]

;[財前目伏]
（以前手紙を交わした相手の中で好ましいと思った[r]
[sp] 竹を割ったような性格の藤枝晶子は[r]
[sp] 申し出た多額の結納金を断って[r]
[sp] 今は平民の暮らしに奮闘しているという）[p]

[whosay name=財前父"]
「どうだ？[r]
[sp] その手紙の相手とは[r]
[sp] 長く手紙を交わせそうか？」[p]

;[財前通常]
[whosay name=財前"]
「はい。　そういえばこの手紙の相手は[r]
[sp] 父上の友人御ご令嬢でしたね」[p]

[whosay name=財前父"]
「ああ。気の合う友人の御令嬢だよ。[r]
[sp] 今度こそお前が結婚すると期待している」[p]

;[財前目閉じ]
「……どうでしょうね[r]
[sp] まだ手紙を交わして数か月ほどですから。」[r]
（このまま私の手紙を真剣に書いてく相手なら[r]
[sp] 会ってみてもいいかもしれない）[p]

[whosay name=財前父"]
「……お前が生理的に女性を嫌っているのは[r]
[sp] 私にも責任がある。」[p]

;[財前通常]
「父上に責任はありませんよ。」[r]
（華族であり、貞淑で見た目がよけれはそれでいい。[r]
[sp] だが母や祖母のような者も十分だ）[p]


[暗転]

; 背景お稽古部屋？
;【背景】主人公邸 お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;【背景】主人公邸 部屋
;[chara_mod name="bg" storage="bg/room_niwa.jpg" time=100]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公ポーズ通常]
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様の夢？」[p]

[主人公ポーズ指]
（財前様のお手紙はいつも冷淡たけれど[r]
[sp]財前様の意図と自分の意見を考えながら[r]
[sp]よく考えてお返事を書くと好感をもってくださるのかしら）[p]

[イベントシーン終了]
;[イベントシーン終了４]
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

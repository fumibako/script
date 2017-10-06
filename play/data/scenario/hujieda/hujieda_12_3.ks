;=============================================
;イベント１２回目【時子さん訪問】１２月3週、
*replay_hujieda_12_3
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*12_3 storage="hujieda/preload_hujieda.ks"]
[call target=*start storage="macro_tati_hujieda.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸 庭の見える部屋：昼
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=========================================================================
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
[主人公目パチ1回]
「……」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

[whosay name=磯野 color="dimgray"]
「お嬢様、[r]
[sp]いつまでもふさぎ込んでいらしても仕方ありません」[p]


;------------------------------------------------------
[if exp="tf.test_gamen == true"]
テストページからプレイしています。選択肢まで移動しますか？[r]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]
*jump_ok
[er]

[current layer="message0"]
[resetfont]
[er]
「はい」[r]
移動します。[p]
[cm]
@jump target=*seen_sele
[s]

*jump_no
[er]
[current layer="message0"]
[resetfont]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]

[endif]
;------------------------------------------------------

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目伏せ
[主人公目閉じ]
「わかっています、[r]
[sp]それでも、今は何も手に着かないのです」[p]

;【立ち絵】主人公：悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（お[ruby text=こと]箏だけはまだ続けているけど何にも気力がわかない。[r]
[sp]色鮮やかな世界から白黒の世界に閉じ込められたみたいだわ）[p]
;心情を綺麗に見せたいので分けます
（藤枝様が独逸に行かれたらもうお会いすることもない……）[p]

[whosay name="女中"]
「お嬢様、磯野様、お客様です」[p]

[whosay name=磯野 color="dimgray"]
「どちらさまでしょうか？」[p]

[whosay name="女中"]
「三宮家の時子様です。[r]
[sp]お嬢様にお会いしたいという事でしたが、[ruby text=い]如[ruby text=かが]何いたしましょうか？」[p]
;漢字で短く

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公目大]
[主人公口開]
[主人公眉通常]
「お会いします。[r]
[sp]時子さんをお通ししてください」[p]

（そうだわ！ 時子さんになら相談できる）[p]
[主人公口通常]
[whosay name=磯野 color="dimgray"]
「藤枝様の事は、内密に……」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣
[主人公目閉じ]
[主人公口開]
「時子さんは信用できる方ですわ。[r]
[sp]女同士ゆっくりお話ししたいのです。[r]
[sp]磯野も皆も下がっていてください！」[p]
[主人公口通常]

[whosay name=磯野 color="dimgray"]
「わかりました……。[r]
[sp]その代わりいつものお嬢様に戻ってください」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公憂い]
[主人公口ほほえみ]
「ありがとう磯野。[r]
[sp]心配かけてしまって悪いと思っています」[p]

#
磯野と女中が下がっていく。[p]
ここ最近、藤枝様がいらっしゃらなくなるという寂しさの中、[r]
見張りをつけられ、私は気が休まらなかった。[p]
;ここ最近、藤枝様がいなくなるという寂しさの中、[r]
;見張りをつけられ、私は気が休まらなかった。[p]暫定

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]

[whosay name="三宮　時子" color="#c25232"]
「[名前]さん、入っていいかしら？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：憂い顔
[主人公憂い]
[主人公口開]
「ええ、入ってきてください」[p]
[主人公口通常]

;【SE】襖を開ける（ゆっくり）

#
……やはり親友という存在は特別なのかしら。[r]
今のやりきれない悲しみでがこらえきれなくなる。[p]

[whosay name="三宮　時子" color="#c25232"]
「……泣きたいときは構わずに泣くとよろしいのよ。[r]
[sp]涙を止めては痛みも取れません」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：悲しみ
[主人公目閉じ]
「時子さん！」[p]
[主人公涙_目閉用]
#
時子さんに優しく言われ、私の涙腺は一気に緩む。[p]

涙が、ぽたぽたとこぼれていった。[p]

時子さんは、私にハンカチを渡すと、優しく言葉をかける。[p]

[whosay name="三宮　時子" color="#c25232"]
「一人で抱え込むことが出来ない時は、抱え込まないでいいのよ」[p]

[主人公涙流_目閉用]
[wait time=10]
#


;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
[暗転１]
[wait time=10]
;時間経過
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
時子さんの言葉に安堵した私は、今までの悲しみを吐き出すかのように[r]
して泣いた。[p]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*seen_sele
;【背景】主人公邸 庭の見える部屋：昼
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[wait time=10]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
そして、やっと少し気持ちが落ち着き、[r]

涙も枯れ果てた頃、[p]
[主人公効果消]
[wait time=10]


;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
#
私は時子さんに相談しようかと考えた。

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;背景変更:和紙風 セピア色
[bg wait=true method='crossfade' storage="../fgimage/bg/plane_sepia.jpg" time=100]
[wait time=10]
[eval exp="f.haikei_credit=''"]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;[link]タグでの選択肢例
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[wait time=10]
[current layer="message1"]
[font size=32]
[link storage="hujieda/hujieda_12_3b.ks" target=*yes]藤枝様のことを話す。[endlink][r]
[r][r][r]
[link storage="hujieda/hujieda_12_3_badED.ks" target=*no_seen]話さない。[endlink][r]
[resetfont]
[s]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
[s](←選択肢セーブデータから再開時、[s]を無視して進むケースに何度か遭遇したため残しています◆jsYiJcqRkk)
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

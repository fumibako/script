*test
[stopbgm]
;↓テスト画面からも背景マクロを参照できるように追記します。参照ラベルが違っていたらご調整ください◆jsYiJcqRkk
[call target=*end_sub storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]
テストページからはじめます。[p]
;==========================================================================
*start

[eval exp="f.kaogura!='off'"]
;会話ウィンドウ消去
[freeimage layer = 14]
;機能ボタン消去
[clearfix]
[bg storage="toumei.gif" time=1000]
;==========================================================================
[イベントシーン構築枠茶色]
#
[freeimage layer = 1]
[wait time=10]
[背景_四条玄関]
;[chara_mod name="bg" storage="bg/ B4nFWraU42/bg_sijyou_genkan_hole.jpg"]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
――四条邸にて。[p]
[whosay name="女中"]
「お帰りなさいませ。華織様」[p]

[if exp="tf.test_gamen == true"]
テストページからプレイしています。イベント終わりまで移動しますか？[r]

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
移動します。[p]
[cm]
@jump target=*seen_end
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]

[whosay name="華織" color="olivedrab"]
「ただいま。 [華衣]は、部屋にいますか？」[p]

[whosay name="女中"]
「は、はい。[sp]先ほどお帰り遊ばされました」[p]
#
;==========================================================================
[背景_四条家廊下]
[whosay name="華織" color="olivedrab"]
「[華衣]。[sp]僕は、あの時してしまったことを後悔している」[p]
[whosay name="四条 華衣" color=%mp.color]
「後悔なんて、こっちの方がしてる！[r]
[sp]反省なんてしたって無駄だ、あの人は戻ってこない！」[p]
[whosay name="四条 華衣" color=%mp.color]
「どうして、[r]
[sp]こっちが辛いのにお前は幸せになろうとするんだ？」[p]
;モヤモヤの原因
[whosay name="華織" color="olivedrab"]
「僕が不幸になったら、君は幸せになれるかい？」[p]
#
僕は、焦燥感に釣られ、心の片隅に残っていた解決策を口にしてしまった。[p]
[whosay name="四条 華衣" color=%mp.color]
「！ ……」[p]
#
[ruby text=しばら]暫くして、弱々しい声が返ってくる。[p]
[whosay name="四条 華衣" color=%mp.color]
「……そんなの……どう[ruby text=あ]足[ruby text=が]掻いたって無駄だ。[r]
[sp]あの幸せはもう戻ってこない」[p]
[whosay name="華織" color="olivedrab"]
（こんなこと聞くべきことじゃないって分かっている。[r]
[sp]けれど……）[p]
[whosay name="華織" color="olivedrab"]
「[華衣]、聞いてくれ。[r]
[sp]彼女が残した言葉があるんだ、それから彼女は……」[p]
;続きは華衣説明回に。
[whosay name="四条 華衣" color=%mp.color]
「うるさい！ そんなのお前のでまかせだろ！」[p]
#
僕は華衣に伝えなければいけない言葉を反芻した。[p]
#
――どうか、私の想いを届けて下さい。[r]
[sp][華衣]の幸せになれる日を待っていると。[r]
[sp]必ずこの想いを伝えて下さい。[p]
#
――それから華織さんも、[r]
[sp]必ず幸せになって[華衣]さんを導いてあげて下さい。[p]
;==========================================================================
#
[背景_四条玄関]
[whosay name="華織" color="olivedrab"]
（一体どうすれば……）[p]
;シーン廊下 または華織の部屋
[whosay name="女中頭"]
「華織様、お取り込み中、失礼します。[r]
[sp]親戚の皆様から、お手紙が届いております」[p]
[whosay name="華織" color="olivedrab"]
「ありがとう」[p]
[whosay name="女中頭"]
「失礼しました」[p]
#
手渡された手紙達は、四条家と[名字]家の婚約に対する[r]
四条家に深い仲の人達からの数々の祝いの手紙。[p]

嬉しいはずの手紙が、[華衣]のことを考えると[r]
僕の手の中でズッシリと重さが生じた。[r]
この手紙は、四条家が長年[ruby text=つむ]紡いできた歴史そのものだったから。[p]

――僕は、何度も考える。[r]
[sp]幸せを諦めた後のことを。[p]
諦めた後には、四条家の名も傷つき、[名字]家にもご迷惑がかかる。[p]
そして[華衣]は、少し癒されるかもしれない。[p]
けど、きっと、後には何も残らないのだろう。[p]
[whosay name="四条祖父" color="#888898"
「どうだ、[華衣]は？」[p]
[whosay name="華織" color="olivedrab"]
「！ お[ruby text=じ]祖[ruby text=ぃ]父様。[sp]それがまだ……」[p]
[whosay name="四条祖父" color="#888898"]
「儂も、[華衣]のことは、心配だが、お前が[名字]家との[r]
[sp]婚約を破棄しないか不安だ」[p]
[whosay name="華織" color="olivedrab"]
「そ、それは……」[p]
[whosay name="四条祖父" color="#888898"]
「何度も言っているが、お前のせいではない。[r]
[sp]それに婚約を破棄したところで、何の解決にもならない」[p]
[whosay name="華織" color="olivedrab"]
「どうすれば…………」[p]
[whosay name="四条祖父" color="#888898"]
「時が解決する。[sp]決して、諦めてはいけない」[p]
[whosay name="四条祖父" color="#888898"]
「お前の[ruby text=い]生けた花を見てみろ、それが答えだ」[p]
#
僕は、祖父が示した先を見つめた。[p]
その先には、僕が[ruby text=い]生けた花。[r]
誰かに想いを伝える意思もなく、ただ自己防衛に[r]
[ruby text=て]照り固まった作品が、輝きもなく"置いて"あった。[p]
それは、まさに僕の自身そのものであった。[p]
[whosay name="四条祖父" color="#888898"]
「逃げていては、何にもならないぞ」[p]
;後は華衣説明回で
#
;==========================================================================
;機能ボタン消去
[clearfix]
;会話ウィンドウ消去
[freeimage layer = 14]
;機能ボタン消去
[bg storage="toumei.gif" time=1000]
;==========================================================================
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[image layer=29 name="jyunbi" storage="bg/room_niwa_yoru.jpg" time=10]
[mtext text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
;【背景】主人公邸 庭の見える部屋：夜
[背景_庭_夜 time=1000]
[eval exp="f.kaogura!='on'"]
[四条イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]
[freeimage layer=29]
[四条ボタン表示]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[if exp="f.para_shujinkou_shukujodo >= 200"]
（華織様なら、きっと大丈夫でしょう……私は信じております）[p]
[else]
（華織様なら、きっと大丈夫よね）[p]
[endif]
[主人公憂い]
[if exp="f.para_shujinkou_shukujodo >= 200"]
（華織様は、昔から私のことをよくお考えなされて、[r]
[sp]いつも、お導きくださる憧れのお方ですもの）[p]
[else]
（だって、昔から私のことを考えてくれて、いつも導いてくれる[r]
[sp]憧れの方だもの）[p]
[endif]
[主人公通常]
[if exp="f.para_shujinkou_shukujodo >= 200"]
（そうですわ。 励ましのお手紙をしたためてみましょう！[r]
[else]
（そうだわ。 お手紙を書きましょう！[r]
[endif]
[主人公目閉]
[if exp="f.para_shujinkou_shukujodo >= 200"]
[sp]華織様、お元気でしょうか？　先日は……）[p]
[else]
[sp]華織様、どうか元気を出してください……）[p]
[endif]

*seen_end
[eval exp="sf.event_sijyou_9_4 = 1"]
[fadeoutbgm time=3000]
;¥¥¥¥¥¥¥¥イベント5おわり¥¥¥¥¥¥¥¥
[stopbgm]
[イベントシーン終了]

[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[else]
[イベントシーン終了４]
[endif]

@jump storage="test_sijyou.ks"
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
[メッセージウィンドウ上ボタン表示]
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

;=======================お芝居の準備中です==========================================
*replay_zaizen_3_4_good
[iscript]
$('rp_bt').remove();
$('.list').remove();
[endscript]
[freeimage layer = 1]
[if exp="f.flag_replay == true"]
;[bg wait=true storage="toumei.gif" time=1]
[endif]
*start
[stopbgm]
[if exp="tf.test_zaizen == true"]
[eval exp="f.okeiko_gamen=true"]
[eval exp="f.zaizen_au=1"]
[endif]
[call target=*3_4_good storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]

[if exp="f.flag_replay == true"]
;@layopt layer=1 visible=true
;[chara_show name="bg"]
[endif]

;【背景】パーティ会場庭
[bg wait=true storage="../fgimage/bg/zaizen_paty_niwa.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/zaizen_paty_niwa.jpg"]
[eval exp="f.haikei_credit=''"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[財前ベース燕尾服]
[財前通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;テスト用です 実際は表示されません...表示するので消します[p]
;=====================ここからお芝居の幕引きです===============================
*seen_1
;本編ではここに飛んできます。以降が続けて表示されます
;=========================================
[主人公眉下げ下]
[主人公伏目]
[主人公頬染め]

;【立ち絵】財前：微笑み
[whosay name="財前美彬" color="#7a65b2"]
「確認したい事があります。[r]
[sp]金融恐慌の際に多くの新聞社にお手紙を送ったのは[r]
[sp][名前]さんですね？」
[autosave]
[wait time=10]
[p]

[if exp="f.flag_replay == true && sf.BGM=='ON'"]
;【BGM】はなごよみ〜さくら〜（normal/goodED用
[playbgm storage="ending_hanagoyomi_sakura.ogg" loop=true]
[eval exp="f.bgm_storage='ending_hanagoyomi_sakura.ogg'"]
[endif]

;【立ち絵】主人公：驚
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「え……ええ！[r]
[sp]どうしてご存じなのですか？」[p]
;nomalから同じ音楽なので無し
;【立ち絵】財前：目閉じ
[whosay name="財前美彬" color="#7a65b2"]
「……やはりそうでしたか。[r]
[sp]文体と文章の雰囲気で貴方ではないかと思っていたのです」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：両手を頬に目伏せ頬染
[主人公頬染め]
[主人公困り]
[主人公ポーズ両手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お恥ずかしゅうございます。　出過ぎた事をいたしましたわ」[p]

;【立ち絵】財前：微笑み
[whosay name="財前美彬" color="#7a65b2"]
「いいえ、記事を読んだとき、私の胸に熱い想いがこみ上げました」[p]
[財前微笑み]
「とても貴方に会いたくなった」
[autosave]
[wait time=10]
[p]

;【立ち絵】財前：目伏せ
[whosay name="財前美彬" color="#7a65b2"]
「……貴方に[r]
[sp]愛していると告げたくなった。[r]
[sp]私は厭っていた恋に落ちてしまった」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き頬染
[主人公驚]
「……財前様！」
[autosave]
[wait time=10]
[p]

;【立ち絵】財前：真剣
[whosay name="財前美彬" color="#7a65b2"]
「もう私は貴方しか考えられない。 私と結婚して頂けますね？」[p]

;【立ち絵】主人公：微笑み頬染
[主人公ポーズ通常]
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、お受けします」[p]
[主人公目伏]
[主人公目閉じ]

;====================================================================================
;[eval exp="f.haikei_credit='クレジットだすときはtrue↓'"]
[暗転２ storage="bg/zaizen_CGgood.jpg" clegit=false]
[財前退場]
[主人公退場]
;メッセージウィンドウ消去から復帰時の顔グラをoffにします
[eval exp="f.kaogura = 'off'"]
;【背景】グッドエンドCG　CG差分（財前目閉じ、主人公目閉じ）
[bg wait=true storage="../fgimage/bg/zaizen_CGgood.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/zaizen_CGgood.jpg"]
;◆CGモード用に画像を登録
[cg storage="zaizen_CGgood.jpg"]

[p]
[暗転２終了]
;額にキスCG（財前目閉じ主人公目閉じ）
;====================================================================================
#
再び財前様の顔が近づき、私は自然と目を閉じた。
[autosave]
[wait time=10]
[p]

すると、額に柔らかく温かいものが触れる。[p]
――私を慈しむようかのようだわ。[p]

;優しい色合いの暗転　庭ならyukiynagagiを表示してから
;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景に白文字[テキスト全画面白文字]
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風 ゆっくりと1300 間がないので1500
[image layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1500 visible=true]
[wait time=10]
[主人公ポーズ通常]
[主人公通常]
;メッセージウィンドウ消去から復帰時の顔グラをonに戻します
[eval exp="f.kaogura = 'on'"]

;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

――三年後。
[autosave]
[wait time=10]
[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
;[playse storage=paper_open.ogg loop=false ]
[resetfont]
;洋館居間
[bg wait=true storage="../fgimage/bg/test_room_zaizen_ima.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/test_room_zaizen_ima.jpg"]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
;[call target=*start storage="macro_tati_zaizen.ks"]立ち絵が消える
;余裕があれば(ムリ)私服でしょうか
[財前ベーススーツ]
[財前微笑み]
[freeimage layer = 29 time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================
#
私たちは晴れて夫婦となり、[r]
忙しくも満ち足りた幸せな毎日を送っている。[r]
唯一気がかりだった、お祖母様も私を気に入って下さった。
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：目伏せ頬染
[主人公照れ目普通]
[主人公伏目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「今日は報告がありますの。[r]
[sp]その……喜んで頂けるかわかりませんけれど」[p]

;【立ち絵】財前：通常
[財前通常]
[whosay name="財前美彬" color="#7a65b2"]
「なんだね？」[p]

;【立ち絵】主人公：目閉じ頬染
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……わ、私、赤ちゃんが出来ましたの」[p]

;【立ち絵】財前：驚

[whosay name="財前美彬" color="#7a65b2"]
[財前驚き]
「！！[r]
;【立ち絵】財前：目伏せ微笑み
[財前微笑み]
[sp]そうか。 最近具合が悪そうだと思っていたら、そうだったのか」[p]

#
財前様は、私を引き寄せ、そっと優しく、慈しむように抱きしめた。
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：微笑み頬染
[主人公目伏柔]
[主人公眉下げ下]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「喜んでくれるのですね……」[p]

;【立ち絵】財前：目閉じ
[whosay name="財前美彬" color="#7a65b2"]
[財前目閉じ]
「ああ、[名前]、君を愛している。[r]
[sp]私と君の子だ嬉しくないはずないだろう？」[p]

;【立ち絵】主人公：目閉じ　頬染
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……あなた」
[autosave]
[wait time=10]
[p]

#
私は嬉しさを心に刻み、私たちはそうしてしばらく抱き合った。[p]
;そうして　しばらく　が平仮名つづきなので句点を入れたいがおかしいのでやめます　私は多いですが別時のことなのでそのままに
[財前微笑み]
;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ねえ、あなた。 少し一緒に散歩しませんか？」[p]

;【立ち絵】財前：微笑み
[財前笑み柔和]
[whosay name="財前美彬" color="#7a65b2"]
「ああ、構わない、[r]
[sp]ただ、君はもう一人の体ではないから、体に障らないように」[p]

#
夫は私にだけは優しい笑みを浮かべ、[r]
儀礼の気遣いだけでなく、心から想ってくれているのが[r]
感じられる。
[autosave]
[wait time=10]
[p]

……心から幸せだわ。[p]
;====================================================================================
;【背景】フウセンカズラの花
[暗転２ storage="bg/zaizen_fusenkazura2.jpg"]
[財前退場]
;【背景】 フウセンカズラの花
[bg wait=true storage="../fgimage/bg/zaizen_fusenkazura2.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/zaizen_fusenkazura2.jpg"]
[eval exp="f.haikei_credit=' '"]
[暗転２終了]
;====================================================================================

;【立ち絵】主人公：微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「まあ見てください！[r]
[sp]フウセンカズラの花が咲いていますわ。[r]
[sp]そのうちハート型の実をつけるのかしら」
[autosave]
[wait time=10]
[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「ハート型？」[p]

;【立ち絵】主人公：ほほえみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、果実は風船のように膨らみ、[r]
[sp]種は丸いけれど、こんな白いハートの形の部分があるんですって！」
[autosave]
[wait time=10]
[p]

#
私は指でハートの形を作る。[r]
フセンカズラは夏の日除けにいいと、私が庭師に言って取り寄せ、[r]
植えてもらったものだ。[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「そういえば日除けなら、朝顔や他の植物もあったのに[r]
[sp]君は何故この植物に？」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：目伏せ口開
[主人公目伏]
[主人公眉下げ下]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お母様から和訳された西洋の花言葉の本を頂いたのです。[r]
[sp]この植物の花言葉は、あなたにぴったりでした」[p]

;【立ち絵】財前：目伏せ
[whosay name="財前美彬" color="#7a65b2"]
;[財前目伏]
「なるほど、この花言葉は？」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「花言葉は、"あなたと飛び立ちたい、[r]
[sp]多忙、期待、魅力ある性格、自由な心" です」[p]

;【立ち絵】主人公：目閉じ
[主人公目閉じ]
「植物は真っ直ぐですわ。[r]
[sp]芽をだし、成長し、美しく花を咲かせ、[r]
[sp]実を結び、やがて種を残す……私もそんな風に生きたいです」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：微笑み
[主人公目伏柔]
[主人公眉下げ下]
[主人公口ほほえみ]
「私もあなたの為に美しく咲き、[r]
[sp]共に子供を育て、散っていこうと思います」[p]

;【立ち絵】財前：目閉じ
[whosay name="財前美彬" color="#7a65b2"]
「そうだな、私も共に歩もう。[r]
[sp]この愛しさも安らぎも、君が教えてくれたものだ」[p]

;====================================================================================
[暗転２ storage="bg/zaizen_fusenkazura.jpg"]
[主人公退場]
#
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
;====================================================================================
;【テキスト全画面】
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font size=27  color=white]
[sp][r][r]
[sp]　　　　――きっと私はあなたと巡り合い[r]
[r]
[r]
[sp]　　　　　　愛するために生まれてきた――[p]
;===============================================================
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position name="kan" left=350 width=300 height=300 top=200 page=fore margint="50"]
;テキスト全画面　0x663300
[font color=white size=35]
[iscript]
$("kan").css('margin','auto');
[endscript]
;===============================================================
;画面中央に「完」の文字
[sp]　  完[p]
;===============================================================
;[財前退場]

;【背景】 フウセンカズラの実
[bg wait=true storage="../fgimage/bg/zaizen_fusenkazura.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/zaizen_fusenkazura.jpg"]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[wait time=100]
;====================================================================================
;終わり
[if exp="f.flag_replay == true || f.event_replay == 'zaizen'"]
[イベントシーン終了]
@layopt layer=29 visible=true
[iscript]
$('.1_fore').empty();
[endscript]
@layopt layer=1 visible=true
[endif]

;↓ifからだしておいてください↓
[endreplay]

[if exp="f.flag_replay == true"]
;web版はendreplayの下にするexe版はendreplayで戻る
@jump storage="replay2.ks"
[endif]

[if exp="f.okeiko_gamen == true"]
[イベントシーン終了・ＢＧＭ有]
[call storage="sijyou/test_ed_credit.ks" target=*test_haikei]
[財前ルート終了 end="good"]

;財前ルートをクリアした
[eval exp="tf.ED_zaizen = 1"]
;tweet表示
[call storage="sijyou/01_tweet.ks"]

@jump storage="event.ks" target=*event_ED
[endif]
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

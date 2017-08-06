;財前badについては、回想時にもっと前のシーンから再生させるかどうか考え中です。今のところbad分岐以降を回想可能としています(スクリプト担
[setreplay name="replay_zaizen_11_bad2_scene" storage="zaizen/zaizen_11_bad2.ks" target="start"]
*replay_zaizen_11_bad2_scene
*replay_zaizen_11_bad2
*start
[iscript]
$('rp_bt').remove();
$('.list').remove();
[endscript]
[freeimage layer = 1]
[if exp="f.flag_replay == true"]
;[bg wait=true storage="toumei.gif" time=1]
[endif]
;=======================お芝居の準備中です==========================================
[stopbgm]
[call target=*11_1bad2 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]

[if exp="f.flag_replay == true"]
;@layopt layer=1 visible=true
;[chara_show name="bg"]
[endif]

;【背景】パーティ会場の庭[背景_庭]　
[bg wait=true storage="../fgimage/bg/test_zaizen_paty1.jpg" time=100]
[wait time=10]
;[chara_mod name="bg" storage="bg/test_zaizen_paty1.jpg"]
[eval exp="f.haikei_credit=''"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[財前ベース燕尾服]
[財前通常]
[プリロード画面消去]
;ここまでテスト用です。
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
*seen_1

;本編からここに飛んできます
;↓本編選択肢後にメッセージレイヤを戻す処理です
[if exp="f.okeiko_gamen == true"]
[cm]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[endif]
;===============
[if exp="tf.test_gamen == true"]
zaizen_11_bad2.ks[r]
テストページから開始しています。イベント終わりまでjumpしますか？[r]

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
[イベント中テスト数値表示]
@jump target=*seen_end
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
最初からはじめます。[p]
[cm]
[イベント中テスト数値表示]
[endif]
;【立ち絵】主人公：目伏せ悲しみ
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……はい。 そういたします」[p]

[財前退場準備 storage="bg/test_zaizen_paty1.jpg" time=500]

[主人公目閉]
（お母様が心配だけれど財前様の為には、そっとしておくべきなのだわ）[p]

[主人公目伏]
#
私は財前様に連れられ、会場を後にする。
[autosave]
[wait time=10]
[p]
[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

;===========================================================================
[暗転２]
[暗転１]
[主人公伏目]
[主人公眉下げ下]
[暗転２終了]
;===========================================================================

#
私と財前様は交際期間を終えた後、[r]
華燭の典を挙げ財前様は、私の夫となった。[p]

#
夫は仕事を次々に成功させ、銀行を大きくし、[r]
私は社交界で夫を支える良き妻だと、評判になり全てが順調。
[autosave]
[wait time=10]
[p]

[主人公憂い]
#
けれど私は満たされない想いを抱えるようになり[r]
胸の内に寂しさを感じるようになる。[p]
;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景に白文字  [テキスト全画面白文字]裏で画面構成
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[wait time=1000]
;背景変更時にフリーズすることが多いため、背景に使用しているレイヤ1を解放、この後は[bg]タグに切り替えます
[freeimage layer=1 time=0]
[ct]
[wait time=10]
[clearfix]
[wait time=10]
[clearstack]
[wait time=10]

;【背景】洋館居間
[bg wait=true storage="../fgimage/bg/test_room_zaizen_ima.jpg" time=0]
[wait time=10]
;[chara_mod name="bg" storage="bg/test_room_zaizen_ima.jpg"]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

――数年後。
[autosave]
[wait time=10]
[p]
;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
[freeimage layer = 29 time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[表示準備 storage="bg/test_room_zaizen_ima.jpg"]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
[メッセージウィンドウ上ボタン表示]
;==========================スクリプト・全画面表示からの復帰準備========================================

;【立ち絵】主人公：目伏せ
[主人公眉下げ下]
[主人公目伏]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私は傍からみても幸せだわ。[r]
[sp]夫は私を大切にしてくれるし、望めば大概の事を[r]
[sp]叶えてくれる)[p]

（寂しいと感じるのは欲張りなのかしら？）[p]

;【立ち絵】主人公：目伏せ悲しみ
[主人公憂い]
（私は夫を愛している。 でも夫にとって私は妻として[r]
[sp]役に立つだけの人形なのだわ）
[autosave]
[wait time=10]
[p]

;====================
;【立ち絵】財前：通常
[財前ベーススーツ]
[財前通常]
[表示開始 time=300]
;====================

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「どうした？ 少し不満そうだが？」[p]

;【立ち絵】主人公：目伏せ憂い微笑み
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、なんでもありませんわ。[r]
[sp]今日も遅くまで仕事ですね。 お気をつけていってらっしゃいませ」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「ああ、行ってくる」[p]
;====================
[財前退場準備 storage="bg/test_room_zaizen_ima.jpg" time=500]
;====================
#
彼は立ち上がりダイニングルームを後にする。[r]
私は、仕事が全てな夫の邪魔にならないように適度にいたわり、[r]
振る舞う。
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：目閉じ
 [主人公目閉じ]
 [主人公口ムッ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（寂しいといえば鬱陶しがられるわ）[p]

#
夫は割り切った関係を望んでいる。[r]
でも私は夫を愛しているから苦しい。[p]

;【立ち絵】主人公：目閉じ悲しみ
[主人公憂い]
（愛してほしいというのは欲張りだわ）[p]
[主人公目閉じ]
（私は夫を愛しているからこそ、夫が望む器量の良い[r]
[sp]貞淑な妻の役目を果たそう）[p]

;bad2終わり
*seen_end
;===============================================================
[clearfix]
[暗転２ storage="bg/bg_prologue_dark.jpg"]
;[chara_mod name="bg" storage="bg/bg_prologue_dark.jpg"]
[bg wait=true storage="../fgimage/bg/bg_prologue_dark.jpg" time=0]
[wait time=10]
[eval exp="f.haikei_credit=''"]
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
[fadeoutbgm time=3000]
;bad判定用 ツイート抑止  
[eval exp="tf.ED_bad = 1"]
;====================================================
[イベントシーン終了]

[if exp="f.flag_replay == true"]
;@layopt layer=29 visible=true
[iscript]
$('.1_fore').remove();
[endscript]
@layopt layer=1 visible=true
[endif]

;回想記録終了 
[endreplay]

[if exp="f.flag_replay == true"]
;web版はendreplayの下にするexe版はendreplayで戻る
@jump storage="replay2.ks"
[endif]

[財前ルート終了 end="bad1"]

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

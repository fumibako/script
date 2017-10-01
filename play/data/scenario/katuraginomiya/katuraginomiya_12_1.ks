;7.5回目イベント　
=======================お芝居の準備中です==================================
*replay_katuraginomiya_12_1
[stopbgm]
[call target=*12_1 storage="katuraginomiya/preload_katuraginomiya.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸 庭の見える部屋：昼
[bg method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50 wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
*seen0
[主人公目パチ1回]
[whosay name=磯野 color="dimgray"]
「葛城宮殿下は、お手紙を送るといわれたのですよね？[r]
[sp]もうあれからひと月ですが」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]
;------------------------------------------------------
[if exp="tf.test_gamen == true"]
テストページからプレイしています。イベント終わりまで移動しますか？[r]
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
@jump target=*seen_end
[s]

*jump_no
[er]
[current layer="message0"]
[resetfont]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]
;------------------------------------------------
;【立ち絵】主人公 目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
「忙しくされてるのよ。[r]
[sp]責任感の強いお方だから、水面下で動いて安定させようとして[r]
[sp]いるのだわ」[p]
[主人公目閉じ]
「私は、殿下を信じています」[p]

[whosay name=磯野 color="dimgray"]
「では暫く、お手紙は来ないかも、知れないですね」[p]

[fadeoutbgm time=3000]

;【立ち絵】主人公 通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
[主人公口通常]
「？　それはどういう意味かしら？」[p]

#
磯野は、困ったように新聞を差し出す。[p]
;した

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

[whosay name=磯野 color="dimgray"]
「これをご覧ください」[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】新聞　bg/test_bg_sinbun.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:新聞
[image layer=29 x=0 y=0 storage="bg/test_bg_sinbun.jpg" time=1000 visible=true]
[wait time=1000]
[wait time=10]
;テキスト全画面
;メッセージレイヤを全画面用に設定変更
[position left=130 width=750 height=530 top=110 page=fore margint="50"]
[font color=white size=27]
;==========================スクリプトここまで=========================================================
*seen1
[sp]内閣不信任決議案が可決し内閣総辞職に！[r]
[r]
[sp]海軍汚職の全貌が明らかになり、海軍出身の議員辞職。[r]
大幅な海軍予算の削減を行ったものの、[r]
大蔵大臣の失言もあり、貴族院、衆議院、両院関係は[r]
不調和となった。[r]
[r]
[sp]国家予算案は不成立、衆議院で内閣不信任決議案が[r]
可決し内閣は総辞職に追い込まれた。[p]
;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[wait time=10]
[主人公憂い]
[freeimage layer = 29 time=1000]
[wait time=1000]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;==========================スクリプト・全画面表示からの復帰準備完了========================================
*seen2
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;【立ち絵】主人公 困り
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（事態が好転すると勝手に信じていたわ。 現実はそうではないのね)[p]
[主人公伏目パチ1回]
（けれど諦めなければまた道は開けるかしら)[p]

;【立ち絵】主人公 困り
[主人公困り]
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「殿下にお手紙を書きます」[p]
[主人公口通常]
[主人公目閉じ]
「さすがに、この結果は落ち込まれていると思いますもの。[r]
[sp]私は、殿下が克服されると信じています」[p]

*seen3
*seen_end
#
;ジャンプ後に名前残り防止
[fadeoutbgm time=3000]

@jump storage="katuraginomiya/katuraginomiya12_1b.ks" target=*seen_0
;次のイベントに飛びます
[イベントシーン終了]
[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[endif]
@jump storage="test_katuragi.ks"
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

;sijyou_camera.ks
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*11_1 storage="hujieda/preload_hujieda.ks]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;【背景】主人公邸 お稽古部屋
[chara_mod name="bg" storage="bg/bg_teien_ishidatami_yoru.jpg" time=50]
[eval exp="f.haikei_credit=''"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[主人公伏目]
[主人公眉下げ下]
[四条ベース羽織]
[四条通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

ｶﾒﾗﾃｽﾄをします。[p]
;camera zoom=2 x=180 y=100 time=1000[p]
;[camera zoom=2 x=180 y=100 time=1000]

;camera x=-180 y=100 time=2000[p]
;[camera x=-180 y=100 time=2000]

;camera zoom=2 from_zoom=3 x=180 y=100 time=1000[p]
;[camera zoom=2 from_zoom=3 x=180 y=100 time=1000]

;ｶﾒﾗﾃｽﾄを終了します。[p]
;カメラの位置を元に戻す
;@reset_camera

[eval exp="f.sijyou_tatie_moto_width=1202"]
[eval exp="f.sijyou_tatie_moto_height=2000"]

[iscript]
tf.sijyou_tachi_s= $('sijyou_kuti','sijyou_me','sijyou_mayu','sijyou_emo','sijyou_base');
[endscript]

;name属性を指定してアニメーション
[anim name="sijyou_kuti" effect=easeInCirc opacity=0 time=100]
[anim name="sijyou_me" effect=easeInCirc opacity=0 time=100]
[anim name="sijyou_mayu" effect=easeInCirc opacity=0 time=100]
[anim name="sijyou_emo" effect=easeInCirc opacity=0 time=100]
[anim name="sijyou_base" time=1000 effect=easeInCirc opacity=0 time=100]
[wa]
[anim name="sijyou_base" width=&f.sijyou_tatie_moto_width top=-100 height=&f.sijyou_tatie_moto_height left=10]
[anim name="sijyou_kuti" width=&f.sijyou_tatie_moto_width top=-100 height=&f.sijyou_tatie_moto_height left=10]
[anim name="sijyou_me" width=&f.sijyou_tatie_moto_width top=-100 height=&f.sijyou_tatie_moto_height left=10]
[anim name="sijyou_mayu" width=&f.sijyou_tatie_moto_width top=-100 height=&f.sijyou_tatie_moto_height left=10]
[anim name="sijyou_emo" width=&f.sijyou_tatie_moto_width top=-100 height=&f.sijyou_tatie_moto_height left=10]
[wa]
[anim name="sijyou_kuti" time=1001 effect=easeInCirc opacity=255]
[anim name="sijyou_me" time=1001 effect=easeInCirc opacity=255]
[anim name="sijyou_mayu" time=1001 effect=easeInCirc opacity=255]
[anim name="sijyou_emo" time=1001 effect=easeInCirc opacity=255]
[anim name="sijyou_base" time=1000 effect=easeInCirc opacity=255]
[wa]

文字表示[p]
animﾃｽﾄを終了します。[p]
[四条退場]
[暗転]
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position name="kan" left=300 width=300 height=300 top=200 page=fore margint="50"]
;テキスト全画面　0x663300
[font color=white size=35]
[iscript]
$("kan").css('margin-left','auto','margin-right','auto');
[endscript]

[sp]　 完。[p]

;¥¥¥¥¥¥¥¥イベントおわり¥¥¥¥¥¥¥¥
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
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

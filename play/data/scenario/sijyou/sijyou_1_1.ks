;¥¥¥¥¥¥¥¥イベント6.5¥¥¥¥¥¥¥¥
;☆結果の知らせ (黒田ルートと同じお正月なイメージ)手紙がくる＿×日程の調整によって変更してもokです。
;暗転
;[chara_mod name="bg" storage="toumei.gif" time=1500]
[stopbgm]
;////////////使用背景メモ////////
;[preload storage="data/fgimage/bg/oom_niwa_akarui.jpg"]
;////////////////////
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
;=================================================================================_
*seen1
;[chara_mod name="bg" storage="bg/room_niwa_akarui.jpg" time=1000]
;【背景】主人公邸 庭の見える部屋：冬
[chara_mod name="bg" storage="bg/room_niwa_fuyu.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[whosay name="磯野" color="dimgray"]
「[名前]さま、
;お嬢様、
『四条華織』さまからお手紙が届いております。」[p]
[autosave]
[whosay name=&sf.girl_namae color="#cf5a7f"]
ありがとう。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
#
[手紙四条 fumi_number=]
;○四条手紙 正月はがき？
お健やかに新年をお迎えのこととお慶び申し上げます。[r]
昨年は大変お世話になりありがとうございました。[r]
本年もよろしくお願いいたします[p]
ー追伸ー[r]
先日、[名前]のお父様の浩文さまとお会いしました。[r]
つきましては、[名前]さんと直接会ってお話しをしたいと[r]
考えております。[r]
[r]
返事待ってます。
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　四条華織[p]
[手紙四条読了 fumi_number=]
;位置変更
[iscript]
//layer 1_fore
//bright=function(){
$('.1_fore').css({'filter':'brightness(1.5)','-webkit-filter':'brightness(1.5)','-moz-filter':'brightness(1.5)','-ms-filter':'brightness(1.5)'});
//};
[endscript]
;=================================================================================_
*seen2
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[autosave]
#
[wait time=10]
澄んだ空気の空にまばゆい日が昇る。[p]
[主人公ほほえみ]
[wait time=10]
私は筆を取ると、今までの事を噛みしめながら[r]
新しい門出について文をしたためた。[p]
[wait time=100]
[主人公退場]
;=================================================================================_
*seen3
[iscript]
//layer 1_fore
$('.1_fore').css({'filter':'brightness(1.0)','-webkit-filter':'brightness(1.0)','-moz-filter':'brightness(1.0)','-ms-filter':'brightness(1.0)'});
[endscript]
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

[return]

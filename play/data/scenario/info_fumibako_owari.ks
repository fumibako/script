*fumibako_owari
*info_owari
;背景変更:主人公邸_お稽古部屋
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_okeiko_main.jpg" time=0]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[wait time=10]

;[freeimage layer = 23]
[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer = 28]
[cm]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]

	@jump storage="okeiko_draw_button_system.ks"
[s]
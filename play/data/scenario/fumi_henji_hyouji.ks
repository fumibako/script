﻿*fumi_write_hyouji
;↓loadキャンセル時戻り先を記憶(試行中
[eval exp="f.load_mae_storage='fumi_henji_hyouji.ks'; f.load_mae_target='*fumi_write_hyouji'"]
[clearfix]
[cm]
[freeimage layer = 21]
[freeimage layer = 22]
;[freeimage layer = 23]
[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]

[freeimage layer = 24]
[freeimage layer = 25]
[freeimage layer = 27]
[freeimage layer = 28]
[freeimage layer = 29]
[layopt layer=25 visible=true]
[一斉表示準備]
[wait time=10]
;背景画像表示
[if exp="f.fumi_henjityu == 1"]
[bg wait=true method='crossfade' storage="../fgimage/bg/plane_sakura.jpg" time=0]
[wait time=10]
[image name="list" layer=25 x=380 y=20 storage="button/fumi_henji.png"]
[image name="list" layer=25 x=660 y=20 storage="button/fumi_atena_bg_henji.png"]
[else]
[bg wait=true method='crossfade' storage="../fgimage/bg/plane_mizuiro.jpg" time=0]
[wait time=10]
[image name="list" layer=25 x=380 y=20 storage="button/fumi_write.png"]
[image name="list" layer=25 x=660 y=20 storage="button/fumi_atena_bg_write.png"]
[endif]
[wait time=10]
;◆宛名表示
[layopt layer=23 visible=true]
[eval exp = "f.button_atesaki = 'button/fumi_atena_' + f.fumi_atesaki + '.png'"]
[image name="list" layer=25 x=660 y=20 storage=&f.button_atesaki]

[image layer=25 x=30 y=20 storage="button/frame_lesson_fukidasi300.png"]
[wait time=10]
;メッセージレイヤサイズをお稽古フキダシ窓用に設定変更
[position left=80 width=700 height=550 top=37 page=fore margint="50"]
;↓背景を切り替えた後に文箱背景表示レイヤを消す
[freeimage layer = 26]
[return]

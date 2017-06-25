;=========================================
; extraモード　画面作成 黒田ルート立ち絵テストがないです。
;=========================================
*start
;◆◆一度色々リセットする
*reset
[ct]
[clearfix]
[clearstack]
[skipstop]
[stopse]
;◆全レイヤクリア
[freeimage layer = 0]
[freeimage layer = 1]
[freeimage layer = 2]
[freeimage layer = 3]
[freeimage layer = 4]
[freeimage layer = 5]
[freeimage layer = 6]
[freeimage layer = 7]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 13]
[freeimage layer = 14]
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
[freeimage layer = 21]
[freeimage layer = 22]
[freeimage layer = 23]
[freeimage layer = 24]
[freeimage layer = 25]
[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer = 28]
[freeimage layer = 29]

;タイトルに戻る
[button fix=true graphic="back.png" target="*backtitle" x=870 y=20 ]

*page_0
;並んでいるところをみせない
[iscript]
$(".layer_free").css("opacity",0);
$(".layer_2").css("opacity",0);
[endscript]
;ここに戻るフラグ
[iscript]
    tf.flag_omake = true;
[endscript]
;==================================================================================
;黒田はありません
[if exp="sf.ED_kuroda_normal == 1 && sf.ED_kuroda_good == 1 && sf.ED_kuroda_bad == 1"]
[button name=rp_bt target="*page_0" graphic="../fgimage/bg/replay_kuroda_normalED.jpg" x=50 y=60 width=200 height=130]
[ptext layer=2 page=fore text="表情鑑賞　:　黒田" x=50 y=200 size=17 color=navy visible=true]
[else]
[image name=list layer=2 x=50 y=60 width=200 height=130 storage="../fgimage/bg/cg_bg.jpg"]
[ptext layer=2 page=fore text="表情鑑賞　:　？？？" x=50 y=200 size=17 color=navy visible=true]
[endif]

;四条
[if exp="sf.ED_sijyou_normal == 1 && sf.ED_sijyou_good == 1 && sf.ED_sijyou_bad == 1"]
[button name=rp_bt storage="test_sijyou_hyoujou.ks" graphic="../fgimage/bg/B4nFWraU42/replay_sijyou_normalED.jpg" x=270 y=60 width=200 height=130]
[ptext layer=2 page=fore text="表情鑑賞　:　四条" x=270 y=200 size=17 color=navy visible=true]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=270 y=60 width=200 height=130]
[ptext layer=2 page=fore text="表情鑑賞　:　？？？" x=270 y=200 size=17 color=navy visible=true]
[endif]

;財前
[if exp="sf.ED_zaizen_normal == 1 && sf.ED_zaizen_good == 1 && sf.ED_zaizen_bad2 == 1 && sf.ED_zaizen_bad1 == 1"]
[button name=rp_bt storage="test_zaizen_hyoujou.ks" graphic="../fgimage/bg/I9IhvvVdPo/replay_zaizen_normalED.jpg" x=50 y=240 width=200 height=130]
[ptext layer=2 page=fore text="表情鑑賞　:　財前" x=50 y=380 size=17 color=navy visible=true]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=50 y=240 width=200 height=130]
[ptext layer=2 page=fore text="表情鑑賞　:　？？？" x=50 y=380 size=17 color=navy visible=true]
[endif]

[if exp="sf.ED_katuraginomiya_normal == 1 && sf.ED_katuraginomiya_good == 1 && sf.ED_katuraginomiya_bad == 1"]
[button name=rp_bt storage="test_katuraginomiya_hyoujou.ks" graphic="../fgimage/bg/I9IhvvVdPo/replay_katuraginomiya_normalED.jpg" x=270 y=240 width=200 height=130]
[ptext layer=2 page=fore text="表情鑑賞　:　葛城宮" x=270 y=380 size=17 color=navy visible=true]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=270 y=240 width=200 height=130]
[ptext layer=2 page=fore text="表情鑑賞　:　？？？" x=270 y=380 size=17 color=navy visible=true]
[endif]

[if exp="sf.ED_hujieda_normal == 1 && sf.ED_hujieda_good == 1 && sf.ED_hujieda_bad == 1 && sf.ED_hujieda_bad2 == 1]
[button name=rp_bt storage="test_hujieda_hyoujou.ks" graphic="../fgimage/bg/replay_hujieda_normalED.jpg" x=50 y=420 width=200 height=130]
[ptext layer=2 page=fore text="表情鑑賞　:　藤枝" x=50 y=560 size=17 color=navy visible=true]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=50 y=420 width=200 height=130]
[ptext layer=2 page=fore text="表情鑑賞　:　？？？" x=50 y=560 size=17 color=navy visible=true]
[endif]
@jump target ="*common"
;=====================================================================================

*common
[iscript]
$(".layer_free").css("opacity",1);
$(".list").css("opacity",1);
$('.loding_pic1').remove();
[endscript]
@layopt layer=2 visible=true
[s]

*backtitle
[cm]
[freeimage layer=3]
[freeimage layer=2]
[chara_mod name="bg" storage="bg/title.jpg"]
[bg storage="toumei.gif" time=1]
[iscript]
$(".layer_free").css("opacity",1);
$(".layer_2").css("opacity",1);
[endscript]
@layopt layer=2 visible=true
@layopt layer=1 visible=true
@clearfix
[clearstack]

[iscript]
    tf.flag_omake = false;
[endscript]
@jump storage=title.ks
[s]


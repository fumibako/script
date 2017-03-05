;=========================================
; CG モード　画面作成
;=========================================

@layopt layer=message0 visible=false

@clearfix
[hidemenubutton]
[cm]
;準備中
[image name="loding_pic1" layer=1 folder="image" storage="junbi_cyu.gif" left=740 top=580 visible=true]
[wait time=50]

;プリロード　タイトルからでもいいですが、ひとまずここにマクロとしてまとめてあります
[macro name=CGプリロード]
;黒田チェック
[if exp="sf.ED_kuroda_normal == 1"]
[preload storage="data/fgimage/bg/kuroda_normalED.jpg"]
[endif]
[if exp="sf.ED_kuroda_good == 1"]
[preload storage="data/fgimage/bg/kuroda_goodED.jpg"]
[endif]
;四条チェック
[if exp="sf.ED_sijyou_normal == 1"]
[preload storage="data/fgimage/bg/sijyou_CGnomal.png" wait=true]
[endif]
[if exp="sf.ED_sijyou_good == 1"]
[preload storage="data/fgimage/bg/sijyou_CGgood.png" wait=true]
[endif]
;財前チェック
[if exp="sf.ED_zaizen_normal == 1 "]
[preload storage="data/fgimage/bg/zaizen_CGnomal.jpg"]
[endif]
[if exp="sf.ED_zaizen_good == 1"]
[preload storage="data/fgimage/bg/zaizen_CGgood.jpg"]
[endif]
;葛城宮チェック
[if exp="sf.ED_zaizen_normal == 1 "]
[preload storage="data/fgimage/bg/katuraginomiya_3_4_nomalED.jpg"]
[endif]
[if exp="sf.ED_katuraginomiya_normal == 1 "]
[preload storage="data/fgimage/bg/katuraginomiya_3_4_goodED.jpg"]
[endif]
;藤枝チェック
[if exp="sf.ED_hujieda_good == 1 "]
[preload storage="data/fgimage/bg/hujieda_normalED.jpg"]
[endif]
[if exp="sf.ED_hujieda_normal == 1"]
[preload storage="data/fgimage/bg/hujieda_goodED.jpg"]
[endif]
[endmacro]

;背景画像の後にしたい場合はマクロの位置を変更してください
[CGプリロード]
[back storage="../fgimage/bg/plane_sepia.jpg" time=1]
[layopt layer=1 visible=true]
[chara_mod name="bg" storage="toumei.gif" time=1]

[iscript]
    
    tf.page = 0;
    tf.selected_cg_image = ""; //選択されたCGを一時的に保管
    
[endscript]



*cgpage
[ptext layer=1 page=fore text="画廊" x=20 y=10 size=26 color=0xA8401C visible=true]
;[ptext layer=1 page=fore text="動作テスト中" x=22 y=60 size=17 color=navy visible=true]
[cm]
[button graphic="back.png" target="*backtitle" x=870 y=550 ]

[iscript]
    tf.tmp_index = 0;
    tf.cg_index = 12 * tf.page;
    tf.top = 100;
    tf.left = 60;
    
[endscript]

[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]

*cgview
@jump target=&tf.target_page

*page_0
;並んでいるところをみせない
[iscript]
$(".layer_free").css("opacity",0);
$(".list").css("opacity",0);
[endscript]

[cg_image_button graphic="kuroda_normalED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=37 y=50 width=200 height=130 folder="fgimage/bg" ]
[cg_image_button graphic="kuroda_goodED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=267 y=50 width=200 height=130 folder="fgimage/bg" ]
[ptext name=list layer=1 page=fore text="黒田ルート　:　normalEND" x=37 y=190 size=17 color=navy visible=true]
[ptext name=list layer=1 page=fore text="黒田ルート　:　goodEND" x=267 y=190 size=17 color=navy visible=true]

[cg_image_button graphic="sijyou_CGnomal.png" no_graphic="../fgimage/bg/cg_bg.jpg" x=497 y=50 width=200 height=130 folder="fgimage/bg"]
[cg_image_button graphic="sijyou_CGgood.png" no_graphic="../fgimage/bg/cg_bg.jpg" x=727 y=50 width=200 height=130 folder="fgimage/bg"]
[ptext name=list layer=1 page=fore text="四条ルート　:　normalEND" x=497 y=190 size=17 color=navy visible=true]
[ptext name=list layer=1 page=fore text="四条ルート　:　goodEND" x=727 y=190 size=17 color=navy visible=true]

[cg_image_button graphic="zaizen_CGnomal.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=37 y=250 width=200 height=130 folder="fgimage/bg" ]
[cg_image_button graphic="zaizen_CGgood.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=267 y=250 width=200 height=130 folder="fgimage/bg" ]
[ptext name=list layer=1 page=fore text="財前ルート　:　normalEND" x=37 y=390 size=17 color=navy visible=true]
[ptext name=list layer=1 page=fore text="財前ルート　:　goodEND" x=267 y=390 size=17 color=navy visible=true]

[cg_image_button graphic="katuraginomiya_3_4_nomalED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=497 y=250 width=200 height=130 folder="fgimage/bg" ]
[cg_image_button graphic="katuraginomiya_3_4_goodED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=727 y=250 width=200 height=130 folder="fgimage/bg" ]
[if exp="f.katuraginomiya_au == 1"]
[ptext name=list layer=1 page=fore text="葛城宮ルート　:　normalEND" x=497 y=390 size=17 color=navy visible=true]
[ptext name=list layer=1 page=fore text="葛城宮ルート　:　goodEND" x=727 y=390 size=17 color=navy visible=true]
[else]
[ptext name=list layer=1 page=fore text="？ルート　:　normalEND" x=497 y=390 size=17 color=navy visible=true]
[ptext name=list layer=1 page=fore text="？ルート　:　goodEND" x=727 y=390 size=17 color=navy visible=true]
[endif]

;@jump target="*common"

[cg_image_button graphic="hujieda_normalED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=37 y=450 width=200 height=130 folder="fgimage/bg" ]
[cg_image_button graphic="hujieda_goodED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=267 y=450 width=200 height=130 folder="fgimage/bg" ]
[if exp="f.hujieda_au == 1"]
[ptext name=list layer=1 page=fore text="藤枝ルート　:　normalEND" x=37 y=590 size=17 color=navy visible=true]
[ptext name=list layer=1 page=fore text="藤枝ルート　:　goodEND" x=267 y=590 size=17 color=navy visible=true]
[else]
[ptext name=list layer=1 page=fore text="？ルート　:　normalEND" x=37 y=590 size=17 color=navy visible=true]
[ptext name=list layer=1 page=fore text="？ルート　:　goodEND" x=267 y=590 size=17 color=navy visible=true]
[endif]

@jump target="*common"

*common
;並んでいるところをみせない→表示が終わったら見せる
[iscript]
$(".layer_free").css("opacity",1);
$(".list").css("opacity",1);
$('.loding_pic1').remove();
[endscript]

*endpage



[s]

*backtitle
[back storage="toumei.gif" time=1]
[cm]
[freeimage layer=1]
[iscript]
$('.loding_pic1').remove();
[endscript]
@jump storage=title.ks

*nextpage
[emb exp="tf.page++;"]
@jump target="*cgpage"


*backpage
[emb exp="tf.page--;"]
@jump target="*cgpage"

*clickcg
[cm]
[freeimage layer = 1]

[image storage=&tf.selected_cg_image folder="fgimage/bg"]
[l]
[bg storage="../fgimage/bg/plane_sepia.jpg" time=10]
@jump  target=*cgpage
[s]

*no_image

@jump  target=*cgpage




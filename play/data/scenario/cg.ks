;=========================================
; CG モード　画面作成
;=========================================

@layopt layer=message0 visible=false

@clearfix
[hidemenubutton]
[cm]

[back storage="../fgimage/bg/plane_sepia.jpg" time=1]
[layopt layer=1 visible=true]
[chara_mod name="bg" storage="toumei.gif" time=1]

[iscript]
    
    tf.page = 0;
    tf.selected_cg_image = ""; //選択されたCGを一時的に保管
    
[endscript]



*cgpage
[ptext layer=1 page=fore text="画廊" x=20 y=20 size=26 color=0xA8401C visible=true]
;[ptext layer=1 page=fore text="動作テスト中" x=22 y=60 size=17 color=navy visible=true]
[cm]
[button graphic="back.png" target="*backtitle" x=870 y=20 ]

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
[cg_image_button graphic="kuroda_normalED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=60 y=100 width=210 height=140 folder="fgimage/bg" ]
[cg_image_button graphic="kuroda_goodED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=300 y=100 width=210 height=140 folder="fgimage/bg" ]
[ptext layer=1 page=fore text="黒田ルート　:　normalEND" x=60 y=250 size=17 color=navy visible=true]
[ptext layer=1 page=fore text="黒田ルート　:　goodEND" x=300 y=250 size=17 color=navy visible=true]

@jump target="*common"

*common


*endpage



[s]

*backtitle
[back storage="toumei.gif" time=1]
[cm]
[freeimage layer=1]
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




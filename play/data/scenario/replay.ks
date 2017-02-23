;=========================================
; 回想モード　画面作成
;=========================================
*start
;@layopt layer=message0 visible=false
@clearfix
[hidemenubutton]
[cm]

[back storage="../fgimage/bg/plane_sepia.jpg" time=100]
[layopt layer=2 visible=true]
[ptext layer=2 page=fore text="思ひ出　(Ending List)" x=20 y=20 size=26 color=0xA8401C visible=true]

[iscript]
    
    tf.page = 0;
    tf.selected_replay_obj = ""; //選択されたリプレイを一時的に保管
    
[endscript]



*replaypage
;[cm]
[button graphic="back.png" target="*backtitle" x=870 y=20 ]

[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]

*replayview

*cgview
@jump target=&tf.target_page

*page_0
[replay_image_button name="kuroda_3_4_normalED_scene" graphic="../fgimage/bg/replay_kuroda_normalED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=30 y=60 width=200 height=130 folder="bgimage"]
[replay_image_button name="kuroda_3_4_goodED_scene" graphic="../fgimage/bg/replay_kuroda_goodED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=240 y=60 width=200 height=130 folder="bgimage"]
[replay_image_button name="replay_kuroda_12_3_badED_scene" graphic="../fgimage/bg/replay_kuroda_badED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=520 y=60 width=200 height=130 folder="bgimage"]
[ptext layer=2 page=fore text="黒田ルート　:　normalEND" x=30 y=210 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="黒田ルート　:　goodEND" x=240 y=210 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="黒田ルート　:　badEND" x=520 y=210 size=17 color=navy visible=true]

[replay_image_button name="replay_sijyou_3_4_normalED_scene" graphic="../fgimage/bg/sijyou_CGnomal.png" no_graphic="../fgimage/bg/cg_bg.jpg" x=30 y=240 width=200 height=130 folder="bgimage"]
[replay_image_button name="replay_sijyou_3_4_goodED_scene" graphic="../fgimage/bg/sijyou_CGgood.png" no_graphic="../fgimage/bg/cg_bg.jpg" x=240 y=240 width=200 height=130 folder="bgimage"]
[replay_image_button name="replay_sijyou_10_3badED_scene" graphic="../fgimage/bg/replay_sijyou_badlED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=520 y=240 width=200 height=130 folder="bgimage"]
[ptext layer=2 page=fore text="四条ルート　:　normalEND" x=30 y=390 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="四条ルート　:　goodEND" x=240 y=390 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="四条ルート　:　badEND" x=520 y=390 size=17 color=navy visible=true]

[replay_image_button name="replay_zaizen_3_4_normal_scene" graphic="../fgimage/bg/zaizem_3_4_normalED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=30 y=420 width=200 height=130 folder="bgimage"]
[replay_image_button name="replay_zaizen_3_4_good_scene" graphic="../fgimage/bg/zaizem_3_4_goodED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=240 y=420 width=200 height=130 folder="bgimage"]
[replay_image_button name="replay_zaizen_11_1_bad1_scene" graphic="../fgimage/bg/replay_zaizem_badED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=520 y=420 width=200 height=130 folder="bgimage"]
[replay_image_button name="replay_zaizen_11_bad2_scene" graphic="../fgimage/bg/replay_zaizem_badED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=800 y=420 width=200 height=130 folder="bgimage"]
[ptext layer=2 page=fore text="財前ルート　:　normalEND" x=30 y=600 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="財前ルート　:　goodEND" x=240 y=600 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="財前ルート　:　badEND1" x=520 y=600 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="財前ルート　:　badEND2" x=800 y=600 size=17 color=navy visible=true]

;[replay_image_button name="replay_katuraginomiya_3_4_nomalED_scene" graphic="../fgimage/bg/replay_katuraginomiya_3_4_nomalED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=50 y=450 width=200 height=130 folder="bgimage"]
;[replay_image_button name="replay_katuraginomiya_3_4_goodED_scene" graphic="../fgimage/bg/replay_katuraginomiya_3_4_goodED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=300 y=450 width=200 height=130 folder="bgimage"]
;[replay_image_button name="replay_katuraginomiya_11_1badED_scene" graphic="../fgimage/bg/replay_katuraginomiya_11_1badED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=550 y=450 width=200 height=130 folder="bgimage"]
;[if exp="katuraginomiya_au==1"]
;[ptext layer=2 page=fore text="葛城宮ルート　:　normalEND" x=50 y=500 size=17 color=navy visible=true]
;[ptext layer=2 page=fore text="葛城宮ルート　:　goodEND" x=300 y=500 size=17 color=navy visible=true]
;[ptext layer=2 page=fore text="葛城宮ルート　:　badEND" x=550 y=500 size=17 color=navy visible=true]
;[else]
;[ptext layer=2 page=fore text="？？？ルート　:　normalEND" x=50 y=500 size=17 color=navy visible=true]
;[ptext layer=2 page=fore text="？？？ルート　:　goodEND" x=300 y=500 size=17 color=navy visible=true]
;[ptext layer=2 page=fore text="？？？ルート　:　badEND" x=550 y=500 size=17 color=navy visible=true]
;[endif]
;[replay_image_button name="replay_hujieda_hujieda_3_4_goodED_scene" graphic="../fgimage/bg/replay_hujieda_hujieda_3_4_goodED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=50 y=450 width=200 height=130 folder="bgimage"]
;[replay_image_button name="replay_hujieda_hujieda_3_4_normalED_scene" graphic="../fgimage/bg/replay_hujieda_hujieda_3_4_normalED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=300 y=450 width=200 height=130 folder="bgimage"]
;[replay_image_button name="replay_hujieda_badED_scene" graphic="../fgimage/bg/replay_hujieda_badED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=550 y=450 width=200 height=130 folder="bgimage"]
;[if exp="hujieda_au==1"]
;[ptext layer=2 page=fore text="藤枝ルート　:　normalEND" x=50 y=500 size=17 color=navy visible=true]
;[ptext layer=2 page=fore text="藤枝ルート　:　goodEND" x=300 y=500 size=17 color=navy visible=true]
;[ptext layer=2 page=fore text="藤枝ルート　:　badEND" x=550 y=500 size=17 color=navy visible=true]
;[else]
;[ptext layer=2 page=fore text="？？？ルート　:　normalEND" x=50 y=500 size=17 color=navy visible=true]
;[ptext layer=2 page=fore text="？？？ルート　:　goodEND" x=300 y=500 size=17 color=navy visible=true]
;[ptext layer=2 page=fore text="？？？ルート　:　badEND" x=550 y=500 size=17 color=navy visible=true]
;[endif]

@jump target ="*common"


*common

[s]

*backtitle
[back storage="toumei.gif" time=1]
[cm]
[freeimage layer=2]
@jump storage=title.ks

*nextpage
[emb exp="tf.page++;"]
@jump target="*replaypage"


*backpage
[emb exp="tf.page--;"]
@jump target="*replaypage"

*clickcg
[back storage="toumei.gif" time=1]
[stopbgm]
[cm]
[freeimage layer = 2]
[if exp="sf.BGM=='OFF'"]
[iscript]
/*BGMを再生しない*/
TG.stat.play_bgm = false;
[endscript]
;ロード時点で再生していたBGMを停止します。
[stopbgm ]
[else]
[iscript]
/*BGMを再生する*/
TG.stat.play_bgm = true;
[endscript]
;[playbgm storage=&f.bgm_storage]
[endif]

[if exp="sf.SE=='OFF'"]
[iscript]
/*効果音を再生しない*/
TG.stat.play_se = false;
[endscript]
;ロード時点で再生していたSEを停止します。
[stopse ]
[else]
[iscript]
/*効果音を再生する*/
TG.stat.play_se = true;
[endscript]
[endif]

[iscript]
    tf.flag_replay = true;
[endscript]


@jump storage=&tf.selected_replay_obj.storage target=&tf.selected_replay_obj.target
[s]

*no_image

@jump  target=*replaypage



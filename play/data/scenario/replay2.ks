;=========================================
; 回想モード　画面作成 黒田ルートについては未調整です。
;=========================================
*start
*test_end
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

;プリロードをします。スマホで表示が間に合わない
[iscript]
f.preload_images_rp_bt_kuroda = ["data/fgimage/bg/replay_kuroda_goodED.jpg","data/fgimage/bg/replay_kuroda_normalED.jpg","data/fgimage/bg/replay_kuroda_badED.jpg"];
f.preload_images_rp_bt_sijyou = ["data/fgimage/bg/B4nFWraU42/replay_sijyou_normalED.jpg","data/fgimage/bg/replay_sijyou_goodED.jpg","data/fgimage/bg/replay_sijyou_badED.jpg"];
f.preload_images_rp_bt_zaizen = ["data/fgimage/bg/I9IhvvVdPo/replay_zaizen_normalED.jpg","data/fgimage/bg/replay_zaizen_goodED.jpg","data/fgimage/bg/I9IhvvVdPo/replay_zaizen_bad1ED.jpg","data/fgimage/bg/replay_zaizen_bad2ED.jpg"];
f.preload_images_rp_bt_katuragi = ["data/fgimage/bg/I9IhvvVdPo/replay_katuraginomiya_normalED.jpg","data/fgimage/bg/I9IhvvVdPo/replay_katuraginomiya_goodED.jpg","data/fgimage/bg/I9IhvvVdPo/replay_katuraginomiya_badED.jpg"];
f.preload_images_rp_bt_hujieda = ["data/fgimage/bg/replay_hujieda_normalED.jpg","data/fgimage/bg/replay_hujieda_goodED.jpg","data/fgimage/bg/B4nFWraU42/replay_hujieda_badED.jpg","data/fgimage/bg/replay_hujieda_badED2.jpg"];
[endscript]

[iscript]
f.preload_scenario_kuroda = ["data/scenario/kuroda_3_4_normalED.ks","data/scenario/kuroda_3_4_goodED.ks","data/scenario/kuroda_12_3_badED.ks"];
f.preload_scenario_sijyou = ["data/scenario/sijyou/sijyou_3_4_goodED.ks","data/scenario/sijyou/sijyou_3_4_epilogue_goodED.ks","data/scenario/sijyou/sijyou_10_3_badED.ks"];
f.preload_scenario_zaizen = ["data/scenario/zaizen/zaizen_3_4_normal.ks","data/scenario/zaizen/zaizen_3_4_good.ks","data/scenario/zaizen/zaizen_11_1_bad1.ks","data/scenario/zaizen/zaizen_11_bad2.ks"];

//f.preload_scenario_katuraginomiya = ["data/scenario/katuraginomiya/katuraginomiya_3_4_nomalED.k","data/scenario/katuraginomiya/katuraginomiya_3_4epilogue_goodED.ks","data/scenario/katuraginomiya/katuraginomiya_11_1badED.ks"]
//f.preload_scenario_hujieda = ["data/scenario/hujieda/hujieda_3_4_normalED.ks","data/scenario/hujieda/hujieda_3_4_goodED.ks","data/scenario/hujieda/hujieda_12_3_badED.ks","data/scenario/hujieda/hujieda_11_3.ks"]
[endscript]
;githubではエラー
;[preload storage=&f.preload_scenario_kuroda wait=true]
;[preload storage=&f.preload_scenario_sijyou wait=true]
;[preload storage=&f.preload_scenario_zaizen wait=true]
;[preload storage=&f.preload_scenario_katuraginomiya wait=true]
;[preload storage=&f.preload_scenario_hujieda wait=true]

;ただの画像分岐ボタンです。
;[macro name=replay_image_button2]
;[if exp="mp.end == 1"]
;[button name=rp_bt graphic=&mp.graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height graphic=&mp.graphic storage=&mp.storage target="&mp.target" folder="mp.folder|fgimage" ]
;exp="tf.selected_cg_image = preexp"
;[else]
;[button graphic=&mp.no_graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height graphic="../fgimage/bg/cg_bg.jpg" storage="replay2.ks" target="*no_image" folder="bgimage"]
;[endif]
;[endmacro]

[macro name="リプレイ画面消去"]
[iscript]
$(".list").remove();
$(".rp_bt").remove();
[endscript]
[endmacro]

@clearfix
[hidemenubutton]
;テスト画面に戻るためフラグ作成
[eval exp="f.flag_replay=true"]
[endif]
[cm]


[bg wait=true storage="../fgimage/bg/plane_sepia.jpg" time=100]
[wait time=10]
;タイトルで使うことを想定＿[chara_mod name="bg" storage="../fgimage/bg/plane_sepia.jpg" time=100]
;[layopt layer=1 visible=true]
;[chara_new name="bg" storage="bg/plane_sepia.jpg"]
;[chara_show left=1 top=1 layer=1 name="bg" time=100]

[layopt layer=3 visible=true]
[ptext name=list layer=3 page=fore text="思ひ出　(Ending List)" x=20 y=20 size=26 color=0xA8401C visible=true]

[iscript]
    
    tf.page = 0;
    tf.selected_replay_obj = ""; //選択されたリプレイを一時的に保管
    
[endscript]



*replaypage
[image name="loding_pic1" layer=3 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=580]

[if exp="tf.preload_on != 1"]
;一回のみ読み込む
[preload storage=&f.preload_images_rp_bt_kuroda wait=true]
[preload storage=&f.preload_images_rp_bt_sijyou wait=true]
[preload storage=&f.preload_images_rp_bt_zaizen wait=true]
[preload storage=&f.preload_images_rp_bt_katuragi wait=true]
[preload storage=&f.preload_images_rp_bt_hujieda wait=true]


;一回のみ読み込む
[eval exp="tf.preload_on = 1"]
[endif]

[cm]
;[if exp="f.katuraginomiya_au == 1 ||f.hujieda_au == 1"]なくていいと思いますが置いてあります
[if exp="tf.page == 0"]
[iscript]
$('.back0').remove();
[endscript]
;1ﾍﾟｰｼﾞ目は戻るを表示しない
[button name=next fix=true graphic="button_tugi.png" target="*nextpage" x=820 y=100]
;↑次へのﾎﾞﾀﾝです
[else]
[button name=back0 fix=true graphic="button_modoru.png" target="*backpage" x=820 y=200]
;↑戻るのボタンです
[iscript]
$('.next').remove();
[endscript]
[endif]


[button fix=true graphic="back.png" target="*backtitle" x=870 y=20 ]

[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]

*replayview

*cgview
@jump target=&tf.target_page
[iscript]
$('.end').remove();
[endscript]

*page_0
;並んでいるところをみせない
[iscript]
$(".layer_free").css("opacity",0);
$(".layer_2").css("opacity",0);
[endscript]
;=====================================================================================
;黒田
;=====================================================================================
[if exp="sf.ED_kuroda_normal == 1"]
[button name=rp_bt storage="kuroda_3_4_normalED.ks" target="replay_kuroda_3_4_normalED" graphic="../fgimage/bg/replay_kuroda_normalED.jpg" x=50 y=60 width=200 height=130]
;exp="tf.selected_cg_image = preexp"
[else]
[image name=list layer=2 x=50 y=60 width=200 height=130 storage="../fgimage/bg/cg_bg.jpg"]
[endif]

[if exp="sf.ED_kuroda_good == 1"]
[button name=rp_bt storage="kuroda_3_4_goodED.ks" target="replay_kuroda_3_4_goodED" graphic="../fgimage/bg/replay_kuroda_goodED.jpg" x=270 y=60 width=200 height=130]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=270 y=60 width=200 height=130]
[endif]

[if exp="sf.ED_kuroda_bad == 1"]
[button name=rp_bt storage="kuroda_12_3_badED.ks" target="replay_kuroda_12_3_badED" graphic="../fgimage/bg/replay_kuroda_badED.jpg" x=490 y=60 width=200 height=130]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=490 y=60 width=200 height=130]
[endif]
[ptext name=list layer=2 page=fore text="黒田ルート　:　normalEND" x=50 y=200 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="黒田ルート　:　goodEND" x=270 y=200 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="黒田ルート　:　badEND" x=490 y=200 size=17 color=navy visible=true]
;=====================================================================================
;四条
;=====================================================================================
;sf.ED_sijyou_normal
;sf.ED_sijyou_normal
[if exp="sf.ED_sijyou_normal == 1"]
[button name=rp_bt storage="sijyou/sijyou_3_4_goodED.ks" target="replay_sijyou_3_4_normalED" graphic="../fgimage/bg/B4nFWraU42/replay_sijyou_normalED.jpg" x=50 y=240 width=200 height=130]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=50 y=240 width=200 height=130]
[endif]

[if exp="sf.ED_sijyou_good == 1"]
[button name=rp_bt storage="sijyou/sijyou_3_4_epilogue_goodED.ks" target="replay_sijyou_3_4_goodED" graphic="../fgimage/bg/replay_sijyou_goodED.jpg" x=270 y=240 width=200 height=130]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=270 y=240 width=200 height=130 ]
[endif]

[if exp="sf.ED_sijyou_bad == 1"]
[button name=rp_bt storage="sijyou/sijyou_10_3_badED.ks" target="replay_sijyou_10_3badED" folder=fgimage graphic="../fgimage/bg/replay_sijyou_badED.jpg" x=490 y=240 width=200 height=130]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=490 y=240 width=200 height=130]
[endif]
[ptext name=list layer=2 page=fore text="四条ルート　:　normalEND" x=50 y=380 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="四条ルート　:　goodEND" x=270 y=380 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="四条ルート　:　badEND" x=490 y=380 size=17 color=navy visible=true]
;=====================================================================================
;財前
;=====================================================================================
;[replay_image_button2 end=&sf.ED_zaizen_normal storage="zaizen/zaizen_3_4_normal.ks" target="replay_zaizen_3_4_normal" graphic="../fgimage/bg/I9IhvvVdPo/replay_zaizen_normalED.jpg" x=50 y=420 width=200 height=130 folder="bgimage"]
[if exp="sf.ED_zaizen_normal == 1"]
[button name=rp_bt storage="zaizen/zaizen_3_4_normal.ks" target="replay_zaizen_3_4_normal" graphic="../fgimage/bg/I9IhvvVdPo/replay_zaizen_normalED.jpg" x=50 y=420 width=200 height=130]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=50 y=420 width=200 height=130]
[endif]

;[replay_image_button2 end=&sf.ED_zaizen_good storage="zaizen/zaizen_3_4_good.ks" target="replay_zaizen_3_4_good" graphic="../fgimage/bg/replay_zaizen_goodED.jpg"  x=270 y=420 width=200 height=130 folder="bgimage"]
[if exp="sf.ED_zaizen_good == 1"]
[button name=rp_bt storage="zaizen/zaizen_3_4_good.ks" target="replay_zaizen_3_4_good" graphic="../fgimage/bg/replay_zaizen_goodED.jpg"  x=270 y=420 width=200 height=130]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=270 y=420 width=200 height=130]
[endif]

;[replay_image_button2 end=&sf.ED_zaizen_bad2 storage="zaizen/zaizen_11_1_bad1.ks" traget="replay_zaizen_11_1_bad1" graphic="../fgimage/bg/I9IhvvVdPo/replay_zaizen_bad1ED.jpg" x=490 y=420 width=200 height=130 folder="bgimage"]
[if exp="sf.ED_zaizen_bad2 == 1"]
[button name=rp_bt storage="zaizen/zaizen_11_1_bad1.ks" traget="replay_zaizen_11_1_bad1" graphic="../fgimage/bg/I9IhvvVdPo/replay_zaizen_bad1ED.jpg" x=490 y=420 width=200 height=130]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=490 y=420 width=200 height=130]
[endif]

;[replay_image_button2 end=&sf.ED_zaizen_bad1 storage="zaizen/zaizen_11_bad2.ks" traget="replay_zaizen_11_bad2" graphic="../fgimage/bg/replay_zaizen_bad2ED.jpg" x=710 y=420 width=200 height=130 folder="bgimage"]
[if exp="sf.ED_zaizen_bad1 == 1"]
[button name=rp_bt storage="zaizen/zaizen_11_bad2.ks" traget="replay_zaizen_11_bad2" graphic="../fgimage/bg/replay_zaizen_bad2ED.jpg" x=710 y=420 width=200 height=130]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=710 y=420 width=200 height=130]
[endif]

[ptext name=list layer=2 page=fore text="財前ルート　:　normalEND" x=50 y=560 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="財前ルート　:　goodEND" x=270 y=560 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="財前ルート　:　badEND1" x=490 y=560 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="財前ルート　:　badEND2" x=710 y=560 size=17 color=navy visible=true]
;zaizen_11_1_bad1.ks・・・財前ルート終了 end="bad2"
;zaizen_11_1_bad2.ks・・・財前ルート終了 end="bad1"になっている
@jump target ="*common"
;=====================================================================================
*page_1
[image name="loding_pic1" layer=2 folder="image" storage="junbi_cyu.gif" left=740 top=580]
;並んでいるところをみせない
[iscript]
$(".layer_free").css("opacity",0);
$(".list").css("opacity",0);
[endscript]
;=====================================================================================
;葛城宮
;=====================================================================================
;[replay_image_button2 end=&sf.ED_katuraginomiya_normal storage="katuraginomiya/katuraginomiya_3_4_nomalED.ks" target="replay_katuraginomiya_3_4_nomalED" graphic="../fgimage/bg/I9IhvvVdPo/replay_katuraginomiya_normalED.jpg"  x=50 y=60 width=200 height=130 folder="bgimage"]
[if exp="sf.ED_katuraginomiya_normal == 1"]
[button name=rp_bt storage="katuraginomiya/katuraginomiya_3_4_nomalED.ks" target="replay_katuraginomiya_3_4_nomalED" graphic="../fgimage/bg/I9IhvvVdPo/replay_katuraginomiya_normalED.jpg"  x=50 y=60 width=200 height=130]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=50 y=60 width=200 height=130]
[endif]

;[replay_image_button2 end=&sf.ED_katuraginomiya_good storage="katuraginomiya/katuraginomiya_3_4epilogue_goodED.ks" target="replay_katuraginomiya_3_4_goodED" graphic="../fgimage/bg/I9IhvvVdPo/replay_katuraginomiya_goodED.jpg" x=270 y=60 width=200 height=130 folder="bgimage"]
[if exp="sf.ED_katuraginomiya_good == 1"]
[button name=rp_bt storage="katuraginomiya/katuraginomiya_3_4epilogue_goodED.ks" target="replay_katuraginomiya_3_4_goodED" graphic="../fgimage/bg/I9IhvvVdPo/replay_katuraginomiya_goodED.jpg" x=270 y=60 width=200 height=130]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=270 y=60 width=200 height=130]
[endif]

;[replay_image_button2 end=&sf.ED_katuraginomiya_bad storage="katuraginomiya/katuraginomiya_11_1badED.ks" target="replay_katuraginomiya_11_1badED" graphic="../fgimage/bg/I9IhvvVdPo/replay_katuraginomiya_badED.jpg" x=490 y=60 width=200 height=130 folder="bgimage"]
[if exp="sf.ED_katuraginomiya_bad == 1"]
[button name=rp_bt storage="katuraginomiya/katuraginomiya_11_1badED.ks" target="replay_katuraginomiya_11_1badED" graphic="../fgimage/bg/I9IhvvVdPo/replay_katuraginomiya_badED.jpg" x=490 y=60 width=200 height=130 folder="bgimage"]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=490 y=60 width=200 height=130]
[endif]

[if exp="sf.replay_katuraginomiya == 1"]
[ptext name=list layer=2 page=fore text="葛城宮ルート :　normalEND" x=50 y=200 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="葛城宮ルート :　goodEND" x=270 y=200 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="葛城宮ルート :　badEND" x=490 y=200 size=17 color=navy visible=true]
[else]
[ptext name=list layer=2 page=fore text="？ルート　:　normalEND" x=50 y=200 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="？ルート　:　goodEND" x=270 y=200 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="？ルート　:　badEND" x=490 y=200 size=17 color=navy visible=true]
[endif]

;=====================================================================================
;藤枝
;=====================================================================================
;[replay_image_button2 end=&sf.ED_hujieda_normal storage="hujieda/hujieda_3_4_normalED.ks" target="replay_hujieda_hujieda_3_4_normalED_scene" graphic="../fgimage/bg/replay_hujieda_normalED.jpg" x=50 y=240 width=200 height=130 folder="bgimage"]
[if exp="sf.ED_hujieda_nomal == 1 || sf.ED_hujieda_normal == 1"]
[button name=rp_bt storage="hujieda/hujieda_3_4_normalED.ks" target="replay_hujieda_hujieda_3_4_normalED_scene" graphic="../fgimage/bg/replay_hujieda_normalED.jpg" x=50 y=240 width=200 height=130 ]
[else]
[image name=list layer=2 width=200 height=130 storage="../fgimage/bg/cg_bg.jpg" width=200 height=130 x=50 y=240]
[endif]

;[replay_image_button2 end=&sf.ED_hujieda_good storage="hujieda/hujieda_3_4_goodED.ks" target="replay_hujieda_hujieda_3_4_goodED_scene" graphic="../fgimage/bg/replay_hujieda_goodED.jpg" x=270 y=240 width=200 height=130 folder="bgimage"]
[if exp="sf.ED_hujieda_good == 1"]
[button name=rp_bt storage="hujieda/hujieda_3_4_goodED.ks" target="replay_hujieda_hujieda_3_4_goodED_scene" graphic="../fgimage/bg/replay_hujieda_goodED.jpg" x=270 y=240 width=200 height=130]
[else]
[image name=list layer=2 width=200 height=130 storage="../fgimage/bg/cg_bg.jpg" width=200 height=130 x=270 y=240]
[endif]

;[replay_image_button2 end=&sf.ED_hujieda_bad storage="hujieda/hujieda_12_3_badED.ks" target="replay_hujieda_badED_scene" graphic="../fgimage/bg/B4nFWraU42/replay_hujieda_badED.jpg" x=490 y=240 width=200 height=130 folder="bgimage"]
[if exp="sf.ED_hujieda_bad == 1"]
[button name=rp_bt storage="hujieda/hujieda_12_3_badED.ks" target="replay_hujieda_badED_scene" graphic="../fgimage/bg/B4nFWraU42/replay_hujieda_badED.jpg" x=490 y=240 width=200 height=130]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" width=200 height=130 x=490 y=240]
[endif]

;[replay_image_button2 end=&sf.ED_hujieda_bad2 storage="hujieda/hujieda_11_3.ks" target="*replay_hujieda_badED_scene2" graphic="../fgimage/bg/replay_hujieda_badED2.jpg" x=50 y=420 width=200 height=130 folder="bgimage"]
[if exp="sf.ED_hujieda_bad2 == 1"]
[button name=rp_bt end=&sf.ED_hujieda_bad2 storage="hujieda/hujieda_11_3.ks" target="*replay_hujieda_badED_scene2" graphic="../fgimage/bg/replay_hujieda_badED2.jpg" x=50 y=420 width=200 height=130]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" width=200 height=130 x=50 y=420]
[endif]

[if exp="sf.replay_hujieda == 1"]
[ptext name=list layer=2 page=fore text="藤枝ルート　:　normalEND" x=50 y=380 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="藤枝ルート　:　goodEND" x=270 y=380 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="藤枝ルート　:　badEND" x=490 y=380 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="藤枝ルート　:　badEND2" x=50 y=560 size=17 color=navy visible=true]
[else]
[ptext name=list layer=2 page=fore text="？ルート　:　normalEND" x=50 y=380 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="？ルート　:　goodEND" x=300 y=380 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="？ルート　:　badEND" x=490 y=380 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="？ルート　:　badEND2" x=50 y=560 size=17 color=navy visible=true]
[endif]
;=====================================================================================
@jump target ="*common"


*common
[iscript]
$(".layer_free").css("opacity",1);
$(".rp_bt").css("opacity",1);
$(".list").css("opacity",1);
$('.loding_pic1').remove();
[endscript]
@layopt layer=2 visible=true
[s]

*backtitle
[cm]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]
;[chara_mod name="bg" storage="bg/title.jpg"]
[bg wait=true storage="toumei.gif" time=1]
[iscript]
$(".layer_free").css("opacity",1);
$(".layer_2").css("opacity",1);
[endscript]
@layopt layer=2 visible=true
@layopt layer=1 visible=true
@clearfix
[clearstack]
[iscript]
    tf.flag_replay = false;
    f.flag_replay = false;
[endscript]
@jump storage=title.ks

*nextpage
[iscript]
$(".rp_bt").css("opacity",0);
[endscript]
;cmmonで戻している[cm]にすると次へも消えて一瞬画面に何も表示されない状態になる
[image name="loding_pic1" layer=2 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=10]
[emb exp="tf.page++;"]
[clearstack]
[freeimage layer=2]
@layopt layer=2 visible=false
@jump target="*replaypage"


*backpage
[iscript]
$(".rp_bt").css("opacity",0);
[endscript]
;cmmonで戻している[cm]にすると次へも消えて一瞬画面に何も表示されない状態になる
[image name="loding_pic1" layer=2 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=10]
[emb exp="tf.page--;"]
[clearstack]
[freeimage layer=2]
@layopt layer=2 visible=false
@jump target="*replaypage"

*clickcg
[bg wait=true storage="toumei.gif" time=1]
[stopbgm]
[cm]
[freeimage layer = 2]
[freeimage layer = 3]
;リプレイで表示されない修正
@layopt layer=2 visible=true
@layopt layer=3 visible=true
@layopt layer=0 visible=true
;リプレイで表示されない↑修正
;追加しましたが、なくてもボタンは消されるようです・・・リプレイ中にセーブされても困ることに気づく
@clearfix
@layopt layer=fix visible=true

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
    f.flag_replay = true;
[endscript]



[s]

*no_image

@jump  target=*replaypage


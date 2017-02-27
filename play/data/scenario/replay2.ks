;=========================================
; 回想モード　画面作成 黒田ルートについては未調整です。
;=========================================
*start
[clearstack]
;プリロードをします。必要ないのでコメント化
[iscript]
//f.preload_images_rp_bt_kuroda = ["data/fgimage/bg/replay_kuroda_goodED.jpg","data/fgimage/bg/replay_kuroda_normalED.jpg"];
//f.preload_images_rp_bt_sijyou = ["data/fgimage/bg/sijyou_CGnomal.png","data/fgimage/bg/sijyou_CGgood.png"];
//f.preload_images_rp_bt_zaizen = ["data/fgimage/bg/zaizen_CGnomal.jpg,"data/fgimage/bg/zaizen_CGgood.jpg"];
//f.preload_images_rp_bt_katuragi = ["data/fgimage/bg/katuraginomiya_3_4_nomalED_3.jpg","data/fgimage/bg/katuraginomiya_3_4_goodED_3.jpg"]
//f.preload_images_rp_bt_hujieda = ["data/fgimage/bg/hujieda_normalED.jpg","data/fgimage/bg/hujieda_goodED.jpg"]
[endscript]

;ただの画像分岐ボタンです。
[macro name=replay_image_button2]
[if exp="mp.end == 1"]
[button name=rp_bt graphic=&mp.graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height graphic=&mp.graphic storage=&mp.storage target="&mp.target" folder="mp.folder|fgimage" ]
;exp="tf.selected_cg_image = preexp"
[else]
[button graphic=&mp.no_graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height graphic="../fgimage/bg/cg_bg.jpg" storage="replay2.ks" target="*no_image" folder="bgimage"]
[endif]
[endmacro]
@clearfix
[hidemenubutton]
;テスト画面に戻るためフラグ作成
[eval exp="f.flag_replay=true"]
[endif]
[cm]


[back storage="../fgimage/bg/plane_sepia.jpg" time=100]
;タイトルで使うことを想定＿[chara_mod name="bg" storage="../fgimage/bg/plane_sepia.jpg" time=100]
[layopt layer=3 visible=true]
[ptext name=list layer=3 page=fore text="思ひ出　(Ending List)" x=20 y=20 size=26 color=0xA8401C visible=true]

[iscript]
    
    tf.page = 0;
    tf.selected_replay_obj = ""; //選択されたリプレイを一時的に保管
    
[endscript]



*replaypage
[image name="loding_pic1" layer=2 folder="image" storage="junbi_cyu.gif" left=740 top=580]
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
[endscript]
[replay_image_button2 end=&sf.ED_kuroda_normal storage="kuroda_3_4_normalED.ks" target="kuroda_3_4_normalED" graphic="../fgimage/bg/replay_kuroda_normalED.jpg" x=50 y=60 width=200 height=130 folder="bgimage"]
[replay_image_button2 end=&sf.ED_kuroda_good storage="kuroda_3_4_goodED.ks" target="kuroda_3_4_goodED" graphic="../fgimage/bg/replay_kuroda_goodED.jpg"  x=270 y=60 width=200 height=130 folder="bgimage"]
[replay_image_button2 end=&sf.ED_kuroda_bad storage="kuroda_3_4_goodED.ks" target="replay_kuroda_12_3_badED" graphic="bg/replay_kuroda_badED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=490 y=60 width=200 height=130 folder="bgimage"]
[ptext name=list layer=2 page=fore text="黒田ルート　:　normalEND" x=50 y=200 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="黒田ルート　:　goodEND" x=270 y=200 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="黒田ルート　:　badEND" x=490 y=200 size=17 color=navy visible=true]

;sf.ED_sijyou_normal
;sf.ED_sijyou_normal
[replay_image_button2 end=&sf.ED_sijyou_normal storage="sijyou/sijyou_3_4_goodED.ks" target="replay_sijyou_3_4_normalED" graphic="../fgimage/bg/sijyou_CGnomal.png" x=50 y=240 width=200 height=130 folder="bgimage"]
[replay_image_button2 end=&sf.ED_sijyou_good storage="sijyou/sijyou_3_4_epilogue_goodED.ks" target="replay_sijyou_3_4_goodED" graphic="../fgimage/bg/sijyou_CGgood.png" x=270 y=240 width=200 height=130 folder="bgimage"]
[replay_image_button2 end=&sf.ED_sijyou_bad storage="sijyou/sijyou_10_3_badED.ks" target="replay_sijyou_10_3badED" folder=fgimage graphic="bg/replay_sijyou_badlED.jpg" x=490 y=240 width=200 height=130 folder="bgimage"]
[ptext name=list layer=2 page=fore text="四条ルート　:　normalEND" x=50 y=380 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="四条ルート　:　goodEND" x=270 y=380 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="四条ルート　:　badEND" x=490 y=380 size=17 color=navy visible=true]

[replay_image_button2 end=&sf.ED_zaizen_normal storage="zaizen/zaizen_3_4_normal.ks" target="replay_zaizen_3_4_normal" graphic="../fgimage/bg/zaizen_CGnomal.jpg" x=50 y=420 width=200 height=130 folder="bgimage"]
[replay_image_button2 end=&sf.ED_zaizen_good storage="zaizen/zaizen_3_4_good.ks" target="replay_zaizen_3_4_good" graphic="../fgimage/bg/zaizen_CGgood.jpg"  x=270 y=420 width=200 height=130 folder="bgimage"]
[replay_image_button2 end=&sf.ED_zaizen_bad1 storage="zaizen/zaizen_11_1_bad1.ks" traget="replay_zaizen_11_1_bad1" graphic="../fgimage/bg/replay_zaizem_badED.jpg" x=490 y=420 width=200 height=130 folder="bgimage"]
[replay_image_button2 end=&sf.ED_zaizen_bad2 storage="zaizen/zaizen_11_bad2" traget="replay_zaizen_11_bad2" graphic="../fgimage/bg/replay_zaizem_badED.jpg" x=710 y=420 width=200 height=130 folder="bgimage"]
[ptext name=list layer=2 page=fore text="財前ルート　:　normalEND" x=50 y=560 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="財前ルート　:　goodEND" x=270 y=560 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="財前ルート　:　badEND1" x=490 y=560 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="財前ルート　:　badEND2" x=710 y=560 size=17 color=navy visible=true]

@jump target ="*common"

*page_1
[image name="loding_pic1" layer=2 folder="image" storage="junbi_cyu.gif" left=740 top=580]
;並んでいるところをみせない
[iscript]
$(".layer_free").css("opacity",0);
$(".list").css("opacity",0);
[endscript]
[replay_image_button2 end=&sf.ED_katuraginomiya_normal storage="katuraginomiya_3_4.ks" target="replay_katuraginomiya_3_4_nomalED" graphic="../fgimage/bg/katuraginomiya_3_4_nomalED_3.jpg"  x=50 y=60 width=200 height=130 folder="bgimage"]
[replay_image_button2 end=&sf.ED_katuraginomiya_good storage="katuraginomiya_3_4_goodED.ks" target="replay_katuraginomiya_3_4_goodED" graphic="../fgimage/bg/katuraginomiya_3_4_goodED_3.jpg" x=270 y=60 width=200 height=130 folder="bgimage"]
[replay_image_button2 end=&sf.ED_katuraginomiya_normal storage="katuraginomiya_11_1badED.ks" target="replay_katuraginomiya_11_1badED" graphic="../fgimage/bg/replay_katuraginomiya_11_1badED.jpg" x=490 y=60 width=200 height=130 folder="bgimage"]


[if exp="sf.record_katuraginomiya_9_1 > 1"]
[ptext name=list layer=2 page=fore text="葛城宮ルート　:　normalEND" x=50 y=200 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="葛城宮ルート　:　goodEND" x=270 y=200 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="葛城宮ルート　:　badEND" x=490 y=200 size=17 color=navy visible=true]
[else]
[ptext name=list layer=2 page=fore text="？ルート　:　normalEND" x=50 y=200 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="？ルート　:　goodEND" x=270 y=200 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="？ルート　:　badEND" x=490 y=200 size=17 color=navy visible=true]
[endif]
[replay_image_button2 end=&sf.ED_hujieda_normal storage="hujieda/hujieda_3_4_normalED.ks" target="replay_hujieda_3_4_normalED" graphic="../fgimage/bg/hujieda_normalED.jpg" x=50 y=240 width=200 height=130 folder="bgimage"]
[replay_image_button2 end=&sf.ED_hujieda_good storage="hujieda/hujieda_3_4_goodED.ks" target="replay_hujieda_hujieda_3_4_goodED_scene" graphic="../fgimage/bg/hujieda_goodED.jpg" x=270 y=240 width=200 height=130 folder="bgimage"]
[replay_image_button2 end=&sf.ED_hujieda_bad storage="hujieda/hujieda_12_3_badED.ks" target="replay_hujieda_badED_scene" graphic="../fgimage/bg/replay_hujieda_badED.jpg" x=490 y=240 width=200 height=130 folder="bgimage"]


[if exp="sf.record.trail_hujieda_replay_hujieda_9_1 > 1"]
[ptext name=list layer=2 page=fore text="藤枝ルート　:　normalEND" x=50 y=380 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="藤枝ルート　:　goodEND" x=270 y=380 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="藤枝ルート　:　badEND" x=490 y=380 size=17 color=navy visible=true]
[else]
[ptext name=list layer=2 page=fore text="？ルート　:　normalEND" x=50 y=380 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="？ルート　:　goodEND" x=300 y=380 size=17 color=navy visible=true]
[ptext name=list layer=2 page=fore text="？ルート　:　badEND" x=490 y=380 size=17 color=navy visible=true]
[endif]

@jump target ="*common"


*common
[iscript]
$(".layer_free").css("opacity",1);
$(".list").css("opacity",1);
$('.loding_pic1').remove();
[endscript]
@layopt layer=2 visible=true
[s]

*backtitle
[back storage="toumei.gif" time=1]
[cm]
[iscript]
$(".layer_free").css("opacity",1);
[endscript]
[freeimage layer=3]
[freeimage layer=2]
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
[emb exp="tf.page++;"]
[clearstack]
[freeimage layer=2]
@layopt layer=2 visible=false
@jump target="*replaypage"


*backpage
[emb exp="tf.page--;"]
[clearstack]
[freeimage layer=2]
@layopt layer=2 visible=false
@jump target="*replaypage"

*clickcg
[back storage="toumei.gif" time=1]
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


;=========================================
; 回想モード　画面作成
;=========================================
*start
;@layopt layer=message0 visible=false
;※レイヤー１を一度でも消すとvisible=trueにしても戻せない？
@clearfix
[hidemenubutton]
;テスト画面に戻るためフラグ作成
[eval exp="f.flag_replay=true"]
[endif]
[cm]

[back storage="../fgimage/bg/plane_sepia.jpg" time=100]
[layopt layer=3 visible=true]
[ptext layer=3 page=fore text="思ひ出　(Ending List)" x=20 y=20 size=26 color=0xA8401C visible=true]

[iscript]
    
    tf.page = 0;
    tf.selected_replay_obj = ""; //選択されたリプレイを一時的に保管
    
[endscript]



*replaypage
[cm]
;[if exp="f.katuraginomiya_au == 1 ||f.hujieda_au == 1"]なくていいと思いますが置いてあります
[if exp="tf.page == 0"]
[button name=next fix=true graphic="button_tugi.png" target="*nextpage" x=820 y=100]
;↑次へのﾎﾞﾀﾝです
[else]
[iscript]
$('.next').remove();
[endscript]
[endif]

[button fix=true graphic="button_modoru.png" target="*backpage" x=820 y=200]
;↑戻るのボタンです
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
[replay_image_button name="kuroda_3_4_normalED_scene" graphic="../fgimage/bg/replay_kuroda_normalED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=50 y=60 width=200 height=130 folder="bgimage"]
[replay_image_button name="kuroda_3_4_goodED_scene" graphic="../fgimage/bg/replay_kuroda_goodED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=270 y=60 width=200 height=130 folder="bgimage"]
[replay_image_button name="replay_kuroda_12_3_badED_scene" graphic="../fgimage/bg/replay_kuroda_badED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=490 y=60 width=200 height=130 folder="bgimage"]
[ptext layer=2 page=fore text="黒田ルート　:　normalEND" x=50 y=200 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="黒田ルート　:　goodEND" x=270 y=200 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="黒田ルート　:　badEND" x=490 y=200 size=17 color=navy visible=true]

[replay_image_button name="replay_sijyou_3_4_normalED_scene" graphic="../fgimage/bg/sijyou_CGnomal.png" no_graphic="../fgimage/bg/cg_bg.jpg" x=50 y=240 width=200 height=130 folder="bgimage"]
[replay_image_button name="replay_sijyou_3_4_goodED_scene" graphic="../fgimage/bg/sijyou_CGgood.png" no_graphic="../fgimage/bg/cg_bg.jpg" x=270 y=240 width=200 height=130 folder="bgimage"]
[replay_image_button name="replay_sijyou_10_3badED_scene" graphic="../fgimage/bg/replay_sijyou_badED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=490 y=240 width=200 height=130 folder="bgimage"]
[ptext layer=2 page=fore text="四条ルート　:　normalEND" x=50 y=380 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="四条ルート　:　goodEND" x=270 y=380 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="四条ルート　:　badEND" x=490 y=380 size=17 color=navy visible=true]

[replay_image_button name="replay_zaizen_3_4_normal_scene" graphic="../fgimage/bg/zaizen_CGnomal.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=50 y=420 width=200 height=130 folder="bgimage"]
[replay_image_button name="replay_zaizen_3_4_good_scene" graphic="../fgimage/bg/zaizen_CGgood.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=270 y=420 width=200 height=130 folder="bgimage"]
[replay_image_button name="replay_zaizen_11_1_bad1_scene" graphic="../fgimage/bg/replay_zaizen_bad1ED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=490 y=420 width=200 height=130 folder="bgimage"]
[replay_image_button name="replay_zaizen_11_bad2_scene" graphic="../fgimage/bg/replay_zaizen_bad2ED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=710 y=420 width=200 height=130 folder="bgimage"]
[ptext layer=2 page=fore text="財前ルート　:　normalEND" x=50 y=560 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="財前ルート　:　goodEND" x=270 y=560 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="財前ルート　:　badEND1" x=490 y=560 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="財前ルート　:　badEND2" x=710 y=560 size=17 color=navy visible=true]

@jump target ="*common"

*page_1

[replay_image_button name="replay_katuraginomiya_3_4_nomalED_scene" graphic="../fgimage/bg/katuraginomiya_3_4_nomalED_3.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=50 y=60 width=200 height=130 folder="bgimage"]
[replay_image_button name="replay_katuraginomiya_3_4_goodED_scene" graphic="../fgimage/bg/katuraginomiya_3_4_goodED_3.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=270 y=60 width=200 height=130 folder="bgimage"]
[replay_image_button name="replay_katuraginomiya_11_1badED_scene" graphic="../fgimage/bg/I9IhvvVdPo/replay_katuraginomiya_badED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=490 y=60 width=200 height=130 folder="bgimage"]

;"sf.record.trail_シナリオファイル名_ラベル名"
[trace exp="sf.replay_katuraginomiya"]
[if exp="sf.replay_katuraginomiya == 1"]
[ptext layer=2 page=fore text="葛城宮ルート　:　normalEND" x=50 y=200 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="葛城宮ルート　:　goodEND" x=270 y=200 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="葛城宮ルート　:　badEND" x=490 y=200 size=17 color=navy visible=true]
[else]
[ptext layer=2 page=fore text="？ルート　:　normalEND" x=50 y=200 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="？ルート　:　goodEND" x=270 y=200 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="？ルート　:　badEND" x=490 y=200 size=17 color=navy visible=true]
[endif]
[replay_image_button name="replay_hujieda_hujieda_3_4_goodED_scene" graphic="../fgimage/bg/hujieda_normalED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=50 y=240 width=200 height=130 folder="bgimage"]
[replay_image_button name="replay_hujieda_hujieda_3_4_normalED_scene" graphic="../fgimage/bg/hujieda_goodED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=270 y=240 width=200 height=130 folder="bgimage"]
[replay_image_button name="replay_hujieda_badED_scene" graphic="../fgimage/bg/replay_hujieda_badED.jpg" no_graphic="../fgimage/bg/cg_bg.jpg" x=490 y=240 width=200 height=130 folder="bgimage"]

;"sf.record.trail_シナリオファイル名_ラベル名"
[trace exp="sf.replay_hujieda=1"]
[if exp="sf.replay_hujieda == 1"]
[ptext layer=2 page=fore text="藤枝ルート　:　normalEND" x=50 y=380 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="藤枝ルート　:　goodEND" x=270 y=380 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="藤枝ルート　:　badEND" x=490 y=380 size=17 color=navy visible=true]
[else]
[ptext layer=2 page=fore text="？ルート　:　normalEND" x=50 y=380 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="？ルート　:　goodEND" x=300 y=380 size=17 color=navy visible=true]
[ptext layer=2 page=fore text="？ルート　:　badEND" x=490 y=380 size=17 color=navy visible=true]
[endif]

@jump target ="*common"


*common
@layopt layer=2 visible=true
[s]

*backtitle
[back storage="toumei.gif" time=1]
[cm]
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


@jump storage=&tf.selected_replay_obj.storage target=&tf.selected_replay_obj.target
[s]

*no_image

@jump  target=*replaypage



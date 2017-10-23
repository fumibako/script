;=========================================
; extraモード　画面作成 黒田ルート立ち絵テストがないです。
;=========================================
*start
;◆クリアリストからの戻り値(storage)はf.clearlist_out_storageに格納しています↓(クリアリストks用)「戻」ボタン設置スクリプト例参考
;[locate x=880 y=24]
;[button name="back_clearlist" graphic="back.png" height=50 width=50 storage=&f.clearlist_out_storage target="*start"]
;[wait time=10]

[eval exp="f.clearlist_out_storage='omake.ks'"]
;◆◆一度色々リセットする
*reset
[cm]
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
;クリアリストでのエラー防止のため[chara_mod]タグの背景仮表示を行います
@layopt layer=1 visible=true
[wait time=10]
[chara_new name="bg" storage="bg/plane_sakura.jpg"]
[wait time=10]
[chara_show left=0 top=0 layer=1 name="bg" time=0]
[wait time=10]
[bg storage="toumei.gif" time=0]
[wait time=10]
;背景表示(表情鑑賞から「おまけに戻る」時も切り替わるように)
[bg wait=true storage="../fgimage/bg/plane_sakura.jpg" time=1]
;準備中
[image name="loding_pic1" layer=3 folder="image" storage="junbi_cyu.gif" left=740 top=580 visible=true]
;[wait time=580]
;タイトルに戻る
[button fix=true graphic="back.png" target="*backtitle" x=880 y=24 width=50 height=50 ]
[call storage="eventpercent_sijyou.ks" target=*start]
[call storage="eventpercent_zaizen.ks" target=*start]
[call storage="eventpercent_kuroda.ks" target=*start]
[call storage="eventpercent_katuraginomiya.ks" target=*start]
[call storage="eventpercent_hujieda.ks" target=*start]

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
;サムネイル元サイズ200x130→9割:180x117、8割：160x104
;四条
[image layer=2 name=list storage="../image/h2.png" x=40 y=35]
[ptext layer=2 name=list page=fore text="四条 華織 ：" x=85 y=40 size=17 color=navy visible=true]
[glink target=*jump_clearlist exp="f.event_replay = 'sijyou'" text=&f.sijyou_event_percent fontcolor=gray size=16 width=170 x=180 y=37 color=white]
[wait time=10]
[if exp="sf.ED_sijyou_normal == 1 && sf.ED_sijyou_good == 1 && sf.ED_sijyou_bad == 1"]
[button name=rp_bt storage="test_sijyou_hyoujou.ks" graphic="../fgimage/bg/B4nFWraU42/replay_sijyou_normalED.jpg" x=50 y=70 width=160 height=104]
[ptext layer=2 name=list page=fore text="表情鑑賞　:　四条" x=50 y=180 size=17 color=navy visible=true]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=50 y=70 width=160 height=104]
[wait time=10]
[endif]

;財前
[image layer=2 name=list storage="../image/h2.png" x=500 y=35]
[ptext layer=2 name=list page=fore text="財前 美彬 ：" x=545 y=40 size=17 color=navy visible=true]
[glink  target=*jump_clearlist exp="f.event_replay = 'zaizen'" text=&f.zaizen_event_percent fontcolor=gray size=16 width=170 x=640 y=37 color=white]
[wait time=10]
[if exp="sf.ED_zaizen_normal == 1 && sf.ED_zaizen_good == 1 && sf.ED_zaizen_bad2 == 1 && sf.ED_zaizen_bad1 == 1"]
[button name=rp_bt storage="test_zaizen_hyoujou.ks" graphic="../fgimage/bg/I9IhvvVdPo/replay_zaizen_normalED.jpg" x=500 y=70 width=160 height=104]
[ptext layer=2 name=list page=fore text="表情鑑賞　:　財前" x=500 y=180 size=17 color=navy visible=true]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=500 y=70 width=160 height=104]
[wait time=10]
[endif]

;黒田
[image layer=2 name=list storage="../image/h2.png" x=40 y=225]
[ptext layer=2 name=list page=fore text="黒田 将貴 ：" x=85 y=230 size=17 color=navy visible=true]
[glink  target=*jump_clearlist exp="f.event_replay = 'kuroda'" text=&f.kuroda_event_percent fontcolor=gray size=16 width=170 x=190 y=227 color=white]
[wait time=10]
[if exp="sf.ED_kuroda_normal == 1 && sf.ED_kuroda_good == 1 && sf.ED_kuroda_bad == 1"]
[button name=rp_bt storage="test_kuroda_hyoujou.ks" graphic="../fgimage/bg/replay_kuroda_normalED.jpg" x=50 y=260 width=160 height=104]
[ptext layer=2 name=list page=fore text="表情鑑賞　:　黒田" x=50 y=370 size=17 color=navy visible=true]
[else]
[image name=list layer=2 x=50 y=260 width=160 height=104 storage="../fgimage/bg/cg_bg.jpg"]
[wait time=10]
[endif]

;葛城宮
[image layer=2 name=list storage="../image/h2.png" x=500 y=225]
[if exp="sf.event_katuragi_event_1 == 1"]
	[ptext layer=2 name=list page=fore text="葛城宮 晴仁：" x=545 y=230 size=17 color=navy visible=true]
	[glink target="*jump_clearlist" exp="f.event_replay = 'katuraginomiya'" text="&f.katuraginomiya_event_percent" fontcolor="gray2" size="16" width="170" x="640" y="227" color="white"]
[wait time=10]
[else]
	[ptext layer=2 name=list page=fore text="？？？：" x=545 y=230 size=17 color=navy visible=true]
[endif]
[if exp="sf.ED_katuraginomiya_normal == 1 && sf.ED_katuraginomiya_good == 1 && sf.ED_katuraginomiya_bad == 1"]
[button name=rp_bt storage="test_katuraginomiya_hyoujou.ks" graphic="../fgimage/bg/I9IhvvVdPo/replay_katuraginomiya_normalED.jpg" x=500 y=260 width=160 height=104]
[ptext layer=2 name=list page=fore text="表情鑑賞　:　葛城宮" x=500 y=370 size=17 color=navy visible=true]
[else]
;[ptext layer=2 name=list page=fore text="表情鑑賞　:　？？？" x=500 y=370 size=17 color=navy visible=true]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=500 y=260 width=160 height=104]
[wait time=10]
[endif]

;藤枝
[image layer=2 name=list storage="../image/h2.png" x=40 y=415]
[if exp="sf.event_hujieda_8_4 == 1"]
	[ptext layer=2 name=list page=fore text="藤枝　肇　：" x=85 y=420 size=17 color=navy visible=true]
	[glink  target=*jump_clearlist exp="f.event_replay = 'hujieda'" text=&f.hujieda_event_percent fontcolor=gray size=16 width=170 x=180 y=417 color=white]
[elsif exp="sf.event_hujieda_7_4 == 1 && sf.event_hujieda_8_4 != 1"]
	[ptext layer=2 name=list page=fore text="鳥文の君　：" x=85 y=420 size=17 color=navy visible=true]
	[glink  target=*jump_clearlist exp="f.event_replay = 'hujieda'" text=&f.hujieda_event_percent fontcolor=gray size=16 width=170 x=180 y=417 color=white]
[elsif exp="sf.event_hujieda_4_4 == 1 && sf.event_hujieda_7_4 != 1"]
[ptext layer=2 name=list page=fore text="？？？　：" x=85 y=420 size=17 color=navy visible=true]
[glink  target=*jump_clearlist exp="f.event_replay = 'hujieda'" text=&f.hujieda_event_percent fontcolor=gray size=16 width=170 x=180 y=417 color=white]
[else]
	[ptext layer=2 name=list page=fore text="？？？　：" x=85 y=420 size=17 color=navy visible=true]
[endif]
[wait time=10]
[if exp="sf.ED_hujieda_normal == 1 && sf.ED_hujieda_good == 1 && sf.ED_hujieda_bad == 1 && sf.ED_hujieda_bad2 == 1]
[button name=rp_bt storage="test_hujieda_hyoujou.ks" graphic="../fgimage/bg/replay_hujieda_normalED.jpg" x=50 y=450 width=160 height=104]
[ptext layer=2 name=list page=fore text="表情鑑賞　:　藤枝" x=50 y=560 size=17 color=navy visible=true]
[else]
[image name=list layer=2 storage="../fgimage/bg/cg_bg.jpg" x=50 y=450 width=160 height=104]
[wait time=10]
[endif]
[iscript]
$('.white').css({ 'backgroundImage' : 'url("../play/data/image/select_waku_x500.png")','background-size' : '100% 100%', 'background-position':'contain', 'background-repeat': 'no-repeat' , 'border-style' : 'none','box-shadow':'0px','border-radius':'0px' });
[endscript]

*clear_notice
;一つ以上のルートをクリアしていればお知らせスキップ
[if exp="(sf.ED_sijyou_normal == 1 && sf.ED_sijyou_good == 1 && sf.ED_sijyou_bad == 1) || (sf.ED_zaizen_normal == 1 && sf.ED_zaizen_good == 1 && sf.ED_zaizen_bad2 == 1 && sf.ED_zaizen_bad1 == 1) || (sf.ED_kuroda_normal == 1 && sf.ED_kuroda_good == 1 && sf.ED_kuroda_bad == 1) || (sf.ED_katuraginomiya_normal == 1 && sf.ED_katuraginomiya_good == 1 && sf.ED_katuraginomiya_bad == 1) || (sf.ED_hujieda_normal == 1 && sf.ED_hujieda_good == 1 && sf.ED_hujieda_bad == 1 && sf.ED_hujieda_bad2 == 1)"]
	@jump target=*clear_notice_skip
[endif]
[ptext layer=2 name=list page=fore text="どなたかのエンディング全て(good・normal・bad)を見ると…？" x=499 y=420 size=16 color=navy visible=true]

*clear_notice_skip
@jump target ="*common"
;=====================================================================================

*jump_clearlist
[freeimage layer = 2]
[cm]
[clearfix]
[if exp="f.event_replay == 'sijyou'"]
 @jump storage="sijyou/sijyou_event_clearlist.ks" target=*start
[endif]
[if exp="f.event_replay == 'zaizen'"]
 @jump storage="zaizen/zaizen_event_clearlist.ks" target=*start
[endif]
[if exp="f.event_replay == 'kuroda'"]
 @jump storage="kuroda_event_clearlist.ks" target=*start
[endif]
[if exp="f.event_replay == 'katuraginomiya'"]
 @jump storage="katuraginomiya/katuraginomiya_event_clearlist.ks" target=*start
[endif]
[if exp="f.event_replay == 'hujieda'"]
 @jump storage="hujieda/hujieda_event_clearlist.ks" target=*start
[endif]

[s]


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
[freeimage layer=1]
;[chara_mod name="bg" storage="bg/title.jpg"]
[bg wait=true storage="../fgimage/bg/title.jpg" time=1]
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


;「おまけ」：一つ以上のルート全エンディングクリア条件で表示。位置は今後さらに調整するかもしれません
;黒田判定
[if exp="sf.ED_kuroda_normal == 1 && sf.ED_kuroda_good == 1 && sf.ED_kuroda_bad == 1"]
[eval exp="tf.extra_2 = true"]
@jump target=extra2_hantei_end
[endif]
;四条判定
[if exp="sf.ED_sijyou_normal == 1 && sf.ED_sijyou_good == 1 && sf.ED_sijyou_bad == 1"]
[eval exp="tf.extra_2 = true"]
@jump target=extra2_hantei_end
[endif]
;財前判定
[if exp="sf.ED_zaizen_normal == 1 && sf.ED_zaizen_good == 1 && sf.ED_zaizen_bad2 == 1 && sf.ED_zaizen_bad1 == 1"]
[eval exp="tf.extra_2 = true"]
@jump target=extra2_hantei_end
[endif]
;葛城宮判定
[if exp="sf.ED_katuraginomiya_normal == 1 && sf.ED_katuraginomiya_good == 1 && sf.ED_katuraginomiya_bad == 1"]
[eval exp="tf.extra_2 = true"]
@jump target=extra2_hantei_end
[endif]
;藤枝判定
[if exp="sf.ED_hujieda_normal == 1 && sf.ED_hujieda_good == 1 && sf.ED_hujieda_bad == 1 && sf.ED_hujieda_bad2 == 1"]
[eval exp="tf.extra_2 = true"]
[endif]
*extra2_hantei_end
[if exp="tf.extra_2 == true"]
[endif]

[iscript]
$('.base_fore').css({'filter':'brightness(1.3)','-webkit-filter':'brightness(1.3)','-moz-filter':'brightness(1.3)','-ms-filter':'brightness(1.3)'});
[endscript]


﻿*where_are_you
;↓読み込み不良対策。お稽古パート中なら文箱や情報画面を表示せず戻る
[if exp="f.viewing_storage == 'okeiko.ks'"]
	@jump storage="okeiko_draw_button_system.ks"
[endif]

*info_oaite
@jump storage="info.ks" target=*info_oaite

*info_kuroda
@jump storage="info_kuroda.ks" target=*info_kuroda
*fumi_kuroda_page2
@jump storage="info_kuroda.ks" target=fumi_kuroda_page2
*fumi_kuroda_page3
@jump storage="info_kuroda.ks" target=fumi_kuroda_page3

*info_zaizen
@jump storage="info_zaizen.ks" target=*info_zaizen
*fumi_zaizen_page2
@jump storage="info_zaizen.ks" target=fumi_zaizen_page2
*fumi_zaizen_page3
@jump storage="info_zaizen.ks" target=fumi_zaizen_page3

*info_sijyou
@jump storage="info_sijyou.ks" target=*info_sijyou
*fumi_sijyou_page2
@jump storage="info_sijyou.ks" target=fumi_sijyou_page2
*fumi_sijyou_page3
@jump storage="info_sijyou.ks" target=fumi_sijyou_page3
*fumi_sijyou_page4
@jump storage="info_sijyou.ks" target=fumi_sijyou_page4
*fumi_sijyou_page5
@jump storage="info_sijyou.ks" target=fumi_sijyou_page5
*fumi_sijyou_page6
@jump storage="info_sijyou.ks" target=fumi_sijyou_page6
*fumi_sijyou_page7
@jump storage="info_sijyou.ks" target=fumi_sijyou_page7
*fumi_sijyou_page8
@jump storage="info_sijyou.ks" target=fumi_sijyou_page8
*fumi_sijyou_page9
@jump storage="info_sijyou.ks" target=fumi_sijyou_page9
*fumi_sijyou_page10
@jump storage="info_sijyou.ks" target=fumi_sijyou_page10
*fumi_sijyou_page11
@jump storage="info_sijyou.ks" target=fumi_sijyou_page11
*fumi_sijyou_page12
@jump storage="info_sijyou.ks" target=fumi_sijyou_page12
*fumi_sijyou_page13
@jump storage="info_sijyou.ks" target=fumi_sijyou_page13
*fumi_sijyou_page14
@jump storage="info_sijyou.ks" target=fumi_sijyou_page14
*fumi_sijyou_page15
@jump storage="info_sijyou.ks" target=fumi_sijyou_page15
*fumi_sijyou_page16
@jump storage="info_sijyou.ks" target=fumi_sijyou_page16
*fumi_sijyou_page17
@jump storage="info_sijyou.ks" target=fumi_sijyou_page17
*fumi_sijyou_page18
@jump storage="info_sijyou.ks" target=fumi_sijyou_page18
*fumi_sijyou_page19
@jump storage="info_sijyou.ks" target=fumi_sijyou_page19
*fumi_sijyou_page20
@jump storage="info_sijyou.ks" target=fumi_sijyou_page20
*fumi_sijyou_page21
@jump storage="info_sijyou.ks" target=fumi_sijyou_page21
*fumi_sijyou_page22
@jump storage="info_sijyou.ks" target=fumi_sijyou_page22
*fumi_sijyou_page23
@jump storage="info_sijyou.ks" target=fumi_sijyou_page23
*fumi_sijyou_page24
@jump storage="info_sijyou.ks" target=fumi_sijyou_page24

*info_katuraginomiya
@jump storage="info_katuraginomiya.ks" target=*info_katuraginomiya
*fumi_katuraginomiya_page2
@jump storage="info_katuraginomiya.ks" target=fumi_katuraginomiya_page2
*fumi_katuraginomiya_page3
@jump storage="info_katuraginomiya.ks" target=fumi_katuraginomiya_page3

*info_hujieda
@jump storage="info_hujieda.ks" target=*info_hujieda
*fumi_hujieda_page2
@jump storage="info_hujieda.ks" target=fumi_hujieda_page2
*fumi_hujieda_page3
@jump storage="info_hujieda.ks" target=fumi_hujieda_page3

*start
*fumibako
;↓文箱機能内表示を自然に切り替えるため文箱背景レイヤはfreeimageから除きます
;[freeimage layer = 26]
[freeimage layer = 27]
@layopt layer=message1 page=fore visible = false

[clearfix]
[cm]
[layopt layer=26 visible=true]
[layopt layer=27 visible=true]
[layopt layer=28 visible=true]
[eval exp="f.fumi_henjityu=0;"]
[eval exp="f.kinou = 'fumibako'"]
;↓アドバイスイベントを(1=通過済)に変更(主人公セリフ表示のため)
[eval exp="f.event_advice=1"]

;◆手紙一覧
*fumi_all_page1
;◆並んでいるところをみせない : script by ＠名無しさん１
[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu2.gif" left=740 top=480] 
[cm]
;[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer = 28]
[layopt layer=28 visible=true]
[eval exp="f.fumibako_now_page = 1"]
[eval exp="f.viewing_target = '*fumi_all_page1'"]
[call storage="fumibako_oaite_hyouji.ks"]

;[eval exp="f.fumi_all_number=5"]
[if exp="f.fumi_all_number>10"]
			[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page2 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_all_number"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_left
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * f.fumi_all_number ) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * f.fumi_all_number ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_1_left
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_1_left'"]
[eval exp = "tf.fumi_hyouji_ichi = 'left'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_1_left

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_left
[endif]

*fumi_all_page1_right
[if exp="f.fumi_all_number < 6"]
	@jump target=*fumi_all_page1_end
[else]
	[eval exp="f.list_count = f.fumi_all_number - 5"]
	[eval exp="f.loop_count = f.list_count"]
	[if exp="f.loop_count > 5"]
		[eval exp="f.loop_count = 5"]
	[endif]
;f.list_count=[emb exp ="f.list_count"][r]
	*loop_fumi_all_right
	[if exp="f.list_count == 0"]
	[else]
		[eval exp="f.list_count = f.list_count - 1"]
	[endif]
	[if exp="f.loop_count == 0"]
	[else]
		[eval exp="f.loop_count = f.loop_count - 1"]
	[endif]
	[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 5 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 5 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
	[endscript]
*fumi_hyouji_hajime_1_right
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_1_right'"]
[eval exp = "tf.fumi_hyouji_ichi = 'right'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_1_right

	[if exp="f.loop_count > 0"]
		@jump target=*loop_fumi_all_right
	[endif]
[endif]
*fumi_all_page1_end
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_all_page2
;◆並んでいるところをみせない : script by ＠名無しさん１
[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu2.gif" left=740 top=480] 
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 2"]
[eval exp="f.viewing_target = '*fumi_all_page2'"]
[call storage="fumibako_oaite_hyouji.ks"]
[eval exp="f.list_count = f.fumi_all_number - 10"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page1 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number>20"]
[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page3 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left2
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 10 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 10 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_2_left
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_2_left'"]
[eval exp = "tf.fumi_hyouji_ichi = 'left'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_2_left

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_left2
[endif]

*fumi_all_page2_right
[if exp="f.fumi_all_number<16"]
	@jump target=*fumi_all_page2_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 15"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right2
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 15 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 15 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_2_right
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_2_right'"]
[eval exp = "tf.fumi_hyouji_ichi = 'right'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_2_right

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_right2
[endif]
[endif]
*fumi_all_page2_end
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_all_page3
;◆並んでいるところをみせない : script by ＠名無しさん１
[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu2.gif" left=740 top=480] 
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 3"]
[eval exp="f.viewing_target = '*fumi_all_page3'"]
[call storage="fumibako_oaite_hyouji.ks"]
[eval exp="f.list_count = f.fumi_all_number - 20"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page2 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 30"]
[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page4 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left3
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 20 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 20 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_left3
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_left3'"]
[eval exp = "tf.fumi_hyouji_ichi = 'left'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_left3

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_left3
[endif]

*fumi_all_page3_right
[if exp="f.fumi_all_number<26"]
	@jump target=*fumi_all_page3_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 25"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right3
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 25 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 25 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_right3
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_right3'"]
[eval exp = "tf.fumi_hyouji_ichi = 'right'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_right3

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_right3
[endif]
[endif]
*fumi_all_page3_end
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_all_page4
;◆並んでいるところをみせない : script by ＠名無しさん１
[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu2.gif" left=740 top=480] 
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 4"]
[eval exp="f.viewing_target = '*fumi_all_page4'"]
[call storage="fumibako_oaite_hyouji.ks"]
[eval exp="f.list_count = f.fumi_all_number - 30"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page3 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 40"]
[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page5 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left4
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 30 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 30 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_left4
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_left4'"]
[eval exp = "tf.fumi_hyouji_ichi = 'left'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_left4

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_left4
[endif]

*fumi_all_page4_right
[if exp="f.fumi_all_number<36"]
	@jump target=*fumi_all_page4_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 35"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right4
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 35 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 35 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_right4
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_right4'"]
[eval exp = "tf.fumi_hyouji_ichi = 'right'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_right4

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_right4
[endif]
[endif]
*fumi_all_page4_end
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_all_page5
;◆並んでいるところをみせない : script by ＠名無しさん１
[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu2.gif" left=740 top=480] 
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 5"]
[eval exp="f.viewing_target = '*fumi_all_page5'"]
[call storage="fumibako_oaite_hyouji.ks"]
[eval exp="f.list_count = f.fumi_all_number - 40"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page4 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 50"]
[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page6 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left5
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 40 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 40 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_left5
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_left5'"]
[eval exp = "tf.fumi_hyouji_ichi = 'left'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_left5

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_left5
[endif]

*fumi_all_page5_right
[if exp="f.fumi_all_number<46"]
	@jump target=*fumi_all_page5_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 45"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right5
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 45 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 45 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_right5
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_right5'"]
[eval exp = "tf.fumi_hyouji_ichi = 'right'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_right5

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_right5
[endif]
[endif]
*fumi_all_page5_end
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_all_page6
;◆並んでいるところをみせない : script by ＠名無しさん１
[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu2.gif" left=740 top=480] 
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 6"]
[eval exp="f.viewing_target = '*fumi_all_page6'"]
[call storage="fumibako_oaite_hyouji.ks"]
[eval exp="f.list_count = f.fumi_all_number - 50"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page5 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 60"]
[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page7 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left6
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 50 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 50 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_left6
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_left6'"]
[eval exp = "tf.fumi_hyouji_ichi = 'left'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_left6

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_left6
[endif]

*fumi_all_page6_right
[if exp="f.fumi_all_number<56"]
	@jump target=*fumi_all_page6_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 55"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right6
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 55 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 55 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_right6
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_right6'"]
[eval exp = "tf.fumi_hyouji_ichi = 'right'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_right6

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_right6
[endif]
[endif]
*fumi_all_page6_end
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_all_page7
;◆並んでいるところをみせない : script by ＠名無しさん１
[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu2.gif" left=740 top=480] 
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 7"]
[eval exp="f.viewing_target = '*fumi_all_page7'"]
[call storage="fumibako_oaite_hyouji.ks"]
[eval exp="f.list_count = f.fumi_all_number - 60"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page6 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 70"]
[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page8 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left7
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 60 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 60 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_left7
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_left7'"]
[eval exp = "tf.fumi_hyouji_ichi = 'left'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_left7

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_left7
[endif]

*fumi_all_page7_right
[if exp="f.fumi_all_number<66"]
	@jump target=*fumi_all_page7_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 65"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right7
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 65 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 65 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_right7
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_right7'"]
[eval exp = "tf.fumi_hyouji_ichi = 'right'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_right7

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_right7
[endif]
[endif]
*fumi_all_page7_end
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_all_page8
;◆並んでいるところをみせない : script by ＠名無しさん１
[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu2.gif" left=740 top=480] 
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 8"]
[eval exp="f.viewing_target = '*fumi_all_page8'"]
[call storage="fumibako_oaite_hyouji.ks"]
[eval exp="f.list_count = f.fumi_all_number - 70"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page7 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 80"]
[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page9 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left8
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 70 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 70 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_left8
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_left8'"]
[eval exp = "tf.fumi_hyouji_ichi = 'left'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_left8

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_left8
[endif]

*fumi_all_page8_right
[if exp="f.fumi_all_number<76"]
	@jump target=*fumi_all_page8_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 75"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right8
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 75 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 75 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_right8
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_right7'"]
[eval exp = "tf.fumi_hyouji_ichi = 'right'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_right8

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_right8
[endif]
[endif]
*fumi_all_page8_end
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_all_page9
;◆並んでいるところをみせない : script by ＠名無しさん１
[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu2.gif" left=740 top=480] 
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 9"]
[eval exp="f.viewing_target = '*fumi_all_page9'"]
[call storage="fumibako_oaite_hyouji.ks"]
[eval exp="f.list_count = f.fumi_all_number - 80"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page8 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 90"]
[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page10 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left9
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 80 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 80 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_left9
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_left9'"]
[eval exp = "tf.fumi_hyouji_ichi = 'left'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_left9

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_left9
[endif]

*fumi_all_page9_right
[if exp="f.fumi_all_number<86"]
	@jump target=*fumi_all_page9_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 85"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right9
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 85 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 85 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_right9
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_right9'"]
[eval exp = "tf.fumi_hyouji_ichi = 'right'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_right9

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_right9
[endif]
[endif]
*fumi_all_page9_end
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_all_page10
;◆並んでいるところをみせない : script by ＠名無しさん１
[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu2.gif" left=740 top=480] 
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 10"]
[eval exp="f.viewing_target = '*fumi_all_page10'"]
[call storage="fumibako_oaite_hyouji.ks"]
[eval exp="f.list_count = f.fumi_all_number - 90"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page9 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 100"]
[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page11 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left10
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 90 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 90 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_left10
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_left10'"]
[eval exp = "tf.fumi_hyouji_ichi = 'left'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_left10

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_left10
[endif]

*fumi_all_page10_right
[if exp="f.fumi_all_number<96"]
	@jump target=*fumi_all_page10_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 95"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right10
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 95 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 95 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_right10
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_right10'"]
[eval exp = "tf.fumi_hyouji_ichi = 'right'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_right10

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_right10
[endif]
[endif]
*fumi_all_page10_end
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_all_page11
;◆並んでいるところをみせない : script by ＠名無しさん１
[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu2.gif" left=740 top=480] 
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 11"]
[eval exp="f.viewing_target = '*fumi_all_page11'"]
[call storage="fumibako_oaite_hyouji.ks"]
[eval exp="f.list_count = f.fumi_all_number - 100"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page10 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 110"]
[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page12 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left11
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 100 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 100 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_left11
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_left11'"]
[eval exp = "tf.fumi_hyouji_ichi = 'left'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_left11

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_left11
[endif]

*fumi_all_page11_right
[if exp="f.fumi_all_number<106"]
	@jump target=*fumi_all_page11_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 105"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right11
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 105 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 105 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_right11
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_right11'"]
[eval exp = "tf.fumi_hyouji_ichi = 'right'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_right11

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_right11
[endif]
[endif]
*fumi_all_page11_end
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_all_page12
;◆並んでいるところをみせない : script by ＠名無しさん１
[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu2.gif" left=740 top=480] 
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 12"]
[eval exp="f.viewing_target = '*fumi_all_page12'"]
[call storage="fumibako_oaite_hyouji.ks"]
[eval exp="f.list_count = f.fumi_all_number - 110"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page11 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 120"]
[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page13 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left12
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 110 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 110 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_left12
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_left12'"]
[eval exp = "tf.fumi_hyouji_ichi = 'left'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_left12

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_left12
[endif]

*fumi_all_page12_right
[if exp="f.fumi_all_number<116"]
	@jump target=*fumi_all_page12_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 115"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right12
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 115 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 115 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_right12
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_right12'"]
[eval exp = "tf.fumi_hyouji_ichi = 'right'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_right12

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_right12
[endif]
[endif]
*fumi_all_page12_end
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_all_page13
;◆並んでいるところをみせない : script by ＠名無しさん１
[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu2.gif" left=740 top=480] 
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 13"]
[eval exp="f.viewing_target = '*fumi_all_page13'"]
[call storage="fumibako_oaite_hyouji.ks"]
[eval exp="f.list_count = f.fumi_all_number - 120"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page12 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 130"]
[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page14 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left13
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 120 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 120 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_left13
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_left13'"]
[eval exp = "tf.fumi_hyouji_ichi = 'left'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_left13

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_left13
[endif]

*fumi_all_page13_right
[if exp="f.fumi_all_number<126"]
	@jump target=*fumi_all_page13_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 125"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right13
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 125 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 125 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_right13
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_right13'"]
[eval exp = "tf.fumi_hyouji_ichi = 'right'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_right13

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_right13
[endif]
[endif]
*fumi_all_page13_end
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_all_page14
;◆並んでいるところをみせない : script by ＠名無しさん１
[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu2.gif" left=740 top=480] 
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 14"]
[eval exp="f.viewing_target = '*fumi_all_page14'"]
[call storage="fumibako_oaite_hyouji.ks"]
[eval exp="f.list_count = f.fumi_all_number - 130"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page13 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 140"]
[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page15 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left14
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 130 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 130 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_left14
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_left14'"]
[eval exp = "tf.fumi_hyouji_ichi = 'left'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_left14

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_left14
[endif]

*fumi_all_page14_right
[if exp="f.fumi_all_number<136"]
	@jump target=*fumi_all_page14_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 135"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right14
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 135 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 135 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_right14
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_right14'"]
[eval exp = "tf.fumi_hyouji_ichi = 'right'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_right14

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_right14
[endif]
[endif]
*fumi_all_page14_end
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_all_page15
;◆並んでいるところをみせない : script by ＠名無しさん１
[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu2.gif" left=740 top=480] 
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 15"]
[eval exp="f.viewing_target = '*fumi_all_page15'"]
[call storage="fumibako_oaite_hyouji.ks"]
[eval exp="f.list_count = f.fumi_all_number - 140"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page14 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 140"]
;[glink name="list" storage="info_oaite_fumi.ks" target=*fumi_all_page16 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left15
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 140 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 140 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_left15
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_left15'"]
[eval exp = "tf.fumi_hyouji_ichi = 'left'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_left15

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_left15
[endif]

*fumi_all_page15_right
[if exp="f.fumi_all_number<146"]
	@jump target=*fumi_all_page15_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 145"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right15
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 145 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 145 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
*fumi_hyouji_hajime_right15
[eval exp="tf.fumi_hyouji_owari_target='fumi_hyouji_owari_right15'"]
[eval exp = "tf.fumi_hyouji_ichi = 'right'"]
@jump storage="fumibako_fumi_hyouji.ks"
*fumi_hyouji_owari_right15

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_all_right15
[endif]
[endif]
*fumi_all_page15_end
@jump storage="info_fumibako_hyouji_end.ks"

*where_are_you
;↓読み込み不良対策。お稽古パート中なら文箱や情報画面を表示せず戻る
[if exp="f.viewing_storage == 'okeiko.ks'"]
	@jump storage=okeiko.ks target=*draw_button_system
[endif]

;↓読み込み不良対策。終了処理ラベルを真っ先に読む
*fumibako_owari
;背景変更:主人公邸_お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko_main.jpg" time=0]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[wait time=10]

;[freeimage layer = 23]
[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer = 28]
[cm]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]

@jump storage=okeiko.ks target=*draw_button_system
[s]

*info_owari
;背景変更:主人公邸_お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko_main.jpg" time=0]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[wait time=10]
[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer = 28]
@jump storage=okeiko.ks target=*draw_button_system
[return]
[s]

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

;◆並んでいるところをみせない : script by ＠名無しさん１
[一斉表示準備]

;◆手紙一覧
*fumi_all_page1
[cm]
;[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer = 28]
[layopt layer=28 visible=true]
[eval exp="f.fumibako_now_page = 1"]
[eval exp="f.viewing_target = '*fumi_all_page1'"]
[call target=*fumibako_oaite_hyouji]

;[eval exp="f.fumi_all_number=5"]
[if exp="f.fumi_all_number>10"]
			[glink name="list" target=*fumi_all_page2 text="→" size=20 width="20" x=890 y=480 color=white]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_1_left

[if exp="f.loop_count>0"]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_1_right

	[if exp="f.loop_count>0"]
		@jump target=*loop_fumi_all_right
	[endif]
[endif]
*fumi_all_page1_end
@jump target=*fumibako_all_hyouji_owari
[s]

*fumi_all_page2
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 2"]
[eval exp="f.viewing_target = '*fumi_all_page2'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 10"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" target=*fumi_all_page1 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number>20"]
[glink name="list" target=*fumi_all_page3 text="→" size=20 width="20" x=890 y=480 color=white]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_2_left

[if exp="f.loop_count>0"]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_2_right

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right2
[endif]
[endif]
*fumi_all_page2_end
@jump target=*fumibako_all_hyouji_owari
[s]


*fumi_all_page3
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 3"]
[eval exp="f.viewing_target = '*fumi_all_page3'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 20"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" target=*fumi_all_page2 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 30"]
[glink name="list" target=*fumi_all_page4 text="→" size=20 width="20" x=890 y=480 color=white]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_left3

[if exp="f.loop_count>0"]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_right3

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right3
[endif]
[endif]
*fumi_all_page3_end
@jump target=*fumibako_all_hyouji_owari
[s]

*fumi_all_page4
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 4"]
[eval exp="f.viewing_target = '*fumi_all_page4'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 30"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" target=*fumi_all_page3 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 40"]
[glink name="list" target=*fumi_all_page5 text="→" size=20 width="20" x=890 y=480 color=white]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_left4

[if exp="f.loop_count>0"]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_right4

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right4
[endif]
[endif]
*fumi_all_page4_end
@jump target=*fumibako_all_hyouji_owari
[s]

*fumi_all_page5
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 5"]
[eval exp="f.viewing_target = '*fumi_all_page5'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 40"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" target=*fumi_all_page4 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 50"]
[glink name="list" target=*fumi_all_page6 text="→" size=20 width="20" x=890 y=480 color=white]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_left5

[if exp="f.loop_count>0"]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_right5

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right5
[endif]
[endif]
*fumi_all_page5_end
@jump target=*fumibako_all_hyouji_owari
[s]

*fumi_all_page6
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 6"]
[eval exp="f.viewing_target = '*fumi_all_page6'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 50"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" target=*fumi_all_page5 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 60"]
[glink name="list" target=*fumi_all_page7 text="→" size=20 width="20" x=890 y=480 color=white]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_left6

[if exp="f.loop_count>0"]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_right6

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right6
[endif]
[endif]
*fumi_all_page6_end
@jump target=*fumibako_all_hyouji_owari
[s]

*fumi_all_page7
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 7"]
[eval exp="f.viewing_target = '*fumi_all_page7'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 60"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" target=*fumi_all_page6 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 70"]
[glink name="list" target=*fumi_all_page8 text="→" size=20 width="20" x=890 y=480 color=white]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_left7

[if exp="f.loop_count>0"]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_right7

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right7
[endif]
[endif]
*fumi_all_page7_end
@jump target=*fumibako_all_hyouji_owari
[s]

*fumi_all_page8
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 8"]
[eval exp="f.viewing_target = '*fumi_all_page8'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 70"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" target=*fumi_all_page7 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 80"]
[glink name="list" target=*fumi_all_page9 text="→" size=20 width="20" x=890 y=480 color=white]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_left8

[if exp="f.loop_count>0"]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_right8

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right8
[endif]
[endif]
*fumi_all_page8_end
@jump target=*fumibako_all_hyouji_owari
[s]

*fumi_all_page9
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 9"]
[eval exp="f.viewing_target = '*fumi_all_page9'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 80"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" target=*fumi_all_page8 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 90"]
[glink name="list" target=*fumi_all_page10 text="→" size=20 width="20" x=890 y=480 color=white]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_left9

[if exp="f.loop_count>0"]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_right9

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right9
[endif]
[endif]
*fumi_all_page9_end
@jump target=*fumibako_all_hyouji_owari
[s]

*fumi_all_page10
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 10"]
[eval exp="f.viewing_target = '*fumi_all_page10'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 90"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" target=*fumi_all_page9 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 100"]
[glink name="list" target=*fumi_all_page11 text="→" size=20 width="20" x=890 y=480 color=white]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_left10

[if exp="f.loop_count>0"]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_right10

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right10
[endif]
[endif]
*fumi_all_page10_end
@jump target=*fumibako_all_hyouji_owari
[s]

*fumi_all_page11
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 11"]
[eval exp="f.viewing_target = '*fumi_all_page11'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 100"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" target=*fumi_all_page10 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 110"]
[glink name="list" target=*fumi_all_page12 text="→" size=20 width="20" x=890 y=480 color=white]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_left11

[if exp="f.loop_count>0"]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_right11

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right11
[endif]
[endif]
*fumi_all_page11_end
@jump target=*fumibako_all_hyouji_owari
[s]

*fumi_all_page12
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 12"]
[eval exp="f.viewing_target = '*fumi_all_page12'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 110"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" target=*fumi_all_page11 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 120"]
[glink name="list" target=*fumi_all_page13 text="→" size=20 width="20" x=890 y=480 color=white]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_left12

[if exp="f.loop_count>0"]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_right12

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right12
[endif]
[endif]
*fumi_all_page12_end
@jump target=*fumibako_all_hyouji_owari
[s]

*fumi_all_page13
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 13"]
[eval exp="f.viewing_target = '*fumi_all_page13'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 120"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" target=*fumi_all_page12 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 130"]
[glink name="list" target=*fumi_all_page14 text="→" size=20 width="20" x=890 y=480 color=white]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_left13

[if exp="f.loop_count>0"]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_right13

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right13
[endif]
[endif]
*fumi_all_page13_end
@jump target=*fumibako_all_hyouji_owari
[s]

*fumi_all_page14
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 14"]
[eval exp="f.viewing_target = '*fumi_all_page14'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 130"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" target=*fumi_all_page13 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 140"]
[glink name="list" target=*fumi_all_page15 text="→" size=20 width="20" x=890 y=480 color=white]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_left14

[if exp="f.loop_count>0"]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_right14

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right14
[endif]
[endif]
*fumi_all_page14_end
@jump target=*fumibako_all_hyouji_owari
[s]

*fumi_all_page15
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 15"]
[eval exp="f.viewing_target = '*fumi_all_page15'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 140"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink name="list" target=*fumi_all_page14 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 140"]
;[glink name="list" target=*fumi_all_page16 text="→" size=20 width="20" x=890 y=480 color=white]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_left15

[if exp="f.loop_count>0"]
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
@jump target=*fumi_hyouji
*fumi_hyouji_owari_right15

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right15
[endif]
[endif]
*fumi_all_page15_end
@jump target=*fumibako_all_hyouji_owari
[s]

*fumibako_all_hyouji_owari
[一斉表示]
[s]

*fumibako_oaite_hyouji
[eval exp="f.viewing_storage = 'info_oaite_fumi.ks'"]
[freeimage layer = 26]
[layopt layer=26 visible=true]
[image layer=26 x=1 y=1 storage="bg/bg_fumibako.jpg"]

[iscript]
f.fumibako_max_page = Math.ceil(f.fumi_all_number / 10);
f.fumibako_page_hyouji = f.fumibako_now_page + " ／ " + f.fumibako_max_page + " 頁";
[endscript]
	[ptext name="list" text=&f.fumibako_page_hyouji layer=28 size=20 x=800 y=40 color=palegoldenrod bold=bold]

;◆「文箱」下部「手紙を書く」エリアのボタン表示
;◇葛城宮only6月1週はボタン表示しない
[if exp="f.katuraginomiya_au == 1 || (f.katuraginomiya_only == 1 && ((f.okeiko_month == 6 && f.okeiko_week != 1) || f.okeiko_month == 7 || f.okeiko_month == 8))"]
	[glink name="list" storage="fumi_henji.ks" target=fumibako_katuraginomiya text="葛城宮 晴仁" size=16 width="120" x=400 y=585 color=white]
@jump target=fumibako_oaite_hyouji_owari
[elsif exp="f.kuroda_au==1"]
	[glink name="list" storage="fumi_henji.ks" target=fumibako_kuroda text="黒田 将貴" size=16 width="120" x=400 y=585 color=white]
[elsif exp="f.zaizen_au==1"]
	[glink name="list" storage="fumi_henji.ks" target=fumibako_zaizen text="財前 美彬" size=16 width="120" x=400 y=585 color=white]
@jump target=fumibako_oaite_hyouji_owari
[elsif exp="f.sijyou_au==1"]
	[glink name="list" storage="fumi_henji.ks" target=fumibako_sijyou text="四条 華織" size=16 width="120" x=400 y=585 color=white]
@jump target=fumibako_oaite_hyouji_owari
;↓◇まだ個別ルートに入っていない間又は葛城宮only以外のみ複数のお相手を表示
[elsif exp="f.kuroda_au + f.zaizen_au + f.sijyou_au + f.katuraginomiya_au + f.hujieda_au + f.katuraginomiya_only == 0"]
	[glink name="list" storage="fumi_henji.ks" target=fumibako_kuroda text="黒田 将貴" size=16 width="120" x=75 y=585 color=white]
	[glink name="list" storage="fumi_henji.ks" target=fumibako_zaizen text="財前 美彬" size=16 width="120" x=275 y=585 color=white]
	[glink name="list" storage="fumi_henji.ks" target=fumibako_sijyou text="四条 華織" size=16 width="120" x=475 y=585 color=white]
[endif]
[if exp="f.hujieda_au == 1 && ((f.okeiko_month == 9 && f.okeiko_week != 1) || f.okeiko_month == 10 || (f.okeiko_month == 2 && (f.okeiko_week == 3 || f.okeiko_week == 4)) || f.okeiko_month == 3)"]
;藤枝と文通可能なのは個別ルートに入った後、9月2週～10月4週と2月3週以降。11月1週(発覚)～2月2週は不可
	[glink name="list" storage="fumi_henji.ks" target=fumibako_hujieda text="藤枝　肇" size=16 width="120" x=400 y=585 color=white]
@jump target=fumibako_oaite_hyouji_owari
[endif]
;個別ルート進行前に葛城宮に手紙を出せるようになっていたらボタン表示
[if exp="f.katuraginomiya_fumi_start == 1 && f.kuroda_au + f.zaizen_au + f.sijyou_au + f.katuraginomiya_au + f.hujieda_au == 0"]
	[glink name="list" storage="fumi_henji.ks" target=fumibako_katuraginomiya text="葛城宮 晴仁" size=16 width="120" x=675 y=585 color=white]
[endif]

*fumibako_oaite_hyouji_owari
	[glink name="list" target="fumibako_owari" text="終了" color=gray size=16 width="40" x=880 y=585 color=white]
[return]
[s]

;◆◆攻略対象情報画面(お稽古画面から「情報」ボタンを押すと表示される)
*info_oaite
;◆お相手肖像画像表示位置変数
[eval exp="f.x_info=0"]
[eval exp="f.y_info=0"]

[eval exp="f.viewing_storage = 'info_oaite_fumi.ks'"]
@layopt layer=message1 page=fore visible = false
[freeimage layer = 26]
[freeimage layer = 27]
[clearfix]
[cm]
;[freeimage layer = 23]
[layopt layer=26 visible=true]
[layopt layer=27 visible=true]
[layopt layer=28 visible=true]
[freeimage layer = 26]
;↓アドバイスイベントを(1=通過済)に変更(主人公セリフ表示のため)
[eval exp="f.event_advice = 1"]
[一斉表示準備]

[if exp="f.oaite_viewing_target != ''"]
@jump target=&f.oaite_viewing_target
[endif]

;======================================================================================
;◆◆情報：黒田◆◆
;======================================================================================
*info_kuroda
[freeimage layer = 27]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*info_kuroda'"]
[eval exp="f.oaite_viewing_target = '*info_kuroda'"]
[eval exp="f.oaite_viewing_storage = 'info_oaite_fumi.ks'"]
[call target=*info_kuroda_hyouji]

;◆手紙一覧
;[eval exp="f.fumi_kuroda_number=13"]
[if exp="f.fumi_kuroda_number>5"]
			[glink name="list" target=*fumi_kuroda_page2 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_kuroda_number"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_kuroda
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_kuroda_midoku_y = ( 20 + 80 * f.fumi_kuroda_number ) - 80 * f.list_count;
	f.fumi_kuroda_y = ( 10 + 80 * f.fumi_kuroda_number ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 0;
	f.fumi_hairetsu2 = f.fumi_list_kuroda_location_fumi[f.list_count];
[endscript]
;◆黒田手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_kuroda_page1'"]
@jump target=*fumi_hyouji_kuroda
*fumi_hyouji_owari_kuroda_page1

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_kuroda
[endif]
@jump target=*info_hyouji_owari
[s]

*fumi_kuroda_page2
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_kuroda_page2'"]
[eval exp="f.oaite_viewing_target = '*fumi_kuroda_page2'"]
[call target=*info_kuroda_hyouji]

;1f.fumi_kuroda_number=[emb exp ="f.fumi_kuroda_number"][r]
[glink name="list" target=*info_kuroda text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_kuroda_number>10"]
[glink name="list" target=*fumi_kuroda_page3 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_kuroda_number - 5"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_kuroda2
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_kuroda_number=[emb exp ="f.fumi_kuroda_number"][r]
[iscript]
	f.fumi_kuroda_midoku_y =  20 + 80 * ( f.fumi_kuroda_number - 5 ) - 80 * f.list_count;
	f.fumi_kuroda_y =  10 + 80 * ( f.fumi_kuroda_number - 5 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 0;
	f.fumi_hairetsu2 = f.fumi_list_kuroda_location_fumi[f.list_count];
[endscript]
;◆黒田手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_kuroda_page2'"]
@jump target=*fumi_hyouji_kuroda
*fumi_hyouji_owari_kuroda_page2

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_kuroda2
[endif]
@jump target=*info_hyouji_owari
[s]

*fumi_kuroda_page3
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_kuroda_page3'"]
[eval exp="f.oaite_viewing_target = '*fumi_kuroda_page3'"]
[call target=*info_kuroda_hyouji]

;1f.fumi_kuroda_number=[emb exp ="f.fumi_kuroda_number"][r]
[glink name="list" target=*fumi_kuroda_page2 text="←" size=20 width="20" x=510 y=480 color=white]

[eval exp="f.list_count = f.fumi_kuroda_number - 10"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_kuroda3
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_kuroda_number=[emb exp ="f.fumi_kuroda_number"][r]
[iscript]
	f.fumi_kuroda_midoku_y =  20 + 80 * ( f.fumi_kuroda_number - 10 ) - 80 * f.list_count;
	f.fumi_kuroda_y =  10 + 80 * ( f.fumi_kuroda_number - 10 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 0;
	f.fumi_hairetsu2 = f.fumi_list_kuroda_location_fumi[f.list_count];
[endscript]
;◆黒田手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_kuroda_page3'"]
@jump target=*fumi_hyouji_kuroda
*fumi_hyouji_owari_kuroda_page3

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_kuroda3
[endif]
@jump target=*info_hyouji_owari
[s]

*info_kuroda_hyouji
[image layer=26 x=0 y=0 storage="bg/bg_info_kuroda.jpg"]

;◆ 黒田ルート：goodED条件パラメータ・フラグを満たした場合：カラーほほえみ肖像
[if exp="f.kuroda_au == 1 && f.para_kuroda_koukando >= 80 && f.para_shujinkou_shukujodo >= 80 && f.para_shujinkou_j_gogaku >= 80 && f.event_machi_kuroda[2] == 1"]
	[image layer=26 x=&f.x_info y=&f.y_info folder="image" storage="face_kuroda_smile.png" zindex=2]
	@jump target=*info_face_kuroda_owari
[endif]
;◆ 黒田ルート：normalED条件パラメータ・フラグを満たした場合：カラー肖像
[if exp="f.kuroda_au == 1 && f.para_kuroda_koukando > 50 && f.event_machi_kuroda[2] == 1"]
	[image layer=26 x=&f.x_info y=&f.y_info folder="image" storage="face_kuroda_color.png" zindex=2]
	@jump target=*info_face_kuroda_owari
[endif]
;◆ 黒田ルート：normalED条件未満の場合：セピア肖像
[if exp="f.kuroda_au == 1"]
	[image layer=26 x=&f.x_info y=&f.y_info folder="image" storage="face_kuroda_sepia.png" zindex=2]
[endif]
*info_face_kuroda_owari

	[glink name="list" target=info_zaizen text="財前 美彬" size=16 width="120" x=30 y=580 color=white]
	[glink name="list" storage="01_sijyou_info_oaite_fumi.ks" target=info_sijyou text="四条 華織" size=16 width="120" x=230 y=580 color=white]
;葛城宮に手紙を出せるようになっていたらボタン表示
[if exp="f.katuraginomiya_fumi_start == 1 || f.katuraginomiya_au == 1"]
	[glink name="list" target=info_katuraginomiya text="葛城宮 晴仁" size=16 width="120" x=430 y=580 color=white]
[endif]
;藤枝に手紙を出せるようになっていたらボタン表示
[if exp="f.hujieda_fumi_start == 1"]
	[glink name="list" target=info_hujieda text="藤枝　肇" size=16 width="120" x=630 y=580 color=white]
[endif]
	[glink name="list" target="info_owari" text="終了"  size=16 width="40" x=850 y=580 color=white]
[if exp="f.para_kuroda_koukando<0"]
[eval exp="f.para_koukando_x = 270"]
[elsif exp="f.para_kuroda_koukando<10"]
[eval exp="f.para_koukando_x = 281"]
[elsif exp="f.para_kuroda_koukando<100"]
[eval exp="f.para_koukando_x = 270"]
[else]
[eval exp="f.para_koukando_x = 255"]
[endif]
[if exp="f.para_kuroda_koukando<0"]
[eval exp="f.para_color = 'crimson'"]
[else]
[eval exp="f.para_color = 'black'"]
[endif]
[ptext name="list" text=&f.para_kuroda_koukando layer=27 size=25 x=&f.para_koukando_x y=323 color=&f.para_color bold=bold]
[ptext name="list" text=&f.para_kuroda_sintyou layer=27 size=25 x=255 y=364 color=black bold=bold]
[ptext name="list" text=&f.para_kuroda_taijuu layer=27 size=25 x=270 y=406 color=black bold=bold]
[if exp="f.midoku_list_hairetsu[0][8] == 0"]
	[ptext name="list" text=&f.para_kuroda_shumi layer=27 size=23 x=255 y=448 color=black bold=bold]
[else]
	[ptext name="list" text="―" layer=27 size=25 x=270 y=448 color=black bold=bold]
[endif]
[return]
[s]

;======================================================================================
*info_zaizen
[freeimage layer = 27]
[freeimage layer = 28]
[eval exp="f.oaite_viewing_storage = 'info_oaite_fumi.ks'"]
[eval exp="f.viewing_target = '*info_zaizen'"]
[eval exp="f.oaite_viewing_target = '*info_zaizen'"]
[call target=*info_zaizen_hyouji]

;◆手紙一覧
;[eval exp="f.fumi_zaizen_number=13"]
[if exp="f.fumi_zaizen_number>5"]
			[glink name="list" target=*fumi_zaizen_page2 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_zaizen_number"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_zaizen
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_zaizen_midoku_y = ( 20 + 80 * f.fumi_zaizen_number ) - 80 * f.list_count;
	f.fumi_zaizen_y = ( 10 + 80 * f.fumi_zaizen_number ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 1;
	f.fumi_hairetsu2 = f.fumi_list_zaizen_location_fumi[f.list_count];
[endscript]
;◆手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_zaizen_page1'"]
@jump target=*fumi_hyouji_zaizen
*fumi_hyouji_owari_zaizen_page1

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_zaizen
[endif]
@jump target=*info_hyouji_owari
[s]

*fumi_zaizen_page2
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_zaizen_page2'"]
[eval exp="f.oaite_viewing_target = '*fumi_zaizen_page2'"]
[call target=*info_zaizen_hyouji]

;1f.fumi_zaizen_number=[emb exp ="f.fumi_zaizen_number"][r]
[glink name="list" target=*info_zaizen text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_zaizen_number>10"]
[glink name="list" target=*fumi_zaizen_page3 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_zaizen_number - 5"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_zaizen2
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_zaizen_number=[emb exp ="f.fumi_zaizen_number"][r]
[iscript]
	f.fumi_zaizen_midoku_y =  20 + 80 * ( f.fumi_zaizen_number - 5 ) - 80 * f.list_count;
	f.fumi_zaizen_y =  10 + 80 * ( f.fumi_zaizen_number - 5 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 1;
	f.fumi_hairetsu2 = f.fumi_list_zaizen_location_fumi[f.list_count];
[endscript]
;◆手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_zaizen_page2'"]
@jump target=*fumi_hyouji_zaizen
*fumi_hyouji_owari_zaizen_page2

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_zaizen2
[endif]
@jump target=*info_hyouji_owari
[s]

*fumi_zaizen_page3
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_zaizen_page3'"]
[eval exp="f.oaite_viewing_target = '*fumi_zaizen_page3'"]
[call target=*info_zaizen_hyouji]

;1f.fumi_zaizen_number=[emb exp ="f.fumi_zaizen_number"][r]
[glink name="list" target=*fumi_zaizen_page2 text="←" size=20 width="20" x=510 y=480 color=white]

[eval exp="f.list_count = f.fumi_zaizen_number - 10"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_zaizen3
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_zaizen_number=[emb exp ="f.fumi_zaizen_number"][r]
[iscript]
	f.fumi_zaizen_midoku_y =  20 + 80 * ( f.fumi_zaizen_number - 10 ) - 80 * f.list_count;
	f.fumi_zaizen_y =  10 + 80 * ( f.fumi_zaizen_number - 10 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 1;
	f.fumi_hairetsu2 = f.fumi_list_zaizen_location_fumi[f.list_count];
[endscript]
;◆手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_zaizen_page3'"]
@jump target=*fumi_hyouji_zaizen
*fumi_hyouji_owari_zaizen_page3

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_zaizen3
[endif]
@jump target=*info_hyouji_owari
[s]

*info_zaizen_hyouji
[image layer=26 x=1 y=1 storage="bg/I9IhvvVdPo/bg_info_zaizen.jpg"]
;======================================================================================
[if exp="f.zaizen_au == 1 && f.para_zaizen_koukando < 50"]
	;・face_zaizen_sepia.png：(normalED条件未満) f.zaizen_au == 1
	[image name=info_face layer=26 x="&f.x_info" y="&f.y_info" folder="image" storage="face_zaizen_sepia.png" zindex=2]
	@jump target=*info_face_zizen_owari
[endif]
[if exp="f.zaizen_au == 1 && f.para_zaizen_koukando >= 50"]
	;・face_zaizen_color.png：(normalED条件のパラメータやフラグを満たす場合) f.zaizen_au == 1 && f.para_zaizen_koukando >= 50
	[image name=info_face layer=26 x="&f.x_info" y="&f.y_info" folder="image" storage="face_zaizen_color.png" zindex=2]
	@jump target=*info_face_zizen_owari
[endif]
[if exp="f.zaizen_au == 1 && f.para_zaizen_koukando >= 80 &&  f.para_shujinkou_j_reihou >= 80 && f.para_shujinkou_shukujodo >= 80"]
	;・face_zaizen_smile.png：(goodED条件のパラメータやフラグを満たす場合)  f.zaizen_au == 1 && f.para_zaizen_koukando >= 80 &&  f.para_shujinkou_j_reihou >= 80 && f.para_shujinkou_shukujodo >= 80
	[image name=info_face layer=26 x="&f.x_info" y="&f.y_info" folder="image" storage="face__zaizen_smail.png" zindex=2]
	;@jump target=*info_face_zizen_owari
[endif]
*info_face_zizen_owari
;======================================================================================
	[glink name="list" target=info_kuroda text="黒田 将貴" size=16 width="120" x=30 y=580 color=white]
;	[glink name="list" target=info_zaizen text="財前 美彬" size=16 width="120" x=30 y=580 color=white]
	[glink name="list" storage="01_sijyou_info_oaite_fumi.ks" target=info_sijyou text="四条 華織" size=16 width="120" x=230 y=580 color=white]
;葛城宮に手紙を出せるようになっていたらボタン表示
[if exp="f.katuraginomiya_fumi_start == 1 || f.katuraginomiya_au == 1"]
	[glink name="list" target=info_katuraginomiya text="葛城宮 晴仁" size=16 width="120" x=430 y=580 color=white]
[endif]
;藤枝に手紙を出せるようになっていたらボタン表示
[if exp="f.hujieda_fumi_start==1"]
	[glink name="list" target=info_hujieda text="藤枝　肇" size=16 width="120" x=630 y=580 color=white]
[endif]
	[glink name="list" target="info_owari" text="終了"  size=16 width="40" x=850 y=580 color=white]
[if exp="f.para_zaizen_koukando<0"]
[eval exp="f.para_koukando_x = 270"]
[elsif exp="f.para_zaizen_koukando<10"]
[eval exp="f.para_koukando_x = 281"]
[elsif exp="f.para_zaizen_koukando<100"]
[eval exp="f.para_koukando_x = 270"]
[else]
[eval exp="f.para_koukando_x = 255"]
[endif]
[if exp="f.para_zaizen_koukando<0"]
[eval exp="f.para_color = 'crimson'"]
[else]
[eval exp="f.para_color = 'black'"]
[endif]
[ptext name="list" text=&f.para_zaizen_koukando layer=27 size=25 x=&f.para_koukando_x y=323 color=&f.para_color bold=bold]
[ptext name="list" text=&f.para_zaizen_sintyou layer=27 size=25 x=255 y=364 color=black bold=bold]
[ptext name="list" text=&f.para_zaizen_taijuu layer=27 size=25 x=270 y=406 color=black bold=bold]
[if exp="f.midoku_list_hairetsu[1][1] == 0"]
	[ptext name="list" text=&f.para_zaizen_shumi layer=27 size=19 x=255 y=448 color=black bold=bold]
[else]
	[ptext name="list" text="―" layer=27 size=25 x=270 y=448 color=black bold=bold]
[endif]
[return]
[s]

*info_sijyou
@jump storage="01_sijyou_info_oaite_fumi.ks" target=*info_sijyou
*fumi_sijyou_page2
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page2
*fumi_sijyou_page3
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page3
*fumi_sijyou_page4
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page4
*fumi_sijyou_page5
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page5
*fumi_sijyou_page6
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page6
*fumi_sijyou_page7
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page7
*fumi_sijyou_page8
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page8
*fumi_sijyou_page9
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page9
*fumi_sijyou_page10
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page10
*fumi_sijyou_page11
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page11
*fumi_sijyou_page12
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page12
*fumi_sijyou_page13
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page13
*fumi_sijyou_page14
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page14
*fumi_sijyou_page15
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page15
*fumi_sijyou_page16
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page16
*fumi_sijyou_page17
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page17
*fumi_sijyou_page18
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page18
*fumi_sijyou_page19
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page19
*fumi_sijyou_page20
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page20
*fumi_sijyou_page21
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page21
*fumi_sijyou_page22
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page22
*fumi_sijyou_page23
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page23
*fumi_sijyou_page24
@jump storage="01_sijyou_info_oaite_fumi.ks" target=fumi_sijyou_page24

*info_katuraginomiya
[freeimage layer = 27]
[freeimage layer = 28]
[eval exp="f.oaite_viewing_storage = 'info_oaite_fumi.ks'"]
[eval exp="f.viewing_target = '*info_katuraginomiya'"]
[eval exp="f.oaite_viewing_target = '*info_katuraginomiya'"]
[call target=*info_katuraginomiya_hyouji]

;◆手紙一覧
;[eval exp="f.fumi_katuraginomiya_number=13"]
[if exp="f.fumi_katuraginomiya_number>5"]
			[glink name="list" target=*fumi_katuraginomiya_page2 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_katuraginomiya_number"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_katuraginomiya
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_katuraginomiya_midoku_y = 0;
	f.fumi_katuraginomiya_midoku_y = ( 20 + 80 * f.fumi_katuraginomiya_number ) - 80 * f.list_count;
	f.fumi_katuraginomiya_y = 0;
	f.fumi_katuraginomiya_y = ( 10 + 80 * f.fumi_katuraginomiya_number ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 3;
	f.fumi_hairetsu2 = f.fumi_list_katuraginomiya_location_fumi[f.list_count];
[endscript]
;◆手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_katuraginomiya_page1'"]
@jump target=*fumi_hyouji_katuraginomiya
*fumi_hyouji_owari_katuraginomiya_page1

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_katuraginomiya
[endif]
@jump target=*info_hyouji_owari
[s]

*fumi_katuraginomiya_page2
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_katuraginomiya_page2'"]
[eval exp="f.oaite_viewing_target = '*fumi_katuraginomiya_page2'"]
[call target=*info_katuraginomiya_hyouji]

;1f.fumi_katuraginomiya_number=[emb exp ="f.fumi_katuraginomiya_number"][r]
[glink name="list" target=*info_katuraginomiya text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_katuraginomiya_number>10"]
[glink name="list" target=*fumi_katuraginomiya_page3 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_katuraginomiya_number - 5"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_katuraginomiya2
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_katuraginomiya_number=[emb exp ="f.fumi_katuraginomiya_number"][r]
[iscript]
	f.fumi_katuraginomiya_midoku_y =  20 + 80 * ( f.fumi_katuraginomiya_number - 5 ) - 80 * f.list_count;
	f.fumi_katuraginomiya_y =  10 + 80 * ( f.fumi_katuraginomiya_number - 5 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 3;
	f.fumi_hairetsu2 = f.fumi_list_katuraginomiya_location_fumi[f.list_count];
[endscript]
;◆手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_katuraginomiya_page2'"]
@jump target=*fumi_hyouji_katuraginomiya
*fumi_hyouji_owari_katuraginomiya_page2

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_katuraginomiya2
[endif]
@jump target=*info_hyouji_owari
[s]

*fumi_katuraginomiya_page3
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_katuraginomiya_page3'"]
[eval exp="f.oaite_viewing_target = '*fumi_katuraginomiya_page3'"]
[call target=*info_katuraginomiya_hyouji]

;1f.fumi_katuraginomiya_number=[emb exp ="f.fumi_katuraginomiya_number"][r]
[glink name="list" target=*fumi_katuraginomiya_page2 text="←" size=20 width="20" x=510 y=480 color=white]

[eval exp="f.list_count = f.fumi_katuraginomiya_number - 10"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_katuraginomiya3
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_katuraginomiya_number=[emb exp ="f.fumi_katuraginomiya_number"][r]
[iscript]
	f.fumi_katuraginomiya_midoku_y =  20 + 80 * ( f.fumi_katuraginomiya_number - 10 ) - 80 * f.list_count;
	f.fumi_katuraginomiya_y =  10 + 80 * ( f.fumi_katuraginomiya_number - 10 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 3;
	f.fumi_hairetsu2 = f.fumi_list_katuraginomiya_location_fumi[f.list_count];
[endscript]
;◆手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_katuraginomiya_page3'"]
@jump target=*fumi_hyouji_katuraginomiya
*fumi_hyouji_owari_katuraginomiya_page3

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_katuraginomiya3
[endif]
@jump target=*info_hyouji_owari
[s]

*info_katuraginomiya_hyouji
[image layer=26 x=1 y=1 storage="bg/I9IhvvVdPo/bg_info_katuraginomiya.jpg"]
	[glink name="list" target="*info_kuroda" text="黒田 将貴" size=16 width="120" x=30 y=580 color=white]
	[glink name="list" target="*info_zaizen" text="財前 美彬" size=16 width="120" x=230 y=580 color=white]
	[glink name="list" storage="01_sijyou_info_oaite_fumi.ks" target="*info_sijyou" text="四条 華織" size=16 width="120" x=430 y=580 color=white]
;藤枝に手紙を出せるようになっていたらボタン表示
[if exp="f.hujieda_fumi_start==1"]
	[glink name="list" target=info_hujieda text="藤枝　肇" size=16 width="120" x=630 y=580 color=white]
[endif]
	[glink name="list" target="info_owari" text="終了" size=16 width="40" x=850 y=580 color=white]
[if exp="f.para_katuraginomiya_koukando<0"]
[eval exp="f.para_koukando_x = 270"]
[elsif exp="f.para_katuraginomiya_koukando<10"]
[eval exp="f.para_koukando_x = 281"]
[elsif exp="f.para_katuraginomiya_koukando<100"]
[eval exp="f.para_koukando_x = 270"]
[else]
[eval exp="f.para_koukando_x = 255"]
[endif]
[if exp="f.para_katuraginomiya_koukando<0"]
[eval exp="f.para_color = 'crimson'"]
[else]
[eval exp="f.para_color = 'black'"]
[endif]
[ptext name="list" text=&f.para_katuraginomiya_koukando layer=27 size=25 x=&f.para_koukando_x y=323 color=&f.para_color bold=bold]
[ptext name="list" text=&f.para_katuraginomiya_sintyou layer=27 size=25 x=270 y=364 color=black bold=bold]
[ptext name="list" text=&f.para_katuraginomiya_taijuu layer=27 size=25 x=270 y=406 color=black bold=bold]
[if exp="f.midoku_list_hairetsu[3][2] == 0"]
	[ptext name="list" text=&f.para_katuraginomiya_shumi layer=27 size=23 x=268 y=448 color=black bold=bold]
[else]
	[ptext name="list" text="―" layer=27 size=27 x=270 y=448 color=black bold=bold]
[endif]
[return]
[s]

*info_hujieda
[freeimage layer = 27]
[freeimage layer = 28]
[eval exp="f.oaite_viewing_storage = 'info_oaite_fumi.ks'"]
[eval exp="f.viewing_target = '*info_hujieda'"]
[eval exp="f.oaite_viewing_target = '*info_hujieda'"]
[call target=*info_hujieda_hyouji]

;◆手紙一覧
;[eval exp="f.fumi_hujieda_number=13"]
[if exp="f.fumi_hujieda_number>5"]
			[glink name="list" target=*fumi_hujieda_page2 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_hujieda_number"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_hujieda
[if exp="f.list_count == 0"]																																																																					
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_hujieda_midoku_y = 0;
	f.fumi_hujieda_midoku_y = ( 20 + 80 * f.fumi_hujieda_number ) - 80 * f.list_count;
	f.fumi_hujieda_y = 0;
	f.fumi_hujieda_y = ( 10 + 80 * f.fumi_hujieda_number ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 4;
	f.fumi_hairetsu2 = f.fumi_list_hujieda_location_fumi[f.list_count];
[endscript]
;◆手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_hujieda_page1'"]
@jump target=*fumi_hyouji_hujieda
*fumi_hyouji_owari_hujieda_page1

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_hujieda
[endif]
@jump target=*info_hyouji_owari
[s]

*fumi_hujieda_page2
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_hujieda_page2'"]
[eval exp="f.oaite_viewing_target = '*fumi_hujieda_page2'"]
[call target=*info_hujieda_hyouji]

;1f.fumi_hujieda_number=[emb exp ="f.fumi_hujieda_number"][r]
[glink name="list" target=*info_hujieda text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_hujieda_number>10"]
[glink name="list" target=*fumi_hujieda_page3 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_hujieda_number - 5"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_hujieda2
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_hujieda_number=[emb exp ="f.fumi_hujieda_number"][r]
[iscript]
	f.fumi_hujieda_midoku_y =  20 + 80 * ( f.fumi_hujieda_number - 5 ) - 80 * f.list_count;
	f.fumi_hujieda_y =  10 + 80 * ( f.fumi_hujieda_number - 5 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 4;
	f.fumi_hairetsu2 = f.fumi_list_hujieda_location_fumi[f.list_count];
[endscript]
;◆手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_hujieda_page2'"]
@jump target=*fumi_hyouji_hujieda
*fumi_hyouji_owari_hujieda_page2

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_hujieda2
[endif]
@jump target=*info_hyouji_owari
[s]

*fumi_hujieda_page3
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_hujieda_page3'"]
[eval exp="f.oaite_viewing_target = '*fumi_hujieda_page3'"]
[call target=*info_hujieda_hyouji]

;1f.fumi_hujieda_number=[emb exp ="f.fumi_hujieda_number"][r]
[glink name="list" target=*fumi_hujieda_page2 text="←" size=20 width="20" x=510 y=480 color=white]

[eval exp="f.list_count = f.fumi_hujieda_number - 10"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_hujieda3
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_hujieda_number=[emb exp ="f.fumi_hujieda_number"][r]
[iscript]
	f.fumi_hujieda_midoku_y = 0;
	f.fumi_hujieda_midoku_y =  20 + 80 * ( f.fumi_hujieda_number - 10 ) - 80 * f.list_count;
	f.fumi_hujieda_y =  0;
	f.fumi_hujieda_y =  10 + 80 * ( f.fumi_hujieda_number - 10 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 4;
	f.fumi_hairetsu2 = f.fumi_list_hujieda_location_fumi[f.list_count];
[endscript]
;◆手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_hujieda_page3'"]
@jump target=*fumi_hyouji_hujieda
*fumi_hyouji_owari_hujieda_page3

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_hujieda3
[endif]
@jump target=*info_hyouji_owari
[s]

*info_hujieda_hyouji
[freeimage layer = 26]

[image layer=26 x=1 y=1 storage="bg/I9IhvvVdPo/bg_info_hujieda.jpg"]
	[glink name="list" target="*info_kuroda" text="黒田 将貴" size=16 width="120" x=30 y=580 color=white]
	[glink name="list" target="*info_zaizen" text="財前 美彬" size=16 width="120" x=230 y=580 color=white]
	[glink name="list" storage="01_sijyou_info_oaite_fumi.ks" target="*info_sijyou" text="四条 華織" size=16 width="120" x=430 y=580 color=white]
;葛城宮に手紙を出せるようになっていたらボタン表示
[if exp="f.katuraginomiya_fumi_start==1"]
	[glink name="list" target="*info_katuraginomiya" text="葛城宮 晴仁" size=16 width="120" x=630 y=580 color=white]
[endif]
	[glink name="list" target="*info_owari" text="終了" size=16 width="40" x=850 y=580 color=white]
[if exp="f.para_hujieda_koukando<0"]
[eval exp="f.para_koukando_x = 270"]
[elsif exp="f.para_hujieda_koukando<10"]
[eval exp="f.para_koukando_x = 281"]
[elsif exp="f.para_hujieda_koukando<100"]
[eval exp="f.para_koukando_x = 270"]
[else]
[eval exp="f.para_koukando_x = 255"]
[endif]
[if exp="f.para_hujieda_koukando<0"]
[eval exp="f.para_color = 'crimson'"]
[else]
[eval exp="f.para_color = 'black'"]
[endif]
[ptext name="list" text=&f.para_hujieda_koukando layer=27 size=25 x=&f.para_koukando_x y=323 color=&f.para_color bold=bold]
[ptext name="list" text=&f.para_hujieda_sintyou layer=27 size=25 x=270 y=364 color=black bold=bold]
[ptext name="list" text=&f.para_hujieda_taijuu layer=27 size=25 x=270 y=406 color=black bold=bold]
[if exp="f.midoku_list_hairetsu[4][7] == 0"]
	[ptext name="list" text=&f.para_hujieda_shumi layer=27 size=20 x=268 y=448 color=black bold=bold]
[else]
	[ptext name="list" text="―" layer=27 size=25 x=270 y=448 color=black bold=bold]
[endif]
[return]
[s]


;◆「情報」表示終了(このks内info関連全てのページからここにjumpして終了)
*info_hyouji_owari
[一斉表示]
[s]

*fumi_hyouji
[freeimage layer = 27]
[if exp="tf.fumi_hyouji_ichi == 'left'"]
[eval exp="tf.fumi_hyouji_midoku_x = 35"]
[eval exp="tf.fumi_hyouji_hensin_x = 420"]
[eval exp="tf.fumi_hyouji_title_x = 70"]
[endif]
[if exp="tf.fumi_hyouji_ichi == 'right'"]
[eval exp="tf.fumi_hyouji_midoku_x = 510"]
[eval exp="tf.fumi_hyouji_hensin_x = 890"]
[eval exp="tf.fumi_hyouji_title_x = 545"]
[endif]
;◆攻略対象以外の手紙は未読や返信ボタンを表示しない
[if exp="f.fumi_hairetsu1 == 5 || f.fumi_hairetsu1 == 6 || f.fumi_hairetsu1 == 7 || f.fumi_hairetsu1 == 8 || f.fumi_hairetsu1 == 9 || f.fumi_hairetsu1 == 10 || f.fumi_hairetsu1 == 11"]
@jump target=*hensin_button_owari
[endif]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] > 0"]
	[ptext name="list" text="未読" layer=28 size=15 x=&tf.fumi_hyouji_midoku_x y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
;◆9月1週お相手未定以外又は9月2週以降はルート確定キャラ以外には返信できない f.fumi_hairetsu1(0=黒田、1=財前、2=四条、3=葛城宮、4=藤枝)
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && f.fumi_hairetsu1 == 0 && f.kuroda_au == 1 && ((f.okeiko_month == 9 && f.okeiko_week != 1) || (f.okeiko_month == 9 && f.okeiko_week == 1 && f.event_oaite_mitei != 1 ) ||f.okeiko_month == 10 || f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3)"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink name="list" storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=&tf.fumi_hyouji_hensin_x y=&f.fumi_all_y color=white]
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && f.fumi_hairetsu1 == 1 && f.zaizen_au == 1 && ((f.okeiko_month==9 && f.okeiko_week!=1) || (f.okeiko_month == 9 && f.okeiko_week == 1 && f.event_oaite_mitei != 1 ) ||f.okeiko_month==10||f.okeiko_month==11||f.okeiko_month==12||f.okeiko_month==1||f.okeiko_month==2||f.okeiko_month==3)"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink name="list" storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=&tf.fumi_hyouji_hensin_x y=&f.fumi_all_y color=white]
	
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && f.fumi_hairetsu1 == 2 && f.sijyou_au == 1 && ((f.okeiko_month==9 && f.okeiko_week!=1) || (f.okeiko_month == 9 && f.okeiko_week == 1 && f.event_oaite_mitei != 1 ) ||f.okeiko_month==10||f.okeiko_month==11||f.okeiko_month==12||f.okeiko_month==1||f.okeiko_month==2||f.okeiko_month==3)"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink name="list" storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=&tf.fumi_hyouji_hensin_x y=&f.fumi_all_y color=white]

[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && f.fumi_hairetsu1 == 3 && (f.katuraginomiya_au == 1 || f.katuraginomiya_only == 1)"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink name="list" storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=&tf.fumi_hyouji_hensin_x y=&f.fumi_all_y color=white]
;◆葛城宮onlyかau=1の時は、葛城宮以外の返信ボタンは表示しない
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && f.fumi_hairetsu1 != 3 && (f.katuraginomiya_au == 1 || f.katuraginomiya_only == 1)"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && f.fumi_hairetsu1 == 4 && f.hujieda_au == 1 && ((f.okeiko_month==9 && f.okeiko_week!=1) || (f.okeiko_month == 9 && f.okeiko_week == 1 && f.event_oaite_mitei != 1 ) ||f.okeiko_month==10||f.okeiko_month==11||f.okeiko_month==12||f.okeiko_month==1||f.okeiko_month==2||f.okeiko_month==3)"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink name="list" storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=&tf.fumi_hyouji_hensin_x y=&f.fumi_all_y color=white]

;◆9月1週お相手未定以外又は9月2週以降、返信していない手紙の「返信」ボタン部分には何も表示しない
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && ((f.okeiko_month == 9 && f.okeiko_week != 1) || (f.okeiko_month == 9 && f.okeiko_week == 1 && f.event_oaite_mitei != 1 )||f.okeiko_month == 10 || f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3)"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
;◆8月までは全員へ返信可能
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && (f.okeiko_month == 4 || f.okeiko_month == 5 || f.okeiko_month == 6 || f.okeiko_month == 7 || f.okeiko_month == 8)"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink name="list" storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu = 1" size=16 width="32" x=&tf.fumi_hyouji_hensin_x y=&f.fumi_all_y color=white]
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 1"]
	[ptext name="list" text="返信済" layer=28 size=15 x=&tf.fumi_hyouji_hensin_x y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == -1"]
;返信配列が-1の際も何も表示しない(藤枝の鳩からの手紙時に使用)
[endif]
*hensin_button_owari

[if exp="f.fumi_all_number==0"]
[else]
	[glink name="list" storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=14 width="325" height=17 x=&tf.fumi_hyouji_title_x y=&f.fumi_all_y color=white]
[endif]
@jump target=&tf.fumi_hyouji_owari_target

;======================================================================================
;◆◆「情報」黒田：手紙表示部分処理◆◆
;======================================================================================
*fumi_hyouji_kuroda
;◆未読の表示
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext name="list" text="未読" layer=28 size=15 x=510 y=&f.fumi_kuroda_midoku_y color=mediumslateblue bold=bold]
[endif]
;◆返信ボタンを必要時に表示
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 1"]
	[ptext name="list" text="返信済" layer=28 size=15 x=840 y=&f.fumi_kuroda_midoku_y color=mediumslateblue bold=bold]
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && f.kuroda_au != 1 && ((f.okeiko_month == 9 && f.okeiko_week != 1)||f.okeiko_month == 10 || f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3)"]
;9月2週以降ルート外の場合、返信していない手紙の「返信」ボタン部分には何も表示しない
[else]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink name="list" storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=850 y=&f.fumi_kuroda_y color=white]
[endif]
;◆手紙タイトルを並べて表示
[if exp="f.fumi_kuroda_number == 0"]
[else]
	[glink name="list" storage=fumi_kuroda.ks target=&f.fumi_list_kuroda_target[f.list_count] text=&f.fumi_list_kuroda_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_kuroda_y color=white]
[endif]
@jump target=&tf.fumi_hyouji_owari_target
;======================================================================================
;◆◆「情報」財前：手紙表示部分処理◆◆
;======================================================================================
*fumi_hyouji_zaizen
;◆未読の表示
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext name="list" text="未読" layer=28 size=15 x=510 y=&f.fumi_zaizen_midoku_y color=mediumslateblue bold=bold]
[endif]
;◆返信ボタンを必要時に表示
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 1"]
	[ptext name="list" text="返信済" layer=28 size=15 x=840 y=&f.fumi_zaizen_midoku_y color=mediumslateblue bold=bold]
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && f.zaizen_au != 1 && ((f.okeiko_month == 9 && f.okeiko_week != 1)||f.okeiko_month == 10 || f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3)"]
;9月2週以降ルート外の場合、返信していない手紙の「返信」ボタン部分には何も表示しない
[else]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink name="list" storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=850 y=&f.fumi_zaizen_y color=white]
[endif]
;◆手紙タイトルを並べて表示
[if exp="f.fumi_zaizen_number == 0"]
[else]
	[glink name="list" storage="zaizen/zaizen_fumi.ks" target=&f.fumi_list_zaizen_target[f.list_count] text=&f.fumi_list_zaizen_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_zaizen_y color=white]
[endif]
@jump target=&tf.fumi_hyouji_owari_target

;======================================================================================
;◆◆「情報」葛城宮：手紙表示部分処理◆◆
;======================================================================================
*fumi_hyouji_katuraginomiya
[if exp="f.event_katuraginomiya[1] != 1"]
@jump target=&tf.fumi_hyouji_owari_target
[endif]

;◆未読の表示
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext name="list" text="未読" layer=28 size=15 x=510 y=&f.fumi_katuraginomiya_midoku_y color=mediumslateblue bold=bold]
[endif]
;◆返信ボタンを必要時に表示
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 1"]
	[ptext name="list" text="返信済" layer=28 size=15 x=840 y=&f.fumi_katuraginomiya_midoku_y color=mediumslateblue bold=bold]
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && f.katuraginomiya_au != 1 && ((f.okeiko_month == 9 && f.okeiko_week != 1)||f.okeiko_month == 10 || f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3)"]
;9月2週以降ルート外の場合、返信していない手紙の「返信」ボタン部分には何も表示しない
[else]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink name="list" storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=850 y=&f.fumi_katuraginomiya_y color=white]
[endif]
;◆手紙タイトルを並べて表示
[if exp="f.fumi_katuraginomiya_number == 0"]
[else]
	[glink name="list" storage="katuraginomiya/katuraginomiya_fumi.ks" target=&f.fumi_list_katuraginomiya_target[f.list_count] text=&f.fumi_list_katuraginomiya_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_katuraginomiya_y color=white]
[endif]
@jump target=&tf.fumi_hyouji_owari_target

;======================================================================================
;◆◆「情報」藤枝：手紙表示部分処理◆◆
;======================================================================================
*fumi_hyouji_hujieda
[if exp="f.event_hujieda[1] != 1"]
@jump target=&tf.fumi_hyouji_owari_target
[endif]
;◆未読の表示
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext name="list" text="未読" layer=28 size=15 x=510 y=&f.fumi_hujieda_midoku_y color=mediumslateblue bold=bold]
[endif]
;◆返信ボタンを必要時に表示
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 1"]
	[ptext name="list" text="返信済" layer=28 size=15 x=840 y=&f.fumi_hujieda_midoku_y color=mediumslateblue bold=bold]
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && f.hujieda_au != 1 && ((f.okeiko_month == 9 && f.okeiko_week != 1)||f.okeiko_month == 10 || f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3)"]
;9月2週以降ルート外の場合、返信していない手紙の「返信」ボタン部分には何も表示しない
[else]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink name="list" storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=850 y=&f.fumi_hujieda_y color=white]
[endif]
;◆手紙タイトルを並べて表示
[if exp="f.fumi_hujieda_number == 0"]
[else]
	[glink name="list" storage="hujieda/hujieda_fumi.ks" target=&f.fumi_list_hujieda_target[f.list_count] text=&f.fumi_list_hujieda_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_hujieda_y color=white]
[endif]
@jump target=&tf.fumi_hyouji_owari_target


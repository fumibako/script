;======================================================================================
;◆◆情報：葛城宮◆◆
;======================================================================================
*jump_clearlist
;[image layer=26 x=0 y=0 storage="bg/bg_clearlist.jpg"]
;[wait time=10]
[freeimage layer = 28]
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
*start
*info_katuraginomiya
[if exp="f.event_replay == 'sijyou' || f.event_replay == 'zaizen' || f.event_replay == 'kuroda' || f.event_replay == 'katuraginomiya' ||f.event_replay == 'hujieda' || f.event_replay == 'none'"]
;クリアリストのfixボタンの削除
[iscript]
$(".tips_btn").remove();
[endscript]
[endif]
[freeimage layer = 27]
[freeimage layer = 28]
[eval exp="f.viewing_storage = 'info_katuraginomiya.ks'"]
[eval exp="f.oaite_viewing_storage = 'info_katuraginomiya.ks'"]
[eval exp="f.viewing_target = '*info_katuraginomiya'"]
[eval exp="f.oaite_viewing_target = '*info_katuraginomiya'"]
[call target=*info_katuraginomiya_hyouji]

;◆手紙一覧
;[eval exp="f.fumi_katuraginomiya_number=13"]
[if exp="f.fumi_katuraginomiya_number > 5"]
			[glink name="list" storage="info_katuraginomiya.ks" target=*fumi_katuraginomiya_page2 text="→" size=20 width="20" x=855 y=480 graphic="select_waku_x150.png" font_color=black]
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
@jump storage="info_fumi_hyouji_katuraginomiya.ks"
*fumi_hyouji_owari_katuraginomiya_page1

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_katuraginomiya
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_katuraginomiya_page2
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_katuraginomiya_page2'"]
[eval exp="f.oaite_viewing_target = '*fumi_katuraginomiya_page2'"]
[call target=*info_katuraginomiya_hyouji]

;1f.fumi_katuraginomiya_number=[emb exp ="f.fumi_katuraginomiya_number"][r]
[glink name="list" storage="info_katuraginomiya.ks" target=*info_katuraginomiya text="←" size=20 width="20" x=510 y=480 graphic="select_waku_x150.png" font_color=black]
[if exp="f.fumi_katuraginomiya_number>10"]
[glink name="list" storage="info_katuraginomiya.ks" target=*fumi_katuraginomiya_page3 text="→" size=20 width="20" x=855 y=480 graphic="select_waku_x150.png" font_color=black]
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
@jump storage="info_fumi_hyouji_katuraginomiya.ks"
*fumi_hyouji_owari_katuraginomiya_page2

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_katuraginomiya2
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_katuraginomiya_page3
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_katuraginomiya_page3'"]
[eval exp="f.oaite_viewing_target = '*fumi_katuraginomiya_page3'"]
[call target=*info_katuraginomiya_hyouji]

;1f.fumi_katuraginomiya_number=[emb exp ="f.fumi_katuraginomiya_number"][r]
[glink name="list" storage="info_katuraginomiya.ks" target=*fumi_katuraginomiya_page2 text="←" size=20 width="20" x=510 y=480 graphic="select_waku_x150.png" font_color=black]

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
@jump storage="info_fumi_hyouji_katuraginomiya.ks"
*fumi_hyouji_owari_katuraginomiya_page3

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_katuraginomiya3
[endif]
@jump storage="info_fumibako_hyouji_end.ks"
;======================================================================================
*info_katuraginomiya_hyouji
[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=480] 
;◆葛城宮フェイス　（画像がないので仮位置で調整しています）
[freeimage layer = 26]
[image layer=26 x=0 y=0 storage="bg/I9IhvvVdPo/bg_info_katuraginomiya.jpg"]
[wait time=10]
[cm]
;！！以下画像できるまで！！
[eval exp="tf.x_info = 0"]
[eval exp="tf.y_info = 0"]
[if exp="f.katuraginomiya_au == 1 && f.para_katuraginomiya_koukando >= 80 && f.para_shujinkou_shukujodo >= 100 && f.para_shujinkou_j_sadou >= 80"]
	;face_katuraginomiya_smile.png：(goodED条件のパラメータやフラグを満たす場合)  f.katuraginomiya_au == 1 && f.para_katuraginomiya_koukando >= 80 && f.para_shujinkou_j_sadou >= 80 && f.para_shujinkou_shukujodo >= 100
	[image name=info_face layer=26 x="&tf.x_info" y="&tf.y_info" folder="image" storage="face_katuraginomiya_smile.png" zindex=2]
	[wait time=10]
	@jump target=*info_face_katuraginomiya_owari
[endif]
[if exp="f.katuraginomiya_au == 1 && f.para_katuraginomiya_koukando >= 40"]
	;face_katuraginomiya_color.png：(normalED条件のパラメータやフラグを満たす場合) f.katuraginomiya_au == 1 && f.para_katuraginomiya_koukando >= 40
	[image name=info_face layer=26 x="&tf.x_info" y="&tf.y_info" folder="image" storage="face_katuraginomiya_color.png" zindex=2]
	[wait time=10]
	@jump target=*info_face_katuraginomiya_owari
[endif]
[if exp="f.katuraginomiya_au == 1 && f.para_katuraginomiya_koukando < 40"]
	;face_katuraginomiya_sepia.png：(normalED条件未満) f.katuraginomiya_au == 1
	[image name=info_face layer=26 x="&tf.x_info" y="&tf.y_info" folder="image" storage="face_katuraginomiya_sepia.png" zindex=2]
	[wait time=10]
	@jump target=*info_face_katuraginomiya_owari
[endif]
*info_face_katuraginomiya_owari
;======================================================================================
	[glink name="list" storage="info_kuroda.ks" target="*info_kuroda" text="黒田 将貴" size=16 width="120" x=30 y=580 graphic="select_waku_x300.png" font_color=black]
	[glink name="list" storage="info_zaizen.ks" target="*info_zaizen" text="財前 美彬" size=16 width="120" x=230 y=580 graphic="select_waku_x300.png" font_color=black]
	[glink name="list" storage="info_sijyou.ks" target="*info_sijyou" text="四条 華織" size=16 width="120" x=430 y=580 graphic="select_waku_x300.png" font_color=black]
;藤枝に手紙を出せるようになっていたらボタン表示
[if exp="f.hujieda_fumi_start==1"]
	[glink name="list" storage="info_hujieda.ks" target=info_hujieda text="藤枝　肇" size=16 width="120" x=630 y=580 graphic="select_waku_x300.png" font_color=black]
[endif]
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
[ptext name="list" text=&f.para_katuraginomiya_koukando layer=28 size=25 x=&f.para_koukando_x y=323 color=&f.para_color bold=bold]
[ptext name="list" text=&f.para_katuraginomiya_sintyou layer=28 size=25 x=270 y=364 color=black bold=bold]
[ptext name="list" text=&f.para_katuraginomiya_taijuu layer=28 size=25 x=270 y=406 color=black bold=bold]
[if exp="f.midoku_list_hairetsu[3][2] == 0"]
	[ptext name="list" text=&f.para_katuraginomiya_shumi layer=28 size=23 x=268 y=448 color=black bold=bold]
[else]
	[ptext name="list" text="―" layer=27 size=28 x=270 y=448 color=black bold=bold]
[endif]
;◆クリアリストリンク
[call storage="eventpercent_katuraginomiya.ks" target=*start]
[wait time=10]
[eval exp="f.clearlist_out_storage='info_katuraginomiya.ks'"]
[glink storage="info_katuraginomiya.ks" target=*jump_clearlist exp="f.event_replay = 'katuraginomiya'" text=&f.katuraginomiya_event_percent fontcolor=gray size=16 width=170 x=130 y=480 graphic="select_waku_x300.png" font_color=black]
[wait time=10]
[return]
[s]

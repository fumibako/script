;======================================================================================
;◆◆情報：黒田◆◆
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
*info_kuroda
;クリアリストのfixボタンの削除
[if exp="f.event_replay == 'sijyou' || f.event_replay == 'zaizen' || f.event_replay == 'kuroda' || f.event_replay == 'katuraginomiya' ||f.event_replay == 'hujieda' || f.event_replay == 'none'"]
[iscript]
$(".tips_btn").remove();
[endscript]
[endif]
[freeimage layer = 27]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*info_kuroda'"]
[eval exp="f.oaite_viewing_target = '*info_kuroda'"]
[eval exp="f.oaite_viewing_storage = 'info_kuroda.ks'"]
[call target=*info_kuroda_hyouji]

;◆手紙一覧
;[eval exp="f.fumi_kuroda_number=13"]
[if exp="f.fumi_kuroda_number > 5"]
			[glink name="list" storage="info_kuroda.ks" target=*fumi_kuroda_page2 text="→" size=20 width="20" x=855 y=480 color=white]
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
@jump storage="info_fumi_hyouji_kuroda.ks" target=*fumi_hyouji_kuroda
*fumi_hyouji_owari_kuroda_page1

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_kuroda
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_kuroda_page2
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_kuroda_page2'"]
[eval exp="f.oaite_viewing_target = '*fumi_kuroda_page2'"]
[call target=*info_kuroda_hyouji]

;1f.fumi_kuroda_number=[emb exp ="f.fumi_kuroda_number"][r]
[glink name="list" storage="info_kuroda.ks" target=*info_kuroda text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_kuroda_number>10"]
[glink name="list" storage="info_kuroda.ks" target=*fumi_kuroda_page3 text="→" size=20 width="20" x=855 y=480 color=white]
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
@jump storage="info_fumi_hyouji_kuroda.ks" target=*fumi_hyouji_kuroda
*fumi_hyouji_owari_kuroda_page2

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_kuroda2
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_kuroda_page3
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_kuroda_page3'"]
[eval exp="f.oaite_viewing_target = '*fumi_kuroda_page3'"]
[call target=*info_kuroda_hyouji]

;1f.fumi_kuroda_number=[emb exp ="f.fumi_kuroda_number"][r]
[glink name="list" storage="info_kuroda.ks" target=*fumi_kuroda_page2 text="←" size=20 width="20" x=510 y=480 color=white]

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
@jump storage="info_fumi_hyouji_kuroda.ks" target=*fumi_hyouji_kuroda
*fumi_hyouji_owari_kuroda_page3

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_kuroda3
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

*info_kuroda_hyouji
[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=480] 
[freeimage layer = 26]
[image layer=26 x=0 y=0 storage="bg/bg_info_kuroda.jpg"]
[wait time=10]
[cm]

;◆ 黒田ルート：goodED条件パラメータ・フラグを満たした場合：カラーほほえみ肖像
[if exp="f.kuroda_au == 1 && f.event_kuroda[1] == 1 && f.para_kuroda_koukando >= 80 && f.para_shujinkou_shukujodo >= 80 && f.para_shujinkou_j_gogaku >= 80 && f.event_machi_kuroda[2] == 1"]
	[image layer=26 x=&f.x_info y=&f.y_info folder="image" storage="face_kuroda_smile.png" zindex=2]
	[wait time=10]
	@jump target=*info_face_kuroda_owari
[endif]
;◆ 黒田ルート：normalED条件パラメータ・フラグを満たした場合：カラー肖像
[if exp="f.kuroda_au == 1 && f.event_kuroda[1] == 1 && f.para_kuroda_koukando > 50 && f.event_machi_kuroda[2] == 1"]
	[image layer=26 x=&f.x_info y=&f.y_info folder="image" storage="face_kuroda_color.png" zindex=2]
	[wait time=10]
	@jump target=*info_face_kuroda_owari
[endif]
;◆ 黒田ルート：normalED条件未満の場合：セピア肖像
[if exp="f.kuroda_au == 1 && f.event_kuroda[1] == 1"]
	[image layer=26 x=&f.x_info y=&f.y_info folder="image" storage="face_kuroda_sepia.png" zindex=2]
	[wait time=10]
[endif]
*info_face_kuroda_owari

	[glink name="list" storage="info_zaizen.ks" target=info_zaizen text="財前 美彬" size=16 width="120" x=30 y=580 color=white]
	[glink name="list" storage="info_sijyou.ks" target=info_sijyou text="四条 華織" size=16 width="120" x=230 y=580 color=white]
;葛城宮に手紙を出せるようになっていたらボタン表示
[if exp="f.katuraginomiya_fumi_start == 1 || f.katuraginomiya_au == 1"]
	[glink name="list" storage="info_katuraginomiya.ks" target=info_katuraginomiya text="葛城宮 晴仁" size=16 width="120" x=430 y=580 color=white]
[endif]
;藤枝に手紙を出せるようになっていたらボタン表示
[if exp="f.hujieda_fumi_start == 1"]
	[glink name="list" storage="info_hujieda.ks" target=info_hujieda text="藤枝　肇" size=16 width="120" x=630 y=580 color=white]
[endif]
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
[ptext name="list" text=&f.para_kuroda_koukando layer=28 size=25 x=&f.para_koukando_x y=323 color=&f.para_color bold=bold]
[ptext name="list" text=&f.para_kuroda_sintyou layer=28 size=25 x=255 y=364 color=black bold=bold]
[ptext name="list" text=&f.para_kuroda_taijuu layer=28 size=25 x=270 y=406 color=black bold=bold]
[if exp="f.midoku_list_hairetsu[0][8] == 0"]
	[ptext name="list" text=&f.para_kuroda_shumi layer=28 size=23 x=255 y=448 color=black bold=bold]
[else]
	[ptext name="list" text="―" layer=28 size=25 x=270 y=448 color=black bold=bold]
[endif]
;◆クリアリストリンク
[eval exp="f.clearlist_out_storage='info_kuroda.ks'"]
[glink storage="info_kuroda.ks" target=*jump_clearlist exp="f.event_replay = 'kuroda'" text=&f.kuroda_event_percent fontcolor=gray size=16 width=170 x=130 y=480 color=white]
[wait time=10]
[return]
[s]

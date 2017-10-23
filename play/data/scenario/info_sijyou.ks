;======================================================================================
;◆◆情報：四条◆◆
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
*info_sijyou
;クリアリストのfixボタンの削除
[if exp="f.event_replay == 'sijyou' || f.event_replay == 'zaizen' || f.event_replay == 'kuroda' || f.event_replay == 'katuraginomiya' ||f.event_replay == 'hujieda' || f.event_replay == 'none'"]
[iscript]
$(".tips_btn").remove();
[endscript]
[endif]
[freeimage layer = 27]
[freeimage layer = 28]
[eval exp="f.oaite_viewing_storage = 'info_sijyou.ks'"]
[eval exp="f.viewing_target = '*info_sijyou'"]
[eval exp="f.oaite_viewing_target = '*info_sijyou'"]
[call storage="eventpercent_sijyou.ks" target=*start]
[call target=*info_sijyou_hyouji]

;◆手紙一覧
;↓f.fumi_sijyou_number=これまでに受け取った手紙数。コメントアウトを外して数値を入力すると、テスト的にたくさんの手紙の表示の具合を見ることができます(情報未入力の手紙は空欄になります)
;[eval exp="f.fumi_sijyou_number=116"]
[if exp="f.fumi_sijyou_number > 5"]
			[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page2 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_sijyou_number"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y = ( 20 + 80 * f.fumi_sijyou_number ) - 80 * f.list_count;
	f.fumi_sijyou_y = ( 10 + 80 * f.fumi_sijyou_number ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page1'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page1

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

;◆◆「(攻略対象)情報」ページからの手紙を見る機能は、当初攻略対象からの手紙総数が10通を少し超える程度と見込んで、サラッと手紙を(未返信が無いかなど確認のために)振り返ったりする目的でつけたため5通ごとのページ切り替えとなっています
;四条の場合は手紙総数が多いため、このままではやりこみタイプのプレイヤーさんが沢山手紙を受け取った場合の振り返りやテスト自体もやりづらいと思います。もうすこし使いやすく改善したいのですが、時間が無いため申し訳ないのですがこのままお渡しします。テストプレイしやすいように自由に改変してくださって大丈夫です
;◆↓5通を超える手紙を受け取ると2ページ目に表示
*fumi_sijyou_page2
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page2'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page2'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*info_sijyou text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>10"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page3 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_sijyou_number - 5"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

*loop_fumi_sijyou2
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 5 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 5 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page2'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page2

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou2
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

;◆↓10通を超える手紙を受け取ると3ページ目に表示
*fumi_sijyou_page3
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page3'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page3'"]
[call target=*info_sijyou_hyouji]

;1f.fumi_sijyou_number=[emb exp ="f.fumi_sijyou_number"][r]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page2 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>15"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page4 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 10"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_sijyou3
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
;5f.fumi_sijyou_number=[emb exp ="f.fumi_sijyou_number"][r]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 10 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 10 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page3'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page3

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou3
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

;◆↓15通を超える手紙を受け取ると4ページ目に表示
*fumi_sijyou_page4
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page4'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page4'"]
[call target=*info_sijyou_hyouji]

;1f.fumi_sijyou_number=[emb exp ="f.fumi_sijyou_number"][r]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page3 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>20"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page5 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 15"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_sijyou4
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 15 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 15 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page4'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page4

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou4
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

;◆↓20通を超える手紙を受け取ると5ページ目に表示
*fumi_sijyou_page5
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page5'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page5'"]
[call target=*info_sijyou_hyouji]

;1f.fumi_sijyou_number=[emb exp ="f.fumi_sijyou_number"][r]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page4 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>25"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page6 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 20"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_sijyou5
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 20 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 20 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page5'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page5

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou5
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

;◆↓25通を超える手紙を受け取ると6ページ目に表示
*fumi_sijyou_page6
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page6'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page6'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page5 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>30"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page7 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 25"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou6
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 25 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 25 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page6'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page6

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou6
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

;◆↓30通を超える手紙を受け取ると7ページ目に表示
*fumi_sijyou_page7
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page7'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page7'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page6 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>35"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page8 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 30"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou7
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 30 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 30 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page7'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page7

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou7
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

;◆↓35通を超える手紙を受け取ると8ページ目に表示
*fumi_sijyou_page8
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page8'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page8'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page7 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>40"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page9 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 35"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou8
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 35 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 35 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page8'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page8

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou8
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

;◆↓40通を超える手紙を受け取ると9ページ目に表示
*fumi_sijyou_page9
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page9'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page9'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page8 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>45"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page10 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 40"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou9
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 40 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 40 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page9'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page9

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou9
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

;◆↓45通を超える手紙を受け取ると10ページ目に表示
*fumi_sijyou_page10
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page10'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page10'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page9 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number > 50"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page11 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 45"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou10
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 45 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 45 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page10'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page10

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou10
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

;◆↓50通を超える手紙を受け取ると11ページ目に表示
*fumi_sijyou_page11
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page11'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page11'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page10 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number > 55"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page12 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 50"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou11
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 50 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 50 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page11'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page11

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou11
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

;◆↓55通を超える手紙を受け取ると12ページ目に表示
*fumi_sijyou_page12
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page12'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page12'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page11 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>60"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page13 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 55"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou12
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 55 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 55 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page12'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page12

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou12
[endif]
@jump storage="info_fumibako_hyouji_end.ks"


;◆↓60通を超える手紙を受け取ると13ページ目に表示
*fumi_sijyou_page13
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page13'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page13'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page12 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>65"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page14 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 60"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou13
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 60 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 60 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page13'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page13

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou13
[endif]
@jump storage="info_fumibako_hyouji_end.ks"


;◆↓65通を超える手紙を受け取ると14ページ目に表示
*fumi_sijyou_page14
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page14'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page14'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page13 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>70"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page15 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 65"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou14
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 65 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 65 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page14'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page14

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou14
[endif]
@jump storage="info_fumibako_hyouji_end.ks"


;◆↓70通を超える手紙を受け取ると15ページ目に表示
*fumi_sijyou_page15
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page15'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page15'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page14 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>75"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page16 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 70"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou15
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 70 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 70 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page15'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page15

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou15
[endif]
@jump storage="info_fumibako_hyouji_end.ks"


;◆↓75通を超える手紙を受け取ると16ページ目に表示
*fumi_sijyou_page16
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page16'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page16'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page15 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>80"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page17 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 75"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou16
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 75 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 75 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page16'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page16

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou16
[endif]
@jump storage="info_fumibako_hyouji_end.ks"


;◆↓80通を超える手紙を受け取ると17ページ目に表示
*fumi_sijyou_page17
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page17'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page17'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page16 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>85"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page18 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 80"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou17
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 80) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 80) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page17'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page17

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou17
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

;◆↓85通を超える手紙を受け取ると18ページ目に表示
*fumi_sijyou_page18
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page18'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page18'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page17 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>90"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page19 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 85"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou18
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 85 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 85 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page18'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page18

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou18
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

;◆↓90通を超える手紙を受け取ると19ページ目に表示
*fumi_sijyou_page19
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page19'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page19'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page18 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>95"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page20 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 90"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou19
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 90 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 90 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page19'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page19

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou19
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

;◆↓95通を超える手紙を受け取ると20ページ目に表示
*fumi_sijyou_page20
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page20'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page20'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page19 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>100"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page21 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 95"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou20
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 95 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 95 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page20'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page20

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou20
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

;◆↓100通を超える手紙を受け取ると21ページ目に表示
*fumi_sijyou_page21
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page21'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page21'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page20 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>105"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page22 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 100"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou21
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 100 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 100 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page21'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page21

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou21
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

;◆↓105通を超える手紙を受け取ると22ページ目に表示
*fumi_sijyou_page22
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page22'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page22'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page21 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>110"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page23 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 105"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou22
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 105 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 105 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page22'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page22

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou22
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

;◆↓110通を超える手紙を受け取ると23ページ目に表示
*fumi_sijyou_page23
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page23'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page23'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page22 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>115"]
[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page24 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 110"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou23
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 110 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 110 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page23'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page23

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou23
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

;◆↓115通を超える手紙を受け取ると24ページ目に表示
*fumi_sijyou_page24
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page24'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page24'"]
[call target=*info_sijyou_hyouji]

[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page23 text="←" size=20 width="20" x=510 y=480 color=white]
;↓もし120通を超えるなら使用予定
;[if exp="f.fumi_sijyou_number>120"]
;[glink name="list" storage="info_sijyou.ks" target=*fumi_sijyou_page25 text="→" size=20 width="20" x=855 y=480 color=white]
;[endif]

[eval exp="f.list_count = f.fumi_sijyou_number - 115"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou24
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 115 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 115 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
;◆四条手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_sijyou_page24'"]
@jump storage="info_fumi_hyouji_sijyou.ks"
*fumi_hyouji_owari_sijyou_page24

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_sijyou24
[endif]
@jump storage="info_fumibako_hyouji_end.ks"


*info_sijyou_hyouji
[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=480] 
;==============================================================================
[iscript]
$('.info_face').remove();
[endscript]
;同じlayer26なのでいらないかと
[freeimage layer = 26]
[image layer=26 x=0 y=0 storage="bg/B4nFWraU42/bg_info_sijyou.jpg"]
[wait time=10]
[cm]
[eval exp="tf.x_info = 1"]
[eval exp="tf.y_info = 1"]
;[if exp="f.sijyou_au == 0"]
	;他のキャラに切り替えた、または切り替えてきたときに困るので共通画像を設定 or remove(現在テストでremoveを実行)同じlayer26なのでいらないかと
	;[image name=info_face layer=26 x=&tf.x_info y=&tf.y_info folder="image" storage="face_kyoutu_no.png" zindex=2]
	;@jump target=*info_face_sijyou_owari
;[endif]
[if exp="f.sijyou_au == 1 && f.sijyou_omiai == 1 && f.para_sijyou_koukando >= 80 && f.para_shujinkou_shukujodo >= 80 && f.sijyou_sobo == true && f.event_sijyou[15] == 1 && f.para_shujinkou_j_kadou >= 50"]
	;カラー画像(表情ほほえみ：goodED条件を満たした時の指標)：お見合い済＜シナリオにあったフラグを使用　好感度80以上かつ淑女度80以上 祖母イベントをみている（≒華道展のイベントをみている）かつ 華道50以上
	[image name=info_face layer=26 x="&tf.x_info" y="&tf.y_info" folder="image" storage="face_sijyou_smail.png" zindex=2]
[wait time=10]
	@jump target=*info_face_sijyou_owari
[endif]
[if exp="f.sijyou_au == 1 && f.para_sijyou_koukando >= 40 && f.sijyou_omiai == 1"]
	;カラー画像(表情通常：normal以上のEDの可能性を示す指標)：好感度40以上　お見合い済＜シナリオにあったフラグを使用
	[image name=info_face layer=26 x="&tf.x_info" y="&tf.y_info" folder="image" storage="face_sijyou_color.png" zindex=2]
[wait time=10]
	@jump target=*info_face_sijyou_owari
[endif]
[if exp="f.sijyou_au == 1 && f.para_sijyou_koukando < 40 && f.sijyou_omiai == 1"]
	;セピア画像(badEDの可能性を示す指標)：好感度40未満 お見合い済＜シナリオにあったフラグを使用
	[image name=info_face layer=26 x="&tf.x_info" y="&tf.y_info" folder="image" storage="face_sijyou_sepia.png" zindex=2]
[wait time=10]
	@jump target=*info_face_sijyou_owari
[endif]
*info_face_sijyou_owari
;==============================================================================

	[glink name="list" storage="info_kuroda.ks" target=info_kuroda text="黒田 将貴" size=16 width="120" x=30 y=580 color=white]
	[glink name="list" storage="info_zaizen.ks" target=info_zaizen text="財前 美彬" size=16 width="120" x=230 y=580 color=white]
;葛城宮に手紙を出せるようになっていたらボタン表示
[if exp="f.katuraginomiya_fumi_start == 1"]
	[glink name="list" storage="info_katuraginomiya.ks" target=info_katuraginomiya text="葛城宮 晴仁" size=16 width="120" x=430 y=580 color=white]
[endif]
;藤枝に手紙を出せるようになっていたらボタン表示
[if exp="f.hujieda_fumi_start == 1"]
	[glink name="list" storage="info_hujieda.ks" target=info_hujieda text="藤枝　肇" size=16 width="120" x=630 y=580 color=white]
[endif]
[if exp="f.para_sijyou_koukando<0"]
[eval exp="f.para_koukando_x = 270"]
[elsif exp="f.para_sijyou_koukando<10"]
[eval exp="f.para_koukando_x = 281"]
[elsif exp="f.para_sijyou_koukando<100"]
[eval exp="f.para_koukando_x = 270"]
[else]
[eval exp="f.para_koukando_x = 255"]
[endif]
[if exp="f.para_sijyou_koukando<0"]
[eval exp="f.para_color = 'crimson'"]
[else]
[eval exp="f.para_color = 'black'"]
[endif]
[ptext name="list" text=&f.para_sijyou_koukando layer=28 size=25 x=&f.para_koukando_x y=323 color=&f.para_color bold=bold]
[ptext name="list" text=&f.para_sijyou_sintyou layer=28 size=25 x=255 y=364 color=black bold=bold]
[ptext name="list" text=&f.para_sijyou_taijuu layer=28 size=25 x=270 y=406 color=black bold=bold]
[if exp="f.midoku_list_hairetsu[2][1] == 0 || f.midoku_list_hairetsu[2][2] == 0"]
	[ptext name="list" text=&f.para_sijyou_shumi layer=28 size=23 x=255 y=448 color=black bold=bold]
[else]
	[ptext name="list" text="―" layer=28 size=25 x=270 y=448 color=black bold=bold]
[endif]
;◆クリアリストリンク
[eval exp="f.clearlist_out_storage='info_sijyou.ks'"]
[glink storage="info_sijyou.ks" target=*jump_clearlist exp="f.event_replay = 'sijyou'" text=&f.sijyou_event_percent fontcolor=gray size=16 width=170 x=130 y=480 color=white]
[wait time=10]
[return]
[s]

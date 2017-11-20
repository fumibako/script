;======================================================================================
;◆◆「情報」黒田：手紙表示部分処理◆◆
;======================================================================================
*fumi_hyouji_kuroda
;◆未読の表示
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext name="list" text="未読" layer=28 size=15 x=500 y=&f.fumi_kuroda_midoku_y color=mediumslateblue bold=bold]
[endif]
;◆返信ボタンを必要時に表示
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 1"]
	[ptext name="list" text="返信済" layer=28 size=15 x=865 y=&f.fumi_kuroda_midoku_y color=mediumslateblue bold=bold]
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && f.kuroda_au != 1 && ((f.okeiko_month == 9 && f.okeiko_week != 1)||f.okeiko_month == 10 || f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3)"]
;9月2週以降ルート外の場合、返信していない手紙の「返信」ボタン部分には何も表示しない
[else]
	[eval exp="f.fumi_henji_storage='fumi_henji_furiwake_'+[f.fumi_hairetsu1]+'.ks'"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink name="list" storage=&f.fumi_henji_storage target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=860 y=&f.fumi_kuroda_y graphic="select_waku_x135.png" font_color=black]
[endif]
;◆手紙タイトルを並べて表示
[if exp="f.fumi_kuroda_number == 0"]
[else]
	[glink name="list" storage=fumi_kuroda.ks target=&f.fumi_list_kuroda_target[f.list_count] text=&f.fumi_list_kuroda_title[f.list_count] size=16 width="260" x=535 y=&f.fumi_kuroda_y graphic="select_waku_x550_fuutou.png" font_color=black]
[endif]
@jump storage="info_kuroda.ks" target=&tf.fumi_hyouji_owari_target

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
	[eval exp="f.fumi_henji_storage='fumi_henji_furiwake_'+[f.fumi_hairetsu1]+'.ks'"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink name="list" storage=&f.fumi_henji_storage target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=&tf.fumi_hyouji_hensin_x y=&f.fumi_all_y color=white]
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && f.fumi_hairetsu1 == 1 && f.zaizen_au == 1 && ((f.okeiko_month==9 && f.okeiko_week!=1) || (f.okeiko_month == 9 && f.okeiko_week == 1 && f.event_oaite_mitei != 1 ) ||f.okeiko_month==10||f.okeiko_month==11||f.okeiko_month==12||f.okeiko_month==1||f.okeiko_month==2||f.okeiko_month==3)"]
	[eval exp="f.fumi_henji_storage='fumi_henji_furiwake_'+[f.fumi_hairetsu1]+'.ks'"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink name="list" storage=&f.fumi_henji_storage target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=&tf.fumi_hyouji_hensin_x y=&f.fumi_all_y color=white]
	
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && f.fumi_hairetsu1 == 2 && f.sijyou_au == 1 && ((f.okeiko_month==9 && f.okeiko_week!=1) || (f.okeiko_month == 9 && f.okeiko_week == 1 && f.event_oaite_mitei != 1 ) ||f.okeiko_month==10||f.okeiko_month==11||f.okeiko_month==12||f.okeiko_month==1||f.okeiko_month==2||f.okeiko_month==3)"]
	[eval exp="f.fumi_henji_storage='fumi_henji_furiwake_'+[f.fumi_hairetsu1]+'.ks'"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink name="list" storage=&f.fumi_henji_storage target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=&tf.fumi_hyouji_hensin_x y=&f.fumi_all_y color=white]

[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && f.fumi_hairetsu1 == 3 && (f.katuraginomiya_au == 1 || f.katuraginomiya_only == 1)"]
	[eval exp="f.fumi_henji_storage='fumi_henji_furiwake_'+[f.fumi_hairetsu1]+'.ks'"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink name="list" storage=&f.fumi_henji_storage target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=&tf.fumi_hyouji_hensin_x y=&f.fumi_all_y color=white]
;◆葛城宮onlyかau=1の時は、葛城宮以外の返信ボタンは表示しない
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && f.fumi_hairetsu1 != 3 && (f.katuraginomiya_au == 1 || f.katuraginomiya_only == 1)"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && f.fumi_hairetsu1 == 4 && f.hujieda_au == 1 && ((f.okeiko_month==9 && f.okeiko_week!=1) || (f.okeiko_month == 9 && f.okeiko_week == 1 && f.event_oaite_mitei != 1 ) ||f.okeiko_month==10||f.okeiko_month==11||f.okeiko_month==12||f.okeiko_month==1||f.okeiko_month==2||f.okeiko_month==3)"]
	[eval exp="f.fumi_henji_storage='fumi_henji_furiwake_'+[f.fumi_hairetsu1]+'.ks'"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink name="list" storage=&f.fumi_henji_storage target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=&tf.fumi_hyouji_hensin_x y=&f.fumi_all_y color=white]

;◆9月1週お相手未定以外又は9月2週以降、返信していない手紙の「返信」ボタン部分には何も表示しない
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && ((f.okeiko_month == 9 && f.okeiko_week != 1) || (f.okeiko_month == 9 && f.okeiko_week == 1 && f.event_oaite_mitei != 1 )||f.okeiko_month == 10 || f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3)"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
;◆8月までは全員へ返信可能
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && (f.okeiko_month == 4 || f.okeiko_month == 5 || f.okeiko_month == 6 || f.okeiko_month == 7 || f.okeiko_month == 8)"]
	[eval exp="f.fumi_henji_storage='fumi_henji_furiwake_'+[f.fumi_hairetsu1]+'.ks'"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink name="list" storage=&f.fumi_henji_storage target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu = 1" size=16 width="32" x=&tf.fumi_hyouji_hensin_x y=&f.fumi_all_y color=white]
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
@jump storage="info_oaite_fumi.ks" target=&tf.fumi_hyouji_owari_target

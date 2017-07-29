;◆便箋Noから便箋配列の好感度の部分を呼び出してpre好感度パラメータに代入
*binsen_shori_koukando
[button name="list" folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[iscript]
f.para_pre_kuroda_koukando = parseInt(f.binsen_list_hairetsu[f.binsen_number][1]);
f.para_pre_zaizen_koukando = parseInt(f.binsen_list_hairetsu[f.binsen_number][2]);
f.para_pre_sijyou_koukando = parseInt(f.binsen_list_hairetsu[f.binsen_number][3]);
f.para_pre_katuraginomiya_koukando = parseInt(f.binsen_list_hairetsu[f.binsen_number][4]);
f.para_pre_hujieda_koukando = parseInt(f.binsen_list_hairetsu[f.binsen_number][5]);
[endscript]
[eval exp="f.hantei_event_storage = 'parseInt(f.binsen_list_hairetsu[f.binsen_number][2])=' + parseInt(f.binsen_list_hairetsu[f.binsen_number][2])"]
;[変数ログ表示]
[eval exp="f.hantei_event_storage = 'parseInt(f.binsen_list_hairetsu[f.binsen_number][0])=' + f.binsen_list_hairetsu[f.binsen_number][0]"]
;[変数ログ表示]

[if exp = "f.binsen_list_hairetsu[f.binsen_number][6] == f.okeiko_month"]
[call target = *binsen_good_kisetsu]
[elsif exp = "f.binsen_list_hairetsu[f.binsen_number][7] == f.okeiko_month"]
[call target = *binsen_good_kisetsu]
[endif]
[if exp="f.fumi_kakunin == 1"]
@jump storage=fumi_wadai.ks target=*fumi_kakunin
[else]
;f.para_pre_kuroda_koukando=[emb exp ="f.para_pre_kuroda_koukando"]
@jump storage="fumi_henji_gotyou.ks" target=*gotyou_sentaku
[endif]
[s]

;◆便箋csvの配列6,7は便箋の旬の月。その月に便箋を使うと各キャラ本来より好感度+1
*binsen_good_kisetsu
[iscript]
f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando + 1;
f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando + 1;
f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + 1;
f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + 1;
f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando + 1;
[endscript]
[return]

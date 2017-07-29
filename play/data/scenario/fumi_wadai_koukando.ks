;◆話題Noから話題配列の好感度の部分を呼び出してpre好感度パラメータに代入
*wadai_shori_koukando
[button name="list" folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji_owari.ks" target="*fumi_henji_owari" x=870 y=555]
[iscript]
f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando + parseInt(f.wadai_list_hairetsu[f.wadai_number][1]);
f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando + parseInt(f.wadai_list_hairetsu[f.wadai_number][2]);
f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + parseInt(f.wadai_list_hairetsu[f.wadai_number][3]);
f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + parseInt(f.wadai_list_hairetsu[f.wadai_number][4]);
f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando + parseInt(f.wadai_list_hairetsu[f.wadai_number][5]);
f.hantei_event_storage = 'parseInt(f.wadai_list_hairetsu[f.wadai_number][2]=' + parseInt(f.wadai_list_hairetsu[f.wadai_number][2]);
[endscript]
;[変数ログ表示]
;[eval exp="f.hantei_event_storage = 'f.wadai_list_hairetsu[f.wadai_number][0]=' + f.wadai_list_hairetsu[f.wadai_number][0]"]
;[変数ログ表示]
;[eval exp="f.hantei_event_storage = 'f.para_pre_zaizen_koukando=' + f.para_pre_zaizen_koukando"]
;[変数ログ表示]
/*
;◆話題配列fumi_wadai.csvの6番目要素は話題の距離感を示す。a：最初からokな話題、b:そこそこ仲良くなるまでは引かれる話題、c:かなり仲良くなるまでは引かれる(話題の好みは一様ではないため一旦実装解除します2017.03.17)
[if exp = "f.wadai_list_hairetsu[f.wadai_number][6] == 'a'"]
[call target = *wadai_a]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][6] == 'b'"]
[call target = *wadai_b]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][6] == 'c'"]
[call target = *wadai_c]
[endif]
;[eval exp="f.hantei_event_storage = 'f.para_pre_zaizen_koukando=' + f.para_pre_zaizen_koukando"]
;[変数ログ表示]

;◆話題配列fumi_wadai.csvの7,8番目要素はその話題を嫌がる攻略対象を示す。(未実装)
[if exp = "f.wadai_list_hairetsu[f.wadai_number][7] == '1'"]
[eval exp = "f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][7] == '2'"]
[eval exp = "f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][7] == '3'"]
[eval exp = "f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][7] == '4'"]
[eval exp = "f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][7] == '5'"]
[eval exp = "f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando - 2"]
[endif]
[if exp = "f.wadai_list_hairetsu[f.wadai_number][8] == '1'"]
[eval exp = "f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][8] == '2'"]
[eval exp = "f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][8] == '3'"]
[eval exp = "f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][8] == '4'"]
[eval exp = "f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][8] == '5'"]
[eval exp = "f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando - 2"]
[endif]
*/
@jump storage="fumi_wadai.ks" target=*fumi_kakunin
[s]

;◆話題a,b,cの判定
*wadai_a
[return]

*wadai_b
[iscript]
if (f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_a'])){
	f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando - 1;
}
if (f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
	f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando - 1;
}
if (f.para_sijyou_koukando < parseInt(sf.sijyou['koukando_a'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando - 1;
}
if (f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando - 1;
}
if (f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando - 1;
}
[endscript]
[return]

*wadai_c
[iscript]
if (f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_b'])){
	f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando - 1;
}
if (f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_b'])){
	f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando - 1;
}
if (f.para_sijyou_koukando < parseInt(sf.sijyou['koukando_b'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando - 1;
}
if (f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_b'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando - 1;
}
if (f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_b'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando - 1;
}
[endscript]
[return]

;=============================================
;手紙　語調の選択
;=============================================
*gotyou_kanketsu
[eval exp="f.fumi_gotyou='簡潔に書く'"]
[button name="list" folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[iscript]
f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando;

if (f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
	f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando + 0;
}else if((f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])) && (f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_b']))){
	f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando + 1;
}else if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_b'])){
	f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando + 0;
}

if (f.para_sijyou_koukando < parseInt(sf.sijyou['koukando_a'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + 0;
}else if(f.para_sijyou_koukando >= parseInt(sf.sijyou['koukando_a']) && f.para_sijyou_koukando < parseInt(sf.sijyou['koukando_b'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + 0;
}else if(f.para_sijyou_koukando >= parseInt(sf.sijyou['koukando_b'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando - 1;
}

if (f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + 2;
}else if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + 1;
}

if (f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando - 2;
}else if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a']) && f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_b'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando - 1;
}else if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_b'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando + 0;
}
[endscript]
[if exp="f.fumi_kakunin == 1"]
@jump storage=fumi_wadai.ks target=*fumi_kakunin
[else]
@jump storage=fumi_wadai.ks target=*wadai_sentaku
[endif]
[s]

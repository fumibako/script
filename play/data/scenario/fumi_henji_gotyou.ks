;=============================================
;手紙　語調の選択
;=============================================
*gotyou_sentaku
[cm]
[freeimage layer = 28]
[一斉表示準備]
[font size=25]
どんな感じに[r]
書きましょう？
	[glink name="list" storage="fumi_henji_gotyou.ks" target=*gotyou_kanketsu text="簡潔に書く" size=16 width="200" x=480 y=150 color=white]
	[glink name="list" storage="fumi_henji_gotyou.ks" target=*gotyou_teinei text="丁寧に書く" size=16 width="200" x=480 y=250 color=white]
	[glink name="list" storage="fumi_henji_gotyou.ks" target=*gotyou_kigaru text="気軽に書く" size=16 width="200" x=480 y=350 color=white]
[button name="list" folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[一斉表示]
[s]

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
[if exp="f.fumi_kakunin==1"]
@jump storage=fumi_wadai.ks target=*fumi_kakunin
[else]
@jump storage=fumi_wadai.ks target=*wadai_sentaku
[endif]
[s]

*gotyou_teinei
[eval exp="f.fumi_gotyou='丁寧に書く'"]
[button name="list" folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[iscript]
f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando + 1;
f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando + 2;

if (f.para_sijyou_koukando < parseInt(sf.sijyou['koukando_a'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + 0;
}else if(f.para_sijyou_koukando >= parseInt(sf.sijyou['koukando_a']) && f.para_sijyou_koukando < parseInt(sf.sijyou['koukando_b'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + 0;
}else if(f.para_sijyou_koukando >= parseInt(sf.sijyou['koukando_b'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + 2;
}

if (f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + 0;
}else if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a']) && f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_b'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + 1;
}else if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_b'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + 2;
}

if (f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando + 2;
}else if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a']) && f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_b'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando + 1;
}else if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_b'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando + 2;
}
[endscript]
;f.para_pre_kuroda_koukando=[emb exp ="f.para_pre_kuroda_koukando"]
[if exp="f.fumi_kakunin==1"]
@jump storage=fumi_wadai.ks target=*fumi_kakunin
[else]
@jump storage=fumi_wadai.ks target=*wadai_sentaku
[endif]

[s]

*gotyou_kigaru
[eval exp="f.fumi_gotyou='気軽に書く'"]
[button name="list" folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[iscript]
if (f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_a']) && f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_b'])){
	f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando - 2;
}else if(f.para_kuroda_koukando >= parseInt(sf.kuroda['koukando_a']) && f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_b'])){
	f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando - 1;
}

if (f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
	f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando - 3;
}else if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a']) && f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_b'])){
	f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando - 2;
}else if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_b'])){
	f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando + 0;
}

if (f.para_sijyou_koukando < parseInt(sf.sijyou['koukando_a'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + 2;
}else if(f.para_sijyou_koukando >= parseInt(sf.sijyou['koukando_a']) && f.para_sijyou_koukando < parseInt(sf.sijyou['koukando_b'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + 2;
}else if(f.para_sijyou_koukando >= parseInt(sf.sijyou['koukando_b'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + 2;
}

if (f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + 1;
}else if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a']) && f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_b'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + 2;
}else if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_b'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + 3;
}

if (f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando + 1;
}else if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a']) && f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_b'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando + 2;
}else if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_b'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando + 2;
}
[endscript]
[if exp="f.fumi_kakunin == 1"]
@jump storage=fumi_wadai.ks target=*fumi_kakunin
[else]
@jump storage=fumi_wadai.ks target=*wadai_sentaku
[endif]

[s]

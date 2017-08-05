*fumibako_oaite_hyouji
[eval exp="f.viewing_storage = 'info_oaite_fumi.ks'"]
[freeimage layer = 26]
[layopt layer=26 visible=true]
[image layer=26 x=0 y=0 height=640 width=960 storage="bg/bg_fumibako.jpg"]
[wait time=50]

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
[return]

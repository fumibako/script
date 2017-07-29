;↓読み込み不良対策。お稽古パート中なら話題選択ボタンを表示せず戻る
*where_are_you
[if exp="f.viewing_storage == 'okeiko.ks'"]
	@jump storage=okeiko.ks target=*draw_button_system
[endif]

;↓読み込み不良対策。終了処理ラベルを最初に読み込む
*fumi_henji_owari
@jump storage="fumi_henji_owari.ks"

*start
;=============================================
;手紙の話題選択
;=============================================
*wadai_sentaku
@jump storage="fumi_wadai_sentaku.ks"

*fumi_henji_save
[showsave]
@jump target=*start
[return]

*fumi_henji_load
[showload]
@jump target=*start
[return]

;=============================================
;手紙の最終確認
;=============================================
*fumi_kakunin
[cm]
[freeimage layer = 28]
[一斉表示準備]
[eval exp="f.fumi_kakunin=1"]
[button name="list" folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[font size=25]
この内容で[r]
よいかしら？
[eval exp="f.fumi_sentaku_binsen = '便せん　：　' + f.binsen_list_hairetsu[f.binsen_number][0]"]
[eval exp="f.fumi_sentaku_gotyou = '文　調　：　' + f.fumi_gotyou"]
[eval exp="f.fumi_sentaku_wadai = '話　題　：　' + f.wadai_list_hairetsu[f.wadai_number][0]"]
	[ptext name="list" text=&f.fumi_sentaku_binsen layer=28 size=25 x=350 y=120 color=saddlebrown bold=bold]
		[glink name="list" storage="fumi_henji_binsen_sentaku2.ks" target=&f.binsen_viewing_target text="変更" size=20 width="40" x=800 y=120 color=white]
	[ptext name="list" text=&f.fumi_sentaku_gotyou layer=28 size=25 x=350 y=245 color=saddlebrown bold=bold]
		[glink name="list" storage="fumi_henji_gotyou.ks" target=*gotyou_sentaku text="変更" size=20 width="40" x=800 y=245 color=white]
	[ptext name="list" text=&f.fumi_sentaku_wadai layer=28 size=25 x=350 y=370 color=saddlebrown bold=bold]
		[glink name="list" storage="fumi_wadai_sentaku.ks" target=&f.wadai_viewing_target text="変更" size=20 width="40" x=800 y=370 color=white]
[button name="list" folder="fgimage/button" graphic="button_ok100x100.png" target="*fumi_ok" x=450 y=430]
[一斉表示]
;sf.kuroda'koukando_a'=[emb exp = "sf.kuroda['koukando_a']"][r]
;f.para_pre_kuroda_koukando=[emb exp ="f.para_pre_kuroda_koukando"]
;f.para_pre_zaizen_koukando=[emb exp ="f.para_pre_zaizen_koukando"]
;f.para_pre_sijyou_koukando=[emb exp ="f.para_pre_sijyou_koukando"][r]
;f.para_pre_katuraginomiya_koukando=[emb exp ="f.para_pre_katuraginomiya_koukando"]
;f.para_pre_hujieda_koukando=[emb exp ="f.para_pre_hujieda_koukando"]
[s]

*fumi_ok
[if exp="f.fumi_henjityu == 1"]
 [eval exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] = 1"]
[endif]
;「返信」から送らず「手紙を書く」から送った場合でも「一通でも返事をした」扱いとしてフラグに1を入れ5月4週bad回避とする(現実の手紙でも特定の手紙の返事かどうかにかかわらず「返事」扱いとなるため
[eval exp="f.fumi_henji = 1"]
[eval exp="f.fumi_henjityu = 0"]
[eval exp="f.fumi_kakunin = 0"]
[eval exp="f.para_shujinkou_tairyoku_now = f.para_shujinkou_tairyoku_now - f.fumi_hituyou_tairyoku"]
[eval exp="f.para_shujinkou_kiryoku_now = f.para_shujinkou_kiryoku_now - f.fumi_hituyou_kiryoku"]
[if exp="f.fumi_atesaki == 'kuroda'"]
	@jump storage="fumi_wadai_count_kuroda.ks"
[endif]
[if exp="f.fumi_atesaki == 'zaizen'"]
	@jump storage="fumi_wadai_count_zaizen.ks"
[endif]
[if exp="f.fumi_atesaki == 'sijyou'"]
	@jump storage="01_sijyou_fumi_wadai.ks" target=*sijyou_wadai_shori
[endif]
[if exp="f.fumi_atesaki == 'katuraginomiya'"]
	@jump storage="fumi_wadai_count_katuraginomiya.ks"
[endif]
[if exp="f.fumi_atesaki == 'hujieda'"]
	@jump storage="fumi_wadai_count_hujieda.ks"
[endif]

;主人公登場時の画像被せ処理に◆B4nFWraU42さん作スクリプトを使用しました。ありがとうございます。
*start
;スタート処理に飛びます
@jump storage="okeiko_start.ks" target=*start

;=============================================
;お稽古パート
;=============================================
*okeiko_main

*event_hantei_week_hajime
;◆イベント全般(1表示、0非表示)tf.event_hyouji == 0の場合はイベント判定をカット
[if exp="tf.event_hyouji == 0"]
@jump target=*event_hantei_week_hajime_owari
[endif]
;◆イベント判定(週始め)へ飛んで戻ってくる
;↓◆イベント判定処理を見るための変数をセット
;[eval exp="f.hantei_event_storage='okeiko.ks: event_hantei_week_hajime.ks判定開始'"]
;[変数ログ表示]
@jump storage="event_hantei_week_hajime.ks" target=*start
*event_hantei_week_hajime_owari
;◆スキップ状態の時はスキップを解除
[eval exp="f.skip=this.kag.stat.is_skip"]
[if exp="f.skip == true"]
	[cancelskip]
	[eval exp="f.skip = false"]
[endif]

;↓◆イベント判定処理を見るための変数をセット
;[eval exp="f.hantei_event_storage='okeiko.ks: *event_hantei_week_hajime_owari通過(event_hantei_week_hajime.ks判定終了)'"]
;[変数ログ表示]
;[if exp="that.kag.stat.is_skip == true"]
;	[skipstop]
;[endif]
;[if exp="this.kag.stat.is_skip == true"]
;	[skipstop]
;[endif]
[if exp="f.skip_sentaku == 1"]
[eval exp="f.skip_sentaku = 0"]
@jump target=*bgm_owari
[endif]
[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】夕涼み（お稽古）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[wait time=10]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]
*bgm_owari

;◆手紙到着判定
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_all
*fumi_toutyaku_hantei_owari

;↓draw_button_system切り出しました。okeiko_draw_button_system→okeiko_hyouji.ks→*draw_owari
*draw_button_system
@jump storage="okeiko_draw_button_system.ks"

;◆描画処理終了
*draw_owari
;↓イベント時期フラグリセット(休憩中画像非表示に使用)
[eval exp="f.event_jiki=''"]
;↓月始めフラグリセット(休憩中画像非表示に使用)
[eval exp="f.tukihajime = 0"]
[wait time=10]
[お稽古ボタン表示]
;毎週休憩終わりにautosaveが入るようにしてみます(調整するかもしれません
[autosave]
[s]


;◆休憩ボタンを押した際の処理：まず画像消去などリセット処理へ飛んで戻ってくる
*okeiko_qk

@jump storage="okeiko_qk_reset.ks" target=*start
*okeiko_qk_reset_end

;◆「休憩中」画像切り替え(四条9月4週のイベント後は画像表示すると違和感があったので、無しに
[freeimage layer = 26]
[layopt layer=26 visible=true]
[image layer=26 x=334 y=155 storage="button/qk_anim02.png"]

;◆イベント全般(1表示、0非表示)tf.event_hyouji == 0の場合はイベント判定をカット
[if exp="tf.event_hyouji == 0"]
@jump target=*event_hantei_week_owari_owari
[endif]

*event_hantei_week_owari
[if exp="f.okeiko_month == 9 || f.okeiko_month == 1 || (f.okeiko_month == 2 && f.okeiko_week == 1) || (f.okeiko_month == 5 && f.okeiko_week == 4) || (f.okeiko_month == 8 && f.okeiko_week == 4) || (f.okeiko_month == 11 && f.okeiko_week == 4) || (f.okeiko_month == 3 && f.okeiko_week == 4)"]
;◆イベント判定(週終わり：エンディングイベントなどの判定処理リスト)へ飛んで戻ってくる
@jump storage="event_hantei_week_owari.ks" target=*start
[endif]

*event_hantei_week_owari_owari

;↓◆イベント判定処理を見るための変数をセット
;[eval exp="f.hantei_event_storage='okeiko.ks:event_hantei_week_owari.ks判定終了'"]
;[変数ログ表示]

*okeiko_qk_shori

;◆休憩処理続き
[iscript]
if((f.para_shujinkou_tairyoku_now == f.para_shujinkou_tairyoku_max) && (f.para_shujinkou_kiryoku_now == f.para_shujinkou_kiryoku_max)){
	f.count_qk = f.count_qk + 1;
}
f.okeiko_week = f.okeiko_week + 1;

if (f.okeiko_week > 4){
	f.okeiko_month = f.okeiko_month + 1;
	f.tukihajime = 1;
	f.okeiko_week = 1;
}
if (f.okeiko_month > 12){
	f.okeiko_month = 1;
}
f.sysgra_okeiko_week = 'button/kanji_' + f.okeiko_week + '.png';
f.sysgra_okeiko_month = 'button/kanji_' + f.okeiko_month + '.png';

if (f.count_qk > 2){
	if (f.para_shujinkou_shukujodo < 1){
	} else  {
		f.para_shujinkou_shukujodo = f.para_shujinkou_shukujodo - 1;
		f.count_qk = 0;
	}
	if (f.para_shujinkou_tairyoku_max < 9){
	} else {
		f.para_shujinkou_tairyoku_max = f.para_shujinkou_tairyoku_max - 1;
		f.count_qk = 0;
	}
	if (f.para_shujinkou_kiryoku_max < 9){
	} else {
		f.para_shujinkou_kiryoku_max = f.para_shujinkou_kiryoku_max - 1;
		f.count_qk = 0;
	}
}

f.para_shujinkou_tairyoku_now=f.para_shujinkou_tairyoku_now + f.okeiko_qk_up_tairyoku;
if (f.para_shujinkou_tairyoku_now > f.para_shujinkou_tairyoku_max){
	f.para_shujinkou_tairyoku_now = f.para_shujinkou_tairyoku_max;
}

f.para_shujinkou_kiryoku_now=f.para_shujinkou_kiryoku_now + f.okeiko_qk_up_kiryoku;
if (f.para_shujinkou_kiryoku_now > f.para_shujinkou_kiryoku_max){
	f.para_shujinkou_kiryoku_now = f.para_shujinkou_kiryoku_max;
}
[endscript]

[iscript]
//散策イベント2(時子さん)を見ている場合に手紙到着週数カウント減算。カウントカット処理前に移動します。
if (f.katuraginomiya_fumi_inou > 0){
f.katuraginomiya_fumi_inou = f.katuraginomiya_fumi_inou - 1;
}
[endscript]

;↓話題到着待ち状態でなければ、速度対策のため話題等カウントをカット。話題以外のカウント処理はこの手前に書く必要があります。
[if exp="(f.fumi_wadai_toutyakumachi <= 0) || (f.fumi_wadai_toutyakumachi == null)]
@jump target=*qk_end
[endif]

[if exp="f.fumi_wadai_toutyakumachi > 0"]
[eval exp="f.fumi_wadai_toutyakumachi = f.fumi_wadai_toutyakumachi - 1"]
[endif]

[iscript]
//◆◆各キャラ宛、話題の手紙を出した際の週数カウントがはじまっていれば1週減算処理
//◆黒田宛
if (f.kuroda_fumi_toutyakumachi_shumi > 0){
f.kuroda_fumi_toutyakumachi_shumi = f.kuroda_fumi_toutyakumachi_shumi - 1;
}
if (f.kuroda_fumi_toutyakumachi_kazoku > 0){
f.kuroda_fumi_toutyakumachi_kazoku = f.kuroda_fumi_toutyakumachi_kazoku - 1;
}
if (f.kuroda_fumi_toutyakumachi_yuujin > 0){
f.kuroda_fumi_toutyakumachi_yuujin = f.kuroda_fumi_toutyakumachi_yuujin - 1;
}

//◆四条宛 話題の手紙届くまでカウント減算処理
if (f.sijyou_fumi_toutyakumachi_shumi > 0){
f.sijyou_fumi_toutyakumachi_shumi = f.sijyou_fumi_toutyakumachi_shumi - 1;
}
if (f.sijyou_fumi_toutyakumachi_sigoto > 0){
f.sijyou_fumi_toutyakumachi_sigoto = f.sijyou_fumi_toutyakumachi_sigoto - 1;
}
if (f.sijyou_fumi_toutyakumachi_kazoku > 0){
f.sijyou_fumi_toutyakumachi_kazoku = f.sijyou_fumi_toutyakumachi_kazoku - 1;
}
if (f.sijyou_fumi_toutyakumachi_kisetsu > 0){
f.sijyou_fumi_toutyakumachi_kisetsu = f.sijyou_fumi_toutyakumachi_kisetsu - 1;
}
if (f.sijyou_fumi_toutyakumachi_shourai > 0){
f.sijyou_fumi_toutyakumachi_shourai = f.sijyou_fumi_toutyakumachi_shourai - 1;
}
if (f.sijyou_fumi_toutyakumachi_yuujin > 0){
f.sijyou_fumi_toutyakumachi_yuujin = f.sijyou_fumi_toutyakumachi_yuujin - 1;
}
if (f.sijyou_fumi_toutyakumachi_shokuji > 0){
f.sijyou_fumi_toutyakumachi_shokuji = f.sijyou_fumi_toutyakumachi_shokuji - 1;
}
if (f.sijyou_fumi_toutyakumachi_kangeki > 0){
f.sijyou_fumi_toutyakumachi_kangeki = f.sijyou_fumi_toutyakumachi_kangeki - 1;
}
if (f.sijyou_fumi_toutyakumachi_neko > 0){
f.sijyou_fumi_toutyakumachi_neko = f.sijyou_fumi_toutyakumachi_neko - 1;
}
if (f.sijyou_fumi_toutyakumachi_kiki > 0){
f.sijyou_fumi_toutyakumachi_kiki = f.sijyou_fumi_toutyakumachi_kiki - 1;
}
if (f.sijyou_fumi_toutyakumachi_midori > 0){
f.sijyou_fumi_toutyakumachi_midori = f.sijyou_fumi_toutyakumachi_midori - 1;
}
if (f.sijyou_fumi_toutyakumachi_photo > 0){
f.sijyou_fumi_toutyakumachi_photo = f.sijyou_fumi_toutyakumachi_photo - 1;
}
if (f.sijyou_fumi_toutyakumachi_hajimari > 0){
f.sijyou_fumi_toutyakumachi_hajimari = f.sijyou_fumi_toutyakumachi_hajimari - 1;
}
if (f.sijyou_fumi_toutyakumachi_music > 0){
f.sijyou_fumi_toutyakumachi_music = f.sijyou_fumi_toutyakumachi_music - 1;
}
if (f.sijyou_fumi_toutyakumachi_michi > 0){
f.sijyou_fumi_toutyakumachi_michi = f.sijyou_fumi_toutyakumachi_michi - 1;
}
if (f.sijyou_fumi_toutyakumachi_henka > 0){
f.sijyou_fumi_toutyakumachi_henka = f.sijyou_fumi_toutyakumachi_henka - 1;
}
if (f.sijyou_fumi_toutyakumachi_dokusho > 0){
f.sijyou_fumi_toutyakumachi_dokusho = f.sijyou_fumi_toutyakumachi_dokusho - 1;
}
if (f.sijyou_fumi_toutyakumachi_sports > 0){
f.sijyou_fumi_toutyakumachi_sports = f.sijyou_fumi_toutyakumachi_sports - 1;
}
if (f.sijyou_fumi_toutyakumachi_aburidasi > 0){
f.sijyou_fumi_toutyakumachi_aburidasi = f.sijyou_fumi_toutyakumachi_aburidasi - 1;
}

//◆財前宛 話題の手紙届くまでカウント減算処理
if (f.zaizen_fumi_toutyakumachi_shumi > 0){
f.zaizen_fumi_toutyakumachi_shumi = f.zaizen_fumi_toutyakumachi_shumi - 1;
}
if (f.zaizen_fumi_toutyakumachi_sigoto > 0){
f.zaizen_fumi_toutyakumachi_sigoto = f.zaizen_fumi_toutyakumachi_sigoto - 1;
}
if (f.zaizen_fumi_toutyakumachi_kazoku > 0){
f.zaizen_fumi_toutyakumachi_kazoku = f.zaizen_fumi_toutyakumachi_kazoku - 1;
}
if (f.zaizen_fumi_toutyakumachi_kisetsu > 0){
f.zaizen_fumi_toutyakumachi_kisetsu = f.zaizen_fumi_toutyakumachi_kisetsu - 1;
}
if (f.zaizen_fumi_toutyakumachi_shourai > 0){
f.zaizen_fumi_toutyakumachi_shourai = f.zaizen_fumi_toutyakumachi_shourai - 1;
}
if (f.zaizen_fumi_toutyakumachi_yuujin > 0){
f.zaizen_fumi_toutyakumachi_yuujin = f.zaizen_fumi_toutyakumachi_yuujin - 1;
}
if (f.zaizen_fumi_toutyakumachi_shokuji > 0){
f.zaizen_fumi_toutyakumachi_shokuji = f.zaizen_fumi_toutyakumachi_shokuji - 1;
}
if (f.zaizen_fumi_toutyakumachi_kangeki > 0){
f.zaizen_fumi_toutyakumachi_kangeki = f.zaizen_fumi_toutyakumachi_kangeki - 1;
}
if (f.zaizen_fumi_toutyakumachi_neko > 0){
f.zaizen_fumi_toutyakumachi_neko = f.zaizen_fumi_toutyakumachi_neko - 1;
}
if (f.zaizen_fumi_toutyakumachi_kiki > 0){
f.zaizen_fumi_toutyakumachi_kiki = f.zaizen_fumi_toutyakumachi_kiki - 1;
}
if (f.zaizen_fumi_toutyakumachi_midori > 0){
f.zaizen_fumi_toutyakumachi_midori = f.zaizen_fumi_toutyakumachi_midori - 1;
}
if (f.zaizen_fumi_toutyakumachi_photo > 0){
f.zaizen_fumi_toutyakumachi_photo = f.zaizen_fumi_toutyakumachi_photo - 1;
}
if (f.zaizen_fumi_toutyakumachi_hajimari > 0){
f.zaizen_fumi_toutyakumachi_hajimari = f.zaizen_fumi_toutyakumachi_hajimari - 1;
}
if (f.zaizen_fumi_toutyakumachi_music > 0){
f.zaizen_fumi_toutyakumachi_music = f.zaizen_fumi_toutyakumachi_music - 1;
}
if (f.zaizen_fumi_toutyakumachi_michi > 0){
f.zaizen_fumi_toutyakumachi_michi = f.zaizen_fumi_toutyakumachi_michi - 1;
}
if (f.zaizen_fumi_toutyakumachi_henka > 0){
f.zaizen_fumi_toutyakumachi_henka = f.zaizen_fumi_toutyakumachi_henka - 1;
}
if (f.zaizen_fumi_toutyakumachi_dokusho > 0){
f.zaizen_fumi_toutyakumachi_dokusho = f.zaizen_fumi_toutyakumachi_dokusho - 1;
}
if (f.zaizen_fumi_toutyakumachi_sports > 0){
f.zaizen_fumi_toutyakumachi_sports = f.zaizen_fumi_toutyakumachi_sports - 1;
}

//◆葛城宮宛 話題の手紙届くまでカウント減算処理
if (f.katuraginomiya_fumi_toutyakumachi_shumi > 0){
f.katuraginomiya_fumi_toutyakumachi_shumi = f.katuraginomiya_fumi_toutyakumachi_shumi - 1;
}
if (f.katuraginomiya_fumi_toutyakumachi_sigoto > 0){
f.katuraginomiya_fumi_toutyakumachi_sigoto = f.katuraginomiya_fumi_toutyakumachi_sigoto - 1;
}
if (f.katuraginomiya_fumi_toutyakumachi_kazoku > 0){
f.katuraginomiya_fumi_toutyakumachi_kazoku = f.katuraginomiya_fumi_toutyakumachi_kazoku - 1;
}
if (f.katuraginomiya_fumi_toutyakumachi_kisetsu > 0){
f.katuraginomiya_fumi_toutyakumachi_kisetsu = f.katuraginomiya_fumi_toutyakumachi_kisetsu - 1;
}
if (f.katuraginomiya_fumi_toutyakumachi_shourai > 0){
f.katuraginomiya_fumi_toutyakumachi_shourai = f.katuraginomiya_fumi_toutyakumachi_shourai - 1;
}
if (f.katuraginomiya_fumi_toutyakumachi_yuujin > 0){
f.katuraginomiya_fumi_toutyakumachi_yuujin = f.katuraginomiya_fumi_toutyakumachi_yuujin - 1;
}
if (f.katuraginomiya_fumi_toutyakumachi_shokuji > 0){
f.katuraginomiya_fumi_toutyakumachi_shokuji = f.katuraginomiya_fumi_toutyakumachi_shokuji - 1;
}
if (f.katuraginomiya_fumi_toutyakumachi_kangeki > 0){
f.katuraginomiya_fumi_toutyakumachi_kangeki = f.katuraginomiya_fumi_toutyakumachi_kangeki - 1;
}
if (f.katuraginomiya_fumi_toutyakumachi_neko > 0){
f.katuraginomiya_fumi_toutyakumachi_neko = f.katuraginomiya_fumi_toutyakumachi_neko - 1;
}
if (f.katuraginomiya_fumi_toutyakumachi_kiki > 0){
f.katuraginomiya_fumi_toutyakumachi_kiki = f.katuraginomiya_fumi_toutyakumachi_kiki - 1;
}
if (f.katuraginomiya_fumi_toutyakumachi_midori > 0){
f.katuraginomiya_fumi_toutyakumachi_midori = f.katuraginomiya_fumi_toutyakumachi_midori - 1;
}
if (f.katuraginomiya_fumi_toutyakumachi_photo > 0){
f.katuraginomiya_fumi_toutyakumachi_photo = f.katuraginomiya_fumi_toutyakumachi_photo - 1;
}
if (f.katuraginomiya_fumi_toutyakumachi_hajimari > 0){
f.katuraginomiya_fumi_toutyakumachi_hajimari = f.katuraginomiya_fumi_toutyakumachi_hajimari - 1;
}
if (f.katuraginomiya_fumi_toutyakumachi_music > 0){
f.katuraginomiya_fumi_toutyakumachi_music = f.katuraginomiya_fumi_toutyakumachi_music - 1;
}
if (f.katuraginomiya_fumi_toutyakumachi_michi > 0){
f.katuraginomiya_fumi_toutyakumachi_michi = f.katuraginomiya_fumi_toutyakumachi_michi - 1;
}
if (f.katuraginomiya_fumi_toutyakumachi_henka > 0){
f.katuraginomiya_fumi_toutyakumachi_henka = f.katuraginomiya_fumi_toutyakumachi_henka - 1;
}
if (f.katuraginomiya_fumi_toutyakumachi_dokusho > 0){
f.katuraginomiya_fumi_toutyakumachi_dokusho = f.katuraginomiya_fumi_toutyakumachi_dokusho - 1;
}
if (f.katuraginomiya_fumi_toutyakumachi_sports > 0){
f.katuraginomiya_fumi_toutyakumachi_sports = f.katuraginomiya_fumi_toutyakumachi_sports - 1;
}
if (f.katuraginomiya_fumi_toutyakumachi_sintya > 0){
f.katuraginomiya_fumi_toutyakumachi_sintya = f.katuraginomiya_fumi_toutyakumachi_sintya - 1;
}
if (f.katuraginomiya_fumi_toutyakumachi_satuki > 0){
f.katuraginomiya_fumi_toutyakumachi_satuki = f.katuraginomiya_fumi_toutyakumachi_satuki - 1;
}

//◆藤枝宛 話題の手紙届くまでカウント減算処理
if (f.hujieda_fumi_toutyakumachi_shumi > 0){
f.hujieda_fumi_toutyakumachi_shumi = f.hujieda_fumi_toutyakumachi_shumi - 1;
}
if (f.hujieda_fumi_toutyakumachi_sigoto > 0){
f.hujieda_fumi_toutyakumachi_sigoto = f.hujieda_fumi_toutyakumachi_sigoto - 1;
}
if (f.hujieda_fumi_toutyakumachi_kazoku > 0){
f.hujieda_fumi_toutyakumachi_kazoku = f.hujieda_fumi_toutyakumachi_kazoku - 1;
}
if (f.hujieda_fumi_toutyakumachi_kisetsu > 0){
f.hujieda_fumi_toutyakumachi_kisetsu = f.hujieda_fumi_toutyakumachi_kisetsu - 1;
}
if (f.hujieda_fumi_toutyakumachi_shourai > 0){
f.hujieda_fumi_toutyakumachi_shourai = f.hujieda_fumi_toutyakumachi_shourai - 1;
}
if (f.hujieda_fumi_toutyakumachi_yuujin > 0){
f.hujieda_fumi_toutyakumachi_yuujin = f.hujieda_fumi_toutyakumachi_yuujin - 1;
}
if (f.hujieda_fumi_toutyakumachi_shokuji > 0){
f.hujieda_fumi_toutyakumachi_shokuji = f.hujieda_fumi_toutyakumachi_shokuji - 1;
}
if (f.hujieda_fumi_toutyakumachi_kangeki > 0){
f.hujieda_fumi_toutyakumachi_kangeki = f.hujieda_fumi_toutyakumachi_kangeki - 1;
}
if (f.hujieda_fumi_toutyakumachi_neko > 0){
f.hujieda_fumi_toutyakumachi_neko = f.hujieda_fumi_toutyakumachi_neko - 1;
}
if (f.hujieda_fumi_toutyakumachi_kiki > 0){
f.hujieda_fumi_toutyakumachi_kiki = f.hujieda_fumi_toutyakumachi_kiki - 1;
}
if (f.hujieda_fumi_toutyakumachi_midori > 0){
f.hujieda_fumi_toutyakumachi_midori = f.hujieda_fumi_toutyakumachi_midori - 1;
}
if (f.hujieda_fumi_toutyakumachi_photo > 0){
f.hujieda_fumi_toutyakumachi_photo = f.hujieda_fumi_toutyakumachi_photo - 1;
}
if (f.hujieda_fumi_toutyakumachi_hajimari > 0){
f.hujieda_fumi_toutyakumachi_hajimari = f.hujieda_fumi_toutyakumachi_hajimari - 1;
}
if (f.hujieda_fumi_toutyakumachi_music > 0){
f.hujieda_fumi_toutyakumachi_music = f.hujieda_fumi_toutyakumachi_music - 1;
}
if (f.hujieda_fumi_toutyakumachi_michi > 0){
f.hujieda_fumi_toutyakumachi_michi = f.hujieda_fumi_toutyakumachi_michi - 1;
}
if (f.hujieda_fumi_toutyakumachi_henka > 0){
f.hujieda_fumi_toutyakumachi_henka = f.hujieda_fumi_toutyakumachi_henka - 1;
}
if (f.hujieda_fumi_toutyakumachi_dokusho > 0){
f.hujieda_fumi_toutyakumachi_dokusho = f.hujieda_fumi_toutyakumachi_dokusho - 1;
}
if (f.hujieda_fumi_toutyakumachi_sports > 0){
f.hujieda_fumi_toutyakumachi_sports = f.hujieda_fumi_toutyakumachi_sports - 1;
}
if (f.hujieda_fumi_toutyakumachi_sintya > 0){
f.hujieda_fumi_toutyakumachi_sintya = f.hujieda_fumi_toutyakumachi_sintya - 1;
}
if (f.hujieda_fumi_toutyakumachi_satuki > 0){
f.hujieda_fumi_toutyakumachi_satuki = f.hujieda_fumi_toutyakumachi_satuki - 1;
}
[endscript]
;↓◆イベント判定処理を見るための変数をセット
;[eval exp="f.hantei_event_storage='okeiko.ks:週加算処理通過'"]
;[変数ログ表示]

*qk_end

;週始めを示す変数に1を代入(0=週始め以外を示す)
[eval exp="f.okeikopart_shuuhajime=1"]

;◆「休憩中」画像切り替え
;9月1～2週休憩中は表示せず飛ばす
[if exp="(f.okeiko_month == 9 && (f.okeiko_week == 1 || f.okeiko_week == 2)) && f.event_weekend == 1"]
	@jump target=*qk_gazou_owari3
[endif]
;週終わりのイベント後は表示せず飛ばす
[if exp="f.event_jiki=='weekend'"]
	@jump target=*qk_gazou_owari3
[endif]
[freeimage layer = 26]
[layopt layer=26 visible=true]
[image layer=26 x=334 y=155 storage="button/qk_anim03.png"]
*qk_gazou_owari3
;イベント時期リセット
[eval exp="f.event_jiki=''"]
[if exp="f.tukihajime == 1"]
;◆「休憩中」画像消去
[freeimage layer = 26]
;◆その月のお箏練習回数リセット
[eval exp="f.para_shujinkou_koto_kaisuu=0"]
;◆月始めのみ…背景変更:月始め切り替え背景
[freeimage layer = 1]
[eval exp="f.okeiko_bg_tukihajime = '../fgimage/bg/bg_' + f.okeiko_month + 'gatsu.jpg'"]
[bg wait=true storage=&f.okeiko_bg_tukihajime time=50]
[wait time=10]
;【SE】スズメのさえずり
[playse storage=tori_suzume.ogg loop=false ]
[wait time=500]
[endif]

;◆イベント判定(週始め)へ
@jump target=*event_hantei_week_hajime

;◆テストメニューへ戻る
*back_test
;↓各変数を初期設定にリセット
[call target = *start storage = "01_sijyou_hensuu.ks"]
[call target = *start storage = "hensuu.ks"]
[eval exp = "tf.okeiko_gamen = false"]
[eval exp = "tf.test_sijyou_fumi_hensin_speed = 1"]
[eval exp = "tf.test_zaizen_fumi_hensin_speed = 1"]
[eval exp = "tf.test_katuraginomiya_fumi_hensin_speed = 1"]
[eval exp = "tf.test_hujieda_fumi_hensin_speed = 1"]
[eval exp = "tf.event_hyouji = 1"]
[eval exp = "tf.advice_event_hyouji = 1"]

[ct]
[clearfix]
[clearstack]
;[skipstop]
[stopse]
@layopt layer=message0 page=fore visible = false
@layopt layer=message1 page=fore visible = false

;◆全レイヤクリア
[freeimage layer = 0]
[freeimage layer = 1]
[freeimage layer = 2]
[freeimage layer = 3]
[freeimage layer = 4]
[freeimage layer = 5]
[freeimage layer = 6]
[freeimage layer = 7]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 13]
[freeimage layer = 14]
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
[freeimage layer = 21]
[freeimage layer = 22]
[freeimage layer = 23]
[freeimage layer = 24]
[freeimage layer = 25]
[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer = 28]
[freeimage layer = 29]
[chara_new name="bg" storage="bg/title.jpg"]
[chara_show left=1 top=1 layer=1 name="bg" time=0]
@jump storage="test.ks"
[s]

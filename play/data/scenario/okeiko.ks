﻿;主人公登場時の画像被せ処理に◆B4nFWraU42さん作スクリプトを使用しました。ありがとうございます。
*start
;スタート処理に飛びます
@jump storage="okeiko_start.ks" target=*start

;=============================================
;お稽古パート
;=============================================
*okeiko_main
[wait time=500]

[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】夕涼み（お稽古）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[wait time=10]
[endif]

*event_hantei_week_hajime
;◆イベント判定(週始め)へ飛んで戻ってくる
@jump storage="event_hantei_week_hajime.ks" target=*start
*event_hantei_week_hajime_owari

*draw_button_system
;◆お稽古パート画面表示処理へ飛んで戻ってくる
;↓どこから飛んだか、戻る際の道標
[eval exp="f.hyoujimae_storage='okeiko.ks'"]
[eval exp="f.hyoujimae_target='*draw_owari'"]
@jump storage="okeiko_hyouji.ks" target=*start

;◆描画処理終了
*draw_owari

[s]


;◆休憩ボタンを押した際の処理：まず画像消去などリセット処理へ飛んで戻ってくる
*okeiko_qk
@jump storage="okeiko_qk_reset.ks" target=*start
*okeiko_qk_reset_end

*event_hantei_week_owari
;◆イベント判定(週終わり：エンディングイベントなどの判定処理リスト)へ飛んで戻ってくる
@jump storage="event_hantei_week_owari.ks" target=*start
*event_hantei_week_owari_owari

;◆「休憩中」画像切り替え
[freeimage layer = 26]
[layopt layer=26 visible=true]
[image layer=26 x=334 y=155 storage="button/qk_anim02.png"]

*okeiko_qk_shori
;◆休憩処理続き
[iscript]
if(f.para_shujinkou_tairyoku_now==f.para_shujinkou_tairyoku_max && f.para_shujinkou_kiryoku_now==f.para_shujinkou_kiryoku_max){
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
		f.para_shujinkou_shukujodo=f.para_shujinkou_shukujodo - 1;
		f.count_qk = 0;
	}
	if (f.para_shujinkou_tairyoku_max < 9){
	} else {
		f.para_shujinkou_tairyoku_max=f.para_shujinkou_tairyoku_max - 1;
		f.count_qk = 0;
	}
	if (f.para_shujinkou_kiryoku_max < 9){
	} else {
		f.para_shujinkou_kiryoku_max=f.para_shujinkou_kiryoku_max - 1;
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

[endscript]


;◆手紙到着判定
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_all

*qk_end

;週始めを示す変数に1を代入(0=週始め以外を示す)
[eval exp="f.okeikopart_shuuhajime=1"]
;◆「休憩中」画像切り替え
[freeimage layer = 26]
[layopt layer=26 visible=true]
[image layer=26 x=334 y=155 storage="button/qk_anim03.png"]

[if exp="f.tukihajime == 1"]
;◆「休憩中」画像消去
[freeimage layer = 26]
;◆月始めのみ…背景変更:月始め切り替え背景
[eval exp="f.okeiko_bg_tukihajime = 'bg/bg_' + f.okeiko_month + 'gatsu.jpg'"]
[chara_mod name="bg" storage=&f.okeiko_bg_tukihajime]
[eval exp="f.tukihajime = 0"]
;【SE】スズメのさえずり
[playse storage=tori_suzume.ogg loop=false ]
[wait time=1000]
[endif]

;◆イベント判定(週始め)へ
@jump target=*event_hantei_week_hajime


*back_test
[ct]
[clearfix]
[clearstack]
[skipstop]
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

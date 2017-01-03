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

[call target=*event_hantei]

[s]


[主人公退場L]
[wait time=10]

;　終

;パラメータを消去
[freeimage layer = 21]
[freeimage layer = 22]
[freeimage layer = 24]
[freeimage layer = 30]
[resetfont]
;会話ウィンドウ消去
[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="message_bg" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="sys_month" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="sys_week" storage="toumei.gif" time=0]
[wait time=10]
;機能ボタン位置戻す
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
;機能ボタン消去
[anim name="message_save" opacity=0]
[anim name="message_load" opacity=0]
[clearfix]

[eval exp="sf.FButton='OFF'"]

;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false
;背景非表示
[chara_mod name="bg" storage="toumei.gif" time=100]

;------タイトルへ戻る



@jump storage="title.ks"
[s]

;◆お稽古機能
*okeiko_sadou
[freeimage layer = 26]
[freeimage layer = 27]
[cm]
[eval exp="f.okeiko_kamoku='sadou'"]
[call target="*okeiko_shori"]
@jump storage=okeiko.ks target=*draw_button_system
[s]

*okeiko_kadou
[freeimage layer = 26]
[freeimage layer = 27]
[cm]
[eval exp="f.okeiko_kamoku='kadou'"]
[call target="*okeiko_shori"]
@jump storage=okeiko.ks target=*draw_button_system
[s]

*okeiko_reihou
[freeimage layer = 26]
[freeimage layer = 27]
[cm]
[eval exp="f.okeiko_kamoku='reihou'"]
[call target="*okeiko_shori"]
@jump storage=okeiko.ks target=*draw_button_system
[s]

*okeiko_gogaku
[freeimage layer = 26]
[freeimage layer = 27]
[cm]
[eval exp="f.okeiko_kamoku='gogaku'"]
[call target="*okeiko_shori"]
@jump storage=okeiko.ks target=*draw_button_system
[s]

*okeiko_shori
[if exp="f.para_shujinkou_tairyoku_now < f.okeiko_hituyou_tairyoku"]
[chara_mod name="A_mayu" storage="girl/L/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_toji.png" time=0]
[wait time=10]
[cm]
[font size=25]
今は疲れすぎて[r]
できないわ……[r]
[font size=20 color=rosybrown]
(必要体力[emb exp="f.okeiko_hituyou_tairyoku"] 気力[emb exp="f.okeiko_hituyou_kiryoku"])
[wait time=1000]
[return]
[s]
[endif]
[clearfix]
[locate x=350 y=549]
[button name="okeiko_sadou" fix=true graphic="button_okeiko_sadou.png" target=*okeiko_sadou]
[wait time=10]
[locate x=470 y=549]
[button name="okeiko_kadou" fix=true graphic="button_okeiko_kadou.png" target=*okeiko_kadou]
[wait time=10]
[locate x=590 y=549]
[button name="okeiko_reihou" fix=true graphic="button_okeiko_reihou.png" target=*okeiko_reihou]
[wait time=10]
[locate x=710 y=549]
[button name="okeiko_gogaku" fix=true graphic="button_okeiko_gogaku.png" target=*okeiko_gogaku]
[wait time=10]
[locate x=852 y=533]
[button name="okeiko_qk" fix=true graphic="button_okeiko_qk.png" target=*okeiko_qk]
[wait time=10]

;◆お稽古中は主人公立ち絵を透明化
[chara_mod name="A_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="A_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="A_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="toumei.gif" time=0]
[wait time=10]

;◆お稽古中はフキダシを透明化
[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]
[wait time=10]
;◆お稽古イメージ画像を表示
[eval exp="f.okeiko_image = 'button/okeiko_'+f.okeiko_kamoku+'.png'"]
[freeimage layer = 26]
[layopt layer=26 visible=true]
[freeimage layer = 27]
[layopt layer=27 visible=true]
[image layer=26 x=250 y=20 storage="button/frame_lesson_message.png"]
[image layer=26 x=334 y=155 storage=&f.okeiko_image]
[ptext text="……　お稽古中　……" layer=27 size=23 x=370 y=65 color=darkslateblue bold=bold]
[wait time=1000]

[eval exp="f.okeikopart_serifu_okeiko_owari=1"]

[iscript]
f.okeiko_para_pre_random_1_3=Math.floor(Math.random() * 3 + 1);
f.okeiko_para_pre_random_1_2=Math.floor(Math.random() * 2 + 1);
f.para_shujinkou_shukujodo=f.para_shujinkou_shukujodo+f.okeiko_para_pre_random_1_2;
if(f.okeiko_kamoku=='sadou'||f.okeiko_kamoku=='reihou'){
	if(f.para_shujinkou_tairyoku_max > 96){
		f.okeiko_para_pre_random_1_3 = 1;
		if(f.para_shujinkou_tairyoku_max > 99){
			f.okeiko_para_pre_random_1_3 = 0;
		}
		f.para_shujinkou_tairyoku_max=f.para_shujinkou_tairyoku_max+f.okeiko_para_pre_random_1_3;
	}else if(f.para_shujinkou_tairyoku_max < 97){
		f.para_shujinkou_tairyoku_max=f.para_shujinkou_tairyoku_max+f.okeiko_para_pre_random_1_3;
	}
}
if(f.okeiko_kamoku=='kadou'||f.okeiko_kamoku=='gogaku'){
	if(f.para_shujinkou_kiryoku_max > 96){
		f.okeiko_para_pre_random_1_3 = 1;
		if(f.para_shujinkou_kiryoku_max > 99){
			f.okeiko_para_pre_random_1_3 = 0;
		}
		f.para_shujinkou_kiryoku_max=f.para_shujinkou_kiryoku_max+f.okeiko_para_pre_random_1_3;
	}else if(f.para_shujinkou_kiryoku_max < 97){
		f.para_shujinkou_kiryoku_max=f.para_shujinkou_kiryoku_max+f.okeiko_para_pre_random_1_3;
	}
}
f.para_shujinkou_tairyoku_now = f.para_shujinkou_tairyoku_now - f.okeiko_hituyou_tairyoku;
f.para_shujinkou_kiryoku_now = f.para_shujinkou_kiryoku_now - f.okeiko_hituyou_kiryoku;
[endscript]
[if exp="f.okeiko_kamoku=='sadou' || f.okeiko_kamoku=='reihou'"]
	[eval exp="f.okeiko_seika_txt='淑女度が'+f.okeiko_para_pre_random_1_2+'、体力最大値が'+f.okeiko_para_pre_random_1_3+'上がりました'"]
	[if exp="f.okeiko_para_pre_random_1_3==0;"]
		[eval exp="f.okeiko_seika_txt='淑女度が'+f.okeiko_para_pre_random_1_2+'上がりました'"]
	[endif]
[endif]
[if exp="f.okeiko_kamoku=='kadou' || f.okeiko_kamoku=='gogaku'"]
[eval exp="f.okeiko_seika_txt='淑女度が'+f.okeiko_para_pre_random_1_2+'、気力最大値が'+f.okeiko_para_pre_random_1_3+'上がりました'"]
	[if exp="f.okeiko_para_pre_random_1_3==0;"]
		[eval exp="f.okeiko_seika_txt='淑女度が'+f.okeiko_para_pre_random_1_2+'上がりました'"]
	[endif]
[endif]
[freeimage layer = 27]
[ptext text=&f.okeiko_seika_txt layer=27 size=23 x=300 y=65 color=darkslateblue bold=bold]
;【SE】キラキラ
[playse storage=kira.ogg loop=false ]
[wait time=1000]


;◆お稽古終わり。イメージ画像を消す
[freeimage layer = 26]
[freeimage layer = 27]

;◆主人公立ち絵とフキダシを戻す
[chara_mod name="girl_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
;主人公L登場時被せ
	[image name="junbi_girl" layer=29 storage="girl/L/gitl_L_all_futuu.png" left=50 top=220 time=300 visible=true]
	[wait time=10]
	[chara_mod name="A_base" storage="girl/L/base.png" time=0]
	[wait time=10]
	[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
	[wait time=10]
[wait time=200]
[iscript]
$('.junbi_girl').remove();
[endscript]
[chara_mod name="sys_fukidasi" storage="button/frame_lesson_fukidasi.png" time=0]
[wait time=10]
[return]

;◆休憩→次週へ進む
*okeiko_qk
[freeimage layer = 26]
[freeimage layer = 27]
[chara_mod name="A_mayu" storage="girl/L/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_toji.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_hohoemi.png" time=0]
[wait time=10]
[cm]
[chara_mod name="sys_fukidasi" storage="button/frame_lesson_fukidasi.png" time=0]
[wait time=10]
[font size=25]
休憩しましょう
[wait time=500]
;◆◆一度色々リセットする
[ct]
[clearfix]
[clearstack]
[skipstop]
[stopse]

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

;背景画像仮表示
[chara_new name="bg" storage="bg/bg_okeiko_main.jpg"]
[chara_show left=1 top=1 layer=1 name="bg" time=1]
[wait time=10]
;主人公L画像仮表示【登場時にchara_new使用。後はマクロで切り替え】
[chara_new name="A_base" storage="toumei.gif"]
[chara_show left=50 top=220 layer=3 name="A_base" time=0]
[wait time=10]
[chara_new name="A_mayu" storage="toumei.gif"]
[chara_show left=50 top=220 layer=4 name="A_mayu" time=0]
[wait time=10]
[chara_new name="A_me" storage="toumei.gif"]
[chara_show left=50 top=220 layer=5 name="A_me" time=0]
[wait time=10]
[chara_new name="A_kuti" storage="toumei.gif"]
[chara_show left=50 top=220 layer=6 name="A_kuti" time=0]
[wait time=10]
[chara_new name="A_emo" storage="toumei.gif"]
[chara_show left=50 top=220 layer=7 name="A_emo" time=0]
[wait time=10]

;主人公画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
[chara_new name="girl_base" storage="toumei.gif"]
[chara_show left=1 top=381 layer=15 name="girl_base" time=0]
[wait time=10]
[chara_new name="girl_mayu" storage="toumei.gif"]
[chara_show left=1 top=381 layer=16 name="girl_mayu" time=0]
[wait time=10]
[chara_new name="girl_me" storage="toumei.gif"]
[chara_show left=1 top=381 layer=17 name="girl_me" time=0]
[wait time=10]
[chara_new name="girl_kuti" storage="toumei.gif"]
[chara_show left=1 top=381 layer=18 name="girl_kuti" time=0]
[wait time=10]
[chara_new name="girl_emo" storage="toumei.gif"]
[chara_show left=1 top=381 layer=19 name="girl_emo" time=0]
[wait time=10]
[chara_new name="girl_te" storage="toumei.gif"]
[chara_show left=1 top=381 layer=20 name="girl_te" time=0]
[wait time=10]

;【システム表示】フキダシ枠仮表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_new name="sys_fukidasi" storage="toumei.gif"]
[chara_show left=300 top=220 layer=23 name="sys_fukidasi" time=0]
[wait time=10]

;【システム表示】メッセージ枠仮表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_new name="message_bg" storage="toumei.gif"]
[chara_show left=1 top=391 layer=14 name="message_bg" time=0]
[wait time=10]


;◆週終わりの判定（12月3週のbadEDは週始め開始のため、他のイベントと同じ並びで判定）
;◆判定 9月1週始めにお相手選びを保留すると、終わった時点で再度お相手選び
[if exp="((f.okeiko_month==9 && f.okeiko_week==1) && f.event_common[11]==0 && f.event_oaite_mitei==1)"]
	[eval exp="f.event_storage='common_9_1.ks'"]
	[eval exp="f.event_target='*common_9_1_futatabi_oaiteerabi'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_jiki='weekend'"]
	[eval exp="f.event_common[11]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆badED判定 5月4週終わった時点で返信を一度もしていないとbadED
[if exp="((f.okeiko_month==5 && f.okeiko_week==4) && f.fumi_henji==0 && f.event_common[8]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_5_4_badED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[8]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆badED判定 8月4週終わった時点で全ての攻略対象の好感度が一定値未満だとbadED
[if exp="((f.okeiko_month==8 && f.okeiko_week==4) && f.event_common[9]==0 && f.para_kuroda_koukando <= 30 && f.para_zaizen_koukando <= 30 && f.para_sijyou_koukando <= 30 && f.para_katuraginomiya_koukando <= 30 && f.para_hujieda_koukando <= 30)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_8_4_badED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[9]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田normalED判定 黒田ルートかつ3月4週が終わる時点で淑女度一定値未満又は好感度一定値未満で1度だけ発生
[if exp="(f.okeiko_month==3 && f.okeiko_week==4) && f.event_kuroda[15]==0 && f.kuroda_au==1 && (f.para_kuroda_koukando <= 80 || f.para_shujinkou_shukujodo <= 80)"]
	[eval exp="f.event_storage='kuroda_3_4_normalED.ks'"]
	[eval exp="f.event_target='*replay_kuroda_3_4_normalED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[15]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田goodED判定 黒田ルートかつ3月4週が終わる時点で淑女度一定値以上、好感度一定値以上で1度だけ発生
[if exp="(f.okeiko_month==3 && f.okeiko_week==4) && f.event_kuroda[16]==0 && f.kuroda_au==1 && (f.para_kuroda_koukando > 80 && f.para_shujinkou_shukujodo > 80)"]
	[eval exp="f.event_storage='kuroda_3_4_goodED.ks'"]
	[eval exp="f.event_target='*replay_kuroda_3_4_goodED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[16]=1"]
	@jump storage="event.ks" target=*start
[endif]

*okeiko_qk_shori
;◆休憩処理
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
;◆月始めのみ…背景変更:月始め切り替え背景
[if exp="f.tukihajime == 1"]
[eval exp="f.okeiko_bg_tukihajime = 'bg/bg_' + f.okeiko_month + 'gatsu.jpg'"]
[chara_mod name="bg" storage=&f.okeiko_bg_tukihajime]
[eval exp="f.tukihajime = 0"]
;【SE】スズメのさえずり
[playse storage=tori_suzume.ogg loop=false ]
[wait time=1000]
@jump target=*event_hantei
[endif]


@jump target=*event_hantei
[return]
[s]

;◆イベント発生判定
*event_hantei
;◆テスト画面からプレイの場合は助言イベントをカット
[if exp="tf.test_gamen==true"]
@jump target=*advice_event_owari
[endif]

;◆お稽古パート導入イベント判定 4月1週になった時点で1度だけ発生
[if exp="((f.okeiko_month==4 && f.okeiko_week==1) && f.event_common[0]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_1'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[0]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆お稽古の助言イベント判定 4月2週になった時点でお稽古を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==4 && f.okeiko_week==2) && f.para_shujinkou_shukujodo==1 && f.event_common[1]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_2'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[1]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆散策の助言イベント判定 4月3週になった時点で散策を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==4 && f.okeiko_week==3) && f.event_machi_common[1]==0 && f.event_common[2]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_3'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[2]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆返信の助言イベント判定 4月4週になった時点で返信を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==4 && f.okeiko_week==4) && f.fumi_henji==0 && f.event_common[3]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_4'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[3]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆返信の忠告イベント判定 5月1週になった時点で返信を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==5 && f.okeiko_week==1) && f.fumi_henji==0 && f.event_common[4]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_5_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[4]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆お稽古の助言イベント判定 5月2週になった時点でお稽古を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==5 && f.okeiko_week==2) && f.para_shujinkou_shukujodo==1 && f.event_common[5]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_5_2'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[5]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆散策の助言イベント判定 5月3週になった時点で散策を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==5 && f.okeiko_week==3) && f.event_machi_common[1]==0 && f.event_common[6]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_5_3'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[6]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆返信の忠告イベント判定 5月4週になった時点で返信を一度もしていないと1度だけ発生
[if exp="(f.okeiko_month==5 && f.okeiko_week==4) && f.fumi_henji==0 && f.event_common[7]==0"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_5_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[7]=1"]
	@jump storage="event.ks" target=*start
[endif]
*advice_event_owari

;◆黒田イベント判定【麦】6月4週になった時点で、黒田好感度一定値以上なら1度だけ発生
[if exp="(f.okeiko_month==6 && f.okeiko_week==4) && f.event_machi_kuroda[2]==0 && f.para_kuroda_koukando > 5"]
	@jump storage="sansaku.ks" target=*sansaku
[endif]

;◆黒田イベント判定【友人からの忠告】8月4週になった時点で、黒田好感度一定値以上なら1度だけ発生
;[if exp="(f.okeiko_month==8 && f.okeiko_week==4) && f.event_machi_kuroda[3]==1 && f.event_machi_kuroda[5]==0 && f.para_kuroda_koukando > 20"]
;	@jump storage="sansaku.ks" target=*sansaku_machi_kuroda_05
;[endif]

;◆顔合せのお相手選びイベント判定：イベント 9月1週になった時点で、攻略対象の好感度一定値以上なら1度だけ発生
[if exp="(f.okeiko_month==9 && f.okeiko_week==1) && f.event_common[10]==0 && (f.para_kuroda_koukando > 30 || f.para_zaizen_koukando > 30 || f.para_sijyou_koukando > 30 || f.para_katuraginomiya_koukando > 30|| f.para_hujieda_koukando > 30)"]
	[eval exp="f.event_storage='common_9_1.ks'"]
	[eval exp="f.event_target='*replay_common_9_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[10]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【顔合せ】判定 黒田ルートかつ9月3週になった時点で1度だけ発生
[if exp="(f.okeiko_month==9 && f.okeiko_week==3) && f.event_kuroda[1]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_9_3.ks'"]
	[eval exp="f.event_target='*replay_kuroda_9_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[1]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【手紙が届く：紅葉散策お誘い】黒田ルートかつ9月4週になった時点で1度だけ発生
[if exp="(f.okeiko_month==9 && f.okeiko_week==4) && f.event_kuroda[2]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_9_4.ks'"]
	[eval exp="f.event_target='*replay_kuroda_9_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[2]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【初デート】黒田ルートかつ10月3週になった時点で1度だけ発生
[if exp="(f.okeiko_month==10 && f.okeiko_week==3) && f.event_kuroda[3]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_10_3.ks'"]
	[eval exp="f.event_target='*replay_kuroda_10_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[3]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【手紙が届く：散策お誘い】黒田ルートかつ10月4週になった時点で1度だけ発生
[if exp="(f.okeiko_month==10 && f.okeiko_week==4) && f.event_kuroda[4]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_10_4.ks'"]
	[eval exp="f.event_target='*replay_kuroda_10_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[4]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【友人に会う】黒田ルートかつ11月1週になった時点で1度だけ発生
[if exp="(f.okeiko_month==11 && f.okeiko_week==1) && f.event_kuroda[5]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_11_1.ks'"]
	[eval exp="f.event_target='*replay_kuroda_11_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[5]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【デート】黒田ルートかつ11月2週になった時点で1度だけ発生
[if exp="(f.okeiko_month==11 && f.okeiko_week==2) && f.event_kuroda[6]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_11_2.ks'"]
	[eval exp="f.event_target='*replay_kuroda_11_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[6]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【黒田多忙と聞く】黒田ルートかつ11月3週になった時点で1度だけ発生
[if exp="(f.okeiko_month==11 && f.okeiko_week==3) && f.event_kuroda[7]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_11_3.ks'"]
	[eval exp="f.event_target='*replay_kuroda_11_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[7]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【黒田母倒れデートキャンセル】黒田ルートかつ11月4週になった時点で1度だけ発生
[if exp="(f.okeiko_month==11 && f.okeiko_week==4) && f.event_kuroda[8]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_11_4.ks'"]
	[eval exp="f.event_target='*replay_kuroda_11_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[8]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【黒田実験失敗と聞く→手紙を書こうと決意】黒田ルートかつ12月2週になった時点で1度だけ発生
[if exp="(f.okeiko_month==12 && f.okeiko_week==2) && f.event_kuroda[9]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_12_2.ks'"]
	[eval exp="f.event_target='*replay_kuroda_12_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[9]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【分岐：badED】黒田ルートかつ12月3週になった時点で淑女度一定値未満好感度一定値未満又は麦の穂無しでbadED
[if exp="(f.okeiko_month==12 && f.okeiko_week==3) && f.event_kuroda[10]==0 && f.kuroda_au==1 &&(f.para_shujinkou_shukujodo <= 40 ||f.para_kuroda_koukando <= 50 || f.event_machi_kuroda[2]==0)"]
	[eval exp="f.event_storage='kuroda_12_3_badED.ks'"]
	[eval exp="f.event_target='*replay_kuroda_12_3_badED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[10]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【分岐：normal/goodED】黒田ルートかつ12月3週になった時点で好感度一定値以上かつ麦の穂所持で1度だけ発生
[if exp="(f.okeiko_month==12 && f.okeiko_week==3) && f.event_kuroda[11]==0 && f.kuroda_au==1 && f.para_kuroda_koukando > 50 && f.event_machi_kuroda[2]==1"]
	[eval exp="f.event_storage='kuroda_12_3.ks'"]
	[eval exp="f.event_target='*replay_kuroda_12_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[11]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【手紙が届く：年賀状】黒田ルートかつ1月1週になった時点で1度だけ発生
[if exp="(f.okeiko_month==1 && f.okeiko_week==1) && f.event_kuroda[12]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_1_1.ks'"]
	[eval exp="f.event_target='*replay_kuroda_1_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[12]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【手紙が届く：お礼とお誘い】黒田ルートかつ1月4週になった時点で1度だけ発生
[if exp="(f.okeiko_month==1 && f.okeiko_week==4) && f.event_kuroda[13]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_1_4.ks'"]
	[eval exp="f.event_target='*replay_kuroda_1_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[13]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【小料理屋】黒田ルートかつ2月2週になった時点で1度だけ発生
[if exp="(f.okeiko_month==2 && f.okeiko_week==2) && f.event_kuroda[14]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_2_2.ks'"]
	[eval exp="f.event_target='*replay_kuroda_2_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[14]=1"]
	@jump storage="event.ks" target=*start
[endif]

;【システム表示】月週
*draw_month_week1
[freeimage layer = 21]
[freeimage layer = 22]
[layopt layer=21 visible=true]
[image layer=21 x=81 y=6 storage=&f.sysgra_okeiko_month]
[wait time=10]
[layopt layer=22 visible=true]
[image layer=22 x=81 y=50 storage=&f.sysgra_okeiko_week]
[wait time=10]

@jump target=*draw_button_system

;【機能ボタン表示】
*draw_button_system
[clearstack]
[clearfix]
;背景変更:主人公邸_お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko_main.jpg"]
[wait time=10]
[locate x=250 y=17]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=350 y=17]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=450 y=17]
[button name="button_info" fix=true graphic="button_info.png" storage=info_oaite_fumi.ks target=*info_oaite]
[wait time=10]
[locate x=550 y=17]
[button name="button_sansaku" fix=true graphic="button_sansaku.png" storage=sansaku.ks target=*sansaku]
[wait time=10]
[locate x=650 y=17]
[button name="button_fumibako" fix=true graphic="button_fumi.png" storage=info_oaite_fumi.ks target=*fumibako]
[wait time=10]
@jump target=*draw_button_okeiko
[return]
[s]

;【お稽古ボタン表示】
*draw_button_okeiko
[locate x=350 y=549]
[button name="okeiko_sadou" fix=true graphic="button_okeiko_sadou.png" target=*okeiko_sadou]
[wait time=10]
[locate x=470 y=549]
[button name="okeiko_kadou" fix=true graphic="button_okeiko_kadou.png" target=*okeiko_kadou]
[wait time=10]
[locate x=590 y=549]
[button name="okeiko_reihou" fix=true graphic="button_okeiko_reihou.png" target=*okeiko_reihou]
[wait time=10]
[locate x=710 y=549]
[button name="okeiko_gogaku" fix=true graphic="button_okeiko_gogaku.png" target=*okeiko_gogaku]
[wait time=10]
[locate x=852 y=533]
[button name="okeiko_qk" fix=true graphic="button_okeiko_qk.png" target=*okeiko_qk]
[wait time=10]
@jump target=*draw_month_week
[return]
[s]

;【システム表示】月週
*draw_month_week
[freeimage layer = 21]
[freeimage layer = 22]
[layopt layer=21 visible=true]
[image layer=21 x=81 y=6 storage=&f.sysgra_okeiko_month]
[wait time=10]
[layopt layer=22 visible=true]
[image layer=22 x=81 y=50 storage=&f.sysgra_okeiko_week]
[wait time=10]
[eval exp="f.okeikopart_shuuhajime=1"]
@jump target=*draw_para_count
[return]
[s]

;【パラメータ計算＆描画】
*draw_para_count
;↓処理ループ中に含める
[iscript]
f.para_shujinkou_tairyoku=f.para_shujinkou_tairyoku_now + "/" + f.para_shujinkou_tairyoku_max;
f.para_shujinkou_kiryoku=f.para_shujinkou_kiryoku_now + "/" + f.para_shujinkou_kiryoku_max;
f.para_shujinkou_shukujodo_max_width = f.para_shujinkou_shukujodo * 1 + 2;
f.para_shujinkou_shukujodo_now_width = f.para_shujinkou_shukujodo * 1;
f.para_shujinkou_tairyoku_max_width = f.para_shujinkou_tairyoku_max * 1 + 2;
f.para_shujinkou_tairyoku_now_width = f.para_shujinkou_tairyoku_now * 1;
f.para_shujinkou_kiryoku_max_width = f.para_shujinkou_kiryoku_max * 1 + 2;
f.para_shujinkou_kiryoku_now_width = f.para_shujinkou_kiryoku_now * 1;
[endscript]

;称号判定
[iscript]
if (f.para_shujinkou_shukujodo > 80){f.shougou = "淑女";}
else {f.shougou = "お転婆娘";}
[endscript]

;レイヤー24にパラメータ画像を表示
[freeimage layer = 24]
[layopt layer=24 visible=true]
[if exp="f.para_shujinkou_shukujodo == 0"]
[else]
[image layer=24 x=835 y=111 width=&f.para_shujinkou_shukujodo_max_width height=10 storage="button/parabar_empty_brown.png"]
[image layer=24 x=836 y=112 width=&f.para_shujinkou_shukujodo_now_width height=8 storage="button/parabar_pink.png"]
[endif]
[if exp="f.para_shujinkou_tairyoku_max == 0"]
[else]
[image layer=24 x=835 y=174 width=&f.para_shujinkou_tairyoku_max_width height=10 storage="button/parabar_empty_brown.png"]
[image layer=24 x=836 y=175 width=&f.para_shujinkou_tairyoku_now_width height=8 storage="button/parabar_green.png"]
[endif]
[if exp="f.para_shujinkou_kiryoku_max == 0"]
[else]
[image layer=24 x=835 y=212 width=&f.para_shujinkou_kiryoku_max_width height=10 storage="button/parabar_empty_brown.png"]
[image layer=24 x=836 y=213 width=&f.para_shujinkou_kiryoku_now_width height=8 storage="button/parabar_blue.png"]
[endif]

;レイヤー24にパラメータテキストを表示
[ptext text=&f.shougou layer=24 size=25 x=800 y=55 color=black bold=bold]
;[ptext text=&f.para_shujinkou_shukujodo layer=24 size=20 x=914 y=92 color=moccasin bold=bold]
[ptext text=&f.para_shujinkou_shukujodo layer=24 size=20 x=915 y=93 color=black bold=bold]
;[ptext text=&f.para_shujinkou_tairyoku layer=24 size=20 x=869 y=157 color=moccasin bold=bold]
[ptext text=&f.para_shujinkou_tairyoku layer=24 size=20 x=870 y=158 color=black bold=bold]
;[ptext text=&f.para_shujinkou_kiryoku layer=24 size=20 x=869 y=194 color=moccasin bold=bold]
[ptext text=&f.para_shujinkou_kiryoku layer=24 size=20 x=870 y=195 color=black bold=bold]

@jump target=*tukihajime



;近況報告,1,1,1,-1,1,a,,,3,
;容姿について,0,-1,0,0,1,c,2,,,
;相手の印象を褒める,1,1,1,-2,1,b,,,,
;相手の印象に物申す,0,0,1,2,1,c,,,4,
;華族について,0,0,0,0,1,c,,,,
;住居について,0,0,0,0,1,b,,,,
;自分について,0,1,1,1,1,b,,,5,
;好きな物,1,1,1,0,1,a,,,,

*tukihajime
;◆月始めのみ：便箋追加
[if exp="f.tukihajime != 1"]
@jump target=*fumi_hyouji
[else]
;【便箋追加】（↓可能なら文字色変更表示）
[iscript]
f.binsen_hairetsu_number=f.binsen_list_hairetsu.length;
f.binsen_hairetsu_number_a=f.binsen_hairetsu_number;
f.binsen_hairetsu_number_b=f.binsen_hairetsu_number+1;
f.binsen_hairetsu_number_c=f.binsen_hairetsu_number+2;
if(f.okeiko_month==5){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("レンガ街の風景画",0,0,2,0,1,"","");
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("新緑の模様",1,0,0,-2,0,5,6);
}
if(f.okeiko_month==6){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("黒無地",-1,-1,0,1,0,"","");
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("紫陽花の模様",1,0,0,-2,0,6,7);
}
if(f.okeiko_month==7){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("夏雲の模様",0,0,2,0,1,"",7);
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("清流に鮎の模様",1,0,0,-2,0,7,8);
}
if(f.okeiko_month==8){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("ラムネ瓶の模様",0,0,2,0,1,"",8);
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("向日葵の模様",1,0,0,-2,0,7,8);
}
if(f.okeiko_month==9){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("お月見の模様",1,2,1,-2,2,"",9);
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("葡萄の模様",1,0,0,-2,0,9,10);
}
if(f.okeiko_month==10){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("曼珠沙華の模様",0,0,0,2,0,10,11);
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("紅葉の模様",2,1,1,1,1,10,11);
}
if(f.okeiko_month==11){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("柿の模様",2,0,1,-2,1,11,12);
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("どんぐりの模様",1,0,0,-2,0,11,12);
}
if(f.okeiko_month==12){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("雪の模様",0,0,2,0,1,12,1);
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("蜜柑の模様",1,0,0,-2,0,12,1);
}
if(f.okeiko_month==1){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("餅つきの画",1,1,2,-1,1,"",1);
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("凧の模様",1,1,2,-2,1,"",1);
}
if(f.okeiko_month==2){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("豆撒きの風景画",0,0,2,0,1,"",2);
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("蕗のとうの模様",1,0,0,-2,0,2,3);
}
if(f.okeiko_month==3){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("雛飾りの模様",0,0,2,0,1,"",3);
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("うぐいすの模様",1,0,0,-2,0,3,4);
}
f.binsen_toutyaku_info1="「"+f.binsen_list_hairetsu[f.binsen_hairetsu_number_a][0]+"」「"+f.binsen_list_hairetsu[f.binsen_hairetsu_number_b][0]+"」";
f.binsen_toutyaku_info2="の便箋が選べるようになりました";
[endscript]
	[cm]
	[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]
	[wait time=10]
;主人公L登場時被せ
	[image name="junbi_girl" layer=29 storage="girl/L/gitl_L_all_futuu.png" left=50 top=220 time=300 visible=true]
	[wait time=10]
	[chara_mod name="A_base" storage="girl/L/base.png" time=0]
	[wait time=10]
	[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
	[wait time=10]
[wait time=200]
[iscript]
$('.junbi_girl').remove();
[endscript]
	[layopt layer=26 visible=true]
	[layopt layer=27 visible=true]
	[image layer=26 x=250 y=120 storage="button/frame_lesson_message.png"]
		[ptext text=&f.binsen_toutyaku_info1 layer=27 size=21 x=290 y=150 color=darkslateblue bold=bold]
		[ptext text=&f.binsen_toutyaku_info2 layer=27 size=21 x=290 y=185 color=darkslateblue bold=bold]
;【SE】キラキラ
[playse storage=kira.ogg loop=false ]
	[p]
	[freeimage layer = 26]
	[freeimage layer = 27]
[endif]
@jump target=*fumi_hyouji

;青葉の模様,1,0,0,-2,0,,

*fumi_hyouji
;◆手紙到着していたら表示
[if exp="f.fumi_toutyaku == 0"]
	[eval exp="f.tukihajime = 0"]
	@jump target=*draw_fukidasi
[endif]
[skipstop]
[if exp="f.tukihajime!=1"]
	[cm]
	[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]
	[wait time=10]
	[layopt layer=29 visible=true]
;主人公L登場時被せ
	[image name="junbi_girl" layer=29 storage="girl/L/gitl_L_all_futuu.png" left=50 top=220 time=300 visible=true]
	[wait time=10]
	[chara_mod name="A_base" storage="girl/L/base.png" time=0]
	[wait time=10]
	[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
	[wait time=10]
[wait time=200]
[iscript]
$('.junbi_girl').remove();
[endscript]
[endif]
[layopt layer=26 visible=true]
[layopt layer=27 visible=true]
[image layer=26 x=250 y=120 storage="button/frame_lesson_message.png"]
[wait time=10]

[if exp="f.fumi_toutyaku_oaite.length>1"]
	[eval exp="f.fumi_toutyaku_info1=f.fumi_toutyaku_oaite"]
	[eval exp="f.fumi_toutyaku_info2='からお手紙が届いております'"]
	[ptext text=&f.fumi_toutyaku_info1 layer=27 size=21 x=290 y=150 color=darkslateblue bold=bold]
[wait time=10]
	[ptext text=&f.fumi_toutyaku_info2 layer=27 size=21 x=290 y=185 color=darkslateblue bold=bold]
[wait time=10]
;【SE】キラキラ
[playse storage=kira.ogg loop=false ]
[else]
	[ptext text=&f.fumi_toutyaku_info layer=27 size=21 x=290 y=165 color=darkslateblue bold=bold]
[wait time=10]
;【SE】キラキラ
[playse storage=kira.ogg loop=false ]
[endif]
[p]
[freeimage layer = 26]
[wait time=10]
[freeimage layer = 27]
[wait time=10]
[eval exp="f.tukihajime = 0"]
[eval exp="f.fumi_toutyaku = 0"]
[eval exp="f.fumi_toutyaku_oaite=[]"]
@jump target=*draw_fukidasi


*draw_fukidasi

;主人公画像表示【マクロでフリーズしやすいのでchara_modで切り替え】
;主人公L登場時被せ
	[image name="junbi_girl" layer=29 storage="girl/L/gitl_L_all_futuu.png" left=50 top=220 time=300 visible=true]
	[wait time=10]
	[chara_mod name="A_base" storage="girl/L/base.png" time=0]
	[wait time=10]
	[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
	[wait time=10]
[wait time=200]
[iscript]
$('.junbi_girl').remove();
[endscript]

[if exp="f.fumi_toutyaku != 0"]
@jump target=*fumi_hyouji
[endif]
[cm]

[if exp="tf.test_gamen_sijyou==true"]
@jump storage="01_sijyou_test_hyouji.ks" target=*start
[endif]

*sijyou_test_hyouji_owari
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
;メッセージレイヤサイズをお稽古フキダシ窓用に設定変更
[position left=360 width=500 height=170 top=250 page=fore margint="50"]

;【システム表示】フキダシ枠【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
;[chara_show left=300 top=220 layer=23 name="sys_fukidasi" time=100]
[chara_mod name="sys_fukidasi" storage="button/frame_lesson_fukidasi.png" time=0]
[wait time=10]

[if exp="f.para_shujinkou_tairyoku_now < 1 || f.para_shujinkou_kiryoku_now < 1"]
[chara_mod name="A_base" storage="girl/L/base.png" time=0]
[wait time=10]
[chara_mod name="A_mayu" storage="girl/L/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
[wait time=10]
[font size=25]
そろそろ休憩したいです……
[eval exp="f.okeikopart_serifu_okeiko_owari=0"]
[elsif exp="f.okeikopart_serifu_okeiko_owari==1"]
[chara_mod name="A_base" storage="girl/L/base.png" time=0]
[wait time=10]
[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
[wait time=10]
	[chara_mod name="girl_base" storage="toumei.gif" time=0]
	[wait time=10]
	[chara_mod name="girl_mayu" storage="toumei.gif" time=0]
	[wait time=10]
	[chara_mod name="girl_me" storage="toumei.gif" time=0]
	[wait time=10]
	[chara_mod name="girl_kuti" storage="toumei.gif" time=0]
	[wait time=10]
	[chara_mod name="girl_emo" storage="toumei.gif" time=0]
	[wait time=10]

[font size=25]
お稽古が終わりました。[r]
他にも何かしましょうか？
[eval exp="f.okeikopart_serifu_okeiko_owari=0"]
[elsif exp="f.okeikopart_shuuhajime==1"]
[chara_mod name="A_base" storage="girl/L/base.png" time=0]
[wait time=10]
[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
[wait time=10]
;[emb exp="f.test"][r]
;f.kuroda_fumi_toutyakumachi_kazoku =[emb exp="f.kuroda_fumi_toutyakumachi_kazoku"][r]
;[font size=15]
;f.fumi_hairetsu1=[emb exp="f.fumi_hairetsu1"]、f.fumi_hairetsu2=[emb exp="f.fumi_hairetsu2"][r]
;0=[emb exp="f.hensin_list_hairetsu[0]"],
;1=[emb exp="f.hensin_list_hairetsu[1]"][r]
;2=[emb exp="f.hensin_list_hairetsu[2]"],
;3=[emb exp="f.hensin_list_hairetsu[3]"][r]
[font size=0][emb exp="f.okeiko_month"]月[emb exp="f.okeiko_week"]週：[font size=25]今週は何をしましょうか？
[eval exp="f.okeikopart_shuuhajime=0"]
[else]
[chara_mod name="A_base" storage="girl/L/base.png" time=0]
[wait time=10]
[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
[wait time=10]
[font size=25]
他にも何かしましょうか？
[endif]
;[return]
[if exp="tf.test_gamen==true"]
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="200" x=750 y=0 color=white]
[endif]
[s]

;[endreplay] 

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


;主人公登場時の画像被せ処理に◆B4nFWraU42さん作スクリプトを使用しました。ありがとうございます。
;=============================================
;お稽古パート 各お稽古ボタンを押した時の処理
;=============================================
*start

;◆お稽古機能
*okeiko_sadou
[clearfix]
[clearstack]
[freeimage layer = 26]
[freeimage layer = 27]
[cm]
[eval exp="f.okeiko_kamoku='sadou'"]
[eval exp="f.okeiko_kamoku_j='茶道'"]
[call target="*okeiko_shori"]
@jump storage="okeiko_hyouji.ks" target=*draw_button_system
[s]

*okeiko_kadou
[clearfix]
[clearstack]
[freeimage layer = 26]
[freeimage layer = 27]
[cm]
[eval exp="f.okeiko_kamoku='kadou'"]
[eval exp="f.okeiko_kamoku_j='華道'"]
[call target="*okeiko_shori"]
@jump storage="okeiko_hyouji.ks" target=*draw_button_system
[s]

*okeiko_reihou
[clearfix]
[clearstack]
[freeimage layer = 26]
[freeimage layer = 27]
[cm]
[eval exp="f.okeiko_kamoku='reihou'"]
[eval exp="f.okeiko_kamoku_j='礼法'"]
[call target="*okeiko_shori"]
@jump storage="okeiko_hyouji.ks" target=*draw_button_system
[s]

*okeiko_gogaku
[clearfix]
[clearstack]
[freeimage layer = 26]
[freeimage layer = 27]
[cm]
[eval exp="f.okeiko_kamoku='gogaku'"]
[eval exp="f.okeiko_kamoku_j='語学'"]
[call target="*okeiko_shori"]
@jump storage="okeiko_hyouji.ks" target=*draw_button_system
[s]

*okeiko_koto
[clearfix]
[clearstack]
[freeimage layer = 26]
[freeimage layer = 27]
[cm]
[eval exp="f.okeiko_kamoku='koto'"]
[eval exp="f.okeiko_kamoku_j='お箏'"]
[call target="*okeiko_shori"]
;藤枝ルート11月4週かつ文矢手紙後の主人公のセリフを見た状態でお箏の練習をした場合の変数処理
[if exp="(f.okeiko_month == 11 && f.okeiko_week == 4) && f.fumi_fumiya_11_4 == 2 && f.hujieda_au == 1"]
	[eval exp="f.fumi_fumiya_11_4 = 3"]
[endif]
@jump storage="okeiko_hyouji.ks" target=*draw_button_system
[s]

*okeiko_shori
[if exp="(f.para_shujinkou_tairyoku_now < f.okeiko_hituyou_tairyoku) || (f.para_shujinkou_kiryoku_now < f.okeiko_hituyou_kiryoku)"]
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
[wait time=10]
[layopt layer=26 visible=true]
[freeimage layer = 27]
[wait time=10]
[layopt layer=27 visible=true]
[image layer=26 x=250 y=20 storage="button/frame_lesson_message.png"]
[wait time=10]
[image layer=26 x=334 y=155 storage=&f.okeiko_image]
[wait time=10]
[ptext text="……　お稽古中　……" layer=27 size=23 x=370 y=65 color=darkslateblue bold=bold]
[wait time=500]

[eval exp="f.okeikopart_serifu_okeiko_owari=1"]

[iscript]
//↓淑女度上昇値(ランダムで1～2)
f.okeiko_para_pre_random_1_2=Math.floor(Math.random() * 2) + 1;
//↓各お稽古科目熟練度。調整中です(ランダムで1～3)
f.okeiko_para_pre_random_jukurendo=Math.floor(Math.random() * 3)+ 1;
//↓茶道他お稽古での気力・体力上昇値(ランダムで1～3)
f.okeiko_para_pre_random_1_3=Math.floor(Math.random() * 3) + 1;
//↓お箏の時のみ気力又は体力どちらかが上昇する(0=体力、1=気力)当初両方上昇案で実装しましたが、よりシンプルに変更
f.okeiko_para_0tairyoku_1kiryoku=Math.floor(Math.random() * 2);
//↓以下各パラメーター処理
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
	if(f.okeiko_kamoku=='sadou'){
		if(f.para_shujinkou_j_sadou >= (f.para_shujinkou_jukuren_max - 3)){f.okeiko_para_pre_random_jukurendo = 1;}
		if(f.para_shujinkou_j_sadou >= f.para_shujinkou_jukuren_max){f.okeiko_para_pre_random_jukurendo = 0;}
		f.para_shujinkou_j_sadou = f.para_shujinkou_j_sadou + f.okeiko_para_pre_random_jukurendo;
		f.para_shujinkou_sadou_kaisuu_all = f.para_shujinkou_sadou_kaisuu_all + 1; //茶道の練習回数(累計)に1加算
	}
	if(f.okeiko_kamoku=='reihou'){
		if(f.para_shujinkou_j_reihou >= (f.para_shujinkou_jukuren_max - 3)){f.okeiko_para_pre_random_jukurendo = 1;}
		if(f.para_shujinkou_j_reihou >= f.para_shujinkou_jukuren_max){f.okeiko_para_pre_random_jukurendo = 0;}
		f.para_shujinkou_j_reihou = f.para_shujinkou_j_reihou + f.okeiko_para_pre_random_jukurendo;
		f.para_shujinkou_reihou_kaisuu_all = f.para_shujinkou_reihou_kaisuu_all + 1; //礼法の練習回数(累計)に1加算
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
	if(f.okeiko_kamoku=='kadou'){
		if(f.para_shujinkou_j_kadou >= (f.para_shujinkou_jukuren_max - 3)){f.okeiko_para_pre_random_jukurendo = 1;}
		if(f.para_shujinkou_j_kadou >= f.para_shujinkou_jukuren_max ){f.okeiko_para_pre_random_jukurendo = 0;}
		f.para_shujinkou_j_kadou = f.para_shujinkou_j_kadou + f.okeiko_para_pre_random_jukurendo;
		f.para_shujinkou_kadou_kaisuu_all = f.para_shujinkou_kadou_kaisuu_all + 1; //華道の練習回数(累計)に1加算
	}
	if(f.okeiko_kamoku=='gogaku'){
		if(f.para_shujinkou_j_gogaku >= (f.para_shujinkou_jukuren_max - 3)){f.okeiko_para_pre_random_jukurendo = 1;}
		if(f.para_shujinkou_j_gogaku >= f.para_shujinkou_jukuren_max){f.okeiko_para_pre_random_jukurendo = 0;}
		f.para_shujinkou_j_gogaku = f.para_shujinkou_j_gogaku + f.okeiko_para_pre_random_jukurendo;
		f.para_shujinkou_gogaku_kaisuu_all = f.para_shujinkou_gogaku_kaisuu_all + 1; //語学の練習回数(累計)に1加算
	}
}
//箏…体力、気力どちらかがランダムで上がる
if(f.okeiko_kamoku=='koto' && f.okeiko_para_0tairyoku_1kiryoku==0){
	if(f.para_shujinkou_tairyoku_max > 96){
		f.okeiko_para_pre_random_1_3 = 1;
		if(f.para_shujinkou_tairyoku_max > 99){
			f.okeiko_para_pre_random_1_3 = 0;
		}
		f.para_shujinkou_tairyoku_max=f.para_shujinkou_tairyoku_max+f.okeiko_para_pre_random_1_3;
	}else if(f.para_shujinkou_tairyoku_max < 97){
		f.para_shujinkou_tairyoku_max=f.para_shujinkou_tairyoku_max+f.okeiko_para_pre_random_1_3;
	}
	if(f.para_shujinkou_j_koto >= (f.para_shujinkou_jukuren_max - 3)){f.okeiko_para_pre_random_jukurendo = 1;}
	if(f.para_shujinkou_j_koto >= f.para_shujinkou_jukuren_max){f.okeiko_para_pre_random_jukurendo = 0;}
	f.para_shujinkou_j_koto = f.para_shujinkou_j_koto + f.okeiko_para_pre_random_jukurendo;
	f.para_shujinkou_koto_kaisuu = f.para_shujinkou_koto_kaisuu + 1; //お箏の練習回数/月に1加算
	f.para_shujinkou_koto_kaisuu_all = f.para_shujinkou_koto_kaisuu_all + 1; //お箏の練習回数(累計)に1加算
}
if(f.okeiko_kamoku=='koto' && f.okeiko_para_0tairyoku_1kiryoku==1){
	if(f.para_shujinkou_kiryoku_max > 96){
		f.okeiko_para_pre_random_1_3 = 1;
		if(f.para_shujinkou_kiryoku_max > 99){
			f.okeiko_para_pre_random_1_3 = 0;
		}
		f.para_shujinkou_kiryoku_max=f.para_shujinkou_kiryoku_max+f.okeiko_para_pre_random_1_3;
	}else if(f.para_shujinkou_kiryoku_max < 97){
		f.para_shujinkou_kiryoku_max=f.para_shujinkou_kiryoku_max+f.okeiko_para_pre_random_1_3;
	}
	if(f.para_shujinkou_j_koto >= (f.para_shujinkou_jukuren_max - 3)){f.okeiko_para_pre_random_jukurendo = 1;}
	if(f.para_shujinkou_j_koto >= f.para_shujinkou_jukuren_max){f.okeiko_para_pre_random_jukurendo = 0;}
	f.para_shujinkou_j_koto = f.para_shujinkou_j_koto + f.okeiko_para_pre_random_jukurendo;
	f.para_shujinkou_koto_kaisuu = f.para_shujinkou_koto_kaisuu + 1; //お箏の練習回数/月に1加算
	f.para_shujinkou_koto_kaisuu_all = f.para_shujinkou_koto_kaisuu_all + 1; //お箏の練習回数(累計)に1加算
}

f.para_shujinkou_tairyoku_now = f.para_shujinkou_tairyoku_now - f.okeiko_hituyou_tairyoku;
f.para_shujinkou_kiryoku_now = f.para_shujinkou_kiryoku_now - f.okeiko_hituyou_kiryoku;
//↓以下表示内容処理
if(f.okeiko_para_pre_random_1_3==0){
	f.okeiko_seika_txt1='淑女度が'+f.okeiko_para_pre_random_1_2+'上がりました';
	f.okeiko_seika_txt2=f.okeiko_kamoku_j+'の熟練度が'+f.okeiko_para_pre_random_jukurendo+'上がりました';
}else{
	if(f.okeiko_kamoku=='sadou' || f.okeiko_kamoku=='reihou'){
		f.okeiko_seika_txt1='淑女度が'+f.okeiko_para_pre_random_1_2+'、体力最大値が'+f.okeiko_para_pre_random_1_3;
		if(f.okeiko_para_pre_random_jukurendo > 0){
			f.okeiko_seika_txt2=f.okeiko_kamoku_j+'の熟練度が'+f.okeiko_para_pre_random_jukurendo+'上がりました';
		}else{ f.okeiko_seika_txt2='上がりました'; }
	}
	if(f.okeiko_kamoku=='kadou' || f.okeiko_kamoku=='gogaku'){
		f.okeiko_seika_txt1='淑女度が'+f.okeiko_para_pre_random_1_2+'、気力最大値が'+f.okeiko_para_pre_random_1_3;
		if(f.okeiko_para_pre_random_jukurendo > 0){
			f.okeiko_seika_txt2=f.okeiko_kamoku_j+'の熟練度が'+f.okeiko_para_pre_random_jukurendo+'上がりました';
		}else{ f.okeiko_seika_txt2='上がりました'; }
	}
	//↓箏
	if(f.okeiko_kamoku=='koto' && f.okeiko_para_0tairyoku_1kiryoku==0){
		f.okeiko_seika_txt1='淑女度が'+f.okeiko_para_pre_random_1_2+'、体力最大値が'+f.okeiko_para_pre_random_1_3;
		if(f.okeiko_para_pre_random_jukurendo > 0){
			f.okeiko_seika_txt2=f.okeiko_kamoku_j+'の熟練度が'+f.okeiko_para_pre_random_jukurendo+'上がりました';
		}else{ f.okeiko_seika_txt2='上がりました'; }
	}
	if(f.okeiko_kamoku=='koto' && f.okeiko_para_0tairyoku_1kiryoku==1){
		f.okeiko_seika_txt1='淑女度が'+f.okeiko_para_pre_random_1_2+'、気力最大値が'+f.okeiko_para_pre_random_1_3;
		if(f.okeiko_para_pre_random_jukurendo > 0){
			f.okeiko_seika_txt2=f.okeiko_kamoku_j+'の熟練度が'+f.okeiko_para_pre_random_jukurendo+'上がりました';
		}else{ f.okeiko_seika_txt2='上がりました'; }
	}
}

[endscript]
[freeimage layer = 27]
[ptext text=&f.okeiko_seika_txt1 layer=27 size=23 x=300 y=55 color=darkslateblue bold=bold]
[ptext text=&f.okeiko_seika_txt2 layer=27 size=23 x=300 y=85 color=darkslateblue bold=bold]
;【SE】キラキラ
[playse storage=kira.ogg loop=false ]
[wait time=2000]


;◆お稽古終わり。イメージ画像を消す
[freeimage layer = 26]
[wait time=10]
[freeimage layer = 27]
[wait time=10]

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

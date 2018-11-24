*sansaku_machi_seika
[iscript]
f.okeiko_para_pre_random_1_3=Math.floor(Math.random() * 3 + 1);
if(f.para_shujinkou_tairyoku_now < 2){
	f.okeiko_para_pre_random_1_3 = 1;
}else if(f.para_shujinkou_tairyoku_now < 3){
	f.okeiko_para_pre_random_1_3 = Math.floor(Math.random() * 2 + 1);
}

f.para_shujinkou_tairyoku_now = f.para_shujinkou_tairyoku_now - f.okeiko_para_pre_random_1_3;

f.okeiko_para_pre_random_1_3_kiryoku = f.okeiko_para_pre_random_1_3;
if(f.para_shujinkou_kiryoku_now == f.para_shujinkou_kiryoku_max){
	f.okeiko_para_pre_random_1_3_kiryoku = 0;
}
if(f.para_shujinkou_kiryoku_max - f.para_shujinkou_kiryoku_now == 2){
	if(f.okeiko_para_pre_random_1_3_kiryoku > 2){
	f.okeiko_para_pre_random_1_3_kiryoku = 2;
	}
}
if(f.para_shujinkou_kiryoku_max - f.para_shujinkou_kiryoku_now == 1){
	if(f.okeiko_para_pre_random_1_3_kiryoku > 1){
	f.okeiko_para_pre_random_1_3_kiryoku = 1;
	}
}
f.para_shujinkou_kiryoku_now = f.para_shujinkou_kiryoku_now + f.okeiko_para_pre_random_1_3_kiryoku;
if(f.okeiko_para_pre_random_1_3==3){
f.para_shujinkou_sansaku_comment_tairyoku = "たくさん歩き回って疲れたけれど、";
}
if(f.okeiko_para_pre_random_1_3==2){
f.para_shujinkou_sansaku_comment_tairyoku = "色々見て楽しかった、";
}
if(f.okeiko_para_pre_random_1_3==1){
f.para_shujinkou_sansaku_comment_tairyoku = "お散歩は少しだったけれど、";
}
if(f.okeiko_para_pre_random_1_3_kiryoku==3){
f.para_shujinkou_sansaku_comment_kiryoku = "とても良い気分転換になったわ。";
}
if(f.okeiko_para_pre_random_1_3_kiryoku==2){
f.para_shujinkou_sansaku_comment_kiryoku = "外の空気は心地よかったわ。";
}
if(f.okeiko_para_pre_random_1_3_kiryoku==1){
f.para_shujinkou_sansaku_comment_kiryoku = "気分がさっぱりしたわ。";
}
if(f.okeiko_para_pre_random_1_3_kiryoku==0){
f.para_shujinkou_sansaku_comment_kiryoku = "気力は充実しているわ。";
}

[endscript]
[if exp="f.okeiko_para_pre_random_1_3_kiryoku==3"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau.png" time=0]
[wait time=10]
[elsif exp="f.okeiko_para_pre_random_1_3_kiryoku==2"]
[主人公ほほえみ]
[else]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そろそろ家に戻りましょう。[r]
[sp][emb exp="f.para_shujinkou_sansaku_comment_tairyoku"][emb exp="f.para_shujinkou_sansaku_comment_kiryoku"]」
[wait time=10]
[layopt layer=26 visible=true]
[wait time=10]
[layopt layer=27 visible=true]
[wait time=10]
[image layer=26 x=250 y=40 storage="button/frame_lesson_message.png"]
[wait time=10]
[eval exp="f.sansaku_machi_seika_txt='体力が'+f.okeiko_para_pre_random_1_3+'下がり、気力が'+f.okeiko_para_pre_random_1_3_kiryoku+'上がりました'"]
[ptext text=&f.sansaku_machi_seika_txt layer=26 size=21 x=310 y=85 color=darkslateblue bold=bold]
[wait time=10]
;【SE】キラキラ
[playse storage=kira.ogg loop=false ]
;[ptext text=&f.sansaku_machi_seika_txt layer=27 size=21 x=250 y=490 color=darkslateblue bold=bold]

[p]
[freeimage layer = 26]
[wait time=10]

;散策　終
*sansaku_owari
[if exp="tf.test_kuroda == true"]
	[イベントシーン終了]
	[イベントシーン終了２]
	@jump storage="01_jsYiJcqRkk_test.ks"
[endif]
[skipstop]
#
[freeimage layer = 26]
[wait time=10]
[freeimage layer = 27]
[wait time=10]
[主人公退場]
[wait time=10]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif"]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]

;◆イベントコンプリートチェック
[cm]
[call storage="eventpercent_sijyou.ks" target=*start]
[wait time=50]
[call storage="eventpercent_zaizen.ks" target=*start]
[wait time=50]
[call storage="eventpercent_kuroda.ks" target=*start]
[wait time=50]
[call storage="eventpercent_katuraginomiya.ks" target=*start]
[wait time=50]
[call storage="eventpercent_hujieda.ks" target=*start]
[wait time=50]
;test
;【背景】
[bg wait=true method='crossfade' storage="../fgimage/bg/plane_sakura.jpg" time=1000]
[wait time=500]
;◆スキップ状態の時はスキップを解除
[eval exp="f.skip=this.kag.stat.is_skip"]
[if exp="f.skip == true"]
	[cancelskip]
	[eval exp="f.skip = false"]
[endif]
	@layopt layer=29 visible=true
	[wait time=10]
	@layopt layer=message0 visible=true
	[position width=700 height=620 top=0 left=150 page=fore margint="40" opacity=0]
	[wait time=10]
	[whosay name=""]
	[font size=20]
	[wait time=10]
;◆各キャラ100%時
[if exp="(sf.badge_sijyou != 2 && sf.sijyou_clearlist_complete == 1) || (sf.badge_kuroda != 2 && sf.kuroda_clearlist_complete == 1) || (sf.badge_zaizen != 2 && sf.zaizen_clearlist_complete == 1) || (sf.badge_katuraginomiya != 2 && sf.katuraginomiya_clearlist_complete == 1) || (sf.badge_hujieda != 2 && sf.hujieda_clearlist_complete == 1)"]
	[eval exp="f.badge_from = 'sansaku'"]
	@jump storage="common_badge.ks" target=*get_badge
[endif]

;◆コンプリート達成時
[if exp="sf.badge_comp != 1 && sf.sijyou_clearlist_complete == 1 && sf.kuroda_clearlist_complete == 1 && sf.zaizen_clearlist_complete == 1 && sf.katuraginomiya_clearlist_complete == 1 && sf.hujieda_clearlist_complete == 1"]
	[eval exp="f.badge_from = 'sansaku'"]
	@jump storage="common_badge.ks" target=*get_badge
[endif]

*after_complete_check

;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false
[clearfix]
[cm]
[freeimage layer = 26]
[wait time=10]

;◆主人公立ち絵とフキダシを戻す
[chara_mod name="A_base" storage="girl/L/base.png" time=0]
[wait time=10]
[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
[wait time=10]
[stopbgm ]
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[wait time=10]
;背景変更:主人公邸_お稽古部屋
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_okeiko_main.jpg" time=10]
[wait time=10]


@jump storage="okeiko.ks" target=*draw_button_system
[s]

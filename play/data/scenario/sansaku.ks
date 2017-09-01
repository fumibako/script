*start
*sansaku
@layopt layer=message1 page=fore visible = false
@layopt layer=message0 visible=true
[current layer="message0"]
[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer=1]
[wait time=10]

[if exp="f.para_shujinkou_tairyoku_now < 1"]
[chara_mod name="A_mayu" storage="girl/L/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_toji.png" time=0]
[wait time=10]
[cm]
[font size=25]
今は疲れすぎて[r]
できないわ……[r]
[font size=20 color=rosybrown]
(必要体力1以上)[p]
[wait time=10]
@jump storage=sansaku.ks target=*sansaku_owari
[s]
[endif]

[if exp="f.hujieda_au == 1 && (f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || (f.okeiko_month == 2 && (f.okeiko_week == 1 || f.okeiko_week == 2)))"]
[chara_mod name="A_mayu" storage="girl/L/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_toji.png" time=0]
[wait time=10]
[cm]
[font size=25]
一人での外出は[r]
禁止されてしまったわ……[p]
[wait time=10]
@jump storage=sansaku.ks target=*sansaku_owari
[s]
[endif]

[clearfix]
[cm]
[freeimage layer = 21]
[freeimage layer = 22]
[freeimage layer = 24]
[stopbgm ]

;=============================================
;散策
;散策機能はokeiko.ksからcallで呼び出されるため、この中で重複callはできないはずだけど、callスタックを消してみる↓
;=============================================
[iscript]
TG.stat.stack["call"] = [];
[endscript]
;↓磯野のアドバイスイベント終了前に散策ボタンを押した際、主人公セリフを表示するためのフラグ(アドバイスイベント終了フラグ)
[eval exp="f.event_advice = 1"]
;-----設定タグここから-----
[if exp="sf.BGM=='OFF'"]
[iscript]
/*BGMを再生しない*/
TG.stat.play_bgm = false;
[endscript]
;ロード時点で再生していたBGMを停止します。
[stopbgm ]
[else]
[iscript]
/*BGMを再生する*/
TG.stat.play_bgm = true;
[endscript]
[endif]

[if exp="sf.SE=='OFF'"]
[iscript]
/*効果音を再生しない*/
TG.stat.play_se = false;
[endscript]
;ロード時点で再生していたSEを停止します。
[stopse ]
[else]
[iscript]
/*効果音を再生する*/
TG.stat.play_se = true;
[endscript]
[endif]
;-----設定タグここまで-----

[freeimage layer = 24]

;◆散策中はフキダシを透明化
[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]
[wait time=10]
;◆散策中は主人公立ち絵（L）を透明化
[chara_mod name="A_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="A_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="A_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="toumei.gif" time=0]
[wait time=10]

[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]

*sansaku_machi

;=============================================
;◆◆散策機能_イベント発生判定開始
;=============================================
*sansaku_machi_event_hantei
;=============================================
;「他の散策イベント非表示時」は共通散策イベントの該当部分※のみチェック
;※(話題関係散策イベント新規分、「手紙」の散策イベント)
[if exp="tf.event_sansaku_hyouji == 0"]
@jump target=*sansaku_hantei_common
[endif]
;=============================================
;◆各個別ルート(又はonly時)には対象キャラクターイベント判定と共通ルート判定のみ行う
;=============================================
[if exp="f.zaizen_au == 1"]
@jump target=*zaizen_event_hantei
[endif]
[if exp="f.sijyou_au == 1"]
@jump target=*sijyou_event_hantei
[endif]
[if exp="f.katuraginomiya_au == 1 || f.katuraginomiya_only == 1"]
@jump target=*katuraginomiya_event_hantei
[endif]
[if exp="f.hujieda_au == 1"]
@jump target=*hujieda_event_hantei
[endif]

;=============================================
;重要イベント判定(共通イベントよりも優先して発生させたいイベントはこちらに記載します
;=============================================
;◆黒田イベント2判定【麦】(判定部分はevent_hantei_week_hajime.ksに移動しました)

;◆共通イベント1判定【友人に会う】4月1週～6月4週、期間中に町へ行くと1度だけ発生
[if exp="(f.okeiko_month == 4 || f.okeiko_month == 5 || f.okeiko_month == 6) && f.event_machi_common[1] == 0"]
	@jump storage="sansaku_common.ks" target=*sansaku_machi_common_01
[endif]

;=============================================
;◆四条イベント判定
;=============================================
*sijyou_event_hantei
@jump storage="01_sijyou_event_hantei_sansaku.ks" target=*start
*sijyou_event_hantei_owari
[if exp="f.sijyou_au == 1"]
@jump target=*event_hantei_owari
[endif]

;=============================================
;◆財前イベント判定
;=============================================
*zaizen_event_hantei
;◆財前イベント判定【バザー】財前ルートかつ2月1週から3月4週、礼法が70(暫定)以上で期間中に町へ行くと1度だけ発生
[if exp="(f.okeiko_month==2 || f.okeiko_month==3) && f.event_machi_zaizen[1]==0 && f.para_shujinkou_j_reihou >= 70 && f.zaizen_au==1"]
	[eval exp="f.event_machi_zaizen[1]=1"]
	@jump storage="zaizen/zaizen_bazaar.ks"
[endif]
*zaizen_event_hantei_owari
[if exp="f.zaizen_au == 1"]
@jump target=*event_hantei_owari
[endif]

;=============================================
;◆葛城宮イベント判定
;=============================================
*katuraginomiya_event_hantei
;◆葛城宮イベント判定【散策1】葛城宮ルート2月2週から3月3週期間中に散策で1度だけ発生(散策2へ続く物語となるため元案の3月4週までではなく3月3週までに変更しました)
[if exp="((f.okeiko_month==2 && f.okeiko_week!=1) || (f.okeiko_month==3 && f.okeiko_week!=4)) && f.event_machi_katuraginomiya[1]==0 && f.katuraginomiya_au==1"]
	[eval exp="f.event_machi_katuraginomiya[1]=1"]
	@jump storage="katuraginomiya/katuraginomiya_sansaku1.ks"
[endif]

;◆葛城宮イベント判定【散策2】葛城宮ルートで散策1を見ている状態で2月2週から3月4週期間中に散策をすると、1度だけ発生。判定順から散策1が先に発生すると思いますが、念のためf.event_machi_katuraginomiya[1]==1 を条件に加えます
[if exp="((f.okeiko_month==2 && f.okeiko_week!=1) || f.okeiko_month==3) && f.event_machi_katuraginomiya[1]==1 && f.event_machi_katuraginomiya[2]==0 && f.katuraginomiya_au==1"]
	[eval exp="f.event_machi_katuraginomiya[2]=1"]
	[eval exp="f.katuraginomiya_fumi_inou = 3"]
	@jump storage="katuraginomiya/katuraginomiya_sansaku2.ks"
[endif]
*katuraginomiya_event_hantei_owari
[if exp="f.katuraginomiya_au == 1 || f.katuraginomiya_only == 1"]
@jump target=*event_hantei_owari
[endif]

;=============================================
;◆藤枝イベント判定
;=============================================
*hujieda_event_hantei
;◆藤枝イベント判定【藤枝晶子さん(藤枝お姉さん)と話す】藤枝ルートかつ2月3週から3月4週期間中に町へ行くと1度だけ発生
[if exp="((f.okeiko_month==2 && (f.okeiko_week==3 || f.okeiko_week==4)) || f.okeiko_month==3) && f.event_machi_hujieda[1]==0 && f.hujieda_au==1"]
	[eval exp="f.event_machi_hujieda[1]=1"]
	@jump storage="hujieda/hujieda_sansaku1.ks"
[endif]
*hujieda_event_hantei_owari
[if exp="f.hujieda_au == 1"]
@jump target=*event_hantei_owari
[endif]

;=============================================
;◆黒田イベント判定
;=============================================
*kuroda_event_hantei
;◆黒田イベント3判定【黒田家のうわさ１】7月1週～4週、期間中に町へ行くと黒田好感度一定値以上で1度だけ発生
[if exp="f.okeiko_month==7 && f.event_machi_kuroda[3]==0 && f.para_kuroda_koukando > 10"]
	@jump storage="sansaku_kuroda.ks" target=*sansaku_machi_kuroda_03
[endif]

;◆黒田イベント4判定【黒田家のうわさ２】7月2週～4週、期間中に町へ行くと黒田好感度一定値以上かつ「黒田家のうわさ１」フラグONの場合に1度だけ発生
[if exp="(f.okeiko_month==7 && (f.okeiko_week==2 || f.okeiko_week==3 || f.okeiko_week==4)) && f.event_machi_kuroda[3]==1 && f.event_machi_kuroda[4]==0 && f.para_kuroda_koukando > 15"]
	@jump storage="sansaku_kuroda.ks" target=*sansaku_machi_kuroda_04
[endif]

;◆黒田イベント5判定【友人に忠告される】8月1週～4週、期間中に町へ行くと黒田好感度一定値以上かつ「黒田家のうわさ１」フラグONの場合に1度だけ発生
[if exp="f.okeiko_month==8 && f.event_machi_kuroda[3]==1 && f.event_machi_kuroda[5]==0 && f.para_kuroda_koukando > 20"]
	@jump storage="sansaku_kuroda.ks" target=*sansaku_machi_kuroda_05
[endif]

;◆黒田イベント6判定【友人と会う（落ち込み時）】12月1週～2週、期間中に町へ行くと1度だけ発生
[if exp="(f.okeiko_month==12 && (f.okeiko_week==1 || f.okeiko_week==2)) && f.event_machi_kuroda[6]==0 && f.kuroda_au==1"]
	@jump storage="sansaku_kuroda.ks" target=*sansaku_machi_kuroda_06
[endif]

*kuroda_event_hantei_owari
[if exp="f.kuroda_au == 1"]
@jump target=*event_hantei_owari
[endif]

;=============================================
;◆攻略対象固有イベント判定終わり
;=============================================
*event_hantei_owari

;=============================================
;◆共通イベント判定
;=============================================
*sansaku_hantei_common
;=============================================
;◆各ルート問題発生時に共通散策イベント判定を回避(後日落ち着いてから、共通イベントを見ていただくことができます)
;「○○の話題で手紙を書いてみましょう」など散策イベント中の主人公の言動と物語の流れが合わないため、後日見ていただくようにします
;各ルート回避時期については調整可能です(スレで相談します)
;=============================================
;◇財前ルート11月4週～1月3週は共通散策イベント発生回避
[if exp="f.zaizen_au == 1 && ((f.okeiko_month == 11 && f.okeiko_week == 4)|| f.okeiko_month == 12 || (f.okeiko_month == 1 && f.okeiko_week != 4))"]
@jump target=*sansaku_hantei_common_owari
[endif]
;◇四条ルート10月1週～11月2週は共通散策イベント発生回避(11月1週イベント後自動で3週になるはずですが、念のため11月2週も回避します)
[if exp="f.sijyou_au == 1 && (f.okeiko_month == 10 && (f.okeiko_month == 11 && (f.okeiko_week == 1 && f.okeiko_week == 2)))"]
@jump target=*sansaku_hantei_common_owari
[endif]
;◇葛城宮ルート10月2週～2月1週は共通散策イベント発生回避
[if exp="f.katuraginomiya_au == 1 && ((f.okeiko_month == 10 && f.okeiko_week != 1)|| f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 ||(f.okeiko_month == 2 && f.okeiko_week == 1))"]
@jump target=*sansaku_hantei_common_owari
[endif]
;◇藤枝ルート11月1週～2月2週は共通散策イベント発生回避(2月3週から手紙を許される)
[if exp="f.hujieda_au == 1 && (f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 ||(f.okeiko_month == 2 && (f.okeiko_week == 1 && f.okeiko_week == 2)))"]
@jump target=*sansaku_hantei_common_owari
[endif]
;◇黒田ルート11月4週～12月4週は共通散策イベント発生回避
[if exp="f.kuroda_au == 1 && ((f.okeiko_month == 11 && f.okeiko_week == 4)|| f.okeiko_month == 12)"]
@jump target=*sansaku_hantei_common_owari
[endif]

@jump storage="sansaku_hantei_common.ks" target=*start
*sansaku_hantei_common_owari

;=============================================
;◆散策イベント
;=============================================
*sansaku_machi_normal
[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[wait time=10]
[stopbgm]
[イベントシーン構築]
[wait time=10]

;◆主人公画像(S表示【マクロで切り替え】
;主人公合体画像表示　ポーズ通常
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_futuu_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=50]
;主人公合体画像削除
[iscript]
$('.junbi_girl').remove();
[endscript]

町へ出た。[r]
行きかう人々や商人たちの声がにぎやかに響く。[p]
[stopbgm]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]

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

*window_close
[cm]
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
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
;会話ウィンドウ消去
[bg storage="toumei.gif" time=1]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false

[layopt layer=27 visible=true]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
[l]

;会話ウィンドウ表示
[chara_mod name="message_bg" storage=&f.message_storage time=1]
;機能ボタン表示
;セーブ等ボタン配置
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;メッセージレイヤを表示
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]

[freeimage layer = 27]
[wait time=10]

[return]

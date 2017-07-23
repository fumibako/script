﻿﻿*start
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
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
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

;主人公画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
;[chara_new name="girl_base" storage="toumei.gif"]
;[chara_show left=1 top=381 layer=15 name="girl_base" time=0]
;[wait time=10]
;[chara_new name="girl_mayu" storage="toumei.gif"]
;[chara_show left=1 top=381 layer=16 name="girl_mayu" time=0]
;[wait time=10]
;[chara_new name="girl_me" storage="toumei.gif"]
;[chara_show left=1 top=381 layer=17 name="girl_me" time=0]
;[wait time=10]
;[chara_new name="girl_kuti" storage="toumei.gif"]
;[chara_show left=1 top=381 layer=18 name="girl_kuti" time=0]
;[wait time=10]
;[chara_new name="girl_emo" storage="toumei.gif"]
;[chara_show left=1 top=381 layer=19 name="girl_emo" time=0]
;[wait time=10]
;[chara_new name="girl_te" storage="toumei.gif"]
;[chara_show left=1 top=381 layer=20 name="girl_te" time=0]
;[wait time=10]


*sansaku_machi

;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
;[eval exp="f.message_storage='message_bg/frame_red.png'"]
;[chara_mod name="message_bg" storage=&f.message_storage time=1]
;[chara_show left=1 top=391 layer=10 name="message_bg"]

;セーブ等ボタン配置
;[locate x=530 y=357]
;[button name="message_save" graphic="button_message_save.png" role=save time=1]
;[locate x=630 y=357]
;[button name="message_load" graphic="button_message_load.png" role=load time=1 ]
;[locate x=730 y=357]
;[button name="message_backlog" graphic="button_message_log.png" role=backlog time=1]
;[locate x=830 y=357]
;[button name="message_skip" graphic="button_message_skip.png" role=skip time=1]
;[locate x=910 y=390]
;散策機能はcallで呼び出されるので、fixボタンが使えない…けどcallスタックを消して使ってみる
;[button name="message_close" fix="true" graphic="x_50x50.png" target="*window_close" time=1]
;[wait time=10]
;[eval exp="sf.FButton='ON'"]

;メッセージレイヤを会話窓用に設定変更
;[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;@layopt layer=message0 page=fore visible=true
;[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=270 y=407]
;[chara_config ptext="chara_name_area"]

;=============================================
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
[if exp="(f.okeiko_month==4 || f.okeiko_month==5 || f.okeiko_month==6) && f.event_machi_common[1]==0"]
	@jump storage="sansaku.ks" target=*sansaku_machi_common_01
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
	@jump target=*sansaku_machi_kuroda_03
[endif]

;◆黒田イベント4判定【黒田家のうわさ２】7月2週～4週、期間中に町へ行くと黒田好感度一定値以上かつ「黒田家のうわさ１」フラグONの場合に1度だけ発生
[if exp="(f.okeiko_month==7 && (f.okeiko_week==2 || f.okeiko_week==3 || f.okeiko_week==4)) && f.event_machi_kuroda[3]==1 && f.event_machi_kuroda[4]==0 && f.para_kuroda_koukando > 15"]
	@jump target=*sansaku_machi_kuroda_04
[endif]

;◆黒田イベント5判定【友人に忠告される】8月1週～4週、期間中に町へ行くと黒田好感度一定値以上かつ「黒田家のうわさ１」フラグONの場合に1度だけ発生
[if exp="f.okeiko_month==8 && f.event_machi_kuroda[3]==1 && f.event_machi_kuroda[5]==0 && f.para_kuroda_koukando > 20"]
	@jump target=*sansaku_machi_kuroda_05
[endif]

;◆黒田イベント6判定【友人と会う（落ち込み時）】12月1週～2週、期間中に町へ行くと1度だけ発生
[if exp="(f.okeiko_month==12 && (f.okeiko_week==1 || f.okeiko_week==2)) && f.event_machi_kuroda[6]==0 && f.kuroda_au==1"]
	@jump target=*sansaku_machi_kuroda_06
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
;=============================================
;◆町_共通イベント01友人に会う
;イベント発生条件：4月1週～6月4週、期間中に町へ行くと1度だけ発生
*sansaku_machi_common_01
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_sansaku_machi_common_01==undefined"]
	[skipstop]
[endif]
*machi_common_01
[stopbgm]
;------------------------------------------------プリロード画面-----------------------------------------------
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;------------------------------------------------プリロード画面-----------------------------------------------
[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
#
町へ出た。[r]
行きかう人々や商人たちの声がにぎやかに響く。[p]
[stopbgm]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]

[whosay name="呼び込み" color="#807070"]
「暖かいミルクコオヒ[ruby text="イ"]ヰはいかが～」[p]
香ばしい香りがふわりと鼻をくすぐる。[p]

[whosay name="三宮　時子" color="#c25232"]
「あら。[名前]さんじゃない。ごきげんよう」[p]
#
そう呼びとめたのは華族の友人だった。
[autosave]
[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ごきげんよう」[p]

[主人公閉目パチ1回]
[wait time=10]
[whosay name="三宮　時子" color="#c25232"]
「良い香りね、ミルクコオヒ[ruby text="イ"]ヰ。飲んでみたいわ。[r]
[sp]『シベリヤ』というお菓子もあるのですって」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいわね。でも、ミルクホールに入るのは[l][r]
;【立ち絵】主人公：苦笑
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]

[sp]……怒られちゃうわ」
[autosave]
[p]

[whosay name="三宮　時子" color="#c25232"]
「怒られない理由があれば良いのよ。[r]
;【立ち絵】主人公：驚
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[主人公驚]
[wait time=10]
[sp]いつか文通のお相手に会うお許しが出たら……デエトで行けるかしら」
[autosave]
[p]

[主人公通常]
[wait time=10]
「そう、文通といえば聞いたわよ[名前]さん。[r]
[sp]ついに文通を始められたのですって？」[p]
;【立ち絵】主人公：苦笑（頬染め）
[主人公ポーズ片手]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……！　耳がお早いのね」[p]
[主人公ポーズ通常]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
「そうなの」[p]

[whosay name="三宮　時子" color="#c25232"]
「素敵だわ！[r]
[sp]どんなお方なの？[r]
[sp]今日はもう行かなきゃいけないけれど、また教えてね」
[autosave]
[p]

;【立ち絵】主人公：目閉じ（頬染め）
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ。[r]
[sp]もう少し、お相手のことが分かってからね」[p]

[whosay name="三宮　時子" color="#c25232"]
「健闘を祈るわ！[r]
;【立ち絵】主人公：ほほえみ
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[主人公ほほえみ]
[wait time=10]
[sp]お互いに、楽しい文通が続きますように」[p]
[主人公閉目パチ1回]
[wait time=10]
「……そして、いつかお会いできますように」[p]

「では、ごきげんよう」[p]

;【立ち絵】主人公：笑顔
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau.png" time=0]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう。ごきげんよう」[l]

;【話題入手】（↓可能なら文字色変更表示）
[iscript]
if (typeof f.wadai_list_hairetsu == "undefined"){f.wadai_list_hairetsu = [];}
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("友人の話題",2,0,0,1,2,"a","","","","");
[endscript]

[layopt layer=26 visible=true]
[wait time=10]
[image layer=26 x=250 y=40 storage="button/frame_lesson_message.png"]
[wait time=10]
[eval exp="f.sansaku_machi_seika_txt='『友人の話題』を手に入れました'"]
[ptext text=&f.sansaku_machi_seika_txt layer=26 size=21 x=310 y=85 color=darkslateblue bold=bold]
[wait time=10]
;【SE】キラキラ
[playse storage=kira_s.ogg loop=false ]

[p]
[freeimage layer = 26]
[wait time=10]
[eval exp="f.event_machi_common[1]=1"]
[wait time=10]
@jump target=*sansaku_machi_seika


;=============================================
;◆町_共通イベント02新茶
;イベント発生条件：4月3週～5月2週、期間中に町へ行くと1度だけ発生
*sansaku_machi_common_02
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_sansaku_machi_common_02==undefined"]
	[skipstop]
[endif]
*machi_common_02
[stopbgm]
;------------------------------------------------プリロード画面-----------------------------------------------
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;------------------------------------------------プリロード画面-----------------------------------------------
[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
#
町へ出た。[r]
陽気な歌声が聞こえてくる。[r]
「～夏も近づく八十八夜」
[autosave]
[p]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]
;↑この歌詞は使用に問題無い旨（『茶摘み』作詞者不詳、文部省唱歌、パブリックドメイン）をJASRAC検索等にて確認済
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
お茶屋の軒先で、娘さんが歌いながら道行く人々にお茶をふるまっている。[r]
ふわりとお茶の良い香りが漂ってきた。
[autosave]
[p]

;【選択肢】
*sansaku_machi_common_02_sentaku01
[eval exp="f.select_scene='machi_common_02_sentaku01'"]

[eval exp="f.message_storage='message_bg/frame_red.png'"]
[chara_mod name="message_bg" storage=&f.message_storage]

;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]

[image layer=26 x=260 y=80 storage="button/select_waku_x500.png"]
[wait time=10]
[image layer=26 x=260 y=190 storage="button/select_waku_x500.png"]
[wait time=10]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
[link target=*sansaku_machi_common_02_sentaku01_ok]お茶をいただく[endlink][r]
[r][r][r]
[link target=*sansaku_machi_common_02_sentaku01_no]　断　　　　　る[endlink][r]
[resetfont]

;メッセージレイヤサイズを会話窓用に設定変更
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]

[主人公目パチ1回]
[wait time=10]
[whosay name=お茶屋の娘 color="#5b7e23"]
「よかったら、お茶を一杯いかがですか？」
[autosave]
[s]
[cm]
@jump target=*sansaku_machi_common_02_sentaku01
[s]
;【部分分岐】お茶をいただく【開始】
*sansaku_machi_common_02_sentaku01_ok
[freeimage layer = 26]
[eval exp="f.select_scene=''"]
[cm]
@layopt layer=message1 visible=false
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう。いただきます」
[autosave]
[p]
;【立ち絵】主人公：通常
[主人公閉目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
#
軒先の縁台に腰掛けて店をながめると、飾り棚の上には鮮やかな若葉が[r]
活けてあり、そばの水桶には若葉の枝がいくつも入っている。[r]
奥からはゴロゴロと石臼の音が響いてくる。[p]

[whosay name=お茶屋の娘 color="#5b7e23"]
「奥でお抹茶をひいているのですよ。[r]
[sp]そこに活けてあるのは摘んだばかりの新茶の葉です」
[autosave]
[p]

;【部分分岐】淑女度一定値以上の場合【開始】
[if exp="f.para_shujinkou_shukujodo > 1"]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[whosay name=お茶屋の娘 color="#5b7e23"]
「お嬢さん、どこかでお見かけしたような……。[r]
[sp]お抹茶を納めにお屋敷へ伺ったときかしら」[p]
「お茶の生葉はご覧になったことがありますか？」
[autosave]
[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいえ、はじめてです」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=お茶屋の娘 color="#5b7e23"]
「よかったら、手にとってご覧くださいな」[p]
と桶から枝を一本とりサッと水を拭いてこちらに示す。
[autosave]
[p]
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう」[p]
#
枝を手にとり、ながめてみた。[p]
若葉はしっとりと潤いを感じる柔らかさで、つややかな表面が光を受けて美しく輝いている。[r]
;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
切りたての茎の青臭い香りが立ち上ってきた。[p]

お茶の知識が深まった。
;【話題入手】（↓可能なら文字色変更表示）
[iscript]
if (typeof f.wadai_list_hairetsu == "undefined"){f.wadai_list_hairetsu = [];}
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("新茶の話題",2,0,0,1,1,"a","","",1,"");
[endscript]
;【淑女度上昇】+2（↓可能なら文字色変更表示）淑女度の数値は仮のもので、今後調整予定です
[eval exp="f.para_shujinkou_shukujodo = f.para_shujinkou_shukujodo + 2"]
[layopt layer=26 visible=true]
[image layer=26 x=250 y=40 storage="button/frame_lesson_message.png"]
[wait time=10]
[eval exp="f.sansaku_machi_seika_txt1='『淑女度』が2上昇しました'"]
[eval exp="f.sansaku_machi_seika_txt2='『新茶の話題』を手に入れました'"]
[ptext text=&f.sansaku_machi_seika_txt1 layer=26 size=21 x=310 y=75 color=darkslateblue bold=bold]
[ptext text=&f.sansaku_machi_seika_txt2 layer=26 size=21 x=310 y=105 color=darkslateblue bold=bold]
[wait time=10]
;【SE】キラキラ
[playse storage=kira.ogg loop=false ]
[p]
[freeimage layer = 26]
[eval exp="f.event_machi_common[2]=1"]
@jump target=*sansaku_machi_seika

;【部分分岐】淑女度一定値以上の場合【終了】
[endif]

;【部分分岐】淑女度一定値未満の場合【開始】
#
新茶の葉は柔らかそうに見える。[r]
お茶の香りに包まれて若葉をながめると、心が安らぐのを感じた。
[autosave]
[p]

お茶の知識が深まった。
;【話題入手】（↓可能なら文字色変更表示）
[iscript]
if (typeof f.wadai_list_hairetsu == "undefined"){f.wadai_list_hairetsu = [];}
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("新茶の話題",2,1,1,-1,1,"a","","",1,"");
[endscript]
;【淑女度上昇】+1（↓可能なら文字色変更表示）淑女度の数値は仮のもので、今後調整予定です
[eval exp="f.para_shujinkou_shukujodo = f.para_shujinkou_shukujodo + 1"]
[layopt layer=26 visible=true]
[image layer=26 x=250 y=40 storage="button/frame_lesson_message.png"]
[wait time=10]
[eval exp="f.sansaku_machi_seika_txt1='『淑女度』が1上昇しました'"]
[eval exp="f.sansaku_machi_seika_txt2='『新茶の話題』を手に入れました'"]
[ptext text=&f.sansaku_machi_seika_txt1 layer=26 size=21 x=310 y=75 color=darkslateblue bold=bold]
[ptext text=&f.sansaku_machi_seika_txt2 layer=26 size=21 x=310 y=105 color=darkslateblue bold=bold]
[wait time=10]
;【SE】キラキラ
[playse storage=kira_s.ogg loop=false ]
[p]
;【部分分岐】淑女度一定値未満の場合【終了】
;【部分分岐】お茶をいただく【終了】
[freeimage layer = 26]
[eval exp="f.event_machi_common[2]=1"]
@jump target=*sansaku_machi_seika

;【部分分岐】断る【開始】
*sansaku_machi_common_02_sentaku01_no
[freeimage layer = 26]
[eval exp="f.select_scene=''"]
[cm]
@layopt layer=message1 visible=false

;【立ち絵】主人公：ほほえみ（困り眉）
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「せっかくですが、またの機会に……」[p]

[whosay name=お茶屋の娘 color="#5b7e23"]
「そうですか、お引きとめしてごめんなさいね。[r]
[sp]また寄ってください」[p]

;【部分分岐】断る【終了】
[freeimage layer = 26]
;[eval exp="f.event_machi_common[2]=1"]
@jump target=*sansaku_machi_seika

;=============================================
;◆町_黒田イベント01「さつき」
;イベント発生条件：5月3週～6月2週、期間中に町へ行くと黒田好感度一定値以上で1度だけ発生
*sansaku_machi_kuroda_01
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_sansaku_machi_kuroda_01==undefined"]
	[skipstop]
[endif]
*machi_kuroda_01
;[stopbgm]
;------------------------------------------------プリロード画面-----------------------------------------------
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;------------------------------------------------プリロード画面-----------------------------------------------
[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
#
町へ出た。[r]
行き交う人々の賑やかな声が聞こえる。[p]
[stopbgm]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]

[主人公目パチ1回]
[wait time=10]
[whosay name="町の人甲" color="#807070"]
「植木屋さんにさつきが沢山並んで綺麗だったわ」[p]
[whosay name="町の人乙" color="#807070"]
「さつきの季節ですなぁ。[r]
[sp]後で見に行こう」
[autosave]
[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「植木屋さんを見てみましょう」[p]

[主人公通常]
[wait time=10]
#
植木屋の前を通ると、さつきの盆栽が並び壮観だ。[r]
非売品の札がついたものも展示されている。[p]

[主人公目パチ1回]
[wait time=10]
[whosay name="植木屋" color="#807070"]
「お嬢さんがた、どうぞご覧くださいな。[r]
[sp]ウチで育てている盆栽も並べていましてね。[r]
[sp]この非売品の鉢は年代物なんですよ」
[autosave]
[p]

[主人公驚]
[wait time=10]
#
年代物と言われた大きなさつきは太いゴツゴツした幹が壮観だ。[p]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「立派ですね。[r]
[sp]ここまでするのに一体、何年かかるのでしょう」[p]

[主人公目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
[whosay name="植木屋" color="#807070"]
「これは私の祖父より前の代から伝わるものでしてなぁ。[r]
[sp]ざっと百年は経っていましょうな」[p]

[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「百年ですか……！　そんなに長くかかるのですね」[p]

[主人公目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
#
他にも色とりどりの花をつけたものなど様々なさつきを鑑賞した。[p]
[主人公ほほえみ]
[wait time=10]
;【話題入手】（↓可能なら文字色変更表示）
[iscript]
if (typeof f.wadai_list_hairetsu == "undefined"){f.wadai_list_hairetsu = [];}
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("さつきの話題",2,0,0,1,1,"a","","",1,"");
[endscript]
[layopt layer=26 visible=true]
[image layer=26 x=250 y=40 storage="button/frame_lesson_message.png"]
[wait time=10]
[eval exp="f.sansaku_machi_seika_txt='『さつきの話題』を手に入れました'"]
[ptext text=&f.sansaku_machi_seika_txt layer=26 size=21 x=310 y=85 color=darkslateblue bold=bold]
;【SE】キラキラ
[playse storage=kira_s.ogg loop=false ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お花も鮮やかで、色々なさつきを見られて眼福だったわ」[p]
[freeimage layer = 26]
[eval exp="f.event_machi_kuroda[1]=1"]
@jump target=*sansaku_machi_seika

;=============================================
;◆町_黒田イベント02「麦」
;イベント発生条件：6月4週になった時点で、黒田好感度一定値以上なら1度だけ発生
*sansaku_machi_kuroda_02
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_sansaku_machi_kuroda_02==undefined"]
	[skipstop]
[endif]
*machi_kuroda_02
;------------------------------------------------プリロード画面-----------------------------------------------
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500] 
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 
[wait time=50]
;------------------------------------------------プリロード画面-----------------------------------------------
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸_庭
[背景_庭]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[wait time=10]
;【SE】鳥のさえずり
[playse storage=tori_yatyou.ogg loop=false ]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「久々に、気持ちの良いお天気ね。[r]
[sp]お出かけしてみましょう」
[autosave]
[p]

[stopbgm]
;【背景】町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=100]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[主人公目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
#
町へ出た。[r]
お茶屋の表から声がする。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「何かあったのかしら」[p]

[whosay name=お茶屋の娘 color="#5b7e23"]
「ああ困った！　うまく生けられないわ」[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
#
娘さんが花と器とを前に、行ったり来たり[r]
色々な角度から眺めつつ困り切っている。[r]
通りがかりにふと目が合った。
[autosave]
[p]

[主人公目パチ1回]
[wait time=10]

[whosay name=お茶屋の娘 color="#5b7e23"]
「お嬢さん。力をお貸しいただけませんか？[r]
[sp]お店に飾る生け花がうまくいかなくて[r]
[sp]困っているのです」[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「生け花ですか。私でお役に立てるかしら」[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=お茶屋の娘 color="#5b7e23"]
「いつも生けてくださるおかみさんが[r]
[sp]今日はお休みで、私が代わりを言いつかったのです」[p]
[主人公目パチ1回]
[wait time=10]
;[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
;[wait time=10]
「でも難しくて、あちこち切っているうちに[r]
[sp]お花が短くなってしまって」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
「……もうどうすればよいのか……」[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
#
そう言うと、娘さんはワッと泣きだしてしまった。[p]

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうだったのですか」[p]

;【立ち絵】主人公：通常
[主人公閉目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
#
花材を見る。花や麦など季節の植物が目に鮮やかだ。[r]
たしかに短くなってしまった花もあるものの[r]
傷みは目立たず生け方によっては活きそうだった。
[autosave]
[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「大丈夫。なんとかなりそうですよ。[r]
[sp]お手伝いしましょうか？」[p]

[主人公閉目パチ1回]
[wait time=10]
[whosay name=お茶屋の娘 color="#5b7e23"]
「……！[r]
[sp]ありがとうございます」[p]
#
;【立ち絵】消去
[主人公退場]
;【背景】暗転後、町並みに戻る
[bg storage="toumei.gif" time=500]
[wait time=500]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=500]
[wait time=10]
#
……[p]

[whosay name=お茶屋の娘 color="#5b7e23"]
「できました！[r]
[sp]お嬢さんのおかげです。ありがとうございます。[r]
[sp]短いお花もこんなふうに活かせるなんて、さすがですね」
[autosave]
[p]

;主人公復帰表情　ポーズ通常
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_futuu_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
;【立ち絵】主人公：ほほえみ
[主人公ポーズ通常]
[wait time=10]
[主人公ほほえみ]
[wait time=10]
[iscript]
$('.junbi_girl').remove();
[endscript]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえいえ、私はお手伝いしただけです」[p]

[主人公閉目パチ1回]
[wait time=10]
[whosay name=お茶屋の娘 color="#5b7e23"]
「お茶をどうぞお召し上がりください。[r]
[sp]よかったら、余った花材でお好きなものを[r]
[sp]お持ちくださいね」
[autosave]
[p]
[主人公目パチ1回]
[wait time=10]
「この麦の穂なんて、いかがでしょう？　町では珍しいでしょう」[p]

;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「麦にはなかなかお目にかかれないですね。[l][r]
;【立ち絵】主人公：笑顔
[主人公笑顔]
[wait time=10]
[sp]まっすぐ伸びて綺麗だわ……ありがとう、いただきます」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
#
生け花の技術が深まった。
;【淑女度上昇】+2（↓可能なら文字色変更表示）淑女度の数値は仮のもので、今後調整予定です
[eval exp="f.para_shujinkou_shukujodo = f.para_shujinkou_shukujodo + 2"]
[layopt layer=26 visible=true]
[image layer=26 x=250 y=40 storage="button/frame_lesson_message.png"]
[wait time=10]
[eval exp="f.sansaku_machi_seika_txt1='『淑女度』が2上昇しました'"]
[eval exp="f.sansaku_machi_seika_txt2='『麦の穂』を手に入れました'"]
[ptext text=&f.sansaku_machi_seika_txt1 layer=26 size=21 x=310 y=75 color=darkslateblue bold=bold]
[ptext text=&f.sansaku_machi_seika_txt2 layer=26 size=21 x=310 y=105 color=darkslateblue bold=bold]
[wait time=10]
;【SE】キラキラ
[playse storage=kira_s.ogg loop=false ]
[p]
[freeimage layer = 26]
[eval exp="f.event_machi_kuroda[2]=1"]
@jump target=*sansaku_owari

;=============================================
;◆町_黒田イベント03「黒田家のうわさ１」
;イベント発生条件：7月1週～4週、期間中に町へ行くと黒田好感度一定値以上で1度だけ発生
*sansaku_machi_kuroda_03
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_sansaku_machi_kuroda_03==undefined"]
	[skipstop]
[endif]
*machi_kuroda_03
[stopbgm]
;------------------------------------------------プリロード画面-----------------------------------------------
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;------------------------------------------------プリロード画面-----------------------------------------------
[freeimage layer = 1]
[wait time=10]
;【背景】町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=100]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
#
町へ出た。[r]
行き交う人々の声が聞こえる。[p]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]
[主人公目パチ1回]
[wait time=10]
[whosay name="町の人甲" color="#807070"]
「もうすぐ大きなお店ができるそうね」
[autosave]
[p]

[stopbgm]
;【BGM】乱の舞
[playbgm storage="midareru_kokoro_rannomai.ogg" loop=true]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[whosay name="町の人乙" color="#807070"]
「何屋さんかしら、楽しみね。[r]
[sp]でもあそこ、たしか黒田さまの土地だったわね」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]

[whosay name="町の人甲" color="#807070"]
「……そうね。年々黒田さまの土地は狭くおなりだとか」[p]
#
町の人々は周囲を伺うと、声をひそめて話を止めた。[p]
[主人公目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
#
[名前欄]
「そろそろ家に戻りましょう」[p]

;「黒田家のうわさ１」読了のフラグON
[eval exp="f.event_machi_kuroda[3]=1"]
@jump target=*sansaku_owari

;=============================================
;◆町_黒田イベント04「黒田家のうわさ２」
;イベント発生条件：7月2週～4週、期間中に町へ行くと黒田好感度一定値以上かつ「黒田家のうわさ１」フラグONの場合に1度だけ発生
*sansaku_machi_kuroda_04
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_sansaku_machi_kuroda_04==undefined"]
	[skipstop]
[endif]
*machi_kuroda_04
;[stopbgm]
;------------------------------------------------プリロード画面-----------------------------------------------
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;------------------------------------------------プリロード画面-----------------------------------------------
[freeimage layer = 1]
[wait time=10]
;【背景】町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=100]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
#
町へ出た。[r]
行き交う人々の声が聞こえる。[p]
[stopbgm]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]
[主人公目パチ1回]
[wait time=10]

[whosay name="町の人甲" color="#807070"]
「ご覧になった？　古道具屋さんの前に人が集まっていたわ」
[autosave]
[p]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[stopbgm]
;【BGM】乱の舞
[playbgm storage="midareru_kokoro_rannomai.ogg" loop=true]

[whosay name="町の人乙" color="#807070"]
「黒田さまが骨董や反物をいくつも手放されたとかで……[r]
[sp]見物人も出るぐらい珍しい品が並んでいたそうね」[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[whosay name="町の人甲" color="#807070"]
「あそこの先代は、趣味人でしたからねぇ。[r]
[sp]それにしても、そんなに良い品を手放すなんて……」[p]
#
町の人々は周囲を伺うと、声をひそめて話を止めた。[p]
[主人公目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
#
[名前欄]
「そろそろ家に戻りましょう」[p]

;「黒田家のうわさ２」読了のフラグON
[eval exp="f.event_machi_kuroda[4]=1"]
@jump target=*sansaku_owari

;=============================================
;◆町_黒田イベント05「友人に忠告される」
;イベント発生条件：8月1週～4週、期間中に町へ行くと黒田好感度一定値以上かつ「黒田家のうわさ１」フラグONの場合に1度だけ発生
*sansaku_machi_kuroda_05
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_sansaku_machi_kuroda_05==undefined"]
	[skipstop]
[endif]
*machi_kuroda_05
[stopbgm]
;------------------------------------------------プリロード画面-----------------------------------------------
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;------------------------------------------------プリロード画面-----------------------------------------------
[freeimage layer = 1]
[wait time=10]
;【背景】町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=100]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
#
町へ出た。[p]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]
蝉しぐれ降るなか乗合馬車の土ぼこりが舞い上がり[r]
暑さで道が湯気を立てているようだ。[p]
馬の首では汗が白い泡となり真夏の陽射しに輝いている。[p]

[whosay name="三宮　時子" color="#c25232"]
「ごきげんよう、[名前｣さん。[r]
[sp]今日も大変な暑さね」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
#
そう言った友人は髪を涼しげに結い上げている。
[autosave]
[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ごきげんよう。[r]
[sp]ほんとうに、暑い日が続くわね」[p]

[主人公閉目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
[whosay name="三宮　時子" color="#c25232"]
「[名前]さんに会いたかったのよ。[r]
[sp]ちょっと心配なことを聞いたものだから……[r]
[sp]あちらの日陰に参りましょう」
[autosave]
[p]
[stopbgm]
;【BGM】乱の舞
[playbgm storage="midareru_kokoro_rannomai.ogg" loop=true]
#
;一瞬暗転後、同じ背景に戻る
[bg storage="toumei.gif" time=500]
[wait time=500]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「心配なことって？」[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="三宮　時子" color="#c25232"]
「この暑さだから、手短に言うわね。[r]
[sp][名前]さんのお相手……お家が色々とお困りだと聞いたの」[p]
「ご本人が魅力的な方でも、お家に何かあるようでは[r]
[sp]この先に苦労するかもしれないわ」
[autosave]
[p]

;【立ち絵】主人公：伏目
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「噂は私も聞いたわ……」[p]

[主人公伏目パチ1回]
[wait time=10]

[whosay name="三宮　時子" color="#c25232"]
「[名前]さんにはあまり苦労してほしくないの。[r]
[sp]でも、本当に素晴らしい方なら……苦労を選ぶ道もあるのかしら。[r]
[sp]そうは思っても心配で、言わずにいられなかったの」
[autosave]
[p]

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうね……よく考えてみるわ。[r]
[sp]ありがとう」[p]

[fadeoutbgm time=3000]
[主人公閉目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[whosay name="三宮　時子" color="#c25232"]
「耳に痛いことを聞かせてしまって、ごめんなさい。[r]
[sp]では、ごきげんよう」[p]

;【立ち絵】主人公：ほほえみ(弱気眉)
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ごきげんよう」[p]
[主人公通常]
[wait time=10]
#
[名前欄]
「そろそろ家に戻りましょう」[p]
[eval exp="f.event_machi_kuroda[5]=1"]
@jump target=*sansaku_owari

;=============================================
;◆町_黒田イベント06「友人と会う（落ち込み時）」
;イベント発生条件：12月1週～2週、期間中に町へ行くと1度だけ発生
*sansaku_machi_kuroda_06
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_sansaku_machi_kuroda_06==undefined"]
	[skipstop]
[endif]
*machi_kuroda_06
[stopbgm]
;------------------------------------------------プリロード画面-----------------------------------------------
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;------------------------------------------------プリロード画面-----------------------------------------------
[freeimage layer = 1]
[wait time=10]
;【背景】町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=100]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
[wait time=10]
;【立ち絵】主人公：伏目
[主人公ポーズ通常]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
#
町へ出た。[r]
景色が色あせて見え、師走のざわめきもどこか遠くに感じられる。[p]
;【BGM】冬支度（悲しげ・筝曲）
[playbgm storage="kanasige_koto_fuyujitaku.ogg" loop=true]

[whosay name="三宮　時子" color="#c25232"]
「ごきげんよう、[名前｣さん。[r]
[sp]寒くなってきたわね」[p]
[主人公伏目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
#
温かい声が響き、ふと我にかえった。[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ごきげんよう……」[p]

[主人公伏目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="三宮　時子" color="#c25232"]
「[名前]さん……お疲れに見えますわ。[r]
[sp]すこし休んでいきませんか」
[autosave]
[p]

#
友人は私をお茶屋へ誘った。[p]

[主人公伏目パチ1回]
[wait time=10]

[whosay name=お茶屋の娘 color="#5b7e23"]
「あらあら、お嬢様方ようこそ。[r]
[sp]寒いですから、中にお入りくださいまし」[p]

;背景暗転後町へ戻る
[bg storage="toumei.gif" time=500]
[wait time=500]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
;【立ち絵】主人公：通常
[主人公伏目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
#
友人の他愛ない話を聞きながら[r]
温かいお茶をいただき、心が少し軽くなった。[p]
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そろそろ家に戻りましょう」[p]
[eval exp="f.event_machi_kuroda[6]=1"]
@jump target=*sansaku_owari


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

[if exp="f.select_scene=='machi_common_02_sentaku01'"]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
[link target=*sansaku_machi_common_02_sentaku01_ok]お茶をいただく[endlink][r]
[r][r][r]
[link target=*sansaku_machi_common_02_sentaku01_no]　断　　　　　る[endlink][r]
[resetfont]

;メッセージレイヤサイズを会話窓用に設定変更
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]

[主人公目パチ1回]
[wait time=10]
[whosay name=お茶屋の娘 color="#5b7e23"]
「よかったら、お茶を一杯いかがですか？」

[endif]
[freeimage layer = 27]
[wait time=10]

[return]

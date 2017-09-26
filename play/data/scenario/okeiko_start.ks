﻿;=============================================
;okeiko.ks読込初回のみ実行する処理
;=============================================
;主人公登場時の画像被せ処理に◆B4nFWraU42さん作スクリプトを使用しました。ありがとうございます。
*start
;背景（タイトル画像）表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[freeimage layer=1]
[wait time=10]
;[chara_new name="bg" storage="../fgimage/toumei.gif"]
;[chara_show left=1 top=0 layer=1 name="bg" time=0]

;↓◆お稽古パート経由かどうか見るための変数をセット
[eval exp="tf.okeiko_gamen=true"]
[eval exp="f.okeiko_gamen=true"]
[eval exp="f.event_jiki='未定'"]
;[skipstop]

[call target=*start storage="01_sijyou_hensuu.ks"]
[call target=*start storage="hensuu.ks"]
;背景チラ見え防止
;[bg wait=true storage="../fgimage/bg/toumei.gif" time=0]

;ゲーム変数値数値を代入（月, 週, 月始め切り替え背景など。テスト画面経由時以外に実行
[eval exp="f.okeiko_month = 4"]
[eval exp="f.okeiko_week = 1"]
;週始めを示す変数に1を代入(0=週始め以外を示す)
[eval exp="f.okeikopart_shuuhajime=1"]
;手紙処理に使用する変数を初期化
[eval exp="f.list_count=0"]
[eval exp="f.binsen_number=0"]
;↓◆イベント判定処理を見るための変数をセット
;[eval exp="f.hantei_event_storage='判定処理前'"]
;[変数ログ表示]



;手紙の話題リスト（初期話題）を読込んで配列f.wadai_list_hairetsu[i][j]に格納。
;[i]部分が話題の種類
;[j]部分が話題の属性(好感度増減値)を示す(0=話題の種類名、1=黒田、2=財前、3=華織、4=葛城宮 晴仁、5=藤枝　肇、6=好適距離a最初からok,b好感度20以上でok、c好感度50以上でok、7、8=その話題が苦手なキャラ、9、10=その話題を好むキャラ)
[iscript]
$.get("./data/scenario/fumi_wadai.csv", function(data){
//読み込まれたファイル

	f.wadai_list_moto = data;
	f.wadai_list_shurui = [];
	f.wadai_list_shurui = data.split("\n");
	//ラベルの位置までジャンプ
	TG.kag.stat.is_stop = false;
	TG.kag.ftag.startTag("jump",{target:"*complete_load_wadai_list_shurui"}); 
});
[endscript]
[s]
*complete_load_wadai_list_shurui
[iscript]
	f.wadai_list_hairetsu = [];
for( var i = 0 , l = f.wadai_list_shurui.length ; i < l ; i++ ){
	f.wadai_list_hairetsu[i] = f.wadai_list_shurui[i].split(",");
	for( var j = 0 , m = f.wadai_list_hairetsu[i].length ; j < m ; j++ ){//trimも同時に行っておく
		f.wadai_list_hairetsu[i][j] = f.wadai_list_hairetsu[i][j].replace( /(^\s+)|(\s+$)/g , ""  );
	}
}
[endscript]
*complete_load_wadai_list_hairetsu

;◆テスト画面経由でなければ設定画面表示せずにお稽古パートを読み込む
[if exp="tf.test_gamen!=true"]
@jump target=*okeiko
[endif]

*test_settei_start
;背景変更:和紙風 桜色
[bg wait=true storage="../fgimage/bg/plane_sakura.jpg" time=100]
[eval exp="f.haikei_credit=''"]
[cm]
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="200" x=750 y=0 color=white]

[if exp="tf.test_gamen_sijyou == true"]
@jump storage="01_sijyou_test_nyuuryoku.ks" target=*start
[elsif exp="tf.test_gamen_sijyou!=true"]
@jump storage="okeiko_start_nyuuryoku.ks" target=*start

*test_start_common
[cm]
[イベントシーン構築]
手紙の「話題」を全て入手済みにしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]

[link target=*okeiko_wadai_all_plus_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*okeiko_wadai_all_plus_no]い　い　え[endlink][r]
[resetfont]
[s]


*okeiko_wadai_all_plus_ok

「はい」[r]
話題を追加します[p]

;手紙の話題リスト配列f.wadai_list_hairetsu[i][j]
;[i]部分が話題の種類(配列中の位置ナンバー)
;[j]の配列が話題の属性(好感度増減値)を示す(0=話題の表示名、1=黒田、2=財前、3=華織、4=葛城宮 晴仁、5=藤枝　肇、6=好適距離a最初からok,b好感度20以上でok、c好感度50以上でok、7、8=その話題が苦手なキャラ、9、10=その話題を好むキャラ)
;◆話題の細かい設定については今後調整予定です
[iscript]
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("友人の話題",2,0,0,1,2,"a","","",3,"");
[endscript]
『友人の話題』を手に入れました。[r]

[iscript]
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("新茶の話題",2,0,0,1,1,"a","","",1,"");
[endscript]
『新茶の話題』を手に入れました。[r]

[iscript]
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("さつきの話題",2,0,0,1,1,"a","","",1,"");
[endscript]
『さつきの話題』を手に入れました。[r]

[iscript]
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("読書の話題",0,0,0,1,2,"a","","","","");
[endscript]
『読書の話題』を手に入れました。[p]

[iscript]
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("スポーツの話題",0,0,0,1,0,"a","","","","");
[endscript]
『スポーツの話題』を手に入れました。[r]

[iscript]
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("食事の話題",0,0,0,1,0,"a","","","","");
[endscript]
『食事の話題』を手に入れました。[r]

[iscript]
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("観劇の話題",0,-1,0,-2,1,"a","","","","");
[endscript]
『観劇の話題』を手に入れました。[r]

[iscript]
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("猫の話題",0,0,0,1,-1,"a","","","","");
[endscript]
『猫の話題』を手に入れました。[p]

[iscript]
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("聞き上手と話し上手の話題",0,2,0,-1,0,"a","","","","");
[endscript]
『聞き上手と話し上手の話題』を手に入れました。[r]

[iscript]
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("緑の石の話題",0,1,1,2,1,"a","","","","");
[endscript]
『緑の石』と『緑の石の話題』を手に入れました。[r]

[iscript]
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("写真の話題",0,1,0,1,2,"a","","","","");
[endscript]
『写真の話題』を手に入れました。[r]

[iscript]
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("一日のはじまりの話題",0,1,2,1,1,"a","","","","");
[endscript]
『一日のはじまりの話題』を手に入れました。[p]

[iscript]
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("お気に入りの曲の話題",0,-1,2,0,2,"a","","","","");
[endscript]
『お気に入りの曲の話題』を手に入れました。[r]

[iscript]
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("道の話題",0,0,2,1,1,"a","","","","");
[endscript]
『道の話題』を手に入れました。[r]

[iscript]
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("変化と永遠についての話題",0,1,2,1,2,"a","","","","");
[endscript]
『変化と永遠についての話題』を手に入れました。[p]
;お稽古パートをはじめます。[p]

[iscript]
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("怪談についての話題",2,2,2,2,1,"a","","","","");
[endscript]
『怪談についての話題』を手に入れました。[r]
お稽古パートをはじめます。[p]

[イベントシーン終了]
[current layer="message0"]
@layopt layer=message1 page=fore visible = false
@layopt layer=message0 page=fore visible = false

@jump target=okeiko

[s]
*okeiko_wadai_all_plus_no
「いいえ」[r]
話題は初期状態でスタートします[p]
[イベントシーン終了]
[current layer="message0"]
@layopt layer=message1 page=fore visible = false
@layopt layer=message0 page=fore visible = false
@jump target=okeiko
[s]
[endif]

*okeiko

;↓(イベント中に届く)手紙タイトルに付ける月表示設定
[iscript]
if (f.okeiko_month==4){
f.okeiko_month_kansuuji="四月 ";
}
if (f.okeiko_month==5){
f.okeiko_month_kansuuji="五月 ";
}
if (f.okeiko_month==6){
f.okeiko_month_kansuuji="六月 ";
}
if (f.okeiko_month==7){
f.okeiko_month_kansuuji="七月 ";
}
if (f.okeiko_month==8){
f.okeiko_month_kansuuji="八月 ";
}
if (f.okeiko_month==9){
f.okeiko_month_kansuuji="九月 ";
}
if (f.okeiko_month == 10){
f.okeiko_month_kansuuji="十月 ";
}
if (f.okeiko_month == 11){
f.okeiko_month_kansuuji="十一月 ";
}
if (f.okeiko_month == 12){
f.okeiko_month_kansuuji="十二月 ";
}
if (f.okeiko_month == 1){
f.okeiko_month_kansuuji="一月 ";
}
if (f.okeiko_month == 2){
f.okeiko_month_kansuuji="二月 ";
}
if (f.okeiko_month == 3){
f.okeiko_month_kansuuji="三月 ";
}
[endscript]

[cm]
;◆月始め「○月」の全画面画像表示
[eval exp="f.okeiko_bg_tukihajime = '../fgimage/bg/bg_' + f.okeiko_month + 'gatsu.jpg'"]
[eval exp="f.sysgra_okeiko_month = 'button/kanji_' + f.okeiko_month + '.png'"]
[eval exp="f.sysgra_okeiko_week = 'button/kanji_' + f.okeiko_week + '.png'"]
[eval exp="f.fumi_kakunin=0"]

;◆背景変更:月始め切り替え背景
[freeimage layer = 1]
[bg wait=true storage=&f.okeiko_bg_tukihajime time=50]
[wait time=500]
;【SE】スズメのさえずり
[playse storage=tori_suzume.ogg loop=false]

[stopbgm]
;機能ボタン類を消去（fixレイヤー全消去）
[clearfix]
[clearstack]
;主人公L画像表示【登場時にchara_new使用。後はマクロで切り替え】
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


;◆背景切り替え中に色々読込
;【システム表示】フキダシ枠【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_new name="sys_fukidasi" storage="toumei.gif"]
[wait time=10]
[chara_show left=300 top=220 layer=23 name="sys_fukidasi" time=0]
[wait time=10]

[主人公退場]

;手紙の便せんリストを読込んで配列f.binsen_list_hairetsu[i][j]に格納。
;[i]部分が便箋の種類
;[j]部分が便箋の属性(好感度増減値)を示す(0=便箋の種類名、1=黒田、2=財前、3=華織、4=葛城宮 晴仁、5=藤枝　肇、6=好適季節1、7=好適季節2)
[iscript]
$.get("./data/scenario/fumi_binsen.csv", function(data){
//読み込まれたファイル

	f.binsen_list_moto = data;
	f.binsen_list_shurui = [];
	f.binsen_list_shurui = data.split("\n");
	//ラベルの位置までジャンプ
	TG.kag.stat.is_stop = false;
	TG.kag.ftag.startTag("jump",{target:"*complete_load_binsen_list_shurui"}); 
});
[endscript]
[s]
*complete_load_binsen_list_shurui
[iscript]
	f.binsen_list_hairetsu = [];
for( var i = 0 , l = f.binsen_list_shurui.length ; i < l ; i++ ){
	f.binsen_list_hairetsu[i] = f.binsen_list_shurui[i].split(",");
	for( var j = 0 , m = f.binsen_list_hairetsu[i].length ; j < m ; j++ ){//trimも同時に行っておく
		f.binsen_list_hairetsu[i][j] = f.binsen_list_hairetsu[i][j].replace( /(^\s+)|(\s+$)/g , ""  );
	}
}
[endscript]
*complete_load_binsen_list_hairetsu


;手紙の未読/既読リストを読込んで配列f.midoku_list_hairetsu[i][j]に格納。
;[i]部分が攻略キャラ(0=黒田、1=財前、2=華織、3=葛城宮 晴仁、4=藤枝　肇)
;[j]部分が各キャラの手紙が1=未読か0=既読かを示す。(1=返信済、0=未返信）初期csvは全部midokuは1、hensinは0に設定しているので、opening2シナリオで既読の際は0に設定し直す
[iscript]
$.get("./data/scenario/fumi_midoku.csv", function(data){
//読み込まれたファイル

	f.midoku_list_moto = data;
	f.midoku_list_kouryakutaishou = [];
	f.midoku_list_kouryakutaishou = data.split("\n");
	//ラベルの位置までジャンプ
	TG.kag.stat.is_stop = false;
	TG.kag.ftag.startTag("jump",{target:"*complete_load_midoku_list_kouryakutaishou"}); 
});
[endscript]
[s]
*complete_load_midoku_list_kouryakutaishou

[iscript]
	f.midoku_list_hairetsu = [];
for( var i = 0 , l = f.midoku_list_kouryakutaishou.length ; i < l ; i++ ){
	f.midoku_list_hairetsu[i] = f.midoku_list_kouryakutaishou[i].split(",");
	for( var j = 0 , m = f.midoku_list_hairetsu[i].length ; j < m ; j++ ){//trimも同時に行っておく
		f.midoku_list_hairetsu[i][j] = f.midoku_list_hairetsu[i][j].replace( /(^\s+)|(\s+$)/g , ""  );
	}
}
	//ラベルの位置までジャンプ
	TG.kag.stat.is_stop = false;
	TG.kag.ftag.startTag("jump",{target:"*complete_load_midoku_list_hairetsu"}); 

[endscript]
[s]
*complete_load_midoku_list_hairetsu

;手紙の未返信/返信済リストを読込んで配列f.hensin_list_hairetsu[i][j]に格納。
[iscript]
$.get("./data/scenario/fumi_hensin.csv", function(data){
//読み込まれたファイル

	f.hensin_list_moto = data;
	f.hensin_list_kouryakutaishou = [];
	f.hensin_list_kouryakutaishou = data.split("\n");
	//ラベルの位置までジャンプ
	TG.kag.stat.is_stop = false;
	TG.kag.ftag.startTag("jump",{target:"*complete_load_hensin_list_kouryakutaishou"}); 
});
[endscript]
[s]
*complete_load_hensin_list_kouryakutaishou

[iscript]
	f.hensin_list_hairetsu = [];
for( var i = 0 , l = f.hensin_list_kouryakutaishou.length ; i < l ; i++ ){
	f.hensin_list_hairetsu[i] = f.hensin_list_kouryakutaishou[i].split(",");
	for( var j = 0 , m = f.hensin_list_hairetsu[i].length ; j < m ; j++ ){//trimも同時に行っておく
		f.hensin_list_hairetsu[i][j] = f.hensin_list_hairetsu[i][j].replace( /(^\s+)|(\s+$)/g , ""  );
	}
}
	//ラベルの位置までジャンプ
	TG.kag.stat.is_stop = false;
	TG.kag.ftag.startTag("jump",{target:"*complete_load_hensin_list_hairetsu"}); 

[endscript]
[s]
*complete_load_hensin_list_hairetsu

;手紙到着フラグON
[iscript]	
f.fumi_list_all_title = [];
f.fumi_list_all_title[0] = "三月　「最初の手紙」　黒田 将貴";
f.fumi_list_all_storage = [];
f.fumi_list_all_storage[0] = "fumi_kuroda.ks";
f.fumi_list_all_target = [];
f.fumi_list_all_target[0] = "*kuroda_fumi1";
f.fumi_list_all_location_taishou = [];
f.fumi_list_all_location_taishou[0] = 0;
f.fumi_list_all_location_fumi = [];
f.fumi_list_all_location_fumi[0] = 0;
f.fumi_list_kuroda_location_fumi = [];
f.fumi_list_kuroda_location_fumi[0] = 0;
f.fumi_list_kuroda_title = [];
f.fumi_list_kuroda_title[0] = "三月　「最初の手紙」";
f.fumi_list_kuroda_target = [];
f.fumi_list_kuroda_target[0] = "*kuroda_fumi1";
f.fumi_kuroda_number = f.fumi_list_kuroda_title.length;
if (f.kuroda_fumi1_midoku == 0){
f.midoku_list_hairetsu[0][0] = 0;
}

f.fumi_list_all_title.push("三月　「最初の手紙」　財前 美彬");
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi1");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(0);
f.fumi_list_zaizen_location_fumi = [];
f.fumi_list_zaizen_location_fumi[0] = 0;
f.fumi_list_zaizen_title = [];
f.fumi_list_zaizen_title[0] = "三月　「最初の手紙」";
f.fumi_list_zaizen_target = [];
f.fumi_list_zaizen_target[0] = "*zaizen_fumi1";
f.fumi_zaizen_number = f.fumi_list_zaizen_title.length;
if (f.zaizen_fumi1_midoku == 0){
f.midoku_list_hairetsu[1][0] = 0;
}

f.fumi_list_all_title.push("三月　「最初の手紙」　四条 華織");
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_sijyou_storage=[];
f.fumi_list_sijyou_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi1");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(0);
f.fumi_list_sijyou_location_fumi = [];
f.fumi_list_sijyou_location_fumi[0] = 0;
f.fumi_list_sijyou_title = [];
f.fumi_list_sijyou_title[0] = "三月　「最初の手紙」";
f.fumi_list_sijyou_target = [];
f.fumi_list_sijyou_target[0] = "*sijyou_fumi1";
f.fumi_sijyou_number = f.fumi_list_sijyou_title.length;
if (f.sijyou_fumi1_midoku == 0){
f.midoku_list_hairetsu[2][0] = 0;
}

if (f.event_katuraginomiya[1] == 1){
	//葛城宮手紙到着準備
	f.fumi_list_all_title.push("六月 「最初の手紙」 葛城宮 晴仁");
	f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
	f.fumi_list_all_target.push("*katuraginomiya_fumi00");
	f.fumi_list_all_location_taishou.push(3);
	f.fumi_list_all_location_fumi.push(1);

	f.fumi_list_katuraginomiya_location_fumi = [];
	f.fumi_list_katuraginomiya_location_fumi[0] = 1;
	f.fumi_list_katuraginomiya_title = [];
	f.fumi_list_katuraginomiya_title[0] = "六月 「最初の手紙」";
	f.fumi_list_katuraginomiya_target = [];
	f.fumi_list_katuraginomiya_target[0] = "*katuraginomiya_fumi00";
	f.midoku_list_hairetsu[3][1] = 0;
	f.hensin_list_hairetsu[3][1] = 1;

}
if (f.event_hujieda[1] == 1){
	//藤枝手紙到着準備
	f.fumi_all_title_new="四月 「鳩の届けた手紙　一」"; //←仮タイトルです。お好みに変更してください
	f.fumi_hujieda_title_new="四月 「鳩の届けた手紙　一」"; //←仮タイトルです。お好みに変更してください
	f.fumi_list_all_title.push(f.fumi_all_title_new);
	f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
	f.fumi_list_all_target.push("*hujieda_fumi01");
	f.fumi_list_all_location_taishou.push(4);
	f.fumi_list_all_location_fumi.push(1);
	f.fumi_list_hujieda_location_fumi = [];
	f.fumi_list_hujieda_location_fumi[0] = 1;
	f.fumi_list_hujieda_title = [];
	f.fumi_list_hujieda_title[0] = "四月 「鳩の届けた手紙 一」";
	f.fumi_list_hujieda_target = [];
	f.fumi_list_hujieda_target[0] = "*hujieda_fumi01";
	f.hensin_list_hairetsu[4][1] = -1;
	f.midoku_list_hairetsu[4][1] = 0;
}

/*
f.fumi_list_all_title.push("「最初の手紙」　葛城宮 晴仁");
f.fumi_list_all_storage.push("fumi_katuraginomiya.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi1");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(0);
f.fumi_list_katuraginomiya_location_fumi = [];
f.fumi_list_katuraginomiya_location_fumi[0] = 0;
f.fumi_list_katuraginomiya_title = [];
f.fumi_list_katuraginomiya_title[0] = "「最初の手紙」";
f.fumi_list_katuraginomiya_target = [];
f.fumi_list_katuraginomiya_target[0] = "*katuraginomiya_fumi1";
f.fumi_katuraginomiya_number = f.fumi_list_katuraginomiya_title.length;
if (f.katuraginomiya_fumi1_midoku == 0){
f.midoku_list_hairetsu[3][0] = 0;
}

f.fumi_list_all_title.push("「最初の手紙」　藤枝　肇");
f.fumi_list_all_storage.push("fumi_hujieda.ks");
f.fumi_list_all_target.push("*hujieda_fumi1");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(0);
f.fumi_list_hujieda_location_fumi = [];
f.fumi_list_hujieda_location_fumi[0] = 0;
f.fumi_list_hujieda_title = [];
f.fumi_list_hujieda_title[0] = "「最初の手紙」";
f.fumi_list_hujieda_target = [];
f.fumi_list_hujieda_target[0] = "*hujieda_fumi1";
f.fumi_hujieda_number = f.fumi_list_hujieda_title.length;
if (f.hujieda_fumi1_midoku == 0){
f.midoku_list_hairetsu[4][0] = 0;
}
*/

//◆手紙（全員）総数計算
f.fumi_all_number = f.fumi_list_all_title.length;
[endscript]


;◆お稽古初回のみ表示
[if exp="sf.KSKIP == 'ON' && sf.trail_okeiko_intro == undefined"]
;	[skipstop]
[endif]
;◆テスト画面から来た場合や周回時はカット
[if exp="tf.test_gamen == true"]
@jump storage="okeiko.ks" target=*okeiko_main
[endif]
;黒田チェック
[if exp="sf.ED_kuroda_bad == 1 || sf.ED_kuroda_normal == 1 || sf.ED_kuroda_good == 1"]
@jump storage="okeiko.ks" target=*okeiko_main
[endif]
;四条チェック
[if exp="sf.ED_sijyou_bad == 1 || sf.ED_sijyou_normal == 1 || sf.ED_sijyou_good == 1"]
@jump storage="okeiko.ks" target=*okeiko_main
[endif]
;財前チェック
[if exp="sf.ED_zaizen_bad1 == 1 || sf.ED_zaizen_bad2 == 1 || sf.ED_zaizen_normal == 1 || sf.ED_zaizen_good == 1"]
@jump storage="okeiko.ks" target=*okeiko_main
[endif]
;葛城宮チェック
[if exp="sf.ED_katuraginomiya_good == 1 || sf.ED_katuraginomiya_normal == 1 || sf.ED_katuraginomiya_bad == 1"]
@jump storage="okeiko.ks" target=*okeiko_main
[endif]
;藤枝チェック
[if exp="sf.ED_hujieda_good == 1 || sf.ED_hujieda_normal == 1 || sf.ED_hujieda_bad == 1"]
@jump storage="okeiko.ks" target=*okeiko_main
[endif]

*intro
@jump storage="okeiko_start_intro.ks"

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

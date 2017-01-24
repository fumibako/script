﻿
*start

;==============================
; 変数設定
;==============================

;◆主人公初期パラメータ
[iscript]
f.para_shujinkou_shukujodo=1;
f.para_shujinkou_tairyoku_max=10;
;f.para_shujinkou_tairyoku_now = 5;
f.para_shujinkou_tairyoku_now = f.para_shujinkou_tairyoku_max;
f.para_shujinkou_kiryoku_max=10;
f.para_shujinkou_kiryoku_now = f.para_shujinkou_kiryoku_max;
f.para_shujinkou_exp_sadou=0;
f.count_qk = 0;
;↓各お稽古科目熟練度Max値
f.para_shujinkou_jukuren_max=100;
f.para_shujinkou_j_sadou=0;
f.para_shujinkou_j_kadou=0;
f.para_shujinkou_j_reihou=0;
f.para_shujinkou_j_gogaku=0;
f.para_shujinkou_j_koto=0;
f.para_shujinkou_j_naginata=0;
f.para_shujinkou_koto_kaisuu=0; //その月にお箏のお稽古をした回数


f.para_shujinkou_status_max=100;
f.para_shujinkou_status_a=1;
f.para_shujinkou_status_b=1;
f.para_shujinkou_status_c=1;
f.para_shujinkou_status_d=1;
f.para_shujinkou_status_e=1;

f.viewing_target="";
f.oaite_viewing_target="";
[endscript]

;◆お稽古パラメータ
;◇各科目で上がるパラメータ設定
;1～10の乱数  f.dice=Math.floor(Math.random() * 10 + 1);
[iscript]
f.okeiko_hituyou_tairyoku=8;
f.okeiko_hituyou_kiryoku=2;
//◇休憩の回復量
f.okeiko_qk_up_tairyoku=40;
f.okeiko_qk_up_kiryoku=40;
[endscript]
;◆手紙パラメータ
[iscript]
f.fumi_hituyou_tairyoku=2;
f.fumi_hituyou_kiryoku=8;
f.fumi_toutyaku=0;
f.fumi_toutyaku_oaite=[];
f.fumi_henji=0; //返信機能を使ったかどうかの変数。一度でも返信したら1を代入(fumi_wadai.ks*fumi_okで使用)

//◆EDパラメータ
sf.ED_kuroda_bad=0;
sf.ED_kuroda_normal=0;
sf.ED_kuroda_good=0;



//◆イベントパラメータ(sf.event_～は他ルートでの既読処理やおまけ機能の回想シーン（できるかどうか不明ですが）など用、f.event_～はそのルートでの重複防止処理及びフラグチェック用）
sf.event_common=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント100個まで対応
sf.event_kuroda=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
sf.event_zaizen=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
sf.event_sijyou=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
sf.event_katuraginomiya=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
sf.event_hujieda=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応

sf.event_machi_common=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
sf.event_machi_kuroda=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
sf.event_machi_zaizen=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
sf.event_machi_sijyou=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
sf.event_machi_katuraginomiya=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
sf.event_machi_hujieda=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応

f.event_common=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント100個まで対応
f.event_kuroda=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
f.event_zaizen=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
f.event_sijyou=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
f.event_katuraginomiya=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
f.event_hujieda=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応

f.event_machi_common=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
f.event_machi_kuroda=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
f.event_machi_zaizen=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
f.event_machi_sijyou=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
f.event_machi_katuraginomiya=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
f.event_machi_hujieda=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応

[endscript]

;◆攻略キャラ人数初期化
[eval exp="sf.kouryaku_ninzuu=1"]
;◆攻略キャラ実装…"root":1,隠す="root":0
;黒田
[iscript]
sf.kuroda ={
  "root":1,
  "code":"kuroda",
  "myouji":"黒田",
  "namae":"将貴",
  "fullname":"黒田 将貴",
  "koukando_a":20,
  "koukando_b":50,
  "koukando_c":80,
  "fumi_hindo_week":3,
  "fumi_henjimachi_ok_number":0,
  "isono1":"kuroda_isono1",
  "info1":"info_kuroda",
  "fumibako":"fumibako_kuroda",
  "ask1":"黒田将貴様について",
  "fumi1":"kuroda_fumi1",
}; 
f.para_kuroda_koukando=5;
f.para_kuroda_sintyou=169;
f.para_kuroda_taijuu=57;
f.para_kuroda_shumi="－";
f.kuroda_fumi_henjimachi=1;
f.kuroda_fumi_toutyakumachi=3; //話題の手紙に対してその攻略対象から返事が来るまでにかかる週数（初期）
f.kuroda_fumi_toutyakumachi_week=0; //その攻略対象にこちらから手紙を出してから、手紙が来るまでの経過週数(出した週を0とし、毎週加算される)
f.kuroda_nextfumi_common=2;
f.fumi_toutyaku_kuroda=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
f.kuroda_au=0; //個別ルートに入ったら1を代入

[endscript]

;財前
[iscript]
sf.zaizen ={
  "root":1,
  "code":"zaizen",
  "myouji":"財前",
  "namae":"美彬",
  "fullname":"財前 美彬",
  "koukando_a":50,
  "koukando_b":65,
  "koukando_c":80,
  "fumi_hindo_week":4,
  "fumi_henjimachi_ok_number":0,
  "isono1":"zaizen_isono1",
  "info1":"info_zaizen",
  "ask1":"(仮)財前美彬様について",
  "fumibako":"fumibako_zaizen",
  "fumi1":"zaizen_fumi1",
}; 
f.para_zaizen_koukando=0;
f.para_zaizen_sintyou=174;
f.para_zaizen_taijuu=62;
f.para_zaizen_shumi="－";
f.zaizen_fumi_henjimachi=1;
f.zaizen_fumi_toutyakumachi=3; //話題の手紙に対してその攻略対象から返事が来るまでにかかる週数（初期）
f.zaizen_fumi_toutyakumachi_week=0;
f.zaizen_nextfumi_common=2;
f.fumi_toutyaku_zaizen=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
f.zaizen_au=0; //個別ルートに入ったら1を代入
f.zaizen_koukando_bad=50; //(調整中)好感度がこの数値未満でbad2に。bad1は選択肢による分岐です
f.zaizen_reihou_good=80; //(調整中)礼法熟練度がこの数値以上かつ淑女度一定値以上、財前好感度がkoukando_c以上でgoodEDに
f.zaizen_koukando_up_event_fumi = 2; //(調整中)イベント中に届く手紙での好感度上昇値
[endscript]

;葛城宮 晴仁
[iscript]
sf.katuraginomiya ={
  "root":0,
  "code":"katuraginomiya",
  "myouji":"葛城宮",
  "namae":"1",
  "fullname":"葛城宮 晴仁",
  "koukando_a":30,
  "koukando_b":60,
  "koukando_c":80,
  "fumi_hindo_week":4,
  "fumi_henjimachi_ok_number":0,
  "isono1":"katuraginomiya_isono1",
  "info1":"info_katuraginomiya",
  "ask1":"葛城宮 晴仁様について",
  "fumibako":"fumibako_katuraginomiya",
}; 
f.para_katuraginomiya_koukando=10;
f.para_katuraginomiya_sintyou="?";
f.para_katuraginomiya_taijuu="?";
f.para_katuraginomiya_shumi="－";
f.katuraginomiya_fumi_henjimachi=1;
f.katuraginomiya_fumi_toutyakumachi=3; //話題の手紙に対してその攻略対象から返事が来るまでにかかる週数（初期）
f.katuraginomiya_fumi_toutyakumachi_week=0;
f.katuraginomiya_nextfumi_common=22; //到着判定無しの場合の到着処理No。エラー回避のため「虫干し」の22を仮指定
f.fumi_toutyaku_katuraginomiya=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
//↓葛城宮に手紙を出せるようになったら1。それ以外は0
f.katuraginomiya_fumi_start = 0;
f.katuraginomiya_au = 0; //個別ルートに入ったら1を代入
//↓葛城宮手紙タイトル配列をセット
f.fumi_list_katuraginomiya_title = [];
f.katuraginomiya_koukando_bad=50; //(調整中)好感度がこの数値未満でbadに。しかし選択肢分岐badでしたね！失礼しました。万が一使ってくださった場合に備えて残しています(藤枝のbad用変数は削除しました)
f.katuraginomiya_sadou_good=80; //(調整中)茶道熟練度がこの数値以上かつ淑女度一定値以上、葛城宮好感度がkoukando_c以上でgoodEDに
f.katuraginomiya_koukando_up_event_fumi = 2; //(調整中)イベント中に届く手紙での好感度上昇値
[endscript]

;藤枝　肇
[iscript]
sf.hujieda ={
  "root":0,
  "code":"hujieda",
  "myouji":"藤枝",
  "namae":"2",
  "fullname":"藤枝　肇",
  "koukando_a":30,
  "koukando_b":60,
  "koukando_c":80,
  "fumi_hindo_week":2,
  "fumi_henjimachi_ok_number":9,
  "isono1":"hujieda_isono1",
  "info1":"info_hujieda",
  "ask1":"藤枝　肇様について",
  "fumibako":"fumibako_hujieda",
  "fumi1":"hujieda_fumi1",
}; 
f.para_hujieda_koukando=5;
f.para_hujieda_sintyou="?";
f.para_hujieda_taijuu="?";
f.para_hujieda_shumi="－";
f.hujieda_fumi_henjimachi=1;
f.hujieda_fumi_toutyakumachi=3; //話題の手紙に対してその攻略対象から返事が来るまでにかかる週数（初期）
f.hujieda_fumi_toutyakumachi_week=0;
f.hujieda_nextfumi_common=8; //到着処理無しの時に飛ぶ到着処理No。エラー回避のため8「趣味について」を仮指定
f.fumi_toutyaku_hujieda=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
//↓藤枝に手紙を出せるようになったら1。それ以外は0
f.hujieda_fumi_start=0;
f.hujieda_au=0; //個別ルートに入ったら1を代入
f.fumi_list_hujieda_title = [];
f.hujieda_koto_good=80; //(調整中)お箏熟練度がこの数値以上かつ淑女度一定値以上、藤枝好感度がkoukando_c以上でgoodEDに
f.hujieda_koukando_up_event_fumi = 2; //(調整中)イベント中に届く手紙での好感度上昇値
[endscript]

;◆攻略キャラ配列
[iscript]
sf.kouryaku_list_fullname = [sf.kuroda['fullname']];//配列として宣言
sf.kouryaku_list_code = [sf.kuroda['code']];
sf.fumi_list1 = [sf.kuroda['fumi1']]; //手紙1リスト
sf.isono_list1 = [sf.kuroda['isono1']]; //Opening2で磯野に尋ねるジャンプターゲット名リスト
sf.ask_list1 = [sf.kuroda['ask1']]; //磯野に尋ねる内容リスト
sf.info_list1 = [sf.kuroda['info1']]; //攻略対象情報ラベルリスト
sf.fumibako_list = [sf.kuroda['fumibako']]; //文箱ラベルリスト

if (sf.zaizen['root'] == 0){
}else if (sf.zaizen['root'] == 1){
  sf.kouryaku_list_fullname.push(sf.zaizen['fullname']);
  sf.kouryaku_list_code.push(sf.zaizen['code']);
  sf.fumi_list1.push(sf.zaizen['fumi1']);
  sf.isono_list1.push(sf.zaizen['isono1']);
  sf.ask_list1.push(sf.zaizen['ask1']);
  sf.info_list1.push(sf.zaizen['info1']);
  sf.fumibako_list.push(sf.zaizen['fumibako']);
}
if (sf.katuraginomiya['root'] == 0){
}else if (sf.katuraginomiya['root'] == 1){
  sf.kouryaku_list_fullname.push(sf.katuraginomiya['fullname']);
  sf.kouryaku_list_code.push(sf.katuraginomiya['code']);
  sf.fumi_list1.push(sf.katuraginomiya['fumi1']);
  sf.isono_list1.push(sf.katuraginomiya['isono1']);
  sf.ask_list1.push(sf.katuraginomiya['ask1']);
  sf.info_list1.push(sf.katuraginomiya['info1']);
  sf.fumibako_list.push(sf.katuraginomiya['fumibako']);
}
if (sf.hujieda['root'] == 0){
}else if (sf.hujieda['root'] == 1){
  sf.kouryaku_list_fullname.push(sf.hujieda['fullname']);
  sf.kouryaku_list_code.push(sf.hujieda['code']);
  sf.fumi_list1.push(sf.hujieda['fumi1']);
  sf.isono_list1.push(sf.hujieda['isono1']);
  sf.ask_list1.push(sf.hujieda['ask1']);
  sf.info_list1.push(sf.hujieda['info1']);
  sf.fumibako_list.push(sf.hujieda['fumibako']);
}

;◆攻略キャラ人数計算
sf.kouryaku_ninzuu = sf.kouryaku_list_fullname.length;
[endscript]

;◆漢数字表示タグ：[emb exp="sf.kouryaku_ninzuu_kansuuji"]
[if exp="sf.kouryaku_ninzuu==5"]
[eval exp="sf.kouryaku_ninzuu_kansuuji='五'"]
[elsif exp="sf.kouryaku_ninzuu==4"]
[eval exp="sf.kouryaku_ninzuu_kansuuji='四'"]
[elsif exp="sf.kouryaku_ninzuu==3"]
[eval exp="sf.kouryaku_ninzuu_kansuuji='三'"]
[elsif exp="sf.kouryaku_ninzuu==2"]
[eval exp="sf.kouryaku_ninzuu_kansuuji='二'"]
[elsif exp="sf.kouryaku_ninzuu==1"]
[eval exp="sf.kouryaku_ninzuu_kansuuji='一'"]
[else]
[eval exp="sf.kouryaku_ninzuu_kansuuji='零'"]
[endif]

[return]

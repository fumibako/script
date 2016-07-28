
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

f.para_shujinkou_jukuren_max=100;
f.para_shujinkou_j_sadou=0;
f.para_shujinkou_j_kadou=0;
f.para_shujinkou_j_reihou=0;
f.para_shujinkou_j_gogaku=0;
f.para_shujinkou_j_koto=0;
f.para_shujinkou_j_naginata=0;

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
sf.event_jiyuuwaku1=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
sf.event_jiyuuwaku2=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応

sf.event_machi_common=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
sf.event_machi_kuroda=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
sf.event_machi_zaizen=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
sf.event_machi_sijyou=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
sf.event_machi_jiyuuwaku1=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
sf.event_machi_jiyuuwaku2=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応

f.event_common=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント100個まで対応
f.event_kuroda=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
f.event_zaizen=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
f.event_sijyou=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
f.event_jiyuuwaku1=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
f.event_jiyuuwaku2=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応

f.event_machi_common=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
f.event_machi_kuroda=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
f.event_machi_zaizen=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
f.event_machi_sijyou=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
f.event_machi_jiyuuwaku1=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応
f.event_machi_jiyuuwaku2=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//イベント50個まで対応

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
  "fumi2":"kuroda_fumi2",
  "fumi3":"kuroda_fumi3",
  "fumi4":"kuroda_fumi4",
  "fumi5":"kuroda_fumi5",
  "fumi6":"kuroda_fumi6",
  "fumi7":"kuroda_fumi7",
  "fumi8":"kuroda_fumi8",
  "fumi9":"kuroda_fumi9",
  "fumi10":"kuroda_fumi10",
  "fumi11":"kuroda_fumi11",
  "fumi12":"kuroda_fumi12",
  "fumi13":"kuroda_fumi13"
}; 
f.para_kuroda_koukando=5;
f.para_kuroda_sintyou=169;
f.para_kuroda_taijuu=57;
f.para_kuroda_shumi="－";
f.kuroda_fumi_henjimachi=1;
f.kuroda_fumi_toutyakumachi=3; //話題に対して返事が来る週数（初期）
f.kuroda_fumi_toutyakumachi_week=0;
f.kuroda_nextfumi_common=2;
f.fumi_toutyaku_kuroda=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
f.kuroda_au=0; //実際に会うことになったら1を代入
f.kuroda_fumi_toutyakumachi_shumi=-1;
f.kuroda_fumi_toutyakumachi_kazoku=-1;
f.kuroda_fumi_toutyakumachi_yuujin=-1;

[endscript]

;財前
[iscript]
sf.zaizen ={
  "root":1,
  "code":"zaizen",
  "myouji":"(仮)財前",
  "namae":"美彬",
  "fullname":"(仮)財前 美彬",
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
  "fumi2":"zaizen_fumi2",
  "fumi3":"zaizen_fumi3",
  "fumi4":"zaizen_fumi4",
  "fumi5":"zaizen_fumi5",
  "fumi6":"zaizen_fumi6",
  "fumi7":"zaizen_fumi7",
  "fumi8":"zaizen_fumi8",
  "fumi9":"zaizen_fumi9",
  "fumi10":"zaizen_fumi10"
}; 
f.para_zaizen_koukando=0;
f.para_zaizen_sintyou=174;
f.para_zaizen_taijuu=62;
f.para_zaizen_shumi="－";
f.zaizen_fumi_henjimachi=1;
f.zaizen_fumi_toutyakumachi_week=0;
f.zaizen_nextfumi_common=2;
f.fumi_toutyaku_zaizen=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
f.zaizen_au=0;
[endscript]

;四条華織
[iscript]
sf.sijyou ={
  "root":1,
  "code":"sijyou",
  "myouji":"(仮)四条",
  "namae":"華織",
  "fullname":"(仮)四条 華織",
  "koukando_a":40,
  "koukando_b":65,
  "koukando_c":90,
  "fumi_hindo_week":3,
  "fumi_henjimachi_ok_number":1,
  "isono1":"sijyou_isono1",
  "info1":"info_sijyou",
  "ask1":"(仮)四条華織様について",
  "fumibako":"fumibako_sijyou",
  "fumi1":"sijyou_fumi1",
  "fumi2":"sijyou_fumi2",
  "fumi3":"sijyou_fumi3",
  "fumi4":"sijyou_fumi4",
  "fumi5":"sijyou_fumi5",
  "fumi6":"sijyou_fumi6",
  "fumi7":"sijyou_fumi7",
  "fumi8":"sijyou_fumi8",
  "fumi9":"sijyou_fumi9",
  "fumi10":"sijyou_fumi10"
}; 
f.para_sijyou_koukando=10;
f.para_sijyou_sintyou=178;
f.para_sijyou_taijuu=65;
f.para_sijyou_shumi="－";
f.sijyou_fumi_henjimachi=1;
f.sijyou_fumi_toutyakumachi_week=0;
f.sijyou_nextfumi_common=2;
f.fumi_toutyaku_sijyou=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
f.sijyou_au=0;

[endscript]

;自由枠1
[iscript]
sf.jiyuuwaku1 ={
  "root":1,
  "code":"jiyuuwaku1",
  "myouji":"(仮)自由枠",
  "namae":"1",
  "fullname":"(仮)自由枠1",
  "koukando_a":30,
  "koukando_b":60,
  "koukando_c":80,
  "fumi_hindo_week":4,
  "fumi_henjimachi_ok_number":0,
  "isono1":"jiyuuwaku1_isono1",
  "info1":"info_jiyuuwaku1",
  "ask1":"(仮)自由枠1様について",
  "fumibako":"fumibako_jiyuuwaku1",
  "fumi1":"jiyuuwaku1_fumi1",
  "fumi2":"jiyuuwaku1_fumi2",
  "fumi3":"jiyuuwaku1_fumi3",
  "fumi4":"jiyuuwaku1_fumi4",
  "fumi5":"jiyuuwaku1_fumi5",
  "fumi6":"jiyuuwaku1_fumi6",
  "fumi7":"jiyuuwaku1_fumi7",
  "fumi8":"jiyuuwaku1_fumi8",
  "fumi9":"jiyuuwaku1_fumi9",
  "fumi10":"jiyuuwaku1_fumi10"
}; 
f.para_jiyuuwaku1_koukando=-5;
f.para_jiyuuwaku1_sintyou="?";
f.para_jiyuuwaku1_taijuu="?";
f.para_jiyuuwaku1_shumi="－";
f.jiyuuwaku1_fumi_henjimachi=1;
f.jiyuuwaku1_fumi_toutyakumachi_week=0;
f.jiyuuwaku1_nextfumi_common=2;
f.fumi_toutyaku_jiyuuwaku1=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
f.jiyuuwaku1_au=0;

[endscript]

;自由枠2
[iscript]
sf.jiyuuwaku2 ={
  "root":1,
  "code":"jiyuuwaku2",
  "myouji":"(仮)自由枠",
  "namae":"2",
  "fullname":"(仮)自由枠2",
  "koukando_a":30,
  "koukando_b":60,
  "koukando_c":80,
  "fumi_hindo_week":2,
  "fumi_henjimachi_ok_number":9,
  "isono1":"jiyuuwaku2_isono1",
  "info1":"info_jiyuuwaku2",
  "ask1":"(仮)自由枠2様について",
  "fumibako":"fumibako_jiyuuwaku2",
  "fumi1":"jiyuuwaku2_fumi1",
  "fumi2":"jiyuuwaku2_fumi2",
  "fumi3":"jiyuuwaku2_fumi3",
  "fumi4":"jiyuuwaku2_fumi4",
  "fumi5":"jiyuuwaku2_fumi5",
  "fumi6":"jiyuuwaku2_fumi6",
  "fumi7":"jiyuuwaku2_fumi7",
  "fumi8":"jiyuuwaku2_fumi8",
  "fumi9":"jiyuuwaku2_fumi9",
  "fumi10":"jiyuuwaku2_fumi10"
}; 
f.para_jiyuuwaku2_koukando=20;
f.para_jiyuuwaku2_sintyou="?";
f.para_jiyuuwaku2_taijuu="?";
f.para_jiyuuwaku2_shumi="－";
f.jiyuuwaku2_fumi_henjimachi=1;
f.jiyuuwaku2_fumi_toutyakumachi_week=0;
f.jiyuuwaku2_nextfumi_common=2;
f.fumi_toutyaku_jiyuuwaku2=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
f.jiyuuwaku2_au=0;

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
if (sf.sijyou['root'] == 0){
}else if (sf.sijyou['root'] == 1){
  sf.kouryaku_list_fullname.push(sf.sijyou['fullname']);
  sf.kouryaku_list_code.push(sf.sijyou['code']);
  sf.fumi_list1.push(sf.sijyou['fumi1']);
  sf.isono_list1.push(sf.sijyou['isono1']);
  sf.ask_list1.push(sf.sijyou['ask1']);
  sf.info_list1.push(sf.sijyou['info1']);
  sf.fumibako_list.push(sf.sijyou['fumibako']);
}
if (sf.jiyuuwaku1['root'] == 0){
}else if (sf.jiyuuwaku1['root'] == 1){
  sf.kouryaku_list_fullname.push(sf.jiyuuwaku1['fullname']);
  sf.kouryaku_list_code.push(sf.jiyuuwaku1['code']);
  sf.fumi_list1.push(sf.jiyuuwaku1['fumi1']);
  sf.isono_list1.push(sf.jiyuuwaku1['isono1']);
  sf.ask_list1.push(sf.jiyuuwaku1['ask1']);
  sf.info_list1.push(sf.jiyuuwaku1['info1']);
  sf.fumibako_list.push(sf.jiyuuwaku1['fumibako']);
}
if (sf.jiyuuwaku2['root'] == 0){
}else if (sf.jiyuuwaku2['root'] == 1){
  sf.kouryaku_list_fullname.push(sf.jiyuuwaku2['fullname']);
  sf.kouryaku_list_code.push(sf.jiyuuwaku2['code']);
  sf.fumi_list1.push(sf.jiyuuwaku2['fumi1']);
  sf.isono_list1.push(sf.jiyuuwaku2['isono1']);
  sf.ask_list1.push(sf.jiyuuwaku2['ask1']);
  sf.info_list1.push(sf.jiyuuwaku2['info1']);
  sf.fumibako_list.push(sf.jiyuuwaku2['fumibako']);
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

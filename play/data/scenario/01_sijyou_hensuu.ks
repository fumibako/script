*start

;==============================
; 変数設定
;==============================

;四条華織
[iscript]
sf.sijyou ={
  "root":1,
  "code":"sijyou",
  "myouji":"四条",
  "namae":"華織",
  "fullname":"四条 華織",
  "koukando_a":40, //その攻略対象が"親しい"態度に変わる好感度第1段階(こちらから手紙を出した際の攻略対象から手紙が届くまでの期間が1週早くなる)
  "koukando_b":65, //その攻略対象が"さらに親しい"態度に変わる好感度第2段階(こちらから手紙を出した際の攻略対象から手紙が届くまでの期間がさらに1週早くなる)
  "koukando_c":90, //その攻略対象が"最も親しい"態度に変わる好感度最終段階(goodED条件の一つ。手紙が届く期間は変化なし)
  "fumi_hindo_week":3,
//↓その攻略対象が許容できる返事待ちの手紙数。例えば1なら返事待ちが1通あっても手紙が来るが、2通以上お返事を溜めると新たな手紙が来なくなる
  "fumi_henjimachi_ok_number":1,
  "isono1":"sijyou_isono1",
  "info1":"info_sijyou",
  "ask1":"(仮)四条華織様について",
  "fumibako":"fumibako_sijyou",
  "fumi1":"sijyou_fumi1",
}; 
f.para_sijyou_koukando=10;
f.para_sijyou_sintyou=178;
f.para_sijyou_taijuu=65;
f.para_sijyou_shumi="－";
f.sijyou_fumi_henjimachi=1; //←現在溜めている返事待ち手紙数(オープニングで手紙をもらうため、黒田、財前、四条は初期値=1)
f.sijyou_fumi_toutyakumachi=3; //話題の手紙に対してその攻略対象から返事が来るまでにかかる週数（初期）
f.sijyou_fumi_toutyakumachi_week=0; //その攻略対象にこちらから手紙を出してから、手紙が来るまでの経過週数(出した週を0とし、毎週加算される)
f.sijyou_nextfumi_common=2;
//↓配列情報(攻略対象全手紙の到着未着情報管理配列)手紙120通まで対応
f.fumi_toutyaku_sijyou=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
//↓四条ルートに入った後=1。それ以外=0
f.sijyou_au=0;
//↓お見合い後=1。それ以外=0
f.sijyou_omiai=0;
//↓イベント6後=1。それ以外=0
f.sijyou_event6=0;
[endscript]

;◆攻略キャラ配列
[iscript]
if (sf.sijyou['root'] == 0){
}else if (sf.sijyou['root'] == 1){
  sf.kouryaku_list_fullname.push(sf.sijyou['fullname']);
  sf.kouryaku_list_code.push(sf.sijyou['code']);
//  sf.fumi_list1.push(sf.sijyou['fumi1']); //opening2.ksにてかつて使用していた配列です。今は使っていないはずですが、エラーになったら怖いので残しています。
//   sf.isono_list1.push(sf.sijyou['isono1']); //opening2.ksにてかつて使用していた配列です。今は使っていないはずですが、エラーになったら怖いので残しています
//   sf.ask_list1.push(sf.sijyou['ask1']); //opening2.ksにてかつて使用していた配列です。今は使っていないはずですが、エラーになったら怖いので残しています
//   sf.info_list1.push(sf.sijyou['info1']);
  sf.fumibako_list.push(sf.sijyou['fumibako']);
}
[endscript]

;sf.event_sijyouとf.event_sijyou(イベントを見たかどうかのフラグチェック用配列)は他キャラと並べて"hensuu.ks"にて設定しています
[return]

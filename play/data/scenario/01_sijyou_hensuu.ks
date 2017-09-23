﻿*start
;==============================
; 変数設定
;==============================

;四条華織
[iscript]
sf.sijyou ={
  "root" : 1,
  "code" : "sijyou",
  "myouji" : "四条",
  "namae" : "華織",
  "fullname" : "四条 華織",
  "koukando_a" : 10, //その攻略対象が"親しい"態度に変わる好感度の数値です。自由に設定してください(好感度がこの設定数値以上になると、こちらから手紙を出した際の攻略対象から手紙が届くまでの期間が1週早くなる)
  "koukando_b" : 65, //その攻略対象が"さらに親しい"態度に変わる好感度の数値です。自由に設定してください(こちらから手紙を出した際の攻略対象から手紙が届くまでの期間がさらに1週早くなる)
  "koukando_c" : 90, //その攻略対象が"最も親しい"態度に変わる好感度の数値です。自由に設定してください(goodED条件の一つ。現状のシステム上では手紙が届く期間は変化なしですが、到着判定処理などに絡めてくださっても大丈夫です)
  "fumi_hindo_week" : 3, //手紙を送ってから四条が返事をくれるまでの週数です(初期値)。3の場合例えば4月1週に送って4月4週に返事が来ます。自由に設定してください。短く設定すると、上記a,bの好感度による週数変化の楽しみ？は減ることになります
  "fumi_henjimachi_ok_number" : 1, //その攻略対象が許容できる返事待ちの手紙数。例えば1なら返事待ちが1通あっても手紙が来ますが、2通以上お返事を溜めると新たな手紙が来なくなります
  "isono1" : "sijyou_isono1", //ここからしばらくはopening2や文箱表示関係で使用している変数です。当初シナリオ中の選択肢ラベルなども全てhensuu.ksで処理しようとして作ったものですが、非効率だと気付いて中止しました。組み込んでしまったもの少数はそのまま残しています。
  "info1" : "info_sijyou",
  "ask1" : "四条華織様について",
  "fumibako" : "fumibako_sijyou",
  "fumi1" : "sijyou_fumi1",
}; 
f.para_sijyou_koukando = 5; //←攻略対象好感度初期値です。自由に変更してください＿2/2調整更新夢イベント偏りを減らすため10→5
f.para_sijyou_sintyou = 178; //←攻略対象情報に表示される身長です。自由に変更してください
f.para_sijyou_taijuu = 65; //←攻略対象情報に表示される体重です。自由に変更してください
f.para_sijyou_shumi = "花の世話"; //←攻略対象情報に表示される趣味欄の内容です。自由に変更してください
f.sijyou_fumi_henjimachi = 1; //←現在溜めている返事待ち手紙数(オープニングで手紙をもらうため、黒田、財前、四条は初期値=1)
f.sijyou_fumi_toutyakumachi = 3; //話題の手紙に対してその攻略対象から返事が来るまでにかかる週数（初期）
f.sijyou_fumi_toutyakumachi_week = 0; //その攻略対象にこちらから手紙を出してから、手紙が来るまでの経過週数(出した週を0とし、毎週加算される)
f.sijyou_nextfumi_common = 2;
//↓配列情報(攻略対象全手紙の到着未着情報管理配列)手紙120通まで対応
f.fumi_toutyaku_sijyou = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
//↓四条ルートに入った後=1。それ以外=0
f.sijyou_au = 0;
//↓お見合い後 = 1。それ以外=0
f.sijyou_omiai = 0;
//↓イベント6後=1。それ以外=0
f.sijyou_event6 = 0;
f.sijyou_koukando_up_event_fumi = 2; //(調整中)イベント中に届く手紙での好感度上昇値
//↓四条：祖母を(見た=true。見ていない=false)
f.sijyou_sobo = false;
f.sijyou_fumi_toutyakumachi_shumi = -1;
f.sijyou_fumi_toutyakumachi_sigoto = -1;
f.sijyou_fumi_toutyakumachi_kazoku = -1;
f.sijyou_fumi_toutyakumachi_kisetsu = -1;
f.sijyou_fumi_toutyakumachi_shourai = -1;
f.sijyou_fumi_toutyakumachi_yuujin = -1;
f.sijyou_fumi_toutyakumachi_shokuji = -1;
f.sijyou_fumi_toutyakumachi_kangeki = -1;
f.sijyou_fumi_toutyakumachi_neko = -1;
f.sijyou_fumi_toutyakumachi_kiki = -1;
f.sijyou_fumi_toutyakumachi_midori = -1;
f.sijyou_fumi_toutyakumachi_photo = -1;
f.sijyou_fumi_toutyakumachi_hajimari = -1;
f.sijyou_fumi_toutyakumachi_music = -1;
f.sijyou_fumi_toutyakumachi_michi = -1;
f.sijyou_fumi_toutyakumachi_henka = -1;
f.sijyou_fumi_toutyakumachi_dokusho = -1;
f.sijyou_fumi_toutyakumachi_sports = -1;
f.sijyou_fumi_toutyakumachi_sintya = -1;
f.sijyou_fumi_toutyakumachi_satuki = -1;
f.sijyou_fumi_toutyakumachi_aburidasi = -1;
f.sijyou_fumi_toutyakumachi_kaidan = -1;
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

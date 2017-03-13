;=============================================
;お稽古パート：イベント判定(週始め)
;=============================================
*start

;◆イベント発生判定
*event_hantei

;=============================================
;◆共通イベント判定：助言以外
;=============================================
;◆夢イベント判定：イベント 6月2週になった時点で、攻略対象(四条、財前、黒田)の好感度一定値以上又は藤枝イベント発生中の状態なら1度だけ発生(まだコピペしただけです。全員の組み込み後に調整しようと思います)
;[if exp="(f.okeiko_month==6 && f.okeiko_week==2) && f.event_common[11]==0 && (f.para_kuroda_koukando > 30 || f.para_zaizen_koukando > 30 || f.para_sijyou_koukando > 30 || f.para_katuraginomiya_koukando > 30|| f.para_hujieda_koukando > 30)"]
;	[eval exp="f.event_storage='common_9_1.ks'"]
;	[eval exp="f.event_target='*replay_common_9_1'"]
;	[eval exp="f.event_type='talk'"]
;	[eval exp="f.event_common[11]=1"]
;	@jump storage="event.ks" target=*start
;[endif]

;◆顔合せのお相手選びイベント判定：イベント 9月1週になった時点で、攻略対象の好感度一定値以上なら1度だけ発生
;↓お相手候補が葛城宮だけの場合は葛城宮イベント判定へ
[if exp="(f.okeiko_month == 9 && f.okeiko_week == 1) && f.katuraginomiya_only == 1"]
@jump target=*katuraginomiya_event_hantei
;↓葛城宮Onlyではないものの葛城宮条件を満たし、他の候補の好感度等条件を満たさない結果葛城宮のみ候補となる場合も葛城宮イベント判定へ
[elsif exp="(f.okeiko_month == 9 && f.okeiko_week == 1) && (f.para_katuraginomiya_koukando >= 20 && f.para_shujinkou_shukujodo >= 30) && (f.para_kuroda_koukando < 30 && f.para_zaizen_koukando < 30 && f.para_sijyou_koukando < 30)"]
@jump target=*katuraginomiya_event_hantei
;黒田、財前、四条の進行条件を満たすと共通イベントcommon_9_1発生
[elsif exp="(f.okeiko_month == 9 && f.okeiko_week == 1) && f.event_common[10] == 0 && (f.para_kuroda_koukando >= 30 || (f.para_zaizen_koukando >= 30 && f.para_shujinkou_shukujodo >= f.zaizen_shukujodo) || f.para_sijyou_koukando >= 30)"]

;好感度と淑女度により、選択可能なお相手を調べる
[iscript]
f.common_9_1_storage = [];
f.common_9_1_target = [];
f.common_9_1_oaite = [];
f.common_9_1_oaite_full = [];
f.common_9_1_oaite_exp = [];

if (f.para_kuroda_koukando >= 30) {
  f.common_9_1_storage.push("kuroda_9_1.ks");
  f.common_9_1_target.push("*from_common_9_1");
  f.common_9_1_oaite.push("黒田様");
  f.common_9_1_oaite_full.push("黒田 将貴");
  f.common_9_1_oaite_exp.push("f.kuroda_au = 1"); //葛城宮以外はボタンを押した段階で個別ルート決定するようにしてみます(シナリオ側の設定漏れ防止とテストし易さ目的)
}
if (f.para_zaizen_koukando >= 30 && f.para_shujinkou_shukujodo >= f.zaizen_shukujodo) {
  f.common_9_1_storage.push("zaizen/zaizen_9_1.ks");
  f.common_9_1_target.push("*replay_zaizenzaizen_9_1");
  f.common_9_1_oaite.push("財前様");
  f.common_9_1_oaite_full.push("財前 美彬");
  f.common_9_1_oaite_exp.push("f.zaizen_au = 1");
}
if (f.para_sijyou_koukando >= 30) {
  f.common_9_1_storage.push("sijyou/sijyou_9_1.ks");
  f.common_9_1_target.push("*replay_sijyou_9_1");
  f.common_9_1_oaite.push("四条様");
  f.common_9_1_oaite_full.push("四条 華織");
  f.common_9_1_oaite_exp.push("f.sijyou_au = 1");
}
f.common_9_1_ninzuu = 0;
f.common_9_1_ninzuu = f.common_9_1_oaite.length;
[endscript]

	[eval exp="f.event_storage='common_9_1.ks'"]
	[eval exp="f.event_target='*replay_common_9_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[10] = 1"]
	@jump storage="event.ks" target=*start
[endif]
*common_9_1_hantei_owari

;◆badED判定 9月、誰のルートにも進行しない場合に(8月4週と同じ)badED(9月1週はお相手未定以外)
[if exp="((f.okeiko_month == 9 && f.okeiko_week == 1 && f.event_oaite_mitei != 1) || (f.okeiko_month == 9 && f.okeiko_week != 1)) && f.event_common[9]==0 && f.kuroda_au == 0 && f.sijyou_au == 0 && f.zaizen_au == 0 && f.katuraginomiya_au == 0 && f.hujieda_au == 0"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_8_4_badED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[9] = 1"]
	@jump storage="event.ks" target=*start
[endif]

;=============================================
;誰かとのお見合いが決定している　テストでみたいのでそのままスキップせず　一回代入したらスキップへ
[if exp="(f.kuroda_au == 1 || f.sijyou_au == 1 || f.zaizen_au == 1) && f.omiai_kettei != 1"]
[eval exp="f.omiai_kettei=1"]
[endif]

;◆各個別ルート(又はonly時)には対象キャラクターイベント判定のみ行う
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
;◆四条イベント判定
;=============================================
*sijyou_event_hantei
@jump storage="01_sijyou_event_hantei_week_hajime.ks" target=*start
*sijyou_event_hantei_owari
[if exp="f.sijyou_au == 1"]
@jump target=*event_hantei_owari
[endif]

;=============================================
;◆財前イベント判定
;=============================================
*zaizen_event_hantei
@jump storage="event_hantei_week_hajime_zaizen.ks" target=*start
*zaizen_event_hantei_owari
[if exp="f.zaizen_au == 1"]
@jump target=*event_hantei_owari
[endif]

;=============================================
;◆葛城宮イベント判定
;=============================================
*katuraginomiya_event_hantei
;◆藤枝4月の箏イベントを見た場合は葛城宮イベント判定をスキップして藤枝判定へ
[if exp="f.event_hujieda[1] == 1"]
@jump target=*hujieda_event_hantei
[endif]
@jump storage="event_hantei_week_hajime_katuraginomiya.ks" target=*start
*katuraginomiya_event_hantei_owari
[if exp="f.katuraginomiya_au == 1 || f.katuraginomiya_only == 1"]
@jump target=*event_hantei_owari
[endif]

[if exp="f.event_katuraginomiya[21] == 1 && f.event_katuraginomiya[22] == 1"]
;◆最後の手紙１を見たときはスキップして藤枝判定へ
@jump target=*hujieda_event_hantei
[endif]

;=============================================
;◆藤枝イベント判定
;=============================================
*hujieda_event_hantei
@jump storage="event_hantei_week_hajime_hujieda.ks" target=*start
*hujieda_event_hantei_owari
[if exp="f.hujieda_au == 1"]
@jump target=*event_hantei_owari
[endif]

;=============================================
;◆黒田イベント判定
;=============================================
*kuroda_event_hantei
;◆黒田イベント判定【麦】6月4週になった時点で、黒田好感度一定値以上なら1度だけ発生
[if exp="(f.okeiko_month == 6 && f.okeiko_week == 4) && f.event_machi_kuroda[2] == 0 && f.para_kuroda_koukando > 3"]
	@jump storage="sansaku.ks" target=*sansaku_machi_kuroda_02
[endif]

;◆黒田イベント判定【友人からの忠告】8月4週になった時点で、黒田好感度一定値以上なら1度だけ発生
;[if exp="(f.okeiko_month == 8 && f.okeiko_week == 4) && f.event_machi_kuroda[3] == 1 && f.event_machi_kuroda[5] == 0 && f.para_kuroda_koukando > 20"]
;	@jump storage="sansaku.ks" target=*sansaku_machi_kuroda_05
;[endif]

;◆黒田イベント判定【顔合せ】判定 黒田ルートかつ9月3週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 9 && f.okeiko_week == 3) && f.event_kuroda[1] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_9_3.ks'"]
	[eval exp="f.event_target='*replay_kuroda_9_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[1]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【手紙が届く：紅葉散策お誘い】黒田ルートかつ9月4週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 9 && f.okeiko_week == 4) && f.event_kuroda[2] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_9_4.ks'"]
	[eval exp="f.event_target='*replay_kuroda_9_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[2]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【初デート】黒田ルートかつ10月3週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 10 && f.okeiko_week == 3) && f.event_kuroda[3] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_10_3.ks'"]
	[eval exp="f.event_target='*replay_kuroda_10_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[3]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【手紙が届く：散策お誘い】黒田ルートかつ10月4週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 10 && f.okeiko_week == 4) && f.event_kuroda[4] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_10_4.ks'"]
	[eval exp="f.event_target='*replay_kuroda_10_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[4]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【友人に会う】黒田ルートかつ11月1週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 11 && f.okeiko_week == 1) && f.event_kuroda[5] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_11_1.ks'"]
	[eval exp="f.event_target='*replay_kuroda_11_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[5]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【デート】黒田ルートかつ11月2週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 11 && f.okeiko_week == 2) && f.event_kuroda[6] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_11_2.ks'"]
	[eval exp="f.event_target='*replay_kuroda_11_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[6]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【黒田多忙と聞く】黒田ルートかつ11月3週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 11 && f.okeiko_week == 3) && f.event_kuroda[7] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_11_3.ks'"]
	[eval exp="f.event_target='*replay_kuroda_11_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[7]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【黒田母倒れデートキャンセル】黒田ルートかつ11月4週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 11 && f.okeiko_week == 4) && f.event_kuroda[8] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_11_4.ks'"]
	[eval exp="f.event_target='*replay_kuroda_11_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[8]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【黒田実験失敗と聞く→手紙を書こうと決意】黒田ルートかつ12月2週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 12 && f.okeiko_week == 2) && f.event_kuroda[9] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_12_2.ks'"]
	[eval exp="f.event_target='*replay_kuroda_12_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[9]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【分岐：badED】黒田ルートかつ12月3週になった時点で淑女度一定値未満好感度一定値未満又は麦の穂無しでbadED
[if exp="(f.okeiko_month == 12 && f.okeiko_week == 3) && f.event_kuroda[10] == 0 && f.kuroda_au == 1 &&(f.para_shujinkou_shukujodo <= 40 ||f.para_kuroda_koukando <= 50 || f.event_machi_kuroda[2] == 0)"]
	[eval exp="f.event_storage='kuroda_12_3_badED.ks'"]
	[eval exp="f.event_target='*replay_kuroda_12_3_badED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[10]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【分岐：normal/goodED】黒田ルートかつ12月3週になった時点で好感度一定値以上かつ麦の穂所持で1度だけ発生
[if exp="(f.okeiko_month == 12 && f.okeiko_week == 3) && f.event_kuroda[11] == 0 && f.kuroda_au == 1 && f.para_kuroda_koukando > 50 && f.event_machi_kuroda[2] == 1"]
	[eval exp="f.event_storage='kuroda_12_3.ks'"]
	[eval exp="f.event_target='*replay_kuroda_12_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[11]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【手紙が届く：年賀状】黒田ルートかつ1月1週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 1 && f.okeiko_week == 1) && f.event_kuroda[12] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_1_1.ks'"]
	[eval exp="f.event_target='*replay_kuroda_1_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[12]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【手紙が届く：お礼とお誘い】黒田ルートかつ1月4週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 1 && f.okeiko_week == 4) && f.event_kuroda[13] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_1_4.ks'"]
	[eval exp="f.event_target='*replay_kuroda_1_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[13]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【小料理屋】黒田ルートかつ2月2週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 2 && f.okeiko_week == 2) && f.event_kuroda[14] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_2_2.ks'"]
	[eval exp="f.event_target='*replay_kuroda_2_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[14]=1"]
	@jump storage="event.ks" target=*start
[endif]
*event_hantei_owari

;◆テスト画面からプレイの場合は助言イベントをカット→設定で選べるようにしました
[if exp="tf.advice_event_hyouji == 0"]
@jump target=*advice_event_owari
[endif]

;=============================================
;◆共通イベント判定：助言
;=============================================
;◆お稽古パート導入イベント判定 4月1週になった時点で1度だけ発生
[if exp="((f.okeiko_month==4 && f.okeiko_week==1) && f.event_common[0]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_1'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[0]=1"]
;↓その週のアドバイスイベント処理を(0=アドバイスイベント発生かつ未通過、1=通過済)「今週は何をしましょうか？」のセリフに影響
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆お稽古の助言イベント判定 4月2週になった時点でお稽古を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==4 && f.okeiko_week==2) && f.para_shujinkou_shukujodo==1 && f.event_common[1]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_2'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[1]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆散策の助言イベント判定 4月3週になった時点で散策を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==4 && f.okeiko_week==3) && f.event_machi_common[1]==0 && f.event_common[2]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_3'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[2]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆返信の助言イベント判定 4月4週になった時点で返信を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==4 && f.okeiko_week==4) && f.fumi_henji==0 && f.event_common[3]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_4'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[3]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆返信の忠告イベント判定 5月1週になった時点で返信を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==5 && f.okeiko_week==1) && f.fumi_henji==0 && f.event_common[4]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_5_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[4]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆お稽古の助言イベント判定 5月2週になった時点でお稽古を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==5 && f.okeiko_week==2) && f.para_shujinkou_shukujodo==1 && f.event_common[5]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_5_2'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[5]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆散策の助言イベント判定 5月3週になった時点で散策を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==5 && f.okeiko_week==3) && f.event_machi_common[1]==0 && f.event_common[6]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_5_3'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[6]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆返信の忠告イベント判定 5月4週になった時点で返信を一度もしていないと1度だけ発生
[if exp="(f.okeiko_month==5 && f.okeiko_week==4) && f.fumi_henji==0 && f.event_common[7]==0"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_5_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[7]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆「磯野に相談」イベント判定 5月中、他のアドバイスイベントが発生しなければ1度だけ発生
[if exp="f.okeiko_month==5 && f.event_common[12]==0"]
	[eval exp="f.event_storage='common_5_1.ks'"]
	[eval exp="f.event_target='*replay_common_5_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[12]=1"]
;	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

*advice_event_owari
*common_event_hantei_owari

[iscript]
alert("はじめファイル通過です");
[endscript]

@jump storage="okeiko.ks" target=*event_hantei_week_hajime_owari

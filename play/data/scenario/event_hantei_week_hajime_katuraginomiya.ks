﻿﻿﻿;=============================================
;◆葛城宮イベント判定(週始め)
;=============================================
*start

*katuraginomiya_event_hantei
;↓以下にイベント判定を追記
;テスト用 他攻略ｷｬﾗと比較できるようにイベントを見たら上がるようにしてありますが０入力等で一括調整してください
;5→0に調整しました。調整しやすく作ってくださってありがとうございます(◆jsYiJcqRkk
;初期値5+イベント中の手紙2通x2+(お返事を溜めていなければ届く)季節の便り6～8月分=8月4週でこちらから手紙を出さなければ好感度15前後予定
[eval exp="tf.koukando_eventup_katuraginomiya = 0"]
;===================================================================================================================================================
;1◆葛城宮オンリーイベント判定 katuraginomiya_event_1.ks 他好感度が一定以下_淑女度15以上 町で葛城宮に会い胸が高鳴る→手紙がくる 梅雨の晴れ 20以下　藤枝はイベントが被るので10以下
[if exp="(f.katuraginomiya_only == 1 && f.okeiko_month == 6 && f.okeiko_week == 2) && f.event_katuraginomiya[1]==0 && f.katuraginomiya_au == 0"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_event_1.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_event_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[1]=1"]
	;テスト用　他攻略ｷｬﾗと比較できるようにイベントを見たら上がるようにしてありますが上で調整してください	
	[eval exp="f.para_katuraginomiya_koukando=f.para_katuraginomiya_koukando + tf.koukando_eventup_katuraginomiya"]
	@jump storage="event.ks" target=*start
[endif]
;===================================================================================================================================================
;1◆葛城宮イベント判定 katuraginomiya_event_1.ks 他好感度が一定以下_淑女度15以上 町で葛城宮に会い胸が高鳴る→手紙がくる 梅雨の晴れ 20以下　藤枝はイベントが被るので10以下
[if exp="f.event_katuraginomiya[1] == 0 && (f.okeiko_month == 6 && f.okeiko_week == 3) && f.para_shujinkou_shukujodo >= 15 && f.katuraginomiya_au == 0 && f.para_sijyou_koukando < 21 && f.para_kuroda_koukando < 21 && f.para_zaizen_koukando < 21 && f.para_hujieda_koukando < 11"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_event_1.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_event_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[1]=1"]
	;テスト用　他攻略ｷｬﾗと比較できるようにイベントを見たら上がるようにしてありますが上で調整してください	
	[eval exp="f.para_katuraginomiya_koukando=f.para_katuraginomiya_koukando + tf.koukando_eventup_katuraginomiya"]
	@jump storage="event.ks" target=*start
[endif]
;===================================================================================================================================================
;葛城宮　夢イベント　場合淑女度15（20以上は手紙を出していたら有りえない数値）１イベントみたとき(イベント1発生条件が淑女度15以上のため、あわせて14→15以上と調整しました(◆jsYiJcqRkk
[if exp="(f.okeiko_month == 7 && f.okeiko_week == 2) && f.para_shujinkou_shukujodo >= 15 && f.event_katuraginomiya[1] == 1 && f.event_sijyou[0] == 0"]
	;配列に好感度を入れます。
	[eval exp ="tf.hikaku_koukando=[f.para_sijyou_koukando , f.para_kuroda_koukando, f.para_zaizen_koukando, f.para_katuraginomiya_koukando]"]
	[iscript]
	tf.a=Math.max.apply(null, tf.hikaku_koukando);
	//alert(tf.a); ここまでok
	[endscript]
	[if exp="tf.a == f.para_katuraginomiya_koukando"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_6_1.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_6_1'"]
	[eval exp="f.event_type='talk'"]
	;共通イベント。四条の変数のままでok	
	[eval exp="f.event_sijyou[1]=1"]
	;テスト用　他攻略ｷｬﾗと比較できるようにイベントを見たら上がるようにしてありますが上で調整してください
	[eval exp="f.para_katuraginomiya_koukando=f.para_katuraginomiya_koukando + tf.koukando_eventup_katuraginomiya"]
	@jump storage="event.ks" target=*start
	[endif]
[endif]
;===================================================================================================================================================
;2◆葛城宮イベント判定katuraginomiya_event_2.ks 別ファイルへ7/4町にて、葛城宮に会う。お手紙を拝見するたびに色々なことを考えておられて素晴らしい方だと思っていたという。その後葛城宮のモノローグ		
;even1をみている		
[if exp="(f.okeiko_month == 7 && f.okeiko_week == 4) && f.para_shujinkou_shukujodo >= 20 && f.event_katuraginomiya[2] == 0 && f.event_katuraginomiya[1] == 1 &&  f.katuraginomiya_au == 0"]		
;&& f.para_sijyou_koukando < 11 && f.para_kuroda_koukando < 11 && f.para_hujieda_koukando < 11 必要であれば追加してください			
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_event_2.ks'"]		
	[eval exp="f.event_target='*replay_katuraginomiya_event_2'"]		
	[eval exp="f.event_type='talk'"]		
	[eval exp="f.event_katuraginomiya[2]=1"]		
	;テスト用		
	[eval exp="f.para_katuraginomiya_koukando=f.para_katuraginomiya_koukando + tf.koukando_eventup_katuraginomiya"]		
	@jump storage="event.ks" target=*start		
;葛城宮のみ進行中の場合、イベント条件を満たさなければbadEDへ
[elsif exp="(f.okeiko_month == 7 && f.okeiko_week == 4) && f.katuraginomiya_only == 1"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_katuraginomiya_only_badED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[20]=1"]
	@jump storage="event.ks" target=*start
[endif]	
;===================================================================================================================================================
;◆『最後の手紙』判定メモ 葛城宮オンリーではない場合において
;・イベント１をみたがイベント２(7月4週）を見ていない→イベント３通過後判定時(8/1)に8月2週に手紙が届く
[if exp="f.okeiko_month == 8 && f.okeiko_week == 1 && f.katuraginomiya_only == 0 && f.event_katuraginomiya[2] == 0 && f.event_katuraginomiya[1] == 1 && f.katuraginomiya_au == 0 && f.event_katuraginomiya[21] == 0"]
;最後の手紙フラグ 
[eval exp="f.event_katuraginomiya[21]=1"]
[call storage="hantei_fumi_toutyaku.ks" target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*katuraginomiya_fumi_last	
[endif]	
;=======================================================================================
;3◆葛城宮イベント判定katuraginomiya_event_3.ks 皇后様のお印入りのお茶事の招待状が届く＜＜予定：淑女度３０　好感度２０＞＞
;even2をみている+淑女度25以上(◆jsYiJcqRkk調整
[if exp="(f.okeiko_month == 8 && f.okeiko_week == 2) && f.para_shujinkou_shukujodo >= 25 && f.event_katuraginomiya[3] == 0 && f.event_katuraginomiya[2] == 1 && f.katuraginomiya_au == 0"]
;&& f.para_sijyou_koukando < 11 && f.para_kuroda_koukando < 11 && f.para_hujieda_koukando < 11 必要であれば追加してください	
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_event_3.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_event_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[3]=1"]
	;テスト用
	[eval exp="f.para_katuraginomiya_koukando=f.para_katuraginomiya_koukando + tf.koukando_eventup_katuraginomiya"]
	@jump storage="event.ks" target=*start
;葛城宮のみ進行中の場合、イベント条件を満たさなければbadEDへ
[elsif exp="(f.okeiko_month == 8 && f.okeiko_week == 2) && f.katuraginomiya_only == 1"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_katuraginomiya_only_badED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[20]=1"]
	@jump storage="event.ks" target=*start
[endif]
;===================================================================================================================================================
;◆『最後の手紙』判定メモ 葛城宮オンリーではない場合において
;・イベント２みたがイベント３を見ていない(8月2週)→イベント３判定と同じタイミングで手紙が届く
[if exp="f.okeiko_month == 8 && f.okeiko_week == 2 && f.katuraginomiya_only == 0 && f.event_katuraginomiya[1] == 1 && f.event_katuraginomiya[2] == 1 && f.event_katuraginomiya[3] == 0 && f.katuraginomiya_au == 0 && f.event_katuraginomiya[21] == 0 && f.event_katuraginomiya[22] == 0"]
;最後の手紙フラグ 
	[eval exp="f.event_katuraginomiya[21]=1"]
	[eval exp="f.event_katuraginomiya[22]=1"]
	[call storage="hantei_fumi_toutyaku.ks" target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*katuraginomiya_fumi_last	
[endif]
;=======================================================================================
[if exp="f.kuroda_au + f.zaizen_au + f.sijyou_au + f.katuraginomiya_au + f.hujieda_au != 0"]
	@jump target=*event_hantei_katuragi_skip
[endif]
;(A)4◆葛城宮イベント判定katuraginomiya_9_1.ks 　使者がくる。ルートが決定する　ほぼ強制なのですがどうしましょう
;他キャラクターが候補に無い場合に条件を満たせば(好感度が他キャラクターより高いかどうかは関係なく)葛城宮発生(2/11◆jsYiJcqRkk調整
;葛城宮進行条件：event3をみている+好感度20以上+淑女度30以上(財前の淑女度判定２０が反応してしまう、財前は淑女度３０以上で回避)
[if exp="(f.okeiko_month == 9 && f.okeiko_week == 1) && f.event_katuraginomiya[4] == 0 && f.event_katuraginomiya[3] == 1 && f.para_katuraginomiya_koukando >= 20 && f.para_shujinkou_shukujodo >= 30"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_9_1.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_9_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[4]=1"]
	;イベント中に選択肢有り。イベントファイルに記述　[eval exp="f.katuraginomiya_au=1"]
	@jump storage="event.ks" target=*start
[endif]
[eval exp="tf.test='１葛城宮ここは通りましたよ！！！！'"]
[trace exp="tf.test"]
;(B)他好感度が３０以上あるとき 葛城宮と比較なし
[if exp="(f.okeiko_month == 9 && f.okeiko_week == 1) && f.para_shujinkou_shukujodo >= 30  && (f.event_oaite_mitei == 1 || f.katuraginomiya_only == 1) && f.event_katuraginomiya[4] == 0 && f.event_katuraginomiya[3] == 1 && f.para_katuraginomiya_koukando >= 20 && (f.para_sijyou_koukando >= 30 || f.para_kuroda_koukando >= 30 || f.para_zaizen_koukando >= 30)"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_9_1.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_9_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[4]=1"]
	;イベント中に選択肢有り。イベントファイルに記述　[eval exp="f.katuraginomiya_au=1"]
	@jump storage="event.ks" target=*start
[endif]
[eval exp="tf.test='２葛城宮ここは通りましたよ！！！！'"]
;(C)又は(もっと考えたい選択時)event3をみている+他キャラクターより好感度が上かつ好感度20以上+淑女度30以上(◆jsYiJcqRkk調整
;&& f.para_shujinkou_shukujodo > 20  必要であれば追加してください		
[if exp="(f.okeiko_month == 9 && f.okeiko_week == 1) && (f.event_oaite_mitei == 1 || f.katuraginomiya_only == 1) && f.event_katuraginomiya[4] == 0 && f.event_katuraginomiya[3] == 1 && f.para_katuraginomiya_koukando >= 20 && f.para_shujinkou_shukujodo >= 30 && (f.para_katuraginomiya_koukando > f.para_sijyou_koukando || f.para_katuraginomiya_koukando > f.para_kuroda_koukando || f.para_katuraginomiya_koukando > f.para_zaizen_koukando || f.para_katuraginomiya_koukando > f.para_hujieda_koukando)  "]
[eval exp="f.event_storage='katuraginomiya/katuraginomiya_9_1.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_9_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[4]=1"]
	;イベント中に選択肢有り。イベントファイルに記述　[eval exp="f.katuraginomiya_au=1"]
	@jump storage="event.ks" target=*start
[endif]
*event_hantei_katuragi_skip
[eval exp="tf.test='３葛城宮ここは通りましたよ！！！！'"]
;=======================================================================================
;5◆葛城宮イベント判定katuraginomiya_9_3.ks ルート決定後なので条件はすくなめ（9/3,かつ　au==1のとき）
[if exp="(f.okeiko_month == 9 && f.okeiko_week == 3) && f.katuraginomiya_au == 1 && f.event_katuraginomiya[5] == 0"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_9_3.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_9_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[5]=1"]
	@jump storage="event.ks" target=*start
[endif]
;=======================================================================================
;6◆葛城宮イベント判定katuraginomiya_9_4.ks　週終わりファイルへ ルート決定後なので条件はすくなめ（9/4,かつ　au==1のとき）		
[if exp="(f.okeiko_month == 9 && f.okeiko_week == 4) &&  f.katuraginomiya_au==1 && f.event_katuraginomiya[6] == 0"]		
 	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_9_4.ks'"]		
 	[eval exp="f.event_target='*replay_katuraginomiya_9_4'"]		
 	[eval exp="f.event_type='talk'"]		
 	[eval exp="f.event_katuraginomiya[6]=1"]		
 	@jump storage="event.ks" target=*start		
[endif]
;=======================================================================================
;7◆葛城宮イベント判定 katuraginomiya_10_2.ks
[if exp="(f.okeiko_month == 10 && f.okeiko_week == 2) &&  f.katuraginomiya_au == 1 && f.event_katuraginomiya[7] == 0"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_10_2.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_10_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[7]=1"]
	@jump storage="event.ks" target=*start
[endif]
;=======================================================================================
;8◆葛城宮イベント判定 katuraginomiya_10_3.ks
[if exp="(f.okeiko_month == 10 && f.okeiko_week == 3) &&  f.katuraginomiya_au == 1 && f.event_katuraginomiya[8] == 0"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_10_3.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_10_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[8]=1"]
	@jump storage="event.ks" target=*start
[endif]
;=======================================================================================
;9◆葛城宮イベント判定 katuraginomiya_11_1.ks
[if exp="(f.okeiko_month == 11 && f.okeiko_week == 1) &&  f.katuraginomiya_au == 1 && f.event_katuraginomiya[9] == 0"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_11_1.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_11_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[9]=1"]
	@jump storage="event.ks" target=*start
[endif]
;=======================================================================================
;10◆葛城宮イベント判定 katuraginomiya_11_1badED.ks
;別ファイルへ　週終わりファイルへ　選択肢
;=======================================================================================
;11◆葛城宮イベント判定 katuraginomiya_11_4.ks
;別ファイルへ　週終わりファイルへ
;[if exp="(f.okeiko_month == 11 && f.okeiko_week==4) &&  f.katuraginomiya_au == 1 && f.event_katuraginomiya[11] == 0"]
;	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_11_4.ks'"]
;	[eval exp="f.event_target='*replay_katuraginomiya_11_4'"]
;	[eval exp="f.event_type='talk'"]
;	[eval exp="f.event_katuraginomiya[11]=1"]
;	@jump storage="event.ks" target=*start
;[endif]
;=======================================================================================
;12◆葛城宮イベント判定 katuraginomiya_12_1.ks(katuraginomiya12_1ｂ.ks)
[if exp="(f.okeiko_month == 12 && f.okeiko_week == 1) &&  f.katuraginomiya_au == 1 && f.event_katuraginomiya[12] == 0"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_12_1.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_12_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[12]=1"]
	@jump storage="event.ks" target=*start
[endif]
;=======================================================================================
;13◆葛城宮イベント判定 katuraginomiya_1_3.ks
[if exp="(f.okeiko_month == 1 && f.okeiko_week == 3) &&  f.katuraginomiya_au == 1 && f.event_katuraginomiya[13] == 0"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_1_3.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_1_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[13]=1"]
	@jump storage="event.ks" target=*start
[endif]
;=======================================================================================
;14◆葛城宮イベント判定katuraginomiya_2_2.ks(katuraginomiya2_2ｂ.ks)
[if exp="(f.okeiko_month == 2 && f.okeiko_week == 2) &&  f.katuraginomiya_au == 1 && f.event_katuraginomiya[14] == 0"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_2_2.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_2_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[14]=1"]
	@jump storage="event.ks" target=*start
[endif]
;========================以下は別ファイル=================================
;ending
;15 katuraginomiya_3_4_nomalED.ks
;16 katuraginomiya_3_4epilogue_goodED.ks
;散策
;=======================================================================================
;1(17)katuraginomiya_bazaar.ks茶道が高い2/3~3/4→3 *replay_katuraginomiya_bazaar
[if exp="((f.okeiko_month == 2 && (f.okeiko_week == 3 || f.okeiko_week == 4)) || (f.okeiko_month == 3 && f.okeiko_week != 4)) && f.katuraginomiya_au == 1 && f.para_shujinkou_j_sadou >= 70 && f.event_katuraginomiya[17] == 0"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_bazaar.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_bazaar'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[17]=1"]
	@jump storage="event.ks" target=*start
[endif]
;========================以下は別ファイル=================================
;2(18)katuraginomiya_sansaku1.ks
;3(19)katuraginomiya_sansaku2.ks
;=========================================================

;↓他のイベント判定処理リストに戻ります
@jump storage="event_hantei_week_hajime.ks" target=*katuraginomiya_event_hantei_owari

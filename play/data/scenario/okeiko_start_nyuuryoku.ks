;=============================================
;okeiko.ks 設定入力部分
;=============================================
*start
[call target=*start storage="01_sijyou_hensuu.ks"]
[call target=*start storage="hensuu.ks"]
[cm]
;正規戻るボタンから戻ってないとき回避
[eval exp="f.clearlist_out_storage ='okeiko_start_nyuuryoku.ks'"]
[eval exp="f.event_replay = 'none']　
[eval exp="tf.test_kuroda=false"]
[eval exp="tf.test_sijyou=false"]
[eval exp="tf.test_zaizen=false"]
[eval exp="tf.test_katuraginomiya = false"]
[eval exp="tf.test_hujieda = false"]
[eval exp="tf.tweet_end = false"]

[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="200" x=750 y=0 color=white]

;◆テスト設定画面表示
@layopt layer=29 visible=true
;[ptext text="テスト画面からお稽古パートをはじめます。テスト用設定をお願いします。" layer=29 size=20 x=70 y=10 color=darkslateblue bold=bold]
[ptext text="ＰＣで始める場合、Tab⇔キーを押すことによって、次のテキストボックスへと入力が移ります" layer=29 size=10 x=70 y=10 color=darkslateblue bold=bold]

;各キャラ設定に変更
[ptext text="財前：好感度" layer=29 size=15 x=10 y=40 color=darkslateblue bold=bold]
[edit left=10 top=60 width=200 length=200 maxchars=3 name="f.para_zaizen_koukando" height=20]
[ptext text="財前ルートに入った後=1。それ以外=0" layer=29 size=15 x=10 y=90 color=darkslateblue bold=bold]
[edit left=10 top=110 width=200 length=200 maxchars=3 name="f.zaizen_au" height=20]
[ptext text="財前：返信速度(0=全て翌週、1=本来)" layer=29 size=15 x=10 y=140 color=darkslateblue bold=bold]
[edit left=10 top=160 width=200 length=200 maxchars=3 name="tf.test_zaizen_fumi_hensin_speed" height=20]

[ptext text="葛城宮：好感度" layer=29 size=15 x=345 y=40 color=darkslateblue bold=bold]
[edit left=345 top=60 width=200 length=200 maxchars=3 name="f.para_katuraginomiya_koukando" height=20]
[ptext text="葛城宮ルートに入った後=1。それ以外=0" layer=29 size=15 x=345 y=90 color=darkslateblue bold=bold]
[edit left=345 top=110 width=200 length=200 maxchars=3 name="f.katuraginomiya_au" height=20]
[ptext text="葛城宮：手紙許可後=1。それ以外=0" layer=29 size=15 x=345 y=140 color=darkslateblue bold=bold]
[edit left=345 top=160 width=200 length=200 maxchars=3 name="f.katuraginomiya_fumi_start" height=20]
[ptext text="葛城宮：返信速度(0=全て翌週、1=本来)" layer=29 size=15 x=345 y=190 color=darkslateblue bold=bold]
[edit left=345 top=210 width=200 length=200 maxchars=3 name="tf.test_katuraginomiya_fumi_hensin_speed" height=20]

[ptext text="藤枝：好感度" layer=29 size=15 x=700 y=40 color=darkslateblue bold=bold]
[edit left=700 top=60 width=200 length=200 maxchars=3 name="f.para_hujieda_koukando" height=20]
[ptext text="藤枝ルートに入った後=1。それ以外=0" layer=29 size=14 x=700 y=90 color=darkslateblue bold=bold]
[edit left=700 top=110 width=200 length=200 maxchars=3 name="f.hujieda_au" height=20]
[ptext text="藤枝：手紙許可後=1。それ以外=0" layer=29 size=15 x=700 y=140 color=darkslateblue bold=bold]
[edit left=700 top=160 width=200 length=200 maxchars=3 name="f.hujieda_fumi_start" height=20]
[ptext text="藤枝：返信速度(0=全て翌週、1=本来)" layer=29 size=15 x=700 y=190 color=darkslateblue bold=bold]
[edit left=700 top=210 width=200 length=200 maxchars=3 name="tf.test_hujieda_fumi_hensin_speed" height=20]
[ptext text="その月のお箏練習回数" layer=29 size=15 x=700 y=240 color=darkslateblue bold=bold]
[edit left=700 top=260 width=200 length=200 maxchars=3 name="f.para_shujinkou_koto_kaisuu" height=20]

[ptext text="藤枝の手紙イベントをみた(0=未見、1=見た)" layer=29 size=15 x=680 y=290 color=darkslateblue bold=bold]
[ptext text="手紙1:" layer=29 size=13 x=710 y=315 color=darkslateblue bold=bold]
[edit left=710 top=340 width=40 length=200 maxchars=3 name="f.event_hujieda1" height=20]
[ptext text="手紙2:" layer=29 size=13 x=760 y=315 color=darkslateblue bold=bold]
[edit left=760 top=340 width=40 length=200 maxchars=3 name="f.event_hujieda2" height=20]
[ptext text="手紙3:" layer=29 size=13 x=810 y=315 color=darkslateblue bold=bold]
[edit left=810 top=340 width=40 length=200 maxchars=3 name="f.event_hujieda3" height=20]
[ptext text="手紙4:" layer=29 size=13 x=852 y=315 color=darkslateblue bold=bold]
[edit left=857 top=340 width=40 length=200 maxchars=3 name="f.event_hujieda4" height=20]
[ptext text="返事EV:" layer=29 size=13 x=900 y=315 color=darkslateblue bold=bold]
[edit left=905 top=340 width=40 length=200 maxchars=3 name="f.event_hujieda5" height=20]

[ptext text="文矢11_4手紙後お箏を練習(4=した､0=未)" layer=29 size=12 x=700 y=370 color=darkslateblue bold=bold]
[edit left=700 top=390 width=200 length=200 maxchars=3 name="f.fumi_fumiya_11_4" height=20]

[ptext text="四条好感度（元値=5)" layer=29 size=12 x=560 y=540 color=darkslateblue bold=bold]
[edit left=580 top=560 width=50 length=200 maxchars=3 name="f.para_sijyou_koukando" height=20]

[ptext text="四条ルート 1=内,0=外" layer=29 size=12 x=690 y=540 color=darkslateblue bold=bold]
[edit left=690 top=560 width=50 length=200 maxchars=3 name="f.sijyou_au" height=20]

[ptext text="黒田好感度（元値=3)" layer=29 size=12 x=560 y=590 color=darkslateblue bold=bold]
[edit left=580 top=610 width=50 length=200 maxchars=3 name="f.para_kuroda_koukando" height=20]

[ptext text="黒田ルート 1=内,0=外" layer=29 size=10 x=690 y=590 color=darkslateblue bold=bold]
[edit left=690 top=610 width=50 length=200 maxchars=3 name="f.kuroda_au" height=20]

[ptext text="黒田麦 1=〇,0=×" layer=29 size=12 x=800 y=590 color=darkslateblue bold=bold]
[edit left=800 top=610 width=50 length=200 maxchars=3 name="f.kuroda_mugi" height=20]

[ptext text="熟練度：茶道" layer=29 size=15 x=10 y=190 color=darkslateblue bold=bold]
[edit left=10 top=210 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_sadou" height=20]

[ptext text="熟練度：華道" layer=29 size=15 x=10 y=240 color=darkslateblue bold=bold]
[edit left=10 top=260 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_kadou" height=20]

[ptext text="熟練度：礼法" layer=29 size=15 x=10 y=290 color=darkslateblue bold=bold]
[edit left=10 top=310 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_reihou" height=20]

[ptext text="熟練度：語学" layer=29 size=15 x=10 y=340 color=darkslateblue bold=bold]
[edit left=10 top=360 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_gogaku" height=20]

[ptext text="熟練度：お箏" layer=29 size=15 x=10 y=390 color=darkslateblue bold=bold]
[edit left=10 top=410 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_koto" height=20]

[ptext text="淑女度" layer=29 size=15 x=345 y=240 color=darkslateblue bold=bold]
[edit left=345 top=260 width=200 length=200 maxchars=3 name="f.para_shujinkou_shukujodo" height=20]


[ptext text="ゲームの進行度：" layer=29 size=15 x=10 y=440 color=darkslateblue bold=bold]
[edit left=10 top=460 width=50 length=200 maxchars=2 name="f.okeiko_month" height=20]
[ptext text="月" layer=29 size=15 x=70 y=460 color=darkslateblue bold=bold]

[edit left=90 top=460 width=50 length=200 maxchars=2 name="f.okeiko_week" height=20]
[ptext text="週" layer=29 size=15 x=150 y=460 color=darkslateblue bold=bold]


[ptext text="体力" layer=29 size=15 x=10 y=490 color=darkslateblue bold=bold]
[edit left=10 top=510 width=50 length=200 maxchars=3 name="f.para_shujinkou_tairyoku_now" height=20]

[ptext text="気力:本来は10ずつです" layer=29 size=15 x=70 y=490 color=darkslateblue bold=bold]
[edit left=70 top=510 width=50 length=200 maxchars=3 name="f.para_shujinkou_kiryoku_now" height=20]

;f.event_katuraginomiya[1]==1 葛城宮のイベント1を見たx=345 y=190
[ptext text="葛城宮のイベントを見た(見た=1 それ以外=0)" layer=29 size=15 x=345 y=290 color=darkslateblue bold=bold]
[ptext text="Ev1:ｲﾍﾞﾝﾄ1を見た　Ev2:ｲﾍﾞﾝﾄ2を見た Ev3:9/1最後まで見た" layer=29 size=5 x=345 y=310 color=darkslateblue bold=bold]
[ptext text="Ev1" layer=29 size=15 x=341 y=340 color=darkslateblue bold=bold]
[edit left=371 top=340 width=50 length=200 maxchars=3 name="f.event_katuraginomiya1" height=20]

;f.event_katuraginomiya[2]==1 葛城宮のイベント2を見た
[ptext text="Ev2" layer=29 size=15 x=431 y=340 color=darkslateblue bold=bold]
[edit left=460 top=340 width=50 length=200 maxchars=3 name="f.event_katuraginomiya2" height=20]

;f.event_katuraginomiya[3]==1 葛城宮のイベント9/1前日最後までみた
[ptext text="Ev3" layer=29 size=15 x=525 y=340 color=darkslateblue bold=bold]
[edit left=550 top=340 width=50 length=200 maxchars=3 name="f.event_katuraginomiya3" height=20]

[ptext text="葛城宮のみと文通=1 それ以外=0" layer=29 size=15 x=345 y=390 color=darkslateblue bold=bold]
[edit left=345 top=410 width=200 length=200 maxchars=3 name="f.katuraginomiya_only" height=20]

[ptext text="誰かに手紙を出した=1 それ以外=0" layer=29 size=15 x=680 y=440 color=darkslateblue bold=bold]
;f.fumi_henji==0
[edit left=680 top=460 width=200 length=200 maxchars=3 name="f.fumi_henji" height=20]

[ptext text="最後の手紙・葛城宮=1 なし=0" layer=29 size=15 x=680 y=490 color=darkslateblue bold=bold]
;f.event_katuraginomiya[21] f.event_katuraginomiya[22] 
[edit left=680 top=510 width=50 length=200 maxchars=1 name="tf.last_fumi" height=20]

[ptext text="お見合い決定済(0決定、1未定)" layer=29 size=15 x=345 y=440 color=darkslateblue bold=bold]
[edit left=345 top=460 width=200 length=200 maxchars=3 name="f.event_oaite_mitei" height=20]

[ptext text="アドバイスイベント(1表示、0非表示)" layer=29 size=15 x=345 y=490 color=darkslateblue bold=bold]
[edit left=345 top=510 width=200 length=200 maxchars=3 name="tf.advice_event_hyouji" height=20]

[ptext text="イベント全般(1表示、0非表示)" layer=29 size=15 x=345 y=540 color=darkslateblue bold=bold]
[edit left=345 top=560 width=200 length=200 maxchars=3 name="tf.event_hyouji" height=20]

[ptext text="調整モードを表示・ＢＧＭ(0表示、1非表示)" layer=29 size=8 x=345 y=590 color=darkslateblue bold=bold]
[edit left=345 top=610 width=200 length=200 maxchars=3 name="tf.mode_hensu" height=20]


[ptext text="共通追加分以外の散策イベント 1=表示,0=非表示" layer=29 size=10 x=10 y=545 color=darkslateblue bold=bold]
[edit left=10 top=560 width=50 length=200 maxchars=3 name="tf.event_sansaku_hyouji" height=20]

[ptext text="8月以前の↑散策イベント 1=表示,0=非表示" layer=29 size=12 x=10 y=585 color=darkslateblue bold=bold]
[edit left=75 top=560 width=50 length=200 maxchars=3 name="tf.event_sansaku_hyouji_before_au" height=20]

[ptext text="クリア回数" layer=29 size=10 x=10 y=600 color=darkslateblue bold=bold]
[edit left=90 top=600 width=50 length=200 maxchars=3 name="sf.ending_Number_of_times" height=20]


[iscript]
//入力済デフォルト値の設定
//alert(sf.ending_Number_of_times);
$("input[name='sf.ending_Number_of_times']").val(sf.ending_Number_of_times);
$("input[name='tf.test_zaizen_fumi_hensin_speed']").val("0");
$("input[name='f.para_zaizen_koukando']").val(f.para_zaizen_koukando);
$("input[name='f.para_katuraginomiya_koukando']").val(f.para_katuraginomiya_koukando);
$("input[name='f.para_hujieda_koukando']").val(f.para_hujieda_koukando);
$("input[name='f.para_sijyou_koukando']").val(f.para_sijyou_koukando);
$("input[name='f.para_kuroda_koukando']").val(f.para_kuroda_koukando);
$("input[name='f.zaizen_au']").val("0");
$("input[name='tf.test_katuraginomiya_fumi_hensin_speed']").val("0");
$("input[name='f.katuraginomiya_au']").val("0");

$("input[name='tf.test_hujieda_fumi_hensin_speed']").val("0");
$("input[name='f.hujieda_au']").val("0");
$("input[name='f.katuraginomiya_fumi_start']").val("0");
$("input[name='f.hujieda_fumi_start']").val("0");
$("input[name='f.sijyou_au']").val("0");
$("input[name='f.kuroda_au']").val("0");
$("input[name='f.kuroda_mugi']").val("0");

$("input[name='f.para_shujinkou_j_sadou']").val("0");
$("input[name='f.para_shujinkou_j_kadou']").val("0");
$("input[name='f.para_shujinkou_j_reihou']").val("0");
$("input[name='f.para_shujinkou_j_gogaku']").val("0");
$("input[name='f.para_shujinkou_j_koto']").val("0");
$("input[name='f.para_shujinkou_shukujodo']").val(f.para_shujinkou_shukujodo);

$("input[name='f.para_shujinkou_koto_kaisuu']").val("2");
$("input[name='f.event_hujieda1']").val("1");
$("input[name='f.event_hujieda2']").val("1");
$("input[name='f.event_hujieda3']").val("1");
$("input[name='f.event_hujieda4']").val("1");
$("input[name='f.event_hujieda5']").val("1");

$("input[name='f.okeiko_month']").val("4");
$("input[name='f.okeiko_week']").val("1");

$("input[name='f.event_katuraginomiya3']").val("0"); //デフォルト値0にしています。ご自由に設定してください
$("input[name='f.event_katuraginomiya2']").val("0");
$("input[name='f.event_katuraginomiya1']").val("0");
$("input[name='f.katuraginomiya_only']").val("0");

//誰かに返事を出した
$("input[name='f.fumi_henji']").val("1");
//最後の手紙葛城
$("input[name='tf.last_fumi']").val("0");

//葛城宮確認用デフォルト値1 ご自由に設定してください
$("input[name='f.event_oaite_mitei']").val("1");

$("input[name='tf.advice_event_hyouji']").val("1");
$("input[name='tf.event_hyouji']").val("1");

$("input[name='f.para_shujinkou_tairyoku_now']").val("900");
$("input[name='f.para_shujinkou_kiryoku_now']").val("900");
$("input[name='tf.event_sansaku_hyouji']").val("1"); //仮にデフォルト値0にしています。ご自由に変更してください
$("input[name='tf.event_sansaku_hyouji_before_au']").val("1"); //仮にデフォルト値1にしています。ご自由に変更してください

$("input[name='tf.mode_hensu']").val("0"); //仮にデフォルト値0にしています。ご自由に変更してください
$("input[name='f.fumi_fumiya_11_4']").val("4"); //文矢手紙後お箏練習

[endscript]
;editとlinkは干渉してクリックできなくなるので、buttonがオススメです
[button graphic="kettei.png" target=*test_settei_kettei x=220 y=500 width=100 height=100]

[s]
*test_settei_kettei
;入力値を数値化。入力値確定処理時に入力フォームが表示されている必要あり。公式リファレンス[commit]より(フォームを消したらエラーが出ました)
[iscript]
sf.ending_Number_of_times = parseInt($("input[name='sf.ending_Number_of_times']").val());
tf.test_zaizen_fumi_hensin_speed = parseInt($("input[name='tf.test_zaizen_fumi_hensin_speed']").val());
f.para_zaizen_koukando = parseInt($("input[name='f.para_zaizen_koukando']").val());
f.zaizen_au = parseInt($("input[name='f.zaizen_au']").val());
tf.test_katuraginomiya_fumi_hensin_speed = parseInt($("input[name='tf.test_katuraginomiya_fumi_hensin_speed']").val());
f.para_katuraginomiya_koukando = parseInt($("input[name='f.para_katuraginomiya_koukando']").val());
f.katuraginomiya_au = parseInt($("input[name='f.katuraginomiya_au']").val());
f.katuraginomiya_fumi_start = parseInt($("input[name='f.katuraginomiya_fumi_start']").val());
f.hujieda_fumi_start = parseInt($("input[name='f.hujieda_fumi_start']").val());
tf.test_hujieda_fumi_hensin_speed = parseInt($("input[name='tf.test_hujieda_fumi_hensin_speed']").val());
f.para_hujieda_koukando = parseInt($("input[name='f.para_hujieda_koukando']").val());
f.hujieda_au = parseInt($("input[name='f.hujieda_au']").val());
f.para_sijyou_koukando = parseInt($("input[name='f.para_sijyou_koukando']").val());
f.para_kuroda_koukando = parseInt($("input[name='f.para_kuroda_koukando']").val());
f.sijyou_au = parseInt($("input[name='f.sijyou_au']").val());
f.kuroda_au = parseInt($("input[name='f.kuroda_au']").val());
f.event_machi_kuroda[2] = parseInt($("input[name='f.kuroda_mugi']").val());

f.para_shujinkou_j_sadou = parseInt($("input[name='f.para_shujinkou_j_sadou']").val());
f.para_shujinkou_j_kadou = parseInt($("input[name='f.para_shujinkou_j_kadou']").val());
f.para_shujinkou_j_reihou = parseInt($("input[name='f.para_shujinkou_j_reihou']").val());
f.para_shujinkou_j_gogaku = parseInt($("input[name='f.para_shujinkou_j_gogaku']").val());
f.para_shujinkou_j_koto = parseInt($("input[name='f.para_shujinkou_j_koto']").val());
f.para_shujinkou_shukujodo = parseInt($("input[name='f.para_shujinkou_shukujodo']").val());

f.para_shujinkou_koto_kaisuu = parseInt($("input[name='f.para_shujinkou_koto_kaisuu']").val());
f.event_hujieda[1] = parseInt($("input[name='f.event_hujieda1']").val());
f.fumi_toutyaku_hujieda[2] = parseInt($("input[name='f.event_hujieda1']").val());
f.event_hujieda[2] = parseInt($("input[name='f.event_hujieda2']").val());
f.fumi_toutyaku_hujieda[3] = parseInt($("input[name='f.event_hujieda2']").val());
f.event_hujieda[3] = parseInt($("input[name='f.event_hujieda3']").val());
f.fumi_toutyaku_hujieda[4] = parseInt($("input[name='f.event_hujieda3']").val());
f.event_hujieda[4] = parseInt($("input[name='f.event_hujieda4']").val());
f.fumi_toutyaku_hujieda[5] = parseInt($("input[name='f.event_hujieda4']").val());
f.event_hujieda[5] = parseInt($("input[name='f.event_hujieda5']").val());
f.fumi_toutyaku_hujieda[6] = parseInt($("input[name='f.event_hujieda5']").val());

f.okeiko_month = parseInt($("input[name='f.okeiko_month']").val());
f.okeiko_week = parseInt($("input[name='f.okeiko_week']").val());

f.event_katuraginomiya[1] = parseInt($("input[name='f.event_katuraginomiya1']").val());
f.event_katuraginomiya[2] = parseInt($("input[name='f.event_katuraginomiya2']").val());
f.event_katuraginomiya[3] = parseInt($("input[name='f.event_katuraginomiya3']").val());
f.katuraginomiya_only = parseInt($("input[name='f.katuraginomiya_only']").val());

f.fumi_henji = parseInt($("input[name='f.fumi_henji']").val());

f.event_oaite_mitei = parseInt($("input[name='f.event_oaite_mitei']").val());

tf.advice_event_hyouji = parseInt($("input[name='tf.advice_event_hyouji']").val());
tf.event_hyouji = parseInt($("input[name='tf.event_hyouji']").val());

f.para_shujinkou_tairyoku_now = parseInt($("input[name='f.para_shujinkou_tairyoku_now']").val());
f.para_shujinkou_tairyoku_max = parseInt($("input[name='f.para_shujinkou_tairyoku_now']").val());
f.para_shujinkou_kiryoku_now = parseInt($("input[name='f.para_shujinkou_kiryoku_now']").val());
f.para_shujinkou_kiryoku_max = parseInt($("input[name='f.para_shujinkou_kiryoku_now']").val());

//f.event_machi_common[1] = parseInt($("input[name='tf.event_yuujin']").val());
//f.event_machi_sijyou[9] = parseInt($("input[name='tf.event_sijyou9']").val());
tf.event_sansaku_hyouji =  parseInt($("input[name='tf.event_sansaku_hyouji']").val());
tf.event_sansaku_hyouji_before_au =  parseInt($("input[name='tf.event_sansaku_hyouji_before_au']").val());

tf.last_fumi =  parseInt($("input[name='tf.last_fumi']").val());

tf.mode_hensu =  parseInt($("input[name='tf.mode_hensu']").val());
f.fumi_fumiya_11_4 = parseInt($("input[name='f.fumi_fumiya_11_4']").val());
[endscript]

;財前からの手紙到着待ち週数を好感度に応じてリセット
[if exp="f.para_zaizen_koukando >= parseInt([sf.zaizen['koukando_b']])"]
	[eval exp="f.zaizen_fumi_toutyakumachi_week = 2"]
[elsif exp="f.para_zaizen_koukando >= parseInt([sf.zaizen['koukando_a']])"]
	[eval exp="f.zaizen_fumi_toutyakumachi_week = 1"]
[else]
	[eval exp="f.zaizen_fumi_toutyakumachi_week = 0"]
[endif]
;葛城宮からの手紙到着待ち週数を好感度に応じてリセット
[if exp="f.para_katuraginomiya_koukando >= parseInt([sf.katuraginomiya['koukando_b']])"]
	[eval exp="f.katuraginomiya_fumi_toutyakumachi_week = 2"]
[elsif exp="f.para_katuraginomiya_koukando >= parseInt([sf.katuraginomiya['koukando_a']])"]
	[eval exp="f.katuraginomiya_fumi_toutyakumachi_week = 1"]
[else]
	[eval exp="f.katuraginomiya_fumi_toutyakumachi_week = 0"]
[endif]
;藤枝からの手紙到着待ち週数を好感度に応じてリセット
[if exp="f.para_hujieda_koukando >= parseInt([sf.hujieda['koukando_b']])"]
	[eval exp="f.hujieda_fumi_toutyakumachi_week = 2"]
[elsif exp="f.para_hujieda_koukando >= parseInt([sf.hujieda['koukando_a']])"]
	[eval exp="f.hujieda_fumi_toutyakumachi_week = 1"]
[else]
	[eval exp="f.hujieda_fumi_toutyakumachi_week = 0"]
[endif]

[if exp="tf.last_fumi == 1"]
[iscript]
f.event_katuraginomiya[21]=1;
f.event_katuraginomiya[22] =1;
alert("葛城宮・最後の手紙をＯＮにしました。出会う前には設定しないでください");
[endscript]
[endif]

;入力ミスアラート　進めれるようにアラートのみ！
[if exp="(f.okeiko_month == 9 && f.okeiko_week > 1 ) || f.okeiko_month == 10 || f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3"]
[if exp="f.kuroda_au == 0 && f.sijyou_au == 0 && f.zaizen_au == 0 && f.katuraginomiya_au == 0 && f.hujieda_au == 0"]
[iscript]
alert("9月以降ですがルートが決定してません");
[endscript]
[endif]

[endif]
[if exp="(f.okeiko_month == 8 && f.okeiko_week == 4 ) &&  (sf.ending_Number_of_times == undefined || sf.ending_Number_of_times < 1)"]
[iscript]
alert("このままだと怪談のイベントは表示されません");
[endscript]
[endif]


;入力ミス確認アラート　進めれるようにアラートのみ！
[if exp="(f.para_katuraginomiya_koukando < 19 || f.para_shujinkou_shukujodo < 30) && (f.okeiko_month == 9 && f.okeiko_week == 1 ) && f.event_katuraginomiya[1] == 1 && f.event_katuraginomiya[2] == 1 && f.event_katuraginomiya[3] == 1"]
[iscript]
alert("9月1週・葛城宮EV123onですが 淑女度30以下、または好感度19以下の低い状態ではじめます。");
[endscript]
[endif]

[if exp="(f.event_katuraginomiya[1] == 0 || f.event_katuraginomiya[2] == 0 || f.event_katuraginomiya[3] == 0) && (f.okeiko_month == 9 && f.okeiko_week == 1 ) && f.para_shujinkou_shukujodo > 30 "]
[if exp="f.para_zaizen_koukando < 30 && f.para_sijyou_koukando < 30 && f.para_kuroda_koukando < 30"]
[iscript]
alert("9月1週・淑女度30以上ですが EV123のどれかがoffではじめます。");
[endscript]
[endif]
[endif]

[if exp="(f.event_katuraginomiya[1] == 0 || f.event_katuraginomiya[2] == 0 || f.event_katuraginomiya[3] == 0) && (f.okeiko_month == 9 && f.okeiko_week == 1 ) && f.para_katuraginomiya_koukando > 19 && f.para_shujinkou_shukujodo > 30"]
[iscript]
alert("9月1週・葛城宮淑女度30以上、好感度19以上の高い状態ですが EV123のどれかがoffではじめます。");
[endscript]
[endif]

[if exp="f.event_katuraginomiya[1] == 1 "]
;リプレイでの名前表示を解放します。
[eval exp="sf.replay_katuraginomiya=1"]
[endif]

[if exp="f.event_hujieda[1] == 1 "]
;リプレイでの名前表示を解放します。
[eval exp="sf.replay_hujieda == 1"]
[endif]
[cm]
;調整モードで音楽をならす
[if exp="sf.BGM == 'ON' && tf.mode_hensu == 0"]
[stopbgm]
;【BGM】夕涼み（お稽古）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[wait time=10]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

[freeimage layer = 29]
@jump storage="okeiko_start.ks" target=*test_start_common

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
[eval exp = "tf.event_hyouji = 1"]
[eval exp = "tf.advice_event_hyouji = 1"]

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

﻿;=============================================
;okeiko.ks 設定入力部分
;=============================================
*start
;◆テスト設定画面表示
@layopt layer=29 visible=true
[ptext text="テスト画面からお稽古パートをはじめます。テスト用設定をお願いします。" layer=29 size=20 x=70 y=10 color=darkslateblue bold=bold]

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
[edit left=345 top=160 width=200 length=200 maxchars=3 name="tf.test_katuraginomiya_fumi_hensin_speed" height=20]
[ptext text="葛城宮：返信速度(0=全て翌週、1=本来)" layer=29 size=15 x=345 y=190 color=darkslateblue bold=bold]
[edit left=345 top=210 width=200 length=200 maxchars=3 name="tf.test_katuraginomiya_fumi_hensin_speed" height=20]

[ptext text="藤枝：好感度" layer=29 size=15 x=700 y=40 color=darkslateblue bold=bold]
[edit left=700 top=60 width=200 length=200 maxchars=3 name="f.para_hujieda_koukando" height=20]
[ptext text="藤枝ルートに入った後=1。それ以外=0" layer=29 size=15 x=700 y=90 color=darkslateblue bold=bold]
[edit left=700 top=110 width=200 length=200 maxchars=3 name="f.hujieda_au" height=20]
[ptext text="藤枝：手紙許可後=1。それ以外=0" layer=29 size=15 x=700 y=140 color=darkslateblue bold=bold]
[edit left=700 top=160 width=200 length=200 maxchars=3 name="tf.test_hujieda_fumi_hensin_speed" height=20]
[ptext text="藤枝：返信速度(0=全て翌週、1=本来)" layer=29 size=15 x=700 y=190 color=darkslateblue bold=bold]
[edit left=700 top=210 width=200 length=200 maxchars=3 name="tf.test_hujieda_fumi_hensin_speed" height=20]
[ptext text="その月のお箏練習回数" layer=29 size=15 x=700 y=240 color=darkslateblue bold=bold]
[edit left=700 top=260 width=200 length=200 maxchars=3 name="f.para_shujinkou_koto_kaisuu" height=20]

[ptext text="藤枝：手紙1(0=未見、1=見た)" layer=29 size=15 x=700 y=290 color=darkslateblue bold=bold]
[edit left=700 top=310 width=200 length=200 maxchars=3 name="f.event_hujieda1" height=20]
[ptext text="藤枝：手紙2(0=未見、1=見た)" layer=29 size=15 x=700 y=340 color=darkslateblue bold=bold]
[edit left=700 top=360 width=200 length=200 maxchars=3 name="f.event_hujieda2" height=20]
[ptext text="藤枝：手紙3(0=未見、1=見た)" layer=29 size=15 x=700 y=390 color=darkslateblue bold=bold]
[edit left=700 top=410 width=200 length=200 maxchars=3 name="f.event_hujieda3" height=20]
[ptext text="藤枝：手紙4(0=未見、1=見た)" layer=29 size=15 x=700 y=440 color=darkslateblue bold=bold]
[edit left=700 top=460 width=200 length=200 maxchars=3 name="f.event_hujieda4" height=20]
[ptext text="藤枝：お返事イベント(0=未見、1=見た)" layer=29 size=15 x=700 y=490 color=darkslateblue bold=bold]
[edit left=700 top=510 width=200 length=200 maxchars=3 name="f.event_hujieda5" height=20]

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


[ptext text="ゲームの進行度：" layer=29 size=15 x=100 y=440 color=darkslateblue bold=bold]
[edit left=100 top=460 width=50 length=200 maxchars=2 name="f.okeiko_month" height=20]
[ptext text="月" layer=29 size=15 x=160 y=460 color=darkslateblue bold=bold]

[edit left=180 top=460 width=50 length=200 maxchars=2 name="f.okeiko_week" height=20]
[ptext text="週" layer=29 size=15 x=240 y=460 color=darkslateblue bold=bold]

[ptext text="四条：好感度（元の設定値=10)" layer=29 size=15 x=345 y=390 color=darkslateblue bold=bold]
[edit left=345 top=410 width=200 length=200 maxchars=3 name="f.para_sijyou_koukando" height=20]

;f.event_katuraginomiya[3]==1 葛城宮のイベント9/1前日最後までみた
[ptext text="葛城宮イベント9/1前日最後までみた=1 それ以外=0" layer=29 size=15 x=345 y=290 color=darkslateblue bold=bold]
[edit left=345 top=310 width=200 length=200 maxchars=3 name="f.event_katuraginomiya3" height=20]

[iscript]
//入力済デフォルト値の設定
$("input[name='tf.test_zaizen_fumi_hensin_speed']").val("0");
$("input[name='f.para_zaizen_koukando']").val("40");
$("input[name='f.zaizen_au']").val("0");
$("input[name='tf.test_katuraginomiya_fumi_hensin_speed']").val("0");
$("input[name='f.para_katuraginomiya_koukando']").val("40");
$("input[name='f.katuraginomiya_au']").val("0");
$("input[name='tf.test_hujieda_fumi_hensin_speed']").val("0");
$("input[name='f.para_hujieda_koukando']").val("40");
$("input[name='f.hujieda_au']").val("0");

$("input[name='f.para_shujinkou_j_sadou']").val("0");
$("input[name='f.para_shujinkou_j_kadou']").val("0");
$("input[name='f.para_shujinkou_j_reihou']").val("0");
$("input[name='f.para_shujinkou_j_gogaku']").val("0");
$("input[name='f.para_shujinkou_j_koto']").val("0");
$("input[name='f.para_shujinkou_shukujodo']").val("0");

$("input[name='f.para_shujinkou_koto_kaisuu']").val("0");
$("input[name='f.event_hujieda1']").val("0");
$("input[name='f.event_hujieda2']").val("0");
$("input[name='f.event_hujieda3']").val("0");
$("input[name='f.event_hujieda4']").val("0");
$("input[name='f.event_hujieda5']").val("0");

$("input[name='f.okeiko_month']").val("4");
$("input[name='f.okeiko_week']").val("1");
$("input[name='f.para_sijyou_koukando']").val("10");
$("input[name='f.event_katuraginomiya3']").val("0"); //デフォルト値0にしています。ご自由に設定してください

[endscript]
;editとlinkは干渉してクリックできなくなるので、buttonがオススメです
[button graphic="kettei.png" target=*test_settei_kettei x=150 y=500 width=100 height=100]

[s]
*test_settei_kettei
;入力値を数値化。入力値確定処理時に入力フォームが表示されている必要あり。公式リファレンス[commit]より(フォームを消したらエラーが出ました)
[iscript]
tf.test_zaizen_fumi_hensin_speed = parseInt($("input[name='tf.test_zaizen_fumi_hensin_speed']").val());
f.para_zaizen_koukando = parseInt($("input[name='f.para_zaizen_koukando']").val());
f.zaizen_au = parseInt($("input[name='f.zaizen_au']").val());
tf.test_katuraginomiya_fumi_hensin_speed = parseInt($("input[name='tf.test_katuraginomiya_fumi_hensin_speed']").val());
f.para_katuraginomiya_koukando = parseInt($("input[name='f.para_katuraginomiya_koukando']").val());
f.katuraginomiya_au = parseInt($("input[name='f.katuraginomiya_au']").val());
tf.test_hujieda_fumi_hensin_speed = parseInt($("input[name='tf.test_hujieda_fumi_hensin_speed']").val());
f.para_hujieda_koukando = parseInt($("input[name='f.para_hujieda_koukando']").val());
f.hujieda_au = parseInt($("input[name='f.hujieda_au']").val());
f.para_sijyou_koukando = parseInt($("input[name='f.para_sijyou_koukando']").val());

f.para_shujinkou_j_sadou = parseInt($("input[name='f.para_shujinkou_j_sadou']").val());
f.para_shujinkou_j_kadou = parseInt($("input[name='f.para_shujinkou_j_kadou']").val());
f.para_shujinkou_j_reihou = parseInt($("input[name='f.para_shujinkou_j_reihou']").val());
f.para_shujinkou_j_gogaku = parseInt($("input[name='f.para_shujinkou_j_gogaku']").val());
f.para_shujinkou_j_koto = parseInt($("input[name='f.para_shujinkou_j_koto']").val());
f.para_shujinkou_shukujodo = parseInt($("input[name='f.para_shujinkou_shukujodo']").val());

f.para_shujinkou_koto_kaisuu = parseInt($("input[name='f.para_shujinkou_koto_kaisuu']").val());
f.event_hujieda[1] = parseInt($("input[name='f.event_hujieda1']").val());
f.event_hujieda[2] = parseInt($("input[name='f.event_hujieda2']").val());
f.event_hujieda[3] = parseInt($("input[name='f.event_hujieda3']").val());
f.event_hujieda[4] = parseInt($("input[name='f.event_hujieda4']").val());
f.event_hujieda[5] = parseInt($("input[name='f.event_hujieda5']").val());

f.okeiko_month = parseInt($("input[name='f.okeiko_month']").val());
f.okeiko_week = parseInt($("input[name='f.okeiko_week']").val());

f.event_katuraginomiya[3] = parseInt($("input[name='f.event_katuraginomiya3']").val());
[endscript]


[cm]
[freeimage layer = 29]
@jump storage="okeiko_start.ks" target=*test_start_common

*back_test
[ct]
[clearfix]
[clearstack]
[skipstop]
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

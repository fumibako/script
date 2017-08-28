;=============================================
;◆四条テスト画面用　設定入力
;テストしやすいように自由に変更してください
;=============================================
*start
@layopt layer=29 visible=true
[ptext text="テスト画面からお稽古パート(四条)をはじめます。テスト用設定をお願いします。" layer=29 size=20 x=70 y=10 color=darkslateblue bold=bold]
[ptext text="四条：返信速度設定（0で全て翌週届きます。0以外の値で本来の設定通り動作します)" layer=29 size=15 x=100 y=40 color=darkslateblue bold=bold]
[edit left=100 top=60 width=200 length=200 maxchars=3 name="tf.test_sijyou_fumi_hensin_speed" height=20]

[ptext text="四条：好感度（元の設定値=10)" layer=29 size=15 x=100 y=90 color=darkslateblue bold=bold]
[edit left=100 top=110 width=200 length=200 maxchars=3 name="f.para_sijyou_koukando" height=20]

[ptext text="四条ルートに入った後=1。それ以外=0" layer=29 size=15 x=100 y=140 color=darkslateblue bold=bold]
[edit left=100 top=160 width=200 length=200 maxchars=3 name="f.sijyou_au" height=20]

[ptext text="四条：お見合い後=1。それ以外=0" layer=29 size=15 x=100 y=190 color=darkslateblue bold=bold]
[edit left=100 top=210 width=200 length=200 maxchars=3 name="f.sijyou_omiai" height=20]

[ptext text="四条：イベント6後=1。それ以外=0" layer=29 size=15 x=100 y=240 color=darkslateblue bold=bold]
[edit left=100 top=260 width=200 length=200 maxchars=3 name="f.sijyou_event6" height=20]

[ptext text="四条：祖母を(見た=1。見ていない=1以外)" layer=29 size=15 x=100 y=290 color=darkslateblue bold=bold]
[edit left=100 top=310 width=200 length=200 maxchars=3 name="tf.edit_sobo" height=20]

[ptext text="ゲームの進行度：" layer=29 size=15 x=100 y=340 color=darkslateblue bold=bold]
[edit left=100 top=360 width=50 length=200 maxchars=2 name="f.okeiko_month" height=20]
[ptext text="月" layer=29 size=15 x=160 y=360 color=darkslateblue bold=bold]

[edit left=180 top=360 width=50 length=200 maxchars=2 name="f.okeiko_week" height=20]
[ptext text="週" layer=29 size=15 x=240 y=360 color=darkslateblue bold=bold]

[ptext text="華道熟練度：" layer=29 size=15 x=400 y=90 color=darkslateblue bold=bold]
[edit left=400 top=110 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_kadou" height=20]

[ptext text="茶道熟練度" layer=29 size=15 x=400 y=140 color=darkslateblue bold=bold]
[edit left=400 top=160 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_sadou" height=20]

[ptext text="礼法熟練度" layer=29 size=15 x=400 y=190 color=darkslateblue bold=bold]
[edit left=400 top=210 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_reihou" height=20]

[ptext text="語学熟練度：" layer=29 size=15 x=400 y=240 color=darkslateblue bold=bold]
[edit left=400 top=260 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_gogaku" height=20]

[ptext text="箏熟練度：" layer=29 size=15 x=400 y=290 color=darkslateblue bold=bold]
[edit left=400 top=310 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_koto" height=20]

[ptext text="イベント全般(1表示、0非表示)" layer=29 size=15 x=400 y=340 color=darkslateblue bold=bold]
[edit left=400 top=360 width=200 length=200 maxchars=3 name="tf.event_hyouji" height=20]

[ptext text="体力" layer=29 size=15 x=100 y=390 color=darkslateblue bold=bold]
[edit left=100 top=410 width=50 length=200 maxchars=3 name="f.para_shujinkou_tairyoku_now" height=20]

[ptext text="気力:本来は10ずつです" layer=29 size=15 x=160 y=390 color=darkslateblue bold=bold]
[edit left=160 top=410 width=50 length=200 maxchars=3 name="f.para_shujinkou_kiryoku_now" height=20]

[ptext text="アドバイスイベント(1表示、0非表示)" layer=29 size=15 x=400 y=400 color=darkslateblue bold=bold]
[edit left=400 top=430 width=200 length=200 maxchars=3 name="tf.advice_event_hyouji" height=20]

[ptext text="淑女度" layer=29 size=15 x=650 y=90 color=darkslateblue bold=bold]
[edit left=650 top=110 width=200 length=200 maxchars=3 name="f.para_shujinkou_shukujodo" height=20]

[ptext text="散策４をみた" layer=29 size=15 x=700 y=140 color=darkslateblue bold=bold]
[edit left=650 top=160 width=200 length=200 maxchars=3 name="f.event_sijyou_4" height=20]

[ptext text="華衣について聞くを選択した" layer=29 size=10 x=750 y=190 color=darkslateblue bold=bold]
[edit left=650 top=210 width=200 length=200 maxchars=3 name="f.event_sijyou_kai_jijyou" height=20]


[iscript]
//入力済デフォルト値の設定
$("input[name='tf.test_sijyou_fumi_hensin_speed']").val("0");
$("input[name='f.para_sijyou_koukando']").val("10");
$("input[name='f.sijyou_au']").val("0");
$("input[name='f.sijyou_omiai']").val("0");
$("input[name='f.sijyou_event6']").val("0");
$("input[name='f.event_sijyou_4']").val("0");
$("input[name='f.event_sijyou_kai_jijyou']").val("0");
$("input[name='tf.edit_sobo']").val("0"); //デフォルト値は1以外の仮に0と入力しています。やりやすいように変更してください
$("input[name='f.okeiko_month']").val("4");
$("input[name='f.okeiko_week']").val("1");
//茶道熟練度
$("input[name='f.para_shujinkou_j_sadou']").val("0");
//華道熟練度
$("input[name='f.para_shujinkou_j_kadou']").val("0");
//礼法熟練度
$("input[name='f.para_shujinkou_j_reihou']").val("0");
//語学熟練度
$("input[name='f.para_shujinkou_j_gogaku']").val("0");
//お箏熟練度
$("input[name='f.para_shujinkou_j_koto']").val("0");
//淑女度
$("input[name='f.para_shujinkou_shukujodo']").val("0");

$("input[name='tf.event_hyouji']").val("1");
$("input[name='f.para_shujinkou_tairyoku_now']").val("900");
$("input[name='f.para_shujinkou_kiryoku_now']").val("900");
//アドバイススキップ
$("input[name='tf.advice_event_hyouji']").val("0");
[endscript]
;editとlinkは干渉してクリックできなくなるので、buttonがオススメです
[button graphic="kettei.png" target=*test_settei_kettei x=150 y=450 width=100 height=100]

[s]
*test_settei_kettei
;入力値を数値化。入力値確定処理時に入力フォームが表示されている必要あり。公式リファレンス[commit]より(フォームを消したらエラーが出ました)
[iscript]
tf.test_sijyou_fumi_hensin_speed = parseInt($("input[name='tf.test_sijyou_fumi_hensin_speed']").val());
f.para_sijyou_koukando = parseInt($("input[name='f.para_sijyou_koukando']").val());
f.sijyou_au = parseInt($("input[name='f.sijyou_au']").val());
f.sijyou_omiai = parseInt($("input[name='f.sijyou_omiai']").val());
f.sijyou_event6 = parseInt($("input[name='f.sijyou_event6']").val());
f.event_sijyou_4 = parseInt($("input[name='f.event_sijyou_4']").val());
f.event_sijyou_kai_jijyou = parseInt($("input[name='f.event_sijyou_kai_jijyou']").val());
tf.edit_sobo = parseInt($("input[name='tf.edit_sobo']").val());
f.okeiko_month = parseInt($("input[name='f.okeiko_month']").val());
f.okeiko_week = parseInt($("input[name='f.okeiko_week']").val());
f.para_shujinkou_j_sadou = parseInt($("input[name='f.para_shujinkou_j_sadou']").val());
f.para_shujinkou_j_kadou = parseInt($("input[name='f.para_shujinkou_j_kadou']").val());
f.para_shujinkou_j_reihou = parseInt($("input[name='f.para_shujinkou_j_reihou']").val());
f.para_shujinkou_j_gogaku = parseInt($("input[name='f.para_shujinkou_j_gogaku']").val());
f.para_shujinkou_j_koto = parseInt($("input[name='f.para_shujinkou_j_koto']").val());

f.para_shujinkou_shukujodo = parseInt($("input[name='f.para_shujinkou_shukujodo']").val());

tf.event_hyouji = parseInt($("input[name='tf.event_hyouji']").val());
f.para_shujinkou_tairyoku_now = parseInt($("input[name='f.para_shujinkou_tairyoku_now']").val());
f.para_shujinkou_tairyoku_max = parseInt($("input[name='f.para_shujinkou_tairyoku_now']").val());
f.para_shujinkou_kiryoku_now = parseInt($("input[name='f.para_shujinkou_kiryoku_now']").val());
f.para_shujinkou_kiryoku_max = parseInt($("input[name='f.para_shujinkou_kiryoku_now']").val());

tf.advice_event_hyouji = parseInt($("input[name='tf.advice_event_hyouji']").val());
[endscript]
;1が入力されたときはf.sijyou_sobo==true　それ以外はfalse
[if exp="tf.edit_sobo==1"]
[eval exp="f.sijyou_sobo=true"]
[eval exp="f.event_sijyou[15] = 1"]
[else]
[eval exp="f.sijyou_sobo=false"]
[eval exp="f.event_sijyou[15] = 0"]
[endif]
;散策２or 散策（祖母）をみた？f.sijyou_sobo==true　の判定です。



手紙到着待ち週数を好感度に応じてリセット
[if exp="f.para_sijyou_koukando >= parseInt([sf.sijyou['koukando_b']])"]
	[eval exp="f.sijyou_fumi_toutyakumachi_week = 2"]
[elsif exp="f.para_sijyou_koukando >= parseInt([sf.sijyou['koukando_a']])"]
	[eval exp="f.sijyou_fumi_toutyakumachi_week = 1"]
[else]
	[eval exp="f.sijyou_fumi_toutyakumachi_week = 0"]
[endif]

[cm]
[freeimage layer = 29]

@jump storage=okeiko_start.ks target=*test_start_common
[s]

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


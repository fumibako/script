*start
;調整モードです。お稽古中、一度利用するとﾒｯｾｰｼﾞが変わります
;tf.mode_hensu
[ptext name="loding_pic" text="決定を押した後、休憩を押すと反映されます" layer=29 size=15 x=10 y=10 color=darkslateblue bold=bold]

[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false
@layopt layer=fix visible=false

[ptext name="loding_pic" text="財前：好感度" layer=29 size=15 x=10 y=40 color=darkslateblue bold=bold]
[edit left=10 top=60 width=200 length=200 maxchars=3 name="f.para_zaizen_koukando" height=20]

[ptext name="loding_pic"  text="藤枝：好感度" layer=29 size=15 x=10 y=90 color=darkslateblue bold=bold]
[edit left=10 top=110 width=200 length=200 maxchars=3 name="f.para_hujieda_koukando" height=20]

[ptext name="loding_pic" text="葛城宮：好感度" layer=29 size=15 x=10 y=140 color=darkslateblue bold=bold]
[edit left=10 top=160 width=50 length=200 maxchars=3 name="f.para_katuraginomiya_koukando" height=20]

[ptext name="loding_pic" text="黒田好感度（元値=3)" layer=29 size=15 x=10 y=190 color=darkslateblue bold=bold]
[edit left=10 top=210 width=50 length=200 maxchars=3 name="f.para_kuroda_koukando" height=20]

[ptext name="loding_pic" text="四条好感度（元値=5)" layer=29 size=15 x=10 y=240 color=darkslateblue bold=bold]
[edit left=10 top=260 width=50 length=200 maxchars=3 name="f.para_sijyou_koukando" height=20]

[ptext name="loding_pic" text="アドバイスイベントを表示する" layer=29 size=15 x=10 y=340 color=darkslateblue bold=bold]
[edit left=10 top=360 width=200 length=200 maxchars=3 name="tf.advice_event_hyouji" height=20]

[ptext name="loding_pic" text="イベントを表示する" layer=29 size=15 x=10 y=390 color=darkslateblue bold=bold]
[edit left=10 top=410 width=200 length=200 maxchars=3 name="tf.event_hyouji" height=20]

[ptext name="loding_pic" text="熟練度：茶道" layer=29 size=15 x=410 y=40 color=darkslateblue bold=bold]
[edit left=410 top=60 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_sadou" height=20]

[ptext name="loding_pic" text="熟練度：華道" layer=29 size=15 x=410 y=90 color=darkslateblue bold=bold]
[edit left=410 top=110 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_kadou" height=20]

[ptext name="loding_pic" text="熟練度：礼法" layer=29 size=15 x=410 y=140 color=darkslateblue bold=bold]
[edit left=410 top=160 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_reihou" height=20]

[ptext name="loding_pic" text="熟練度：語学" layer=29 size=15 x=410 y=190 color=darkslateblue bold=bold]
[edit left=410 top=210 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_gogaku" height=20]

[ptext name="loding_pic" text="熟練度：お箏" layer=29 size=15 x=410 y=240 color=darkslateblue bold=bold]
[edit left=410 top=260 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_koto" height=20]

[ptext name="loding_pic" text="淑女度" layer=29 size=15 x=415 y=290 color=darkslateblue bold=bold]
[edit left=410 top=310 width=200 length=200 maxchars=3 name="f.para_shujinkou_shukujodo" height=20]

[ptext name="loding_pic" text="黒田お見合い・済=1" layer=29 size=15 x=415 y=340 color=darkslateblue bold=bold]
[edit left=410 top=360 width=200 length=200 maxchars=2 name="tf.kuroda_omiai" height=20]

[ptext name="loding_pic" text="四条お見合い・済=1" layer=29 size=15 x=415 y=390 color=darkslateblue bold=bold]
[edit left=410 top=410 width=200 length=200 maxchars=2 name="f.sijyou_omiai" height=20];これは使用済フラグですのでfでok

[ptext name="loding_pic" text="財前お見合い・済=1" layer=29 size=15 x=415 y=440 color=darkslateblue bold=bold]
[edit left=410 top=460 width=200 length=200 maxchars=2 name="tf.zaizen_omiai" height=20]



[iscript]
//入力済デフォルト値の設定
$("input[name='f.para_zaizen_koukando']").val(f.para_zaizen_koukando);
$("input[name='f.para_katuraginomiya_koukando']").val(f.para_katuraginomiya_koukando);
$("input[name='f.para_hujieda_koukando']").val(f.para_hujieda_koukando);
$("input[name='f.para_sijyou_koukando']").val(f.para_sijyou_koukando);
$("input[name='f.para_kuroda_koukando']").val(f.para_kuroda_koukando);


$("input[name='f.para_shujinkou_j_sadou']").val("0");
$("input[name='f.para_shujinkou_j_kadou']").val("0");
$("input[name='f.para_shujinkou_j_reihou']").val("0");
$("input[name='f.para_shujinkou_j_gogaku']").val("0");
$("input[name='f.para_shujinkou_j_koto']").val("0");
$("input[name='f.para_shujinkou_shukujodo']").val("0");

$("input[name='tf.kuroda_omiai']").val("0");
$("input[name='tf.zaizen_omiai']").val("0");
$("input[name='f.sijyou_omiai']").val("0");

//$("input[name='f.okeiko_month']").val("4");
//$("input[name='f.okeiko_week']").val("1");


$("input[name='tf.advice_event_hyouji']").val("0");
$("input[name='tf.event_hyouji']").val("1");


[endscript]
;即時反映されないので書いてあります。
[ptext name="loding_pic" text="決定を押した後、休憩を押すと反映されます" layer=29 size=15 x=10 y=450 color=darkslateblue bold=bold]
;editとlinkは干渉してクリックできなくなるので、buttonがオススメです
[button graphic="kettei.png" target=*mode_end x=30 y=500 width=100 height=100]


[s]
*mode_end
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
@layopt layer=fix visible=true
[iscript]
f.para_zaizen_koukando = parseInt($("input[name='f.para_zaizen_koukando']").val());
f.para_katuraginomiya_koukando = parseInt($("input[name='f.para_katuraginomiya_koukando']").val());
f.para_hujieda_koukando = parseInt($("input[name='f.para_hujieda_koukando']").val());
f.para_sijyou_koukando = parseInt($("input[name='f.para_sijyou_koukando']").val());
f.para_kuroda_koukando = parseInt($("input[name='f.para_kuroda_koukando']").val());

f.para_shujinkou_j_sadou = parseInt($("input[name='f.para_shujinkou_j_sadou']").val());
f.para_shujinkou_j_kadou = parseInt($("input[name='f.para_shujinkou_j_kadou']").val());
f.para_shujinkou_j_reihou = parseInt($("input[name='f.para_shujinkou_j_reihou']").val());
f.para_shujinkou_j_gogaku = parseInt($("input[name='f.para_shujinkou_j_gogaku']").val());
f.para_shujinkou_j_koto = parseInt($("input[name='f.para_shujinkou_j_koto']").val());
f.para_shujinkou_shukujodo = parseInt($("input[name='f.para_shujinkou_shukujodo']").val());

tf.kuroda_omiai = parseInt($("input[name='tf.kuroda_omiai']").val());
tf.zaizen_omiai = parseInt($("input[name='tf.zaizen_omiai']").val());
f.sijyou_omiai = parseInt($("input[name='f.sijyou_omiai']").val());

//問題ないのであれば追加したいです
//f.okeiko_month = parseInt($("input[name='f.okeiko_month']").val());
//f.okeiko_week = parseInt($("input[name='f.okeiko_week']").val());
tf.advice_event_hyouji = parseInt($("input[name='tf.advice_event_hyouji']").val());
tf.event_hyouji = parseInt($("input[name='tf.event_hyouji']").val());
[endscript]

[if exp="tf.kuroda_omiai == 1"]
[eval exp="f.event_kuroda[1]=1"]
[eval exp="f.kuroda_au = 1"]
[eval exp="f.event_oaite_mitei = 0"]
[else]
[eval exp="f.kuroda_au = 0"]
[eval exp="f.event_oaite_mitei = 1"]
[endif]

[if exp="f.sijyou_omiai == 1"]
[eval exp="f.sijyou_au = 1"]
[eval exp="f.event_oaite_mitei = 0"]
[else]
[eval exp="f.sijyou_au = 0"]
[eval exp="f.event_oaite_mitei = 0"]
[endif]

[if exp="tf.zaizen_omiai == 1"]
[eval exp="f.event_zaizen[1]=1"]
[eval exp="f.zaizen_au = 1"]
[eval exp="f.event_oaite_mitei = 0"]
[else]
[eval exp="f.zaizen_au = 0"]
[eval exp="f.event_oaite_mitei = 1"]
[endif]

*back_test
[cm]
[eval exp="tf.mode_hensu_yes = 1"]

[iscript]
$('.loding_pic').remove();
[endscript]

@jump storage="okeiko_hyouji.ks" target=*test_hyouji_owari
;[return]

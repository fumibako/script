*start
;調整モードです。お稽古中、一度利用するとﾎﾞﾀﾝの色が変わります
;tf.mode_hensu
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

[ptext name="loding_pic" text="黒田好感度（元値=3)" layer=29 size=15 x=190 y=190 color=darkslateblue bold=bold]
[edit left=10 top=210 width=50 length=200 maxchars=3 name="f.para_kuroda_koukando" height=20]

[ptext name="loding_pic" text="四条好感度（元値=5)" layer=29 size=15 x=10 y=240 color=darkslateblue bold=bold]
[edit left=10 top=260 width=50 length=200 maxchars=3 name="f.para_sijyou_koukando" height=20]


[ptext name="loding_pic" text="熟練度：茶道" layer=29 size=15 x=410 y=40 color=darkslateblue bold=bold]
[edit left=410 top=60 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_sadou" height=20]

[ptext name="loding_pic" text="熟練度：華道" layer=29 size=15 x=410 y=90 color=darkslateblue bold=bold]
[edit left=410 top=110 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_kadou" height=20]

[ptext name="loding_pic" text="熟練度：礼法" layer=29 size=15 x=410 y=140 color=darkslateblue bold=bold]
[edit left=410 top=160 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_reihou" height=20]

[ptext name="loding_pic" text="熟練度：語学" layer=29 size=15 x=410 y=190 color=darkslateblue bold=bold]
[edit left=410 top=210 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_gogaku" height=20]

[ptext name="loding_pic" text="熟練度：お箏" layer=29 size=15 x=410 y=240 color=darkslateblue bold=bold]
[edit left=10 top=260 width=200 length=200 maxchars=3 name="f.para_shujinkou_j_koto" height=20]

[ptext name="loding_pic" text="淑女度" layer=29 size=15 x=415 y=290 color=darkslateblue bold=bold]
[edit left=345 top=310 width=200 length=200 maxchars=3 name="f.para_shujinkou_shukujodo" height=20]


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

//$("input[name='f.okeiko_month']").val("4");
//$("input[name='f.okeiko_week']").val("1");


$("input[name='tf.advice_event_hyouji']").val("0");
$("input[name='tf.event_hyouji']").val("1");


[endscript]
;editとlinkは干渉してクリックできなくなるので、buttonがオススメです
[button graphic="kettei.png" target=*mode_end x=220 y=500 width=100 height=100]


[s]
*mode_end
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

//問題ないのであれば追加したいです
//f.okeiko_month = parseInt($("input[name='f.okeiko_month']").val());
//f.okeiko_week = parseInt($("input[name='f.okeiko_week']").val());
//tf.advice_event_hyouji = parseInt($("input[name='tf.advice_event_hyouji']").val());
//tf.event_hyouji = parseInt($("input[name='tf.event_hyouji']").val());
[endscript]


[cm]
[eval exp="tf.mode_hensu_yes = 1"]

[iscript]
$('.loding_pic').remove();
[endscript]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
@layopt layer=fix visible=true
[return]

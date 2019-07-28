;=========================================
; help画面
;=========================================
*start
[cm]
[clearfix]
[clearstack]
[skipstop]
[stopse]
;背景表示
[bg wait=true storage="../fgimage/bg/plane_wakakusa.jpg" time=1]
;準備中
[image name="loding_pic1" layer=3 folder="image" storage="junbi_cyu.gif" left=740 top=580 visible=true]
;[wait time=580]
;タイトルに戻る
[button fix=true graphic="back.png" target="*backtitle" x=880 y=5 width=50 height=50 ]


[ptext name=list layer=2 page=fore text="ゲームの手引き" x=20 y=20 size=26 color=0xA8401C visible=true]
[image name=list layer=2 storage="../image/line_brown.png" x=0 y=60]

[ptext name=list layer=2 page=fore text="ゲームの進め方や不具合で悩まれたときなどに、ご覧ください" x=300 y=100 size=18 color=0xA8401C visible=true]

[glink target=*howto text="ゲームの進め方を見る" font_color=black size=23 width="300" x=300 y=150 graphic="select_waku_x500.png"]
[glink target=*qa text="利用規約・Ｑ＆Ａを見る" font_color=black size=23 width="300" x=300 y=250 graphic="select_waku_x500.png"]
;[glink target=*report text="連絡・報告" font_color=black size=23 width="300" x=300 y=350 graphic="select_waku_x500.png"]
[glink target=*delete_save text="セーブデータ初期化" font_color=black size=23 width="300" x=300 y=350 graphic="select_waku_x500.png"]
[ptext name=list layer=2 page=fore text="※ ↑ブラウザ版のみ対応。ボタンを押すと詳しい説明が表示されます。" x=300 y=430 size=16 color=0xA8401C visible=true]
@jump storage="help.ks" target=*common

*howto
[cm]
[freeimage layer=3]
[freeimage layer=2]
@clearfix
@clearstack
@jump storage="help_howto.ks"


*qa
[cm]
[freeimage layer=3]
[freeimage layer=2]
@clearfix
@clearstack
@jump storage="help_qa.ks"


*report
[cm]
[freeimage layer=3]
[freeimage layer=2]
@clearfix
@clearstack
@jump storage="help_report.ks"


*delete_save
[cm]
[freeimage layer=3]
[freeimage layer=2]
@clearfix
@clearstack
@jump storage="help_delete_save.ks"


*common
[iscript]
$(".layer_free").css("opacity",1);
$(".list").css("opacity",1);
$('.loding_pic1').remove();
[endscript]
@layopt layer=2 visible=true
[s]

*backtitle
[cm]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]
[iscript]
$(".layer_free").css("opacity",1);
$(".layer_2").css("opacity",1);
[endscript]
@layopt layer=2 visible=true
@layopt layer=1 visible=true
@clearfix
[clearstack]

@jump storage=title.ks
[s]


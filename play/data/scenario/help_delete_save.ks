;=========================================
; help画面:ゲームの進め方
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
;戻る
[glink target=*howto text="ゲームの進め方" font_color=black size=13 width="95" x=490 y=10 graphic="select_waku_x300b.png"]
[glink target=*qa text="Ｑ＆Ａ" font_color=black size=13 width="95" x=640 y=10 graphic="select_waku_x300b.png"]
;[glink target=*report text="不具合報告" font_color=black size=13 width="95" x=490 y=10 graphic="select_waku_x300b.png"]
;[glink target=*delete_save text="セーブ初期化" font_color=black size=13 width="95" x=640 y=10 graphic="select_waku_x300b.png"]
[glink target=*backtitle text="戻る" font_color=black size=13 width="95" x=790 y=10 graphic="select_waku_x300b.png"]

[ptext name=list layer=2 page=fore text="セーブデータ初期化" x=20 y=20 size=26 color=0xA8401C visible=true]
[image name=list layer=2 storage="../image/line_brown.png" x=0 y=60]

[html]
<div style="background:#fffdfa; padding:10px; border:1px dashed #7788cc; border-radius:10px;margin-top:130px;margin-left:20px;margin-right:20px;">
        　ゲームの途中で「セーブ」を行おうとしてもできなくなったり、エラーが出てしまうことがあると報告されています。<br>
        　特にブラウザ版は、セーブでのエラーが起きやすいようです。<br>
        　原因の一つとして、ブラウザのデータ保存容量がいっぱいになってしまい、それ以上保存できなくなることが考えられます。<br><br>
        　その場合は「セーブデータ初期化」を行うと、エラーが解消され、ゲームを進行することができます。<br>
        　「初期化」を行うため、それまでのセーブデータは消えてしまいます。<br>
        　（本当はセーブデータ個別に消去できれば良いのですが、現時点での恋綴り開発者の技術では対応できません。<br>
        　　申し訳ありません）<br><br>
        　セーブデータ全てが消えても良い場合だけ、初期化を行ってください。<br>
        　また、本機能はブラウザ版のセーブエラー対策用の機能です。<br>
        　ダウンロード版では「初期化」を選択してもセーブデータは消去されません。<br>
</div>
[endhtml]

[glink target=*delete_save_go text="セーブデータ初期化を行う" font_color=black size=20 width="350" x=280 y=480 graphic="select_waku_x500.png"]



@jump target=*common

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

*delete_save_go
[cm]
[freeimage layer=3]
[freeimage layer=2]
@clearfix
@clearstack
[ptext name=list layer=2 page=fore text="ほんとうにセーブデータ初期化を行いますか？" x=230 y=70 size=26 color=0xA8401C visible=true]
[ptext name=list layer=2 page=fore text="システム設定等も初期化されます" x=330 y=120 size=18 color=0xA8401C visible=true]
[ptext name=list layer=2 page=fore text="初期化後にゲームを再起動します" x=330 y=150 size=18 color=0xA8401C visible=true]
[glink target=*delete_yes text="はい" font_color=black size=30 width="300" x=260 y=200 graphic="select_waku_x500.png"]
[glink target=*backtitle text="いいえ" font_color=black size=30 width="300" x=260 y=350 graphic="select_waku_x500.png"]



@jump target=*common


*common
[iscript]
$(".layer_free").css("opacity",1);
$(".list").css("opacity",1);
$('.loding_pic1').remove();
[endscript]
@layopt layer=2 visible=true
[s]

*delete_yes
[cm]
[freeimage layer=3]
[freeimage layer=2]
@clearfix
@clearstack
[wait time=100]
;[ptext name=list layer=2 page=fore text="セーブデータを消去" x=200 y=80 size=18 color=0xA8401C visible=true]
[clearsysvar]
[wait time=50]
[clearvar]
[wait time=50]
[iscript]
	localStorage.removeItem(TG.config.projectID + "_tyrano_data");
	localStorage.removeItem(TG.config.projectID + "_tyrano_auto_save");
	alert("セーブデータを消去しました。\nエラー防止のため、ゲームを再起動します");
	location.reload();
[endscript]
[wait time=50]

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

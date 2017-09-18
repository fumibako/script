*title
[position layer=message0 width=960 height=500 top=640 left=960 page=fore opacity=0]
;↓タイトルメニューから「戻る」際にボタンが重複表示になることを防止
[cm]
[freeimage layer = 3]
[freeimage layer = 4]
[freeimage layer = 5]
[freeimage layer = 6]
[freeimage layer = 7]
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
[eval exp="tf.test_gamen_sijyou=false"]
[eval exp="tf.test_gamen=false"]
[eval exp="tf.okeiko_gamen=false"]
[eval exp="f.okeiko_gamen=false"]
[eval exp="tf.advice_event_hyouji=1"]
[eval exp="f.flag_replay=false"]
[eval exp="tf.flag_replay=false"]
[iscript]
//クリア回数：未定義時変数セット(test_sijyou.ksのスクリプトを一部使用させていただきました。◆B4nFWraU42さん、ありがとうございます)
if (typeof sf.ending_Number_of_times === "undefined") {
	sf.ending_Number_of_times = sf.ED_kuroda_normal + sf.ED_kuroda_good + sf.ED_kuroda_bad;
	sf.ending_Number_of_times = sf.ending_Number_of_times + sf.ED_sijyou_normal + sf.ED_sijyou_good + sf.ED_sijyou_bad;
	sf.ending_Number_of_times = sf.ending_Number_of_times + sf.ED_zaizen_normal + sf.ED_zaizen_good + sf.ED_zaizen_bad2 + sf.ED_zaizen_bad1;
	sf.ending_Number_of_times = sf.ending_Number_of_times + sf.ED_katuraginomiya_normal + sf.ED_katuraginomiya_good + sf.ED_katuraginomiya_bad;
	sf.ending_Number_of_times = sf.ending_Number_of_times + sf.ED_hujieda_normal + sf.ED_hujieda_good + sf.ED_hujieda_bad + sf.ED_hujieda_bad2;
}
//怪談についての話題：未定義時変数セット
if (typeof f.sijyou_fumi_toutyakumachi_kaidan === "undefined") {f.sijyou_fumi_toutyakumachi_kaidan = -1;}
if (typeof f.zaizen_fumi_toutyakumachi_kaidan === "undefined") {f.zaizen_fumi_toutyakumachi_kaidan = -1;}
if (typeof f.katuraginomiya_fumi_toutyakumachi_kaidan === "undefined") {f.katuraginomiya_fumi_toutyakumachi_kaidan = -1;}
if (typeof f.hujieda_fumi_toutyakumachi_kaidan === "undefined") {f.hujieda_fumi_toutyakumachi_kaidan = -1;}
if (typeof f.kuroda_fumi_toutyakumachi_kaidan === "undefined") {f.kuroda_fumi_toutyakumachi_kaidan = -1;}
[endscript]
;◆↓背景切り替え時の効果を指定します。bgのデフォルトであるfadeinはcrossfadeと異なっていたのでchara_modのデフォルトであるcrossfadeを指定しています
[eval exp="f.bg_method='crossfade'"]

[hidemenubutton]
;構築中隠し
;[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 

;背景（タイトル画像）表示：安定性のためtitle周りの背景表示を[bg]タグに統一します
[bg storage="../fgimage/bg/title.jpg" time=0]
[wait time=10]

;背景（効果）表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_new name="bg_effect" storage="toumei.gif"]
[chara_show left=0 top=0 layer=2 name="bg_effect"]

;主人公画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
[chara_new name="girl_base" storage="toumei.gif"]
[chara_show left=1 top=381 layer=15 name="girl_base" time=0]
[wait time=10]
[chara_new name="girl_mayu" storage="toumei.gif"]
[chara_show left=1 top=381 layer=16 name="girl_mayu" time=0]
[wait time=10]
[chara_new name="girl_me" storage="toumei.gif"]
[chara_show left=1 top=381 layer=17 name="girl_me" time=0]
[wait time=10]
[chara_new name="girl_kuti" storage="toumei.gif"]
[chara_show left=1 top=381 layer=18 name="girl_kuti" time=0]
[wait time=10]
[chara_new name="girl_emo" storage="toumei.gif"]
[chara_show left=1 top=381 layer=19 name="girl_emo" time=0]
[wait time=10]
[chara_new name="girl_te" storage="toumei.gif"]
[chara_show left=1 top=381 layer=20 name="girl_te" time=0]
[wait time=10]

;メッセージ窓画像の仮表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[freeimage layer = 14]
[chara_new name="message_bg" storage="toumei.gif"]
[chara_show left=1 top=391 layer=14 name="message_bg"]
[wait time=10]

[iscript]
var mousewheelevent = 'onwheel' in document ? 'wheel' : 'onmousewheel' in document ? 'mousewheel' : 'DOMMouseScroll';    
$(document).on(mousewheelevent,function(e){
e.preventDefault();
var delta = e.originalEvent.deltaY ? -(e.originalEvent.deltaY) : e.originalEvent.wheelDelta ? e.originalEvent.wheelDelta : -(e.originalEvent.detail);
if (delta < 0){
// マウスホイールを下にスクロールしたときの処理を記載
$(".layer_event_click").trigger("click");
} else {
// マウスホイールを上にスクロールしたときの処理を記載
TG.menu.displayLog();
}
});

//"→"キーを押したときだけスキップ処理。「ティラノスクリプト 製作テクニックwiki」様記載のスクリプトを使用させていただきました
f.skip=this.kag.stat.is_skip;
$(window).keydown(function(e){
if(e.keyCode === 39 || e.keyCode === 32 && f.skip != true) {
  TG.kag.ftag.startTag("skipstart");
  f.skip=true;
} });
$(window).keyup(function(e){
if(e.keyCode === 39 || e.keyCode === 32 && f.skip == true) {
  TG.kag.ftag.startTag("cancelskip");
  f.skip=false;
} });
[endscript]
[wait time=10]

;◆スキップ状態の時はスキップを解除
[if exp="f.skip == true"]
	[cancelskip]
	[eval exp="f.skip = false"]
[endif]
[wait time=10]
@jump storage="title.ks" target="*button_hyouji"
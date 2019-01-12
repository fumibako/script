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
;[glink target=*howto text="ゲームの進め方" font_color=black size=13 width="95" x=200 y=10 graphic="select_waku_x300b.png"]
[glink target=*qa text="Ｑ＆Ａ" font_color=black size=13 width="95" x=490 y=10 graphic="select_waku_x300b.png"]
;[glink target=*report text="連絡・報告" font_color=black size=13 width="95" x=490 y=10 graphic="select_waku_x300b.png"]
[glink target=*delete_save text="セーブ初期化" font_color=black size=13 width="95" x=640 y=10 graphic="select_waku_x300b.png"]
[glink target=*backtitle text="戻る" font_color=black size=13 width="95" x=790 y=10 graphic="select_waku_x300b.png"]

[html top=0 left=0]
<!--↓以下はスクロール対策用に追記-->
<!--scroll scripts and codes by ＠名無しさん１ ◆B4nFWraU42-->
<style>
.help_gamen {
height:640px;
width:960px;
/*高さを指定しないと領域オーバーか認識しない為指定 overflow:scroll;　touch*/
overflow-y:scroll;
-webkit - overflow - scrolling: touch;
scrolling:touch;
overflow-scrolling:touch;
}
h2.image{
	background-image:url('./data/image/h2.png');
	background-repeat:no-repeat;
	padding-left:50px;
	padding-top:3px;
}
th,td.yohaku{
	padding-left:10px;
	padding-right:10px;
}
</style>
<style>
/* スクロールバーのデザインをつけることができます。ただしwebkitブラウザのみです。他ブラウザはjqueryプラグインで*/
::-webkit-scrollbar{
width:15px;
background:#dad1c1;
	}
::-webkit-scrollbar-thumb{
background:#beb7e8;
	}
</style>
<!--↑ここまでスクロール対策用に追記-->
[endhtml]

[html]
<div class='help_gamen' align="left">
<br>
<h1 style="font-size: 140%;">　ゲームの進め方</h1>
<img src="./data/image/line_brown.png">
<table border="0" style="margin-left:0%; margin-right:0%; width:100%;" align="left">
    <tr>
        <th class="yohaku" scope="row"><h2 class="image">はじめかた</h2><img src="../ss_hp_game_naming.jpg" alt="名前入力"><br><br></th>
        <td><br>
        　メニューの「はじめから」を押すと、主人公の名前入力画面になります。<br>
        　お好きな名前を入力して決定を押していただくと、物語が始まります。<br><br>
        　PCでプレイされる場合「スペース」キー又は「→」キーを押している間、速読できます。<br>
        　マウススクロール下でページ送り、スクロール上でバックログを読むことができます。<br>
        　スマートフォンからプレイされる場合は、画面上の「速読」ボタン等をご利用ください。<br>
		</td>
    </tr>
</table>
<img src="./data/image/line_brown.png">
<table border="0" style="margin-left:0%; margin-right:0%; width:100%;" align="left">
    <tr>
       <th class="yohaku" scope="row"><h2 class="image">お稽古画面</h2><img src="../ss_hp_game_okeiko01.jpg" alt="お稽古画面"><br><br></th>
        <td>
		　淑女を目指してお稽古に励みながら、文通でお相手と心を通わせて仲を深めることができます。<br>
		画面下部の「茶道」などのボタンを押すとお稽古ができます。<br>
		</td>
    </tr>
    <tr>
        <th class="yohaku" scope="row"><img src="../ss_hp_game_okeiko_sadou.jpg" alt="お稽古中：茶道"><br><br></th>
        <td>
		　お稽古をすると「淑女度」や「熟練度」が上昇します。<br>
		「体力」「気力」は下記のように上昇します。<br><br>
		茶道、礼法…「体力」<br>
		華道、語学…「気力」<br>
		お箏…「体力」「気力」どちらかランダム<br>
		</td>
    </tr>
</table>
<img src="./data/image/line_brown.png">
<table border="0" style="margin-left:0%; margin-right:0%; width:100%;" align="left">
    <tr>
        <th class="yohaku" scope="row"><h2 class="image">文箱</h2><img src="../ss_hp_game_fumibako.jpg" alt="文箱" width="500" height="336"><br><br></th>
        <td>
		　お稽古画面右上の「文箱」では、届いたお手紙を読み返したり、こちらからお手紙を書くことができます。<br><br>
		　こちらからお手紙を出すことが少なかったり、返信を溜めてしまうと文通が途絶えてしまうことがあります。<br>
		　文通が途絶えると、ゲームオーバーとなることがありますので、ご注意を。<br><br>
		　気になる方には画面下部のボタンから、お手紙を書いてみましょう。<br>
		</td>
    </tr>
</table>
<img src="./data/image/line_brown.png">
<table border="0" style="margin-left:0%; margin-right:0%; width:100%;" align="left">
    <tr>
        <th class="yohaku" scope="row"><h2 class="image">散策</h2><img src="../ss_hp_game_sansaku.jpg" alt="散策"><br><br></th>
        <td>
		　お稽古画面上の「散策」から、散策に出ることができます。<br><br>
		お手紙の話題を得るイベントが発生することもあります。<br>
		話題作りやお稽古の合間の気分転換に、時々散策に出てみましょう。<br>
		</td>
    </tr>
</table>
<img src="./data/image/line_brown.png">
<table border="0" style="margin-left:0%; margin-right:0%; width:100%;" align="left">
    <tr>
        <th class="yohaku" scope="row"><h2 class="image">休憩</h2><img src="../ss_hp_game_kyuukei.jpg" alt="休憩"><br><br></th>
        <td>
		　お稽古画面右下の「休憩」から、体力や気力を回復してゲームを次週に進めることができます。<br><br>
		あまり「休憩」ばかり続けすぎると……淑女度などが減ることもあります。（お稽古をすると回復できます）<br>
		</td>
    </tr>
</table>
<img src="./data/image/line_brown.png">
<table border="0" style="margin-left:0%; margin-right:0%; width:100%;" align="left">
    <tr>
        <th class="yohaku" scope="row"><h2 class="image">イベント達成率</h2><img src="../ss_hp_game_hinto.jpg" alt="イベント達成率"><br><br></th>
        <td><br>
        　タイトル画面「おまけ」→「イベント達成率」又はゲーム内「情報」の「イベント達成率」からイベント一覧の進行度を見ることができます。<br><br>
        　右下のボタンからヒント無・ヒント有・攻略情報有を切り替えることができます。<br><br>
        　「ヒント有」又は「攻略情報有」の状態で未達成イベントの月週表示をクリックすると、画面下部にヒント又は攻略情報が表示されます。<br><br>
        　「済」のイベント月週表示をクリックすると、そのイベントを回想することができます。
		</td>
    </tr>
</table>
<img src="./data/image/line_brown.png">
<table border="0" style="margin-left:0%; margin-right:0%; width:100%;" align="left">
	<tr><td class="yohaku" colspan="2">
	<h2 class="image">いつの日か</h2>
        　お手紙のやりとりで深く心を通わせると……？<br><br>
        　（続きはゲーム内で）<br><br>
	</td></tr>
</table>

[endhtml]

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

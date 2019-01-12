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
;[glink target=*qa text="Ｑ＆Ａ" font_color=black size=13 width="95" x=490 y=10 graphic="select_waku_x300b.png"]
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
h3.image{
	background-image:url('./data/image/h3.png');
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
<h1 style="font-size: 140%;">　Ｑ＆Ａ</h1>
<img src="./data/image/line_brown.png">
<table border="0" style="margin-left:0%; margin-right:0%; width:100%;" align="left">
    <tr>
        <th class="yohaku" scope="row"><h2 class="image">利用規約</h2>二次創作・レビュー・ご紹介・転載・実況等について<br></th>
    </tr>
    </tr>
</table>
<table border="0" style="margin-left:0%; margin-right:0%; width:100%;" align="left">
    <tr>
<td class="yohaku"><br>
<!-- 折りたたみ展開ボタン -->
<div onclick="obj=document.getElementById('guide').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">(クリックで詳細を表示/非表示します)</a><br>
</div>
<!--// 折りたたみ展開ボタン -->
  
<!-- ここから先を折りたたむ -->
<div id="guide" style="display:none;clear:both; background:#fffdfa; padding:10px; border:1px dashed #7788cc; border-radius:10px;margin-left:10px;margin-right:20px;">
<!--この部分が折りたたまれ、展開ボタンをクリックすることで展開します。-->
<h2 class="image">利用規約</h2>
<br>
　シナリオ、グラフィック等の著作権は各著作者様に帰属します。<br>
　音声、画像、テキスト素材を抜き出して再配布、再使用、改変することを禁止します。<br>
　四条華織ルートシナリオについてはご相談いただけましたら"クレジット表示 - 非営利 - 改変禁止"<br>
　の条件下で再使用可能となる場合があります。<br>
　その際はkoitsuduri2013@gmail.comまでご連絡ください。<br>
<hr style="border-top: 1px dashed #ccccff;width: 100%;">

        <h3 class="image">二次創作について</h3>
　禁止事項：公序良俗に反する内容、中傷目的の内容。<br>
　禁止事項を守っていただければ歓迎します。<br>
　未プレイの方が多くご覧になる場所へ投稿される際は、できればですが…<br>
　キャラクターの絵に名前を添える場合は"スミレの人"などぼかした表現にしていただけるとネタバレ防止になってありがたいです。<br>
　プレイ済の方へ向けた二次創作の場では、キャラクター名を記載してくださって問題ありません。<br>
<hr style="border-top: 1px dashed #ccccff;width: 100%;">
        <h3 class="image">レビュー・ご紹介・転載について</h3>
　WebサイトやSNS等でのレビューやご紹介は歓迎します。報告不要です。<br>
　ゲーム画面や公式サイトスクリーンショット、公式サイトの説明文、ゲーム紹介ページへのリンクは許可を取らずにご利用いただけます。<br>
　当ゲームは"(ゲーム開始時には)顔を知らないお相手"との関係作りがテーマの一つであるため、攻略対象立ち絵を含むスクリーンショットを掲載される際は、できれば『ネタバレ』へのご配慮をいただけるとありがたいです。<br>
　また、スチルの掲載はご遠慮いただけるとありがたいです。それぞれ強制ではありません。<br>
　上記以外での公式サイトの無断転載・ゲームファイルの掲載は禁止します。<br>
<hr style="border-top: 1px dashed #ccccff;width: 100%;">
        <h3 class="image">実況について</h3>
　実況可、報告不要です。<br>
　動画のタイトルに"恋綴り"、説明文に公式サイトURL"http://koitsuduri.webcrow.jp/"を入れてください。<br>
<hr style="border-top: 1px dashed #ccccff;width: 100%;">
        <h3 class="image">免責事項</h3>
　このソフトウェアを使用したことによって生じたすべての障害・損害・不具合等に関しては、<br>
　製作者とその関係者および所属するいかなる団体・組織とも、 一切の責任を負いません。<br>
　各自の責任においてご使用ください。<br>
<hr style="border-top: 1px dashed #ccccff;width: 100%;">
        <h3 class="image">ご連絡はこちらへ</h3>
　二次創作、レビュー、実況等について、それぞれご報告いただく必要はありませんが、<br>
　もしお知らせいただきましたらスタッフ間で情報を共有させていただきます。<br>
　その際に、よろしければ公式サイト連絡フォームやkoitsuduri2013@gmail.comからご連絡ください。<br>
　個別の返信は基本的には行いませんので、ご了承ください。<br>
　</div>
　<br>
	</td></tr>
		</td>
    </tr>
</table>
<img src="./data/image/line_brown.png">
<table border="0" style="margin-left:0%; margin-right:0%; width:100%;" align="left">
     <th class="yohaku" scope="row"><h2 class="image">Ｑ＆Ａ</h2><br></th>
     <tr><td class="yohaku">
		　よくあるご質問にお答えします<br>
    </td></tr><tr><td class="yohaku">
		　
<h3>Ｑ：ゲームが止まってしまいました</h3>
<!-- 折りたたみ展開ボタン -->
<div onclick="obj=document.getElementById('qa01').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">(回答:クリックで詳細を表示/非表示します)</a>
</div>
<!--// 折りたたみ展開ボタン -->
  
<!-- ここから先を折りたたむ -->
<div id="qa01"style="display:none;clear:both; background:#fffdfa; padding:10px; border:1px dashed #7788cc; border-radius:10px;margin-left:10px;margin-right:20px;">
<!--この部分が折りたたまれ、展開ボタンをクリックすることで展開します。-->
<br>
プレイいただき、ありがとうございます。<br>
お手数をおかけしますが、ゲームの再起動をお願いいたします。<br>
ブラウザ版の場合はキャッシュ(履歴など)を消していただけると不具合が解消される場合があります。<br>
それでもなおらない場合は、よろしければ公式サイト連絡フォームやkoitsuduri2013@gmail.comからご連絡ください。<br><br>
個別の返信は行いませんが、ゲームの不具合を確認して公式サイト「不具合報告・ブラウザ対応状況ページ」でご報告できる場合があります。<br>
その際に、いただいたご報告内容を掲載させていただくことがありますので、ご了承ください。<br>
不具合修正を行った場合は、ゲームの不具合修正版を配布します。
</font><br>
</div>
<hr style="border-top: 1px dashed #ccccff;width: 100%;">

<h3>Ｑ：ゲームの表示が変です（英文の羅列のような表示が出ます）</h3>
<!-- 折りたたみ展開ボタン -->
<div onclick="obj=document.getElementById('qa02').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">(回答:クリックで詳細を表示/非表示します)</a>
</div>
<!--// 折りたたみ展開ボタン -->
  
<!-- ここから先を折りたたむ -->
<div id="qa02" style="display:none;clear:both; background:#fffdfa; padding:10px; border:1px dashed #7788cc; border-radius:10px;margin-left:10px;margin-right:20px;">
<!--この部分が折りたたまれ、展開ボタンをクリックすることで展開します。-->
<br>
プレイいただき、ありがとうございます。<br>
お手数をおかけしますが、ゲームの再起動をお願いいたします。<br>
ブラウザ版の場合はキャッシュ(履歴など)を消していただけると不具合が解消される場合があります。<br>
それでもなおらない場合は、よろしければ公式サイト連絡フォームやkoitsuduri2013@gmail.comからご連絡ください。<br><br>
個別の返信は行いませんが、ゲームの不具合を確認して公式サイト「不具合報告・ブラウザ対応状況ページ」でご報告できる場合があります。<br>
その際に、いただいたご報告内容を掲載させていただくことがありますので、ご了承ください。<br>
不具合修正を行った場合は、ゲームの不具合修正版を配布します。
</font><br>
</div>
<hr style="border-top: 1px dashed #ccccff;width: 100%;">

<h3>Ｑ：ゲームのヒント（攻略情報）はありますか？</h3>
<!-- 折りたたみ展開ボタン -->
<div onclick="obj=document.getElementById('qa03').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">(回答:クリックで詳細を表示/非表示します)</a>
</div>
<!--// 折りたたみ展開ボタン -->
  
<!-- ここから先を折りたたむ -->
<div id="qa03" style="display:none;clear:both; background:#fffdfa; padding:10px; border:1px dashed #7788cc; border-radius:10px;margin-left:10px;margin-right:20px;">
<!--この部分が折りたたまれ、展開ボタンをクリックすることで展開します。-->
<br>
プレイいただき、ありがとうございます。<br>
ゲーム画面(お稽古画面)から「情報」をクリックしてみてください。<br>
画面左下の「イベント達成率」をクリックすると、イベント一覧画面が表示されます。<br>
<br>
イベント一覧画面右下の「ヒント無」ボタンをクリックすると「ヒント有」「攻略情報有」に<br>
ボタンが切り替わります。ヒント有/攻略情報有の状態でイベント一覧の"〇月〇週"をクリック<br>
すると、ヒント又は攻略情報が画面下部に表示されます。<br><br>
イベント一覧画面はゲームのタイトル画面「攻略情報とおまけ」からも見ることができます。<br>
<br>
ゲーム進行のお役に立てると嬉しいです。<br>
</font><br>

		</td>
    </tr>
</table>
<img src="./data/image/line_brown.png">


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

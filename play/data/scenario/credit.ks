*start

[hidemenubutton]
;背景変更:プロローグイントロ全画面
;[chara_mod name="bg" storage="bg/bg_web_blue2.jpg" time=50]
[freeimage layer=1]
[bg wait=true storage="../fgimage/bg/bg_web_blue2.jpg" time=0]

;-----設定タグここから-----

[if exp="sf.BGM=='OFF'"]
[iscript]
/*BGMを再生しない*/
TG.stat.play_bgm = false;
[endscript]
;ロード時点で再生していたBGMを停止します。
[stopbgm ]
[else]
[iscript]
/*BGMを再生する*/
TG.stat.play_bgm = true;
[endscript]
[endif]

[if exp="sf.SE=='OFF'"]
[iscript]
/*効果音を再生しない*/
TG.stat.play_se = false;
[endscript]
;ロード時点で再生していたSEを停止します。
[stopse ]
[else]
[iscript]
/*効果音を再生する*/
TG.stat.play_se = true;
[endscript]
[endif]

;[if exp="sf.BOOST=='ON'"]
;[boost_mode_on]
;[else]
;[boost_mode_off]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
;[eval exp="sf.BOOST='OFF'"]
;[endif]
;-----設定タグここまで-----

;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
[position width=960 height=550 top=60 left=60 page=fore opacity=0]

;クレジット表記：全画面版
*credit

[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]

;=============================================
;クレジット
;=============================================

*credit_page1
[cm]
@clearfix

[locate x=850 y=20]
[button name="button_title" graphic="back.png" target="*back" ]

[html top=1 left=1]
<!--↓以下はスクロール対策用に追記-->
<!--scroll scripts and codes by ＠名無しさん１ ◆B4nFWraU42-->
<style>
.credit_gamen {
height:640px;
width:960px;
/*高さを指定しないと領域オーバーか認識しない為指定 overflow:scroll;　touch*/
overflow-y:scroll;
-webkit - overflow - scrolling: touch;
scrolling:touch;
overflow-scrolling:touch;
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
<div class='credit_gamen'>
<font size="2" color="#aa6161" family='"HG明朝E","ＭＳ Ｐ明朝","MS PMincho","ヒラギノ明朝 Pro","Hiragino Mincho Pro"'>
<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="left">
<tr><td>
	<img src="./data/image/h2.png"><b>スクリプト・素材サイト様</b><br>
        制作にあたり、大変お世話になりました。ありがとうございます。<br>
        <img src="./data/image/h3.png"><b>スクリプトエンジン</b><br>
	・　<a href="http://tyrano.jp/" style="text-decoration:none;">ティラノスクリプト 様</a><br>
        <br>
        <img src="./data/image/h3.png"><b>スクリプト関係</b><br>
	・　<a href="http://keito-works.com/" style="text-decoration:none;">keito-works 様</a><br>
	・　<a href="http://awoinekura.blog.fc2.com/" style="text-decoration:none;">アオイサクラ 様</a>： <a href="http://awoinekura.blog.fc2.com/blog-entry-6.html" style="text-decoration:none;">簡易コンフィグ画面プラグイン</a><br>
	・　<a href="http://tyrano.wiki.fc2.com/" style="text-decoration:none;">ティラノスクリプト 製作テクニックwiki 様</a><br>
	・　永遠の文芸部 様： ティラノスクリプト講座　Androidアプリの作り方<br>
<!--<a href="http://www7.plala.or.jp/S_H_Binary/kaze/index.html" style="text-decoration:none;">　</a>　<a href="http://www7.plala.or.jp/S_H_Binary/kaze/tkouza.html" style="text-decoration:none;">　</a>-->
        <br>
        <img src="./data/image/h3.png"><b>背景</b><br>
	・　<!--<a href="http://www.wafusozai.com/" style="text-decoration:none;">-->(c)www.wafusozai.com 様<!--</a>--><br>
	・　<a href="http://light77.sakura.ne.jp/" style="text-decoration:none;">ゆうあかり 様</a><br>
	・　<a href="http://www.geocities.jp/redglass_palace/" style="text-decoration:none;">赤いガラスの宮殿 様</a><br>
	・　<a href="http://www.s-hoshino.com/" style="text-decoration:none;">フリー素材屋Hoshino 写真提供者 usagi_s 様</a><br>
	・　<a href="http://d.hatena.ne.jp/meiji_photo/">明治村画像庫2 様</a><br>
	・　<a href="http://otomegtx.yorozu.us/pic.html">otomegtx 様</a><br>
	・　<a href="http://photo.v-colors.com/" title="PHOTO STOCKER -高解像度の無料写真素材-へのリンク" target="_blank">PHOTO STOCKER</a> <a href="http://photo.v-colors.com/329.html">YUKI 様</a><br>
	
                        
<!-- 黒田ルート(複数の写真を使用させていただいた場合は他ルート分も1箇所にまとめて記載しています) -->
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/didy_b/16022666269/">Eddy BERTHIER 様</a>, <a href="https://www.flickr.com/photos/b4nfter/16355722748/">_ Liquid 様</a><br>
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/duncanh1/6418213775/">Dun.can 様</a>, <a href="https://www.flickr.com/photos/minoir/14903340390/">minoir 様</a><br>
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/sunnywinds/6677424607/">sunnywinds* 様</a>, <a href="https://www.flickr.com/photos/ovalle/4664496288/">Omar + Kazumi Ovalle 様</a><br>
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/nivpic/4496431348/">djNIV 様</a>, <a href="https://www.flickr.com/photos/swamibu/4839011160/">Farrukh 様</a><br>
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/mlinksva/15476575104/">Mike Linksvayer 様</a>, <a href="https://www.flickr.com/photos/tanaka_juuyoh/8069544093/">田中十洋様 1</a><a href="https://www.flickr.com/photos/tanaka_juuyoh/4177427153/">、2</a><a href="https://www.flickr.com/photos/tanaka_juuyoh/4639980914/">、3</a><br>
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/barnimages/22115435140/">barnimages.com 様</a>, <a href="https://www.flickr.com/photos/scrappapervlog/17598158185/" style="text-decoration:none;">Mike Petrucci 様</a><br>

<!-- 四条ルート -->
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/ironpoison_photos_69/7121783927/">ironpoison 様</a>
, <a href="https://www.flickr.com/photos/28481088@N00/1503901616/">tanakawho 様</a><br>
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/tatsumine/3961236021/">Tatsumine Sugiura 様</a>
, <a href="https://www.flickr.com/photos/90664717@N00/18954137963/">Akuppa John Wigham 様</a><br>

	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/wallslide/138688451/">Jeremy Hall 様</a>, <a href="https://www.flickr.com/photos/furbychan/103977041/">Furbychan 様</a><br>

	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/syasara/132847100/">syasara 様</a>
	, <a href="https://www.flickr.com/photos/compose-r/7990279856/">Ryosuke Yagi 様</a><br>
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/heniha/3822993967/">heniha 様</a>
	, <a href="https://www.flickr.com/photos/ograndepet/8385420150/">Peterson Fialho de Carvalho 様</a>
	<br>

<!-- 財前ルート -->
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/33138035@N07/16342805145">Cj Hughson 様</a>
	, <a href="https://www.flickr.com/photos/mikegras/15345919835/">Michael Gras, M.Ed. 様</a><br>
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/56533344@N00/255549492/">gertrud 様</a>
	, <a href="https://www.flickr.com/photos/79786806@N07/26071665865/">けんたま/KENTAMA 様</a><br>
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/herry/5003953183/">Herry Lawford 様</a>
	
	, <a href="https://www.flickr.com/photos/spilt-milk/9637765804/">yoppy 様</a><br>
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/jamescridland/7355304774/">James Cridland 様</a>
	, <a href="https://www.flickr.com/photos/__u___/29733804122/">__U___ 様</a><br>

	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/lllnorikolll-300er/6984519846/">Noriko YAMAMOTO 様</a>

<!-- 葛城宮ルート -->
	, <a href="https://www.flickr.com/photos/tonomura/449495893">Hidetsugu Tonomura 様</a><br>
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/28752865@N08/5741972861/">Karen Roe 様</a>
	, <a href="https://www.flickr.com/photos/93277085@N08/15317744408/">Takashi .M 様</a><br>
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/pv9007/27343499751/">Patrick Vierthaler 様</a>
	, <a href="https://www.flickr.com/photos/74881150@N00/5624167271/">coloredby 様1</a><a href="https://www.flickr.com/photos/74881150@N00/8073384755/">、2</a><br>

<!-- 藤枝ルート -->
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/36302473@N03/8464547376/">Ching 様</a>
	, <a href="https://www.flickr.com/photos/andrewbain/2417040107/">Taber Andrew Bain 様</a><br>
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/28077296@N02/5728178624/">Thomas Kohler 様</a>
	, <a href="https://www.flickr.com/photos/77rain/152441089/">kiukey 様</a><br>
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/riyagi/14568385682/">Ricardo 清介 屋宜 様</a>
　, <a href="https://www.flickr.com/photos/enriquecespedes/8117311100/">［◉”］ Enrique Céspedes 様</a><br>
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/jeaneeem/2168958243/">jeaneeem 様</a>
	, <a href="https://www.flickr.com/photos/52766811@N06/24576437220/">Kevin Doncaster 様</a><br>
	・　<a href="https://www.flickr.com/">flickr</a> : <a href="https://www.flickr.com/photos/freakland/183982434/">David Sanz 様</a><br>
	・　＠名無しさん１<br>
	・　◆I9IhvvVdPo<br>
	<br>
        <img src="./data/image/h3.png"><b>画像素材</b><br>
	・　<a href="http://www.viva-edo.com/" style="text-decoration:none;">ビバ！江戸 様</a><br>
	・　<a href="http://hibana.rgr.jp/" style="text-decoration:none;">フリー素材*ヒバナ 様</a><br>
	・　<a href="http://gimei.deviantart.com/art/Japanese-style-image-set-102424728" style="text-decoration:none;">deviantart-gimei 様</a><br>
	・　<a href="http://masanbo.websozai.jp/" style="text-decoration:none;">素材工房まさん房 様</a><br>
	・　<a href="http://www.pixiv.net/" style="text-decoration:none;">pixiv</a> : <a href="http://www.pixiv.net/member_illust.php?mode=medium&illust_id=31433317" style="text-decoration:none;">mit81 様</a>, <a href="http://www.pixiv.net/member.php?id=2360761" style="text-decoration:none;">アスカ 様</a>, <a href="http://www.pixiv.net/member_illust.php?mode=medium&illust_id=11794989" style="text-decoration:none;">ポテ子 様</a><br>
</td></tr></table></div>
[endhtml]

[glink target=*credit_page2 text="→" size=20 width="20" x=890 y=500 color=white]
[s]

*credit_page2
@clearfix

[cm]
[position width=960 height=550 top=60 left=60 page=fore opacity=0]
[locate x=850 y=20]
[button name="button_title" graphic="back.png" target="*back" ]
[html top=1 left=1]
<!--↓以下はスクロール対策用に追記-->
<!--scroll scripts and codes by ＠名無しさん１ ◆B4nFWraU42-->
<style>
.credit_gamen {
height:640px;
width:960px;
/*高さを指定しないと領域オーバーか認識しない為指定*/
-webkit - overflow - scrolling: touch;
scrolling: touch;
overflow-scrolling:touch;
}
</style>
<style>
/* スクロールバーのデザインをつけることができます。ただしwebkitブラウザのみです。他ブラウザはjqueryプラグインで*/
::-webkit-scrollbar{
width:10px;
background:#dad1c1;
	}
::-webkit-scrollbar-thumb{
background:#beb7e8;
	}
</style>
<!--↑ここまでスクロール対策用に追記-->
<div class='credit_gamen' style="overflow-y:scroll;">
<font size="2" color="#aa6161" family='"HG明朝E","ＭＳ Ｐ明朝","MS PMincho","ヒラギノ明朝 Pro","Hiragino Mincho Pro"'>
<table border="0" style="margin-left:10%; margin-right:0%;" align="left">
<tr><td>
	<img src="./data/image/h2.png"><b>スクリプト・素材サイト様</b><br>
        制作にあたり、大変お世話になりました。ありがとうございます。<br>
        <img src="./data/image/h3.png"><b>フォント</b><br>
	・　<a href="http://www7a.biglobe.ne.jp/~kouzan/" style="text-decoration:none;">衡山毛筆フォント-青二書道教室 様</a><br>
	・　<a href="http://mplus-fonts.osdn.jp/index.html" style="text-decoration:none;">M+ FONTS 様</a><br>
	・　<a href="https://ja.osdn.net/projects/hanazono-font/">花園明朝 kamichi様</a><br>
	・　<a href="http://moji-waku.com/makinas-flat/index.html">マキナス もじワク研究 様</a><br>
	<br>
        <img src="./data/image/h3.png"><b>BGM</b><br>
	・　<a href="http://otowabi.com/" style="text-decoration:none;">おとわび 様</a><br>
	・　<a href="http://classical-sound.seesaa.net/">クラシック名曲サウンドライブラリー 様</a><br>
	<br>
        <img src="./data/image/h3.png"><b>効果音</b><br>
	・　<a href="http://soundeffect-lab.info/" style="text-decoration:none;">効果音ラボ 様</a><br>
	・　<a href="http://www.yen-soft.com/ssse/" style="text-decoration:none;">フリー効果音　On-Jin ～音人～ 様</a><br>
	・　<a href="http://koukaongen.com/kkog2_free/index.html" style="text-decoration:none;">効果音源 様</a><br>
	・　<a href="http://www.koukasound.com/" style="text-decoration:none;">効果ON 様</a><br>
	・　<a href="http://taira-komori.jpn.org/" style="text-decoration:none;">無料効果音で遊ぼう！ 様</a><br>
        <br><br>
	<img src="./data/image/h2.png"><b>スタッフ</b><br>
	<table width="90%" style="margin-left:5%; border-bottom:1px solid #ddddef;" cellpadding="0" cellspacing="0" class="spec">
		<tr style="margin-left:5%; border-bottom:1px solid #ddddef;"><th align="left">原案・企画</th><td>：</td><td> ◆/99/KAMIYU 、 ◆8EASfQr/2Q 、 淑女の皆様</td></tr>
		<tr style="margin-left:5%; border-bottom:1px solid #ddddef;"><th align="left" style="font-size:80%;">キャラクター<br>グラフィック</th><td>：</td><td> かいこ 、 ◆jsYiJcqRkk</td></tr>
		<tr style="margin-left:5%; border-bottom:1px solid #ddddef;"><th align="left">脚本</th><td>：</td><td>◆8EASfQr/2Q 、 ＠名無しさん１ 、 ◆I9IhvvVdPo 、 ◆ftAc29dlL. 、 ◆jsYiJcqRkk</td></tr>
		<tr style="margin-left:5%; border-bottom:1px solid #ddddef;"><th align="left">スクリプト<br></th><td>：</td><td> 吉里吉里Ver.システム原案…◆8EASfQr/2Q<br>
		　　ティラノスクリプトVer.…◆jsYiJcqRkk、＠名無しさん１</td></tr>
		<tr style="margin-left:5%; border-bottom:1px solid #ddddef;"><th align="left">Special Thanks<br></th><td>：</td><td> エリ花様 、 黒田ルート添削・校正者様 、 登場人物名付け親様 、 テストプレイヤーの皆様 、 淑女の皆様</td></tr>
		<tr><th align="left">その他</th><td>：</td><td> ◆jsYiJcqRkk　</td></tr>
	</table>
</td></tr></table></div>
[endhtml]
[glink target=*credit_page1 text="←" size=20 width="20" x=20 y=500 color=white]

[s]

*back
;機能ボタン類を消去（fixレイヤー全消去）
[clearfix]
[cm]
;[chara_mod name="bg" storage="toumei.gif" time=1]
[jump storage="title.ks"]
[s]



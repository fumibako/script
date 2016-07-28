*start

[hidemenubutton]
;背景変更:プロローグイントロ全画面
[chara_mod name="bg" storage="bg/bg_web_blue2.jpg" time=50]

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
<font size="2" color="#aa6161" family='"HG明朝E","ＭＳ Ｐ明朝","MS PMincho","ヒラギノ明朝 Pro","Hiragino Mincho Pro"'>
<div align="center">
<br><br><br>
<table border="0" align="left">
<tr><td><img src="./data/image/buttom_toumei.gif" width="10%" hight="100%"></td><td>
	<img src="./data/image/h2.png"><b>スクリプト・素材サイト様</b><br>
        <br>
        制作にあたり、大変お世話になりました。ありがとうございます。<br>
        <br>
        <img src="./data/image/h3.png"><b>スクリプトエンジン</b><br>
	・　<a href="http://tyrano.jp/" style="text-decoration:none;">ティラノスクリプト 様</a><br>
        <br>
        <img src="./data/image/h3.png"><b>スクリプト関係</b><br>
	・　<a href="http://keito-works.com/" style="text-decoration:none;">keito-works 様</a><br>
<!--	・　<a href="http://www7.plala.or.jp/S_H_Binary/kaze/index.html" style="text-decoration:none;">永遠の文芸部 様</a>： <a href="http://www7.plala.or.jp/S_H_Binary/kaze/tkouza.html" style="text-decoration:none;">ティラノスクリプト講座　Androidアプリの作り方</a><br>
-->
	・　<a href="http://awoinekura.blog.fc2.com/" style="text-decoration:none;">アオイサクラ 様</a>： <a href="http://awoinekura.blog.fc2.com/blog-entry-6.html" style="text-decoration:none;">簡易コンフィグ画面プラグイン</a><br>
	・　<a href="http://tyrano.wiki.fc2.com/" style="text-decoration:none;">ティラノスクリプト 製作テクニックwiki 様</a><br>
        <br>
        <img src="./data/image/h3.png"><b>背景</b><br>
	・　<a href="http://www.wafusozai.com/" style="text-decoration:none;">和風素材.com 様</a><br>
	・　<a href="http://light77.sakura.ne.jp/" style="text-decoration:none;">ゆうあかり 様</a><br>
	・　<a href="http://www.geocities.jp/redglass_palace/" style="text-decoration:none;">赤いガラスの宮殿 様</a><br>
	・　<a href="http://www.s-hoshino.com/" style="text-decoration:none;">フリー素材屋Hoshino 写真提供者 usagi_s 様</a><br>
	・　<a href="https://www.flickr.com/" style="text-decoration:none;">flickr</a> : <a href="https://www.flickr.com/photos/didy_b/16022666269/" style="text-decoration:none;">Eddy BERTHIER 様</a>, <a href="https://www.flickr.com/photos/b4nfter/16355722748/" style="text-decoration:none;">_ Liquid 様</a>, <a href="https://www.flickr.com/photos/duncanh1/6418213775/" style="text-decoration:none;">DncnH 様</a>, <a href="https://www.flickr.com/photos/minoir/14903340390/" style="text-decoration:none;">minoir 様</a>, <a href="https://www.flickr.com/photos/sunnywinds/6677424607/" style="text-decoration:none;">sunnywinds* 様</a>, <a href="https://www.flickr.com/photos/ovalle/4664496288/" style="text-decoration:none;">Omar + Kazumi Ovalle 様</a><br>
	・　<a href="https://www.flickr.com/" style="text-decoration:none;">flickr</a> : <a href="https://www.flickr.com/photos/nivpic/4496431348/" style="text-decoration:none;">djNIV 様</a>, <a href="https://www.flickr.com/photos/swamibu/4839011160/" style="text-decoration:none;">Farrukh 様</a>, <a href="https://www.flickr.com/photos/mlinksva/15476575104/" style="text-decoration:none;">Mike Linksvayer 様</a>, <a href="https://www.flickr.com/photos/tanaka_juuyoh/8069544093/" style="text-decoration:none;">田中十洋 様</a>, <a href="https://www.flickr.com/photos/barnimages/22115435140/" style="text-decoration:none;">Barn Images 様</a>, <a href="https://www.flickr.com/photos/scrappapervlog/17598158185/" style="text-decoration:none;">Mike Petrucci 様</a><br>

	<br>
        <img src="./data/image/h3.png"><b>画像素材</b><br>
	・　<a href="http://www.viva-edo.com/" style="text-decoration:none;">ビバ！江戸 様</a><br>
	・　<a href="http://hibana.rgr.jp/" style="text-decoration:none;">フリー素材*ヒバナ 様</a><br>
	・　<a href="http://gimei.deviantart.com/art/Japanese-style-image-set-102424728" style="text-decoration:none;">deviantart-gimei 様</a><br>
	・　<a href="http://masanbo.websozai.jp/" style="text-decoration:none;">素材工房まさん房 様</a><br>
	・　<a href="http://www.pixiv.net/" style="text-decoration:none;">pixiv</a> : <a href="http://www.pixiv.net/member_illust.php?mode=medium&illust_id=31433317" style="text-decoration:none;">mit81 様</a>, <a href="http://www.pixiv.net/member.php?id=2360761" style="text-decoration:none;">アスカ 様</a>, <a href="http://www.pixiv.net/member_illust.php?mode=medium&illust_id=11794989" style="text-decoration:none;">ポテ子 様</a><br>
</td></tr></table></div>
[endhtml]

[glink target=*credit_page2 text="→" size=20 width="20" x=890 y=480 color=white]
[s]

*credit_page2
@clearfix

[cm]
[position width=960 height=550 top=60 left=60 page=fore opacity=0]
[locate x=850 y=20]
[button name="button_title" graphic="back.png" target="*back" ]
[html top=1 left=1]
<font size="2" color="#aa6161" family='"HG明朝E","ＭＳ Ｐ明朝","MS PMincho","ヒラギノ明朝 Pro","Hiragino Mincho Pro"'>
<div align="center">
<br><br><br>
<table border="0" align="left">
<tr><td><img src="./data/image/buttom_toumei.gif" width="10%" hight="100%"></td><td>
	<img src="./data/image/h2.png"><b>スクリプト・素材サイト様</b><br>
        <br>
        制作にあたり、大変お世話になりました。ありがとうございます。<br>
        <br>
        <img src="./data/image/h3.png"><b>フォント</b><br>
	・　<a href="http://www7a.biglobe.ne.jp/~kouzan/" style="text-decoration:none;">衡山毛筆フォント-青二書道教室 様</a><br>
	・　<a href="http://mplus-fonts.osdn.jp/index.html" style="text-decoration:none;">M+ FONTS 様</a><br>
	<br>
        <img src="./data/image/h3.png"><b>BGM</b><br>
	・　<a href="http://otowabi.com/" style="text-decoration:none;">おとわび 様</a><br>
	<br>
        <img src="./data/image/h3.png"><b>効果音</b><br>
	・　<a href="http://soundeffect-lab.info/" style="text-decoration:none;">効果音ラボ 様</a><br>
	・　<a href="http://www.yen-soft.com/ssse/" style="text-decoration:none;">フリー効果音　On-Jin ～音人～ 様</a><br>
	・　<a href="http://koukaongen.com/kkog2_free/index.html" style="text-decoration:none;">効果音源 様</a><br>
	・　<a href="http://www.koukasound.com/" style="text-decoration:none;">効果ON 様</a><br>
        <br>
        <br>
        <br>
        <br>
        <br>
	<img src="./data/image/h2.png"><b>スタッフ</b><br>
	<br>
	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="spec">
		<tr><th>原案・企画</th><td>： ◆/99/KAMIYU、◆8EASfQr/2Q、淑女の皆様</td></tr>
		<tr><th>キャラクターグラフィック</th><td>： かいこ</td></tr>
		<tr><th>シナリオ</th><td>： ◆8EASfQr/2Q、◆ftAc29dlL.、◆jsYiJcqRkk</td></tr>
		<tr><th>スクリプト</th><td>： ◆8EASfQr/2Q(吉里吉里Ver.システム原案)、◆jsYiJcqRkk(ティラノスクリプトVer.)</td></tr>
		<tr><th>その他</th><td>： <a href="http://koitsuduri.webcrow.jp/report.html" style="text-decoration:none;">◆jsYiJcqRkk (バグ報告・ご連絡はこちらへ)</a></td></tr>
	</table>
</td></tr></table></div>

[endhtml]
[glink target=*credit_page1 text="←" size=20 width="20" x=20 y=480 color=white]

[s]

*back
;機能ボタン類を消去（fixレイヤー全消去）
[clearfix]
[cm]
;[chara_mod name="bg" storage="toumei.gif" time=1]
[jump storage="title.ks"]
[s]



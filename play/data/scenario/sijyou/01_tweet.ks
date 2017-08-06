*first
[stopbgm]
[skipstop]
;スキップ停止　キースキップ安定化のため、スキップフラグ処理追加
[iscript]
TG.kag.ftag.startTag("cancelskip");
f.skip=false;
[endscript]
[bg storage="../fgimage/bg/title.jpg" time=0]
[wait time=10]
;=====================================================
;bad判定用・二度ツイート表示抑止naming.ksでfalse
[if exp="tf.ED_bad == 1 || "tf.tweet_end == true"]
@jump target=*no_tweet
[endif]
;デバック方法　グッドエンドをロードや再起動せず二回起動
;=====================================================
;クリックしないとならない 何かメッセージ　
[position layer=message1 width=600 height=100 top=150 left=80 margint=30 opacity=100 color=snow]
@layopt layer=message1 visible=true
[wait time=10]
[current layer="message1"]
[font color=0x664f44 size=30]
;クリックしないとならない 何かメッセージ　
――文綴る、 大切な貴方に　想い馳せ。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】雪解け（タイトル画面等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="title_yukidoke.ogg" loop=true]
[eval exp="f.bgm_storage='title_yukidoke.ogg'"]
[endif]
[wait time=10]
[resetfont]
[wait time=10]
@layopt layer=message1 visible=false
[wait time=10]

*teet_test
; Twitter関連プラグイン v1.00; シケモクMKさま
;　Twitterで好きな文章のつぶやきを促すことができます。 呼び出すスクリプト追記場所を考え中
*twitter
[イベントシーン構築ボタン無し版]
;=====================================================
;bad判定用・マクロ[四条ルート終了 end=bad]に追記必須
[if exp="tf.ED_bad == 1 || "tf.tweet_end == true"]
@jump target=*no_tweet
[endif]
;=====================================================
;グッドノーマル判定用・今は使わない
[if exp="sf.ED_kuroda_normal == 1 && sf.ED_kuroda_good == 1"]
;[eval exp="tf.message2='黒田'"]
[endif]
[if exp="sf.ED_zaizen_normal == 1 && sf.ED_zaizen_good == 1"]
;[eval exp="tf.message3='財前'"]
[endif]
[if exp="sf.ED_sijyou_normal == 1 && sf.ED_sijyou_good == 1"]
;[eval exp="tf.message4='四条'"]
[endif]
[if exp="sf.ED_katuraginomiya_normal == 1 && sf.ED_katuraginomiya_good == 1"]
;[eval exp="tf.message5='殿下'"]
[endif]
[if exp="sf.ED_hujieda_normal == 1 && sf.ED_hujieda_good == 1"]
;[eval exp="tf.message6='鳥君(とりぎみ)'"]
[endif]
;=====================================================
*next_1
;直前にどのルートをクリアしたか？　tf.message7
[if exp="tf.test_sijyou == true"] 
;テスト用エラー回避　仮で四条にしてます変更してください。ゲームデータがないときに確認したい為
[eval exp="tf.message7='四条'"]
[endif]

[if exp="tf.ED_kuroda == 1 || f.kuroda_au == 1"]
[eval exp="tf.message7='黒田'"]
[endif]
[if exp="tf.ED_zaizen == 1 || f.zaizen_au == 1"]
[eval exp="tf.message7='財前'"]
[endif]
[if exp="tf.ED_sijyou == 1 || f.sijyou_au == 1"]
[eval exp="tf.message7='四条'"]
[endif]
[if exp="tf.ED_katuraginomiya == 1 || f.katuraginomiya_au == 1"]
[eval exp="tf.message7='榊'"]
[endif]
[if exp="tf.ED_hujieda == 1 || f.hujieda_au == 1"]
[eval exp="tf.message7='コリウス'"]
[endif]
;=====================================================
;淑女度を一時変数に渡します
[eval exp="tf.message=f.para_shujinkou_shukujodo"]
[if exp="tf.message == undefined"]
;テスト用・エラー回避用
[eval exp="tf.message=0"]
[endif]
[wait time=10]

;f.shougouから称号を持ってくるとお稽古画面位置合わせ用の空白が入ってしまうので、改めて称号取得します
[iscript]
if (f.para_shujinkou_shukujodo >= 200 ){tf.message3 = "ミルトニアの淑女";}
else if (f.para_shujinkou_shukujodo >= 100 ){tf.message3 = "麗しき淑女";}
else if (f.para_shujinkou_shukujodo >= 90 ){tf.message3 = "気高き淑女";}
else if (f.para_shujinkou_shukujodo >= 80 ){tf.message3 = "優美なる淑女";}
else if (f.para_shujinkou_shukujodo >= 70 ){tf.message3 = "たおやかな乙女";}
else if (f.para_shujinkou_shukujodo >= 60 ){tf.message3 = "深窓の乙女";}
else if (f.para_shujinkou_shukujodo >= 50 ){tf.message3 = "花のような乙女";}
else if (f.para_shujinkou_shukujodo >= 40 ){tf.message3 = "可憐な乙女";}
else if (f.para_shujinkou_shukujodo >= 30 ){tf.message3 = "愛らしい娘";}
else if (f.para_shujinkou_shukujodo >= 20 ){tf.message3 = "純真な娘";}
else if (f.para_shujinkou_shukujodo >= 15 ){tf.message3 = "努力家の娘";}
else if (f.para_shujinkou_shukujodo >= 10 ){tf.message3 = "夢見る娘";}
else if (f.para_shujinkou_shukujodo >= 5 ){tf.message3 = "無垢な娘";}
else if (f.para_shujinkou_shukujodo == undefined || f.para_shujinkou_shukujodo < 5){tf.message3 = "お転婆娘";}
[endscript]
[wait time=10]
;メッセージ
[current layer="message0"]
おめでとうございます。　この喜びを伝えますか？[r]
淑女度は[emb exp="tf.message"]、称号は『[emb exp="tf.message3"]』でした。[r]
[wait time=10]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
[link target=*tweet_yes]は　　　い[endlink]
[r][r][r]
[link target=*closetweet]い　い　え[endlink]
[resetfont]
;ptextなのでdelay速度は大差ないが重要テキストは先の処理　補足は後で処理
[ptext name="list" page=fore layer=29 bold=bold color=0x664f44 size=20 x=250 y=60 text="「はい」を選択すると、Twitter画面を開きます。"]
[s]

*tweet_yes
[cm]
[iscript]
$('.list').remove();
[endscript]
[current layer="message0"]
Twitter画面を開きます。[p]
[iscript]

var val_1 = encodeURI(tf.message7);
var val_2 = encodeURI(tf.message);
var val_3 = encodeURI(tf.message3);
if(tf.ED_katuraginomiya == 1 || f.katuraginomiya_au == 1){
	window.open('https://twitter.com/intent/tweet?hashtags=恋綴り,ノベルゲーム,フリーゲーム,乙女ゲーム&url=goo.gl/uq8Dd1&text=『恋綴り』をクリアしました。お相手の"お印"は'+val_1+'。淑女度は'+val_2+'、称号は『'+val_3+'』でした。goo.gl/uq8Dd1');
}
if(tf.ED_hujieda == 1 || f.hujieda_au == 1){
	window.open('https://twitter.com/intent/tweet?hashtags=恋綴り,ノベルゲーム,フリーゲーム,乙女ゲーム&url=goo.gl/uq8Dd1&text=『恋綴り』をクリアしました。お相手の"イメージ花"は'+val_1+'。淑女度は'+val_2+'、称号は『'+val_3+'』でした。goo.gl/uq8Dd1');
}
window.open('https://twitter.com/intent/tweet?hashtags=恋綴り,ノベルゲーム,フリーゲーム,乙女ゲーム&url=goo.gl/uq8Dd1&text=『恋綴り』'+val_1+'ルートをクリアしました。淑女度は'+val_2+'、称号は『'+val_3+'』でした。goo.gl/uq8Dd1');
[endscript]
;=================================================メモ==================================================================================================
;パラメータ名=パラメータ値を & で連結することで、
;特定のツイートにリプライ（返信）したり、ツイート完了後にフォローボタン付きのプロフィールを表示することが可能になります。
;https://twitter.com/intent/tweet?text=ツイート内容&in_reply_to=koituduriID&related=account
;text=ツイート本文
;url=ツイートにURLを関連付けます。ツイートの末尾にURLが追加されます。
;in_reply_to=ツイートIDを指定します。
;ツイートに対する返信として投稿できます。
;ツイートIDとは、ツイートの直接URLの一番最後の数字です。https://twitter.com/screen_name/status/1234567890 なら 1234567890 がツイートIDです。
;hashtags=ハッシュタグを追加します。「#」は不要です。カンマで複数指定できます。
;他フォローする、言語の指定（自動で最適化されるので指定しなくて良い）　http://kiteretsu-world.info/blog/2015/07/05/how-to-make-tweet-button/
;===========================================================================================================================================
*closetweet
[iscript]
$('.list').remove();
[endscript]
[cm]
[current layer="message0"]
タイトル画面に戻ります。[p]
;動作しました。
[eval exp="tf.tweet_end=true"]

;初期化
;藤枝 
@eval exp="f.hujieda_au=0" 
;葛城宮 
@eval exp="f.katuraginomiya_au=0"
;財前 
@eval exp="f.zaizen_au=0"
@eval exp="f.kuroda_au=0" 
;四条
@eval exp="f.sijyou_au=0"

;ゲームプレイ後か判定
[if exp="f.okeiko_gamen == true"]
[iscript]
$('.list').remove();
[endscript]
;呼び出した場所に戻る
[return]
[endif]

;テスト時戻る
[if exp="tf.test_kuroda == true"]
[iscript]
$('.list').remove();
[endscript]
@jump storage="01_jsYiJcqRkk_test.ks"
[endif]

[if exp="tf.test_zaizen == true"]
[iscript]
$('.list').remove();
[endscript]
@jump storage="test_zaizen.ks"
[endif]

[if exp="tf.test_katuraginomiya == true"]
[iscript]
$('.list').remove();
[endscript]
@jump storage="test_katuragi.ks"
[endif]

[if exp="tf.test_hujieda == true"]
[iscript]
$('.list').remove();
[endscript]
@jump storage="test_hujieda.ks"
[endif]

[if exp="tf.test_sijyou == true"]
[iscript]
$('.list').remove();
[endscript]
@jump target=end_test
[endif]

*no_tweet
[if exp="f.okeiko_gamen == true"]
;呼び出した場所に戻る　今は使っていない
[iscript]
$('.list').remove();
[endscript]
@jump storage="event.ks" target=*event_ED
[endif]

;¥¥¥¥¥¥¥¥イベントおわり¥¥¥¥¥¥¥¥
*end_test
[イベントシーン終了]
@jump storage="test_sijyou.ks"
[s]

*window_close
[cm]
[chara_mod name="girl_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false
[layopt layer=27 visible=true]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
[l]
;会話ウィンドウ表示
[chara_mod name="message_bg" storage=&f.message_storage time=1]
;機能ボタン表示
;セーブ等ボタン配置
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
;メッセージレイヤを表示
[if exp="f.kaogura!='off'"]
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[endif]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[freeimage layer = 27]
[wait time=10]

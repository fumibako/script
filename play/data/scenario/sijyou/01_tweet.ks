*first
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[chara_mod name="bg" storage="../fgimage/bg/title.jpg" time=0]
[wait time=10]
;クリックしないとならない 何かメッセージ　
[position layer=message1 height=160 top=200 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=0x664f44 size=32]
――文綴る、 私の大事な 貴方に　想い馳せ[p]
[resetfont]
[wait time=10]
[if exp="sf.BGM=='ON'"]
;【BGM】雪解け（タイトル画面等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="title_yukidoke.ogg" loop=true]
[eval exp="f.bgm_storage='title_yukidoke.ogg'"]
[endif]

*teet_test
; Twitter関連プラグイン v1.00; シケモクMKさま
;　Twitterで好きな文章のつぶやきを促すことができます。 呼び出すスクリプト追記場所を考え中
*twitter
[イベントシーン構築ボタン無し版]
;=====================================================
;bad判定用・今は使わない マクロ[四条ルート終了 end=bad]に追記必須
[if exp="tf.ED_bad == 1"]
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
[if exp="tf.ED_kuroda == undefined || tf.ED_zaizen == undefined || tf.ED_sijyou == undefined || tf.ED_katuraginomiya == undefined || tf.ED_hujieda == undefined"] 
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
[eval exp="tf.message7='殿下'"]
[endif]
[if exp="tf.ED_hujieda == 1 || f.hujieda_au == 1"]
[eval exp="tf.message7='鳥君(とりぎみ)'"]
[endif]
;=====================================================
;淑女度を一時変数に渡します
[eval exp="tf.message=f.para_shujinkou_shukujodo"]


[if exp="tf.message == undefined"]
;テスト用・エラー回避用
[eval exp="tf.message=0"]
[endif]
[wait time=10]
;メッセージ
[current layer="message0"]
おめでとうございます。　この喜びを伝えますか？[r]
淑女度は[emb exp="tf.message"]でした。
;[p]
[wait time=10]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
[wait time=10]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=0x664f44 size=32]

[link target=*tweet_yes]は　　　い[endlink][r]
[r][r][r]
[link target=*closetweet]い　い　え[endlink][r]
[resetfont]
[s]

*tweet_yes
[cm]
[current layer="message0"]
Twitter画面を開きます。[p]
[iscript]
var val_1 = encodeURI(tf.message7);
var val_2 = encodeURI(tf.message);
window.open('https://twitter.com/intent/tweet?hashtags=恋綴り,フリーゲーム&text=エンディング'+val_1+'ルートをクリアしました。淑女度は'+val_2+'でした。');
[endscript]
;=================================================メモ==================================================================================================
;パラメータ名=パラメータ値を & で連結することで、
;特定のツイートにリプライ（返信）したり、ツイート完了後にフォローボタン付きのプロフィールを表示することが可能になります。
;https://twitter.com/intent/tweet?text=ツイート内容&in_reply_to=ツイートID&related=account
;text=ツイート本文
;url=ツイートにURLを関連付けます。ツイートの末尾にURLが追加されます。
;in_reply_to=ツイートIDを指定します。
;ツイートに対する返信として投稿できます。
;ツイートIDとは、ツイートの直接URLの一番最後の数字です。https://twitter.com/screen_name/status/1234567890 なら 1234567890 がツイートIDです。
;hashtags=ハッシュタグを追加します。「#」は不要です。カンマで複数指定できます。
;他フォローする、言語の指定（自動で最適化されるので指定しなくて良い）　http://kiteretsu-world.info/blog/2015/07/05/how-to-make-tweet-button/
;===========================================================================================================================================
*closetweet
[cm]
[current layer="message0"]
タイトル画面に戻ります。[p]

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
;呼び出した場所に戻る
[return]
[endif]
[if exp="tf.test_sijyou == true"]
@jump target=end_test
[endif]

*no_tweet
[if exp="f.okeiko_gamen == true"]
;呼び出した場所に戻る　今は使っていない
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

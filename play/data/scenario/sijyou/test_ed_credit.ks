*first
[if exp="tf.test_sijyou==true"]
;[暗転]
[stopbgm]
;if exp="tf.end==sijyou"　などで呼び出しor変更してください
[chara_mod name="bg" storage="bg/bg_tegami_konyakusha.jpg"]
@jump target=test
[endif]
*start
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
;if exp="tf.end==sijyou"　などで呼び出しor変更してください
[chara_mod name="bg" storage="toumei.gif"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;////////////ウインドウ等を非表示//////////
*window_close
[cm]
[chara_mod name="girl_base" storage="toumei.gif" time=0]
[wait time=5]
[chara_mod name="girl_mayu" storage="toumei.gif" time=0]
[wait time=5]
[chara_mod name="girl_me" storage="toumei.gif" time=0]
[wait time=5]
[chara_mod name="girl_kuti" storage="toumei.gif" time=0]
[wait time=5]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=5]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=5]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=5]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
*test
;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false
[layopt layer=27 visible=true]
[wait time=5]
[mtext text=&f.haikei_credit layer=27 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=5]
;////////////ウインドウ等を非表示//////////
;どこかにcreditをtf配列にして＆で呼び出してもいいかも

;ここで位置を決定
;横X位置
[eval exp="tf.left_x=300"]
;ティラノ表示↓
[eval exp="tf.left_x0=700"]
;縦Y位置
;ティラノ表示↓
[eval exp="tf.top_y0=350"]
;縦Y位置
[eval exp="tf.top_y1=200"]
[eval exp="tf.top_y2=250"]
[eval exp="tf.top_y3=300"]
;タグ側で加算＆tf.top_y3＋変数？→変更する際の労力が同じになるのでやめました
[eval exp="tf.top_y4=350"]
[eval exp="tf.top_y5=400"]
[eval exp="tf.top_y6=450"]
[eval exp="tf.top_y7=500"]
[eval exp="tf.top_y8=500"]
;文字サイズ　font_size &fs
[eval exp="tf.fs=20"]
[eval exp="tf.fs1=13"]
[eval exp="tf.fs2=18"]
;文字色　font_color
[eval exp="tf.fc='#5b4513'"]

[if exp="tf.test_sijyou==true"]
[mtext text="テストです。クリックしてください" layer=27 size=18 x="&tf.left_x" y=210 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut"]
[l]
[if exp="sf.BGM=='ON'"]
;【BGM】はなごよみ〜さくら〜（normal/goodED用)
[playbgm storage="ending_hanagoyomi_sakura.ogg" loop=true]
[eval exp="f.bgm_storage='ending_hanagoyomi_sakura.ogg'"]
[endif]
[endif]
;音楽はなんでも


;if exp="tf.end==sijyou"　などで変更してください
[image name=omoide1 storage="bg/B4nFWraU42/ginza3.jpg" layer=2 width=290 height=190 time=2000 x=200 y=100]
;画像の周囲をぼかします
[iscript]
$('.omoide1').css('-webkit-box-shadow','inset -60px 0px 200px','#fff');
[endscript]
;http://webrocketsmagazine.com/entry/20120224/css3-image-effects.html
;http://stackoverflow.com/questions/14294721/css-box-shadow-in-jquery-css

[mtext text="ティラノスクリプト様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y0 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut"]
;フェードアウトして消します
[iscript]
$('.omoide1').fadeOut('slow').queue(function(){this.remove(); });
[endscript]

[mtext text="スクリプト関係" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]

[mtext text="keito-works 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=false]
[mtext text="アオイサクラ 様： 簡易コンフィグ画面プラグイン" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color=&tf.fc wait=false]
[mtext text="ティラノスクリプト 製作テクニックwiki 様" layer=&tf.fs size=18 x="&tf.left_x" y=&tf.top_y4 color=&tf.fc  in_effect="fadeIn" out_effect="fadeOut" wait=true]


[mtext text="背景" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color="&tf.fc" wait=false]
[mtext text="和風素材.com 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=false]
[mtext text="ゆうあかり 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color=&tf.fc wait=false]
[mtext text="赤いガラスの宮殿 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y4 color=&tf.fc  wait=false]
[mtext text="フリー素材屋Hoshino 写真提供者 usagi_s 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y5 color=&tf.fc  wait=false]
[mtext text="flickr : Eddy BERTHIER 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y6 color=&tf.fc wait=true]
;最後wait=true

;if exp="tf.end==sijyou"　などで変更してください
[image name=omoide1 storage="bg/B4nFWraU42/bg_sijyou_kousuiB.jpg" layer=2 width=290 height=190 time=2000 x=200 y=100]
;画像の周囲をぼかします
[iscript]
$('.omoide1').css('-webkit-box-shadow','-80px 0px -100px #fff');
[endscript]


[mtext text="背景" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color="&tf.fc" wait=false]
[mtext text="flickr : Liquid 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=false]
[mtext text="flickr : DncnH 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color=&tf.fc wait=false]
[mtext text="flickr : minoir 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y4 color=&tf.fc  wait=false]
[mtext text="sunnywinds* 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y5 color=&tf.fc  wait=false]
[mtext text="Omar + Kazumi Ovalle 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y6 color=&tf.fc  wait=true]
;最後wait=true

;フェードアウトして消します
[iscript]
$('.omoide1').fadeOut('slow').queue(function(){this.remove(); });
[endscript]

[mtext text="背景" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color="&tf.fc" wait=false]
[mtext text="flickr : djNIV 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc time=500 wait=false] 
[mtext text="flickr : Farrukh 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color=&tf.fc time=500 wait=false]
[mtext text="flickr :Mike Linksvayer 様" layer=27 size=&tf.fs1 x="&tf.left_x" y=&tf.top_y4 color=&tf.fc time=500 wait=false]
[mtext text="flickr :田中十洋 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y5 color=&tf.fc time=500 wait=false]
[mtext text="flickr :Barn Images 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y6 color=&tf.fc time=500 wait=true]
;最後wait=true

[mtext text="背景" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color="&tf.fc" wait=false]
[mtext text="flickr :Mike Petrucci 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color="&tf.fc" time=500 wait=false]
[mtext text="ビバ！江戸 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color="&tf.fc" wait=false]
[mtext text="フリー素材*ヒバナ 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y4 color="&tf.fc" wait=false]
[mtext text="deviantart-gimei 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y5 color="&tf.fc" wait=false]
[mtext text="素材工房まさん房 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y6 color="&tf.fc" wait=false]
;サイズ
[mtext text="pixiv : mit81 様, アスカ 様, ポテ子 様" layer=27 size=&tf.fs2 x="&tf.left_x" y=&tf.top_y7 color=&tf.fc wait=true]
;最後wait=true

[wait time=400]
;if exp="tf.end==sijyou"　などで変更してくださいtransでもいいかも
[image name=omoide1 storage="bg/B4nFWraU42/bg_sijyou_kousi.jpg" layer=2 width=290 height=190 time=2000 x=200 y=100]
;画像の周囲をぼかします
[iscript]
$('.omoide1').css('-webkit-box-shadow','-80px 0px -100px #fff');
[endscript]


;四条で使った背景素材メモ

[mtext text="背景" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color="&tf.fc" wait=false]
[mtext text="meiji_photo 明治村画像庫 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color="&tf.fc" time=500 wait=false]
;meiji_photo 明治村画像庫　病院ほか
[mtext text="PHOTO STOCKER" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color="&tf.fc" wait=false]
;PHOTO STOCKER 花火大
[mtext text="flickr :Jeremy Hal 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y4 color="&tf.fc" wait=false]
;銀座反物お店
[mtext text="flickr :Ryosuke Yagi 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y5 color="&tf.fc" wait=false]
;Ryosuke Yagi　波ケ浦
[mtext text="flickr :syasara 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y6 color="&tf.fc" wait=true]
;syasara　波ケ浦(激)
;最後wait=true

;フェードアウトして消します
[iscript]
$('.omoide1').fadeOut('slow').queue(function(){this.remove(); });
[endscript]


[mtext text="背景" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color="&tf.fc" wait=false]
[mtext text="flickr :Furbychan" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color="&tf.fc" wait=false]
;Furbychan　夕焼け
[mtext text="flickr :heniha" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color="&tf.fc" wait=true]
;heniha　線香花火
;最後wait=true
;[wait time=400]



[mtext text="フォント" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="衡山毛筆フォント-青二書道教室 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=false]
[mtext text="M+ FONTS 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color=&tf.fc wait=true]

[mtext text="BGM" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="おとわび 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=true]

[mtext text="効果音" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="効果音ラボ 様" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y2 color=&tf.fc  wait=false]
[mtext text="フリー効果音　On-Jin ～音人～ 様" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y3 color=&tf.fc wait=false]
[mtext text="効果ON 様" layer=27 size=tf.fs x="&tf.left_x" y=&tf.top_y4 color=&tf.fc wait=true]

[mtext text="cssスクリプト" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="coliss 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=true]

;if exp="tf.end==sijyou"　などで変更してくださいtransでもいいかも
[image name=omoide1 storage="bg/B4nFWraU42/nerine_img.jpg" layer=2 width=290 height=190 time=2000 x=200 y=100]
;画像の周囲をぼかします
[iscript]
$('.omoide1').css('-webkit-box-shadow','-80px 0px -100px #fff');
[endscript]

;ここで位置を決定
;縦Y位置変更
[eval exp="tf.top_y1=tf.top_y1+200"]
[eval exp="tf.top_y2=tf.top_y2+200"]
[eval exp="tf.top_y3=tf.top_y3+200"]

[mtext text="原案・企画" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="◆/99/KAMIYU、◆8EASfQr/2Q、淑女の皆様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=true ]
　
;ここではキャラ画像ないと背景画像と勘違いされそうですね
[mtext text="キャラクターグラフィック" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="かいこ" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=true ]


[mtext text="シナリオ" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="◆8EASfQr/2Q、＠名無しさん１、◆I9IhvvVdPo" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=true]

[mtext text="シナリオ" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="◆ftAc29dlL.、◆jsYiJcqRkk" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=true]
;全シナリオのクレジット？　テストですが


[mtext text="スクリプト" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="◆8EASfQr/2Q(吉里吉里Ver.システム原案)" layer=27 size=tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=true]

[mtext text="スクリプト" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="◆jsYiJcqRkk(ティラノスクリプトVer.)" layer=27 size=tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=true]


[mtext text="＊　Special Thanks　＊" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="エリ花様、黒田ルート添削・校正者様、登場人物名付け親様、" layer=27 size=tf.fs x=&tf.left_x y=&tf.top_y2 color=&tf.fc wait=false]
[mtext text="テストプレイヤーの皆様" layer=27 size=tf.fs x=&tf.left_x y=&tf.top_y3 color=&tf.fc wait=flase]
[mtext text="淑女の皆様" layer=27 size=tf.fs x=&tf.left_x y=&tf.top_y4 color=&tf.fc wait=true]

[iscript]
$('.omoide1').fadeOut('slow').queue(function(){this.remove(); });
[endscript]

[stopbgm]
@jump storage="test_sijyou.ks"
[s]

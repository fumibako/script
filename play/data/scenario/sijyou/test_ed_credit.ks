;if exp="tf.end==sijyou"　などで呼び出しor変更してください
[chara_mod name="bg" storage="toumei.gif"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
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
[eval exp="tf.left_x=500"]
;縦Y位置
[eval exp="tf.top_y1=210"]
[eval exp="tf.top_y2=300"]
[eval exp="tf.top_y3=350"]
;タグ側で加算＆tf.top_y3＋変数？→変更する際の労力が同じになるのでやめました
[eval exp="tf.top_y4=400"]
[eval exp="tf.top_y5=450"]
[eval exp="tf.top_y6=500"]
[eval exp="tf.top_y7=550"]


[mtext text="ティラノスクリプト様" layer=27 size=18 x="&tf.left_x" y=210 color=snow in_effect="fadeIn" out_effect="fadeOut"]


[mtext text="スクリプト関係" layer=27 size=18 x="&tf.left_x" y=&tf.top_y1 color="snow" in_effect="fadeIn" out_effect="fadeOut" wait=false]

[mtext text="keito-works 様" layer=27 size=18 x="&tf.left_x" y=250 color=snow wait=false]
[mtext text="アオイサクラ 様： 簡易コンフィグ画面プラグイン" layer=27 size=18 x="&tf.left_x" y=&tf.top_y2 color=snow wait=false]
[mtext text="ティラノスクリプト 製作テクニックwiki 様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y3 color=snow  in_effect="fadeIn" out_effect="fadeOut" wait=true]



[mtext text="背景1" layer=27 size=18 x="&tf.left_x" y=&tf.top_y1 color="snow" in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="和風素材.com 様" layer=27 size=18 x="&tf.left_x" y=250 color=snow wait=false]
[mtext text="ゆうあかり 様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y2 color=snow wait=false]
[mtext text="赤いガラスの宮殿 様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y3 color=snow  wait=false]
[mtext text="フリー素材屋Hoshino 写真提供者 usagi_s 様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y4 color=snow  wait=false]
[mtext text="flickr : Eddy BERTHIER 様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y5 color=snow wait=false]
[mtext text="flickr : Liquid 様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y6 color=snow wait=false]
[mtext text="flickr : DncnH 様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y7 color=snow wait=true]


[mtext text="背景2" layer=27 size=18 x="&tf.left_x" y=&tf.top_y1 color="snow" in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="flickr : minoir 様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y2 color=snow  wait=false]
[mtext text="sunnywinds* 様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y3 color=snow  wait=false]
[mtext text="Omar + Kazumi Ovalle 様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y4 color=snow  wait=false]
;サイズ14
[mtext text="flickr : djNIV 様, Farrukh 様, Mike Linksvayer 様, 田中十洋 様, Barn Images 様, Mike Petrucci 様" layer=27 size=14 x="&tf.left_x" y=&tf.top_y5 color=snow time=500 wait=false]
[mtext text="ビバ！江戸 様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y6 color=snow  wait=false]
[mtext text="フリー素材*ヒバナ 様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y7 color=snow  wait=true]


[mtext text="背景3" layer=27 size=18 x="&tf.left_x" y=&tf.top_y1 color="snow" in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="deviantart-gimei 様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y2 color="snow" wait=false]
[mtext text="素材工房まさん房 様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y3 color="snow" wait=false]
;サイズ15
[mtext text="pixiv : mit81 様, アスカ 様, ポテ子 様" layer=27 size=15 x="&tf.left_x" y=&tf.top_y4 color="snow" wait=true]



[mtext text="フォント" layer=27 size=18 x="&tf.left_x" y=&tf.top_y1 color="snow" in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="衡山毛筆フォント-青二書道教室 様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y2 color="snow" wait=false]
[mtext text="M+ FONTS 様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y3 color="snow" wait=true]

　


[mtext text="BGM" layer=27 size=18 x="&tf.left_x" y=&tf.top_y1 color="snow" in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="おとわび 様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y2 color="snow" wait=true]




[mtext text="効果音" layer=27 size=18 x="&tf.left_x" y=&tf.top_y1 color="snow" in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="効果音ラボ 様" layer=27 size=18 x=&tf.left_x y=&tf.top_y2 color=snow  wait=false]
[mtext text="フリー効果音"　On-Jin ～音人～ 様" layer=27 size=18 x=&tf.left_x y=&tf.top_y2 color="snow" wait=false]
[mtext text="効果ON 様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y3 color="snow" wait=true]



[mtext text="cssスクリプト" layer=27 size=18 x="&tf.left_x" y=&tf.top_y1 color="snow" in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="coliss 様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y2 color="snow" wait=true]



[mtext text="原案・企画" layer=27 size=18 x="&tf.left_x" y=&tf.top_y1 color="snow" in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="◆/99/KAMIYU、◆8EASfQr/2Q、淑女の皆様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y2 color=snow wait=true ]
　

[mtext text="キャラクターグラフィック" layer=27 size=18 x="&tf.left_x" y=&tf.top_y1 color=snow in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="かいこ" layer=27 size=18 x="&tf.left_x" y=&tf.top_y2 color=snow wait=true ]


[mtext text="シナリオ" layer=27 size=18 x="&tf.left_x" y=&tf.top_y1 color=snow in_effect="fadeIn" out_effect="fadeOut" wait=false]
;サイズ14
[mtext text="◆8EASfQr/2Q、＠名無しさん１、◆I9IhvvVdPo、◆ftAc29dlL.、◆jsYiJcqRkk" layer=27 size=14 x="&tf.left_x" y=&tf.top_y2 color=snow wait=true ]
;全シナリオのクレジット？　テストですが


[mtext text="スクリプト" layer=27 size=18 x="&tf.left_x" y=&tf.top_y1 color=snow in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="◆8EASfQr/2Q(吉里吉里Ver.システム原案)、◆jsYiJcqRkk(ティラノスクリプトVer.)" layer=27 size=18 x="&tf.left_x" y=&tf.top_y2 color=snow wait=true ]


[mtext text="＊　Special Thanks　＊" layer=27 size=18 x="&tf.left_x" y=&tf.top_y1 color=snow in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext text="エリ花様、黒田ルート添削・校正者様、登場人物名付け親様、テストプレイヤーの皆様、淑女の皆様" layer=27 size=18 x="&tf.left_x" y=&tf.top_y2 color=snow wait=true ]



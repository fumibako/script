*replay_test_ed_credit
*first
[if exp="tf.test_sijyou==true"]
;[暗転]
[stopbgm]
;if exp="tf.end==sijyou"　などで呼び出しor変更してください
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_tegami_konyakusha.jpg"]
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
[freeimage layer=27]
[layopt layer=27 visible=true]
[wait time=5]
;[mtext text=&f.haikei_credit layer=27 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
;[wait time=5]
;////////////ウインドウ等を非表示//////////
;どこかにcreditをtf配列にして＆で呼び出してもいいかも
;mtextはname=cc imageはname=omoide1 
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
[eval exp="tf.top_y8=550"]
;後半のメンバー表示にて　加算して下に変更しています

;文字サイズ　font_size &fs
[eval exp="tf.fs=20"]
[eval exp="tf.fs1=13"]
[eval exp="tf.fs2=18"]
;文字色　font_color
[eval exp="tf.fc='#5b4513'"]
;////////////ｊsでフェードアウトするとほかのものに線が入るようなのでキーフレームに/////////
[keyframe name="not_opcy"]
[frame p=100% opacity="0"]
[endkeyframe]
[keyframe name="opcy"]
[frame p=100% opacity="1"]
[endkeyframe]


[if exp="tf.test_sijyou==true"]
[mtext text="テストです。クリックしてください" layer=27 size=18 x="&tf.left_x" y=210 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut"]
[p]
;通常はここで鳴らさずEDから続けてください　スマホでクリック待ちしなければいけないので
[if exp="sf.BGM=='ON'"]
;【BGM】はなごよみ〜さくら〜（normal/goodED用)
[playbgm storage="ending_hanagoyomi_sakura.ogg" loop=true]
[eval exp="f.bgm_storage='ending_hanagoyomi_sakura.ogg'"]
[endif]
[endif]
;音楽はなんでも


;if exp="tf.end==sijyou"　などで変更してください
[image name=omoide1 storage="bg/B4nFWraU42/ginza3.jpg" layer=2 width=290 height=190 time=2000 x=200 y=100]


[mtext name=cc text="ティラノスクリプト様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y0 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut"]

;フェードアウトして消します
;透明化
[kanim keyframe="not_opcy" name="omoide1" time=5000]
;フェードアウトして消します
[iscript]
$('.omoide1').remove();
[endscript]

;キーを押したときだけスキップ処理に対してfreeimage layer=27の後再描画 他にスキップについて処理あれば追加
 ;[iscript]
;if(TG.kag.stat.is_skip==true||e.keyCode === 39 || e.keyCode === 32){
;//alert("テスト！スキップ中です");
;tyrano.plugin.kag.ftag.startTag("freeimage", {layer:"27"});
;//$('.cc').empty();
;//[freeimage layer=27]
;tyrano.plugin.kag.ftag.startTag("layopt", {layer:"27",visible:"true"});
;//[layopt layer=27 visible=true]
;}
;[endscript]

[freeimage layer=27]
[layopt layer=27 visible=true]


[mtext text="スクリプト関係" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]

[mtext name=cc text="keito-works 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=false]
[mtext name=cc text="アオイサクラ 様： 簡易コンフィグ画面プラグイン" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color=&tf.fc wait=false]
[mtext name="cc,cc1" text="ティラノスクリプト 製作テクニックwiki 様" layer=&tf.fs size=18 x="&tf.left_x" y=&tf.top_y4 color=&tf.fc  in_effect="fadeIn" out_effect="fadeOut" wait=true]
[wait time=1]

;スキップ時にwikiだけ残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]

[mtext name=cc text="背景" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color="&tf.fc" wait=false]
[mtext name=cc text="和風素材.com 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=false]
[mtext name=cc text="ゆうあかり 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color=&tf.fc wait=false]
[mtext name=cc text="赤いガラスの宮殿 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y4 color=&tf.fc  wait=false]
[mtext name=cc text="フリー素材屋Hoshino 写真提供者 usagi_s 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y5 color=&tf.fc  wait=false]
[mtext name=cc text="flickr : Eddy BERTHIER 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y6 color=&tf.fc wait=true]
;最後wait=true

;スキップ時に残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]

;if exp="tf.end==sijyou"　などで変更してください
[image name=omoide1 storage="bg/B4nFWraU42/bg_sijyou_kousuiB.jpg" layer=2 width=290 height=190 time=2000 x=200 y=100]
;表示
[kanim keyframe="opcy" name="omoide1" time=2000]


[mtext name=cc text="背景" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color="&tf.fc" wait=false]
[mtext name=cc text="flickr : Liquid 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=false]
[mtext name=cc text="flickr : DncnH 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color=&tf.fc wait=false]
[mtext name=cc text="flickr : minoir 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y4 color=&tf.fc  wait=false]
[mtext name=cc text="sunnywinds* 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y5 color=&tf.fc  wait=false]
[mtext name=cc text="Omar + Kazumi Ovalle 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y6 color=&tf.fc  wait=true]
;最後wait=true

;スキップ時に残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]

;透明化
[kanim keyframe="not_opcy" name="omoide1" time=5000]
;フェードアウトして消します
[iscript]
$('.omoide1').remove();
[endscript]

[mtext name=cc text="背景" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color="&tf.fc" wait=false]
[mtext name=cc text="flickr : djNIV 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc time=500 wait=false] 
[mtext name=cc text="flickr : Farrukh 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color=&tf.fc time=500 wait=false]
[mtext name=cc text="flickr :Mike Linksvayer 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y4 color=&tf.fc time=500 wait=false]
[mtext name=cc text="flickr :田中十洋 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y5 color=&tf.fc time=500 wait=false]
[mtext name=cc text="flickr :Barn Images 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y6 color=&tf.fc time=500 wait=true]
;最後wait=true

;スキップ時に残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]

[mtext name=cc text="背景" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color="&tf.fc" wait=false]
[mtext name=cc text="flickr :Mike Petrucci 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color="&tf.fc" time=500 wait=false]
[mtext name=cc text="ビバ！江戸 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color="&tf.fc" wait=false]
[mtext name=cc text="フリー素材*ヒバナ 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y4 color="&tf.fc" wait=false]
[mtext name=cc text="deviantart-gimei 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y5 color="&tf.fc" wait=false]
[mtext name=cc text="素材工房まさん房 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y6 color="&tf.fc" wait=false]
;サイズ
[mtext name=cc text="pixiv : mit81 様, アスカ 様, ポテ子 様" layer=27 size=&tf.fs2 x="&tf.left_x" y=&tf.top_y7 color=&tf.fc wait=true]
;最後wait=true
[wait time=400]

;スキップ時に残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]

;if exp="tf.end==sijyou"　などで変更してくださいtransでもいいかも
[image name=omoide1 storage="bg/B4nFWraU42/bg_sijyou_kousi.jpg" layer=2 width=290 height=190 time=2000 x=200 y=100]

;四条で使った背景素材メモ

[mtext name=cc text="背景" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color="&tf.fc" wait=false]
[mtext name=cc text="meiji_photo 明治村画像庫 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color="&tf.fc" time=500 wait=false]
;meiji_photo 明治村画像庫　病院ほか
[mtext name=cc text="PHOTO STOCKER" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color="&tf.fc" wait=false]
;PHOTO STOCKER 花火大
[mtext name=cc text="flickr :Jeremy Hal 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y4 color="&tf.fc" wait=false]
;銀座反物お店
[mtext name=cc text="flickr :Ryosuke Yagi 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y5 color="&tf.fc" wait=false]
;Ryosuke Yagi　波ケ浦
[mtext name=cc text="flickr :syasara 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y6 color="&tf.fc" wait=true]
;syasara　波ケ浦(激)
;最後wait=true

;スキップ時に残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]

[mtext name=cc text="背景" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color="&tf.fc" wait=false]
;葛城宮 "Hidetsugu Tonomura 様" "Karen Roe 様" "Takashi .M 様"
[mtext name=cc text="flickr :Hidetsugu Tonomura 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color="&tf.fc" time=500 wait=false]
[mtext name=cc text="flickr :Karen Roe 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color="&tf.fc" wait=false]
[mtext name=cc text="flickr :Takashi .M 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y4 color="&tf.fc" wait=false]

;スキップ時に残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]

[mtext name=cc text="背景" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color="&tf.fc" wait=false]
;藤枝 "flickr :[◉”] Enrique Céspedes 様" "jeaneeem 様" "Taber Andrew Bain 様" "Ching 様" "kiukey 様" "Thomas Kohler 様" "田中十洋 様（あるので省略）" 
[mtext name=cc text="flickr :［◉”］Enrique Céspedes 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color="&tf.fc" time=500 wait=false]
[mtext name=cc text="flickr :jeaneeem 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color="&tf.fc" wait=false]
[mtext name=cc text="flickr :Ching 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y4 color="&tf.fc" wait=false]
[mtext name=cc text="flickr :kiukey 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y5 color="&tf.fc" wait=false]
[mtext name=cc text="flickr :Thomas Kohler 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y6 color="&tf.fc" wait=true]

;スキップ時に残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]


[mtext name=cc text="背景" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color="&tf.fc" wait=false]
;財前"coloredby 様" "David Sanz 様" "gertrud 様" "Michael Gras, M.Ed. 様" "yoppy 様" 
[mtext name=cc text="flickr :coloredby 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color="&tf.fc" time=500 wait=false]
[mtext name=cc text="flickr :David Sanz 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color="&tf.fc" wait=false]
[mtext name=cc text="flickr :gertrud 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y4 color="&tf.fc" wait=false]
[mtext name=cc text="flickr :Michael Gras, M.Ed. 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y5 color="&tf.fc" wait=false]
[mtext name=cc text="flickr :yoppy 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y6 color="&tf.fc" wait=true]

;スキップ時に残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]

[mtext name=cc text="背景" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color="&tf.fc" wait=false]
;"__U___ 様" "Herry Lawford 様" "けんたま 様" "Cj Hughson 様" "James Cridland 様" "田中十洋 様" 
[mtext name=cc text="flickr :__U___ 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color="&tf.fc" wait=false]
[mtext name=cc text="flickr :Herry Lawford 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color="&tf.fc" wait=false]
[mtext name=cc text="flickr :けんたま 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y4 color="&tf.fc" wait=false]
[mtext name=cc text="flickr :Cj Hughson 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y5 color="&tf.fc" wait=false]
[mtext name=cc text="flickr :James Cridland 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y6 color="&tf.fc" wait=false]
[mtext name=cc text="＠名無しさん１" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y7 color="&tf.fc" wait=true]

;スキップ時に残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]

;透明化
[kanim keyframe="not_opcy" name="omoide1" time=5000]
;フェードアウトして消します
[iscript]
$('.omoide1').remove();
[endscript]


[wait time=10]
[mtext name=cc text="背景" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color="&tf.fc" wait=false]
[mtext name=cc text="flickr :Furbychan 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color="&tf.fc" wait=false]
;Furbychan　夕焼け
[mtext name=cc text="flickr :heniha 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color="&tf.fc" wait=true]
;heniha　線香花火
;最後wait=true
;[wait time=400]

;スキップ時に残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]

[mtext name=cc text="フォント" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext name=cc text="衡山毛筆フォント-青二書道教室 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=false]
[mtext name=cc text="M+ FONTS 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color=&tf.fc wait=false]
[mtext name=cc text="花園明朝 kamichi様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y4 color=&tf.fc wait=false]
;https://ja.osdn.net/projects/hanazono-font/
[mtext name=cc text="マキナス　もじワク研究 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y5 color=&tf.fc wait=true]
;最後wait=true

;スキップ時に残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]

[mtext name=cc text="BGM" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext name=cc text="おとわび 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=true]
;最後wait=true

;スキップ時に残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]

[mtext name=cc text="効果音" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext name=cc text="効果音ラボ 様" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y2 color=&tf.fc  wait=false]
[mtext name=cc text="フリー効果音　On-Jin ～音人～ 様" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y3 color=&tf.fc wait=false]
[mtext name=cc text="効果ON 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y4 color=&tf.fc wait=true]
;最後wait=true

;スキップ時に残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]

[mtext name=cc text="cssスクリプト" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext name=cc text="coliss 様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=true]
;最後wait=true

;スキップ時に残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]

;if exp="tf.end==sijyou"　などで変更してくださいtransでもいいかも
[image name=omoide1 storage="bg/B4nFWraU42/nerine_img.jpg" layer=2 width=290 height=190 time=2000 x=200 y=100]
;表示
[kanim keyframe="opcy" name="omoide1" time=2000]

;ここで位置を変更・決定
;縦Y位置変更
[eval exp="tf.top_y1=tf.top_y1+200"]
[eval exp="tf.top_y2=tf.top_y2+200"]
[eval exp="tf.top_y3=tf.top_y3+200"]
[eval exp="tf.top_y4=tf.top_y4+200"]

[mtext name=cc text="原案・企画" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext name=cc text="◆/99/KAMIYU、◆8EASfQr/2Q、淑女の皆様" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=true ]
;最後wait=true

;スキップ時に残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]


[mtext name=cc text="キャラクターグラフィック/黒田・四条" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext name=cc text="かいこ" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=false]
;ここ名前を表示していいのか
[mtext name=cc text="キャラクターグラフィック/財前・葛城宮・藤枝" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color=&tf.fc wait=false]
[mtext name=cc text="◆jsYiJcqRkk" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y4 color=&tf.fc wait=false]

;最後wait=true

;スキップ時に残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]

[mtext name=cc text="シナリオ" layer=27 size=&tf.fs x="&tf.left_x" y="&tf.top_y1" color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext name=cc text="黒田 :◆8EASfQr/2Q ◆ftAc29dlL.、◆jsYiJcqRkk" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=false]
[mtext name=cc text="財前・葛城宮・藤枝:◆I9IhvvVdPo" layer=27 size=&tf.fs x="&tf.left_x" y=&tf.top_y3 color=&tf.fc wait=false]
[mtext name=cc text="四条・他編集(財前・葛城宮・藤枝＿編集)：＠名無しさん１" layer=27 size=&tf.fs x="&tf.left_x" y="&tf.top_y4" color=&tf.fc wait=true]
[wait time=50]
;最後wait=true

;スキップ時に残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]

[mtext name=cc text="スクリプト" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext name=cc text="◆8EASfQr/2Q(吉里吉里Ver.システム原案)" layer=27 size=tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=true]
;最後wait=true

;スキップ時に残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]

[mtext name=cc text="スクリプト" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext name=cc text="◆jsYiJcqRkk(ティラノスクリプトVer.)" layer=27 size=tf.fs x="&tf.left_x" y=&tf.top_y2 color=&tf.fc wait=false]
[mtext name=cc text="＠名無しさん１" layer=27 size=tf.fs x="&tf.left_x" y=&tf.top_y3 color=&tf.fc wait=true]
;最後wait=true

;スキップ時に残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]

[mtext name=cc text="＊　Special Thanks　＊" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=false]
[mtext name=cc text="エリ花様、黒田ルート添削・校正者様、登場人物名付け親様、" layer=27 size=tf.fs x=&tf.left_x y=&tf.top_y2 color=&tf.fc wait=false]
[mtext name=cc text="テストプレイヤーの皆様" layer=27 size=tf.fs x=&tf.left_x y=&tf.top_y3 color=&tf.fc wait=flase]
[mtext name=cc text="淑女の皆様" layer=27 size=tf.fs x=&tf.left_x y=&tf.top_y4 color=&tf.fc wait=true]
;最後wait=true

;スキップ時にwikiだけ残るのを防止
[freeimage layer=27]
[layopt layer=27 visible=true]
;透明化
[kanim keyframe="not_opcy" name="omoide1" time=5000]
;フェードアウトして消します
[iscript]
$('.omoide1').remove();
[endscript]

;処理落ち防止
[skipstop]
;終了文字のx位置を変更
[eval exp="tf.left_x=tf.left_x+200"]

;終了用の画像が必要です　終了言葉は適当です　変更してください
[mtext name=cc text="＊　敬具　＊" layer=27 size=&tf.fs x=&tf.left_x y=&tf.top_y1 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=true]
[wait time=2000]
[fadeoutbgm time=3000]

[freeimage layer=27]
;白暗転がいいとはおもう　とりあえず暗転
[chara_mod name="bg" storage="toumei.gif"]
;表示
[kanim keyframe="opcy" name="omoide1" time=10]

@jump storage="test_sijyou.ks"
[s]

﻿﻿﻿;=============================================
;◆黒田イベント【分岐：goodED】黒田ルートかつ3月4週になった時点で淑女度一定値未満、好感度一定値未満で1度だけ発生
;=============================================
;１１章、【ファイナル・イメージ：normalED、goodED共通】黒田からの求婚、受け入れる主人公
;=============================================
*scene0
[ct]
[wait time=10]
[clearfix]
[wait time=10]
[clearstack]
[wait time=10]

[freeimage layer = 1]
[wait time=10]
;◆ スチル表示:chara_modだとなぜかすぐ消えることがあるため[bg]タグに切り替えています
[bg wait=true method='crossfade' storage="../fgimage/bg/kuroda_goodED.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit='illustration　by　かいこ'"]
[cg storage="kuroda_normalED.jpg"]
[wait time=10]
[p]
[resetfont]

*scene1
;メッセージ窓画像の仮表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[freeimage layer = 14]
[chara_new name="message_bg" storage="toumei.gif"]
[chara_show left=1 top=391 layer=14 name="message_bg"]
[wait time=10]
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="message_bg" storage="message_bg/frame_red.png"]
[wait time=10]
[resetfont]
[メッセージウィンドウ上ボタン表示]
[wait time=10]

;メッセージレイヤを会話窓用に設定変更
[eval exp="f.kaogura='off'"]
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[wait time=10]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=270 y=407]
[wait time=10]
[chara_config ptext="chara_name_area"]
#
そういえば、千日紅の花言葉は[r]
『変わらぬ愛』[r]
とも聞く。[p]
そう思い浮かべたところで、黒田様の声が響いた。[p]

[whosay name="黒田 将貴" color="#7a65b2"]
「散ればまた、咲かせれば良いのですよ」[p]

#
ハッと桜を見上げる。[p]

繊細な花びらを身にまとう、その幹は[r]
力強いうねりと逞しさとを備え[r]
大人でも抱えきれぬほどの厚みがあった。[p]

[whosay name="黒田 将貴" color="#7a65b2"]
「この樹は、百年以上もの間[r]
[sp]毎年うつくしい花を咲かせているのです」[p]

#
このひとは[r]
花を見るのに、時の流れまでをも[r]
感じているのか――。[p]
[eval exp="f.kaogura=''"]

;=============================================
;１１章、【後日談：goodED分岐】
;=============================================
;【SE】うぐいす（ケキョケキョ）
[playse storage=tori_uguisu_pikyo.ogg loop=false ]
[wait time=10]
;【背景他】手紙用画面
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
[wait time=10]
[主人公退場]
[wait time=10]
;機能ボタン消去
[clearfix]
[wait time=10]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="message_bg" storage="toumei.gif"]
[wait time=10]
[freeimage layer = 27]
[freeimage layer = 28]
[freeimage layer = 29]
[layopt layer=29 visible=true]
[wait time=10]
;背景変更:手紙
[bg wait=true method='crossfade' storage="../fgimage/toumei.gif" time=500]
[wait time=10]
[image layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_tegami_blue.jpg" time=500]
[wait time=500]
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
[wait time=10]

;主人公から兄への手紙
文矢お兄様[r]
[r]
拝啓[r]
[sp]今日は、ご報告したいことがあります。[r]
黒田様との結婚が決まりました。[r]
[r]
[sp]黒田様の研究は順調に進んでいるようで[r]
この間は、海外の雑誌に論文が掲載されたそうです。[p]
[r]
[sp]学会発表で、なんとお兄様のおられる国へ[r]
行かれるのですって。[r]
[r]
[sp]お兄様とお姉様に直接ご挨拶したいとのことで[r]
よろしくお願いします。[r]
……[p]

;【SE】パラリ(手紙)
[playse storage=paper_open.ogg loop=false ]
[wait time=10]
[freeimage layer = 29]
[wait time=10]
[ct]
[clearfix]
[clearstack]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_prologue.jpg" time=500]
[wait time=10]
;テキスト全画面
[font color=white size=27]

;【背景】プロローグと同じ黒っぽい和紙風、全画面テキスト
[r]
文箱に納められた手紙の束から[r]
私はそっと視線を外した。[r]
[r]
庭からは春風に乗って、花の香りが漂ってくる。[r]

[r]
「黒田様が、幼いころから好きだったという『すみれ』[r]
　無事に咲いて、よかったわ」[p]
[fadeoutbgm time=3000]
[wait time=10]

#
[r]
[stopbgm]
[wait time=10]
あの日のことが、思い出される――。[p]
[if exp="sf.BGM == 'ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[wait time=10]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[wait time=10]
[endif]
[wait time=10]
[resetfont]
[wait time=10]
;回想
;【背景】主人公邸_庭
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;【テキスト枠】会話パート用 下部横長
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="message_bg" storage="message_bg/frame_red.png"]
[wait time=10]
[メッセージウィンドウ上ボタン表示]
[wait time=10]

;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[wait time=10]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=270 y=407]
[chara_config ptext="chara_name_area"]

[eval exp="f.kaogura='on'"]

[resetfont]
;主人公復帰表情　ポーズ通常
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_futuu_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
;主人公復帰表情消去
[iscript]
$('.junbi_girl').remove();
[endscript]

[whosay name="黒田 将貴" color="#7a65b2"]
「[名前]さん、これをお庭に蒔いてみてもらえませんか？」[p]

#
黒田様は茶封筒を、大切そうに両手で差し出されている。[p]

[主人公目パチ1回]
[wait time=10]

[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「黒田様、これは？」[p]

[whosay name="黒田 将貴" color="#7a65b2"]
「すみれの種、なのです。子供のころから遊んでいた丘で[r]
[sp]毎春、この花を見るのが好きだったのですよ」[p]
　
「その土地を売る、と決まった年に[r]
[sp]種を採っておいたのです」[p]

[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=50]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「大切な種なのですね。庭の、良い場所に植えますわ」[p]

[主人公閉目パチ1回]
[whosay name="黒田 将貴" color="#7a65b2"]
「いえ、隅っこにお願いします。[r]
[sp]少し日陰なくらいが、ちょうど良いのですよ」[p]
#
[暗転２ storage="../fgimage/bg/bg_prologue.jpg" time=500]
[wait time=10]
[主人公退場]
[wait time=10]
;機能ボタン消去
[ct]
[clearfix]
[clearstack]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="message_bg" storage="toumei.gif" time=0]
[wait time=10]

;【背景】プロローグと同じ黒っぽい和紙風、全画面テキスト
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_prologue.jpg" time=0]
[wait time=50]

[freeimage layer = 27]
[freeimage layer = 28]
[freeimage layer = 29]
[wait time=10]


[if exp="f.okeiko_gamen != true"]
	[fadeoutbgm time=3000]
[endif]
;メッセージレイヤを全画面用に設定変更
[position left=160 width=700 height=530 top=110 page=fore margint="50"]
[wait time=10]

;テキスト全画面
[font color=white size=27]
――それから春を迎え[r]
[r]
今日も木漏れ日を柔らかく浴びて[r]
[r]
すみれが優しく揺れている。[p]

;画面中央に「完」の文字
[font color=white size=35]
[r]
[r]
[r]
[r]
[sp]　　　　　　　　　　完[p]
[bg wait=true method='crossfade' storage="../fgimage/toumei.gif" time=1000]
[wait time=10]
[clearfix]
[wait time=10]
[cm]
[wait time=10]
[eval exp="sf.ED_kuroda_good = 1"]
[if exp="f.okeiko_gamen == true"]
	[eval exp="sf.ending_Number_of_times = sf.ending_Number_of_times + 1"]
[endif]
;回想記録終了 
[endreplay]
[if exp="f.flag_replay == true || f.event_replay == 'kuroda'"]
;web版はendreplayの下にするexe版はendreplayで戻る
[イベントシーン終了]
[bg wait=true method='crossfade' storage="../fgimage/bg/plane_sepia.jpg" time=1000]
[wait time=10]
@jump storage="replay2.ks"
[endif]

[if exp="f.okeiko_gamen == true"]
[イベントシーン終了・ＢＧＭ有]
;クレジット呼び出し。呼び出し位置は移動してください。
[call storage="sijyou/test_ed_credit.ks" target=*test_haikei]
[wait time=10]
@jump storage="event.ks" target=*event_ED
[endif]

;お稽古パート以外から呼び出しの際はテストページへ(将来？テストページから呼び出しなど作る場合用)
@jump storage="test.ks"
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

[return]


 

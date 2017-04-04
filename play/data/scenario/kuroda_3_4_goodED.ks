﻿;=============================================
;◆黒田イベント【分岐：goodED】黒田ルートかつ3月4週になった時点で淑女度一定値未満、好感度一定値未満で1度だけ発生
;=============================================
;１１章、【ファイナル・イメージ：normalED、goodED共通】黒田からの求婚、受け入れる主人公
;=============================================
*replay_kuroda_3_4_goodED
[call storage="tyrano.ks"]
[setreplay name="kuroda_3_4_goodED_scene" storage="kuroda_3_4_goodED.ks" target="replay_kuroda_3_4_goodED_1"]
[iscript]
$(".list").remove();
$(".rp_bt").remove();
[endscript]
[if exp="f.flag_replay==true"]
[back storage="toumei.gif" time=1]
[endif]

*replay_kuroda_3_4_goodED_1
[stopbgm]
[call storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]

[freeimage layer = 24]
;メッセージ窓画像の仮表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[freeimage layer = 14]
[chara_new name="message_bg" storage="toumei.gif"]
[chara_show left=1 top=391 layer=14 name="message_bg"]

;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_3_4_goodED_scene1==undefined"]
	[skipstop]
[endif]
*scene1
;【背景】玄関
[chara_mod name="bg" storage="bg/bg_genkan.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[eval exp="f.message_storage='message_bg/frame_red.png'"]
[chara_mod name="message_bg" storage=&f.message_storage time=1]
;[chara_show left=1 top=391 layer=10 name="message_bg"]

[メッセージウィンドウ上ボタン表示]

;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=270 y=407]
[chara_config ptext="chara_name_area"]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
;【背景】主人公邸_玄関
;【テキスト枠】会話パート用 下部横長
;【BGM】主人公邸通常会話パート用（容量に余裕があれば春っぽいBGM）

[whosay name="磯野" color="dimgray"]
「本日は、黒田様のご卒業式ですね。行ってらっしゃいませ」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。　行ってまいります」[p]
#

[主人公退場]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="message_bg" storage="toumei.gif"]
;【背景】ゆっくり暗転後、桜（全画面テキスト用）
[chara_mod name="bg" storage="toumei.gif" time=500]
[chara_mod name="bg" storage="bg/bg_EDsakura.jpg" time=1000]
[freeimage layer = 27]
[freeimage layer = 28]
[freeimage layer = 29]

;メッセージレイヤを全画面用に設定変更
[position left=160 width=700 height=530 top=110 page=fore margint="50"]

;テキスト全画面
[font color=white size=27]

【黒田】[r]
「[名前]さん、来てくださってありがとうございます」[l][r]
[r]
【[名前]】[r]
「ご卒業、おめでとうございます。[r]
[sp]美しい、桜ですね」[l][r]
[r]
そう言うと、黒田はまぶしそうな瞳をして桜を示す。[p]
[r]
【黒田】[r]
「この桜を、貴方にお見せしたかったのですよ。[r]
[r]
[sp]研究に詰まると、時々外を散策していたのです。[r]
[sp]桜を見ると、貴方を思い浮かべたりして」[l][r]
[r]
【[名前]】[r]
「桜で思い浮かべていただけるなんて、光栄ですわ。[r]
[sp]でも、私は簡単には散りませんよ」[p]

【黒田】[r]
「はは、そのくらいしぶとい方がいいですよ。[r]
[sp]では『千日紅の君』とお呼びしましょうか」[l][r]
[r]
【[名前]】
（枯れても紅色の残る、千日紅……）[l][r]
[r]
「千日紅は愛らしいけれど[r]
[sp]もうすこし、潤いのあるお花でお願いしたいです」[p]

と軽口をたたきつつ[r]
千日紅の名を聞いて私はハッとした。[r]
[r]
花言葉は、たしか[p]
[r]
[r]
[r]
[r]
[sp]　　　　　　　　『永遠の恋』[p]


（永遠の……[l][r]
　[r]
[sp]　　『恋』[l][r]
　[r]
[sp]その先を[r]
[sp]求めてはいけないのでしょうか）[l][r]
[r]
――チクリと胸が痛む。[p]
;【BGM】フェードアウト
[fadeoutbgm time=3000]

ふと黒田様を見ると[r]
桜の花を見つめたまま黙っておられる。[r]
[r]
その拳は固く握られて[r]
卒業証書の筒がきしみそうに見える。[p]

【[名前]】[r]
「黒田様、証書が――」[l][r]
[r]
【黒田】[r]
「あっ……！[r]
[sp]き、気にしないでください」[p]
;【SE】小鳥のはばたき
[playse storage=tori_habataki_kotori.ogg loop=false ]

黒田様は桜へ歩を進め[r]
枝先に下がる花に顔を埋めんばかりだ。[r]
[r]
;【SE】メジロ（ピピ？問いかけるようなさえずり）
[playse storage=tori_mejiro.ogg loop=false ]
その時、目白が枝に止まり、花弁がひらひらと舞った。[l][r]
[r]
[if exp="sf.BGM=='ON'"]
;【BGM】はなごよみ〜さくら〜（normal/goodED用
[playbgm storage="ending_hanagoyomi_sakura.ogg" loop=true]
[eval exp="f.bgm_storage='ending_hanagoyomi_sakura.ogg'"]
[endif]
枝に揺れる目白を見上げ、黒田様は力を得たようにこちらへと向き直られた。[r]
[r]
その瞳は決意をたたえている。[p]

【黒田】[r]
「[名前]さん。[l][r]
[sp]この先、研究で身を立てた暁には[r]
[sp]貴方と共に歩みたいのです。[r]
[r]
[sp]一緒に来ていただけますか」[r]
[r]
こちらへ手を差し出す。[p]

ゆっくりとその手を取り、私は[l][r]
[r]
「はい」[r]
[r]
と答えた。[p]

【黒田】[r]
「まだ一人前にもなっていない身ですが[r]
[sp]早く貴方にお伝えしたくて」[p]

;場面転換
;◆ スチル表示：斜め上から陽光をうけて笑顔の黒田。学生服（帽子は取っている）で卒業証書を片手に、
;主人公へ手を差し出している。その手にそっと主人公の手が触れた瞬間の図
;背景は淡い春の青空をぼかしで表現。桜の花びらを散らす
;（イメージ案です。描きやすいようにアレンジしていただいて大丈夫です）
;【背景】ゆっくり暗転後、EDスチル
[chara_mod name="bg" storage="toumei.gif" time=500]
[chara_mod name="bg" storage="bg/kuroda_goodED.jpg" time=500]
[eval exp="f.haikei_credit='illustration　by　かいこ'"]
[cg storage="kuroda_goodED.jpg"]
[p]
;メッセージ窓画像の仮表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[freeimage layer = 14]
[chara_new name="message_bg" storage="toumei.gif"]
[chara_show left=1 top=391 layer=14 name="message_bg"]
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="message_bg" storage="message_bg/frame_red.png"]
[wait time=10]
[resetfont]
[メッセージウィンドウ上ボタン表示]

;メッセージレイヤを会話窓用に設定変更
[eval exp="f.kaogura='off'"]
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=270 y=407]
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
;【背景他】手紙用画面
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
[主人公退場]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="message_bg" storage="toumei.gif"]
[freeimage layer = 27]
[freeimage layer = 28]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[chara_mod name="bg" storage="toumei.gif" time=1000]
[image layer=29 x=1 y=1 storage="bg/I9IhvvVdPo/bg_tegami_blue.jpg" time=500]
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]

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
[freeimage layer = 29]
[chara_mod name="bg" storage="bg/bg_prologue.jpg" time=1000]
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
あの日のことが、思い出される――。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
[resetfont]
;回想
;【背景】主人公邸_庭
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;【テキスト枠】会話パート用 下部横長
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="message_bg" storage="message_bg/frame_red.png"]
[メッセージウィンドウ上ボタン表示]

;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=270 y=407]
[chara_config ptext="chara_name_area"]

[eval exp="f.kaogura='on'"]

[resetfont]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]

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

;【背景】プロローグと同じ黒っぽい和紙風、全画面テキスト
[chara_mod name="bg" storage="bg/bg_prologue.jpg" time=500]
[wait time=10]
[主人公退場]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="message_bg" storage="toumei.gif" time=0]
[freeimage layer = 27]
[freeimage layer = 28]
[freeimage layer = 29]
[if exp="f.okeiko_gamen != true"]
	[fadeoutbgm time=3000]
[endif]
;メッセージレイヤを全画面用に設定変更
[position left=160 width=700 height=530 top=110 page=fore margint="50"]

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
[chara_mod name="bg" storage="toumei.gif" time=1000]
[wait time=10]
[clearfix]
[cm]
[eval exp="sf.ED_kuroda_good = 1"]
;回想記録終了 
[endreplay] 
[if exp="f.flag_replay==true"]
;web版はendreplayの下にするexe版はendreplayで戻る
[イベントシーン終了]
@jump storage="replay2.ks"
[endif]

[if exp="tf.okeiko_gamen == true"]
[イベントシーン終了・ＢＧＭ有]
;クレジット呼び出し。呼び出し位置は移動してください。
[call storage="sijyou/test_ed_credit.ks" target=*test_haikei]
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


 

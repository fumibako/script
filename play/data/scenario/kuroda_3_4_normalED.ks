﻿﻿;=============================================
;◆黒田イベント【分岐：normalED】黒田ルートかつ3月4週になった時点で淑女度一定値未満、好感度一定値未満で1度だけ発生
;=============================================
*start
*replay_kuroda_3_4_normalED
[if exp="f.flag_replay == true"]
	[cm]
[endif]
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_preload_kuroda.jpg" time=500] 
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 
[wait time=50]
[freeimage layer = 1]
[wait time=10]
;【背景】玄関
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_genkan.jpg" time=0]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[call target=*start storage="tyrano.ks"]

[setreplay name="kuroda_3_4_normalED_scene" storage="kuroda_3_4_normalED.ks" target="replay_kuroda_3_4_normalED_1"]
[cm]
[iscript]
$(".list").remove();
$(".rp_bt").remove();
[endscript]
[if exp="f.flag_replay == true"]
[cm]
@layopt layer=14 visible=true
[back storage="toumei.gif" time=1]
;主人公画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
[chara_new name="girl_base" storage="toumei.gif"]
[chara_show left=1 top=381 layer=15 name="girl_base" time=0]
[wait time=10]
[chara_new name="girl_mayu" storage="toumei.gif"]
[chara_show left=1 top=381 layer=16 name="girl_mayu" time=0]
[wait time=10]
[chara_new name="girl_me" storage="toumei.gif"]
[chara_show left=1 top=381 layer=17 name="girl_me" time=0]
[wait time=10]
[chara_new name="girl_kuti" storage="toumei.gif"]
[chara_show left=1 top=381 layer=18 name="girl_kuti" time=0]
[wait time=10]
[chara_new name="girl_emo" storage="toumei.gif"]
[chara_show left=1 top=381 layer=19 name="girl_emo" time=0]
[wait time=10]
[chara_new name="girl_te" storage="toumei.gif"]
[chara_show left=1 top=381 layer=20 name="girl_te" time=0]
[wait time=10]
[endif]

*replay_kuroda_3_4_normalED_1
[stopbgm]
[イベントシーン構築ボタン無し版]

*scene1

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]

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
[wait time=10]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="message_bg" storage="toumei.gif"]
[wait time=10]

;[chara_delete="message_bg"]
;【背景】ゆっくり暗転後、桜（全画面テキスト用）
[bg wait=true method='crossfade' storage="toumei.gif" time=300]
[wait time=30]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_EDsakura.jpg" time=500]
;↓wait=trueを入れていても読み込み不十分な場合がある為、念のためwaitを長めに。◆jsYiJcqRkk
[wait time=520]
[freeimage layer = 27]
[freeimage layer = 28]
[freeimage layer = 29]
[wait time=10]

;メッセージレイヤを全画面用に設定変更
[position left=160 width=700 height=530 top=110 page=fore margint="50"]
[wait time=10]

;テキスト全画面
[font color=white size=27]
[wait time=30]

【黒田】[r]
「[名前]さん、来てくださってありがとうございます」[l][r]
[r]
[wait time=10]
【[名前]】[r]
「ご卒業、おめでとうございます。[r]
[sp]美しい、桜ですね」[l][r]
[r]
[wait time=10]
そう言うと、黒田はまぶしそうな瞳をして桜を示す。[p]
[r]
[wait time=10]
【黒田】[r]
「この桜を、貴方にお見せしたかったのですよ。[r]
[r]
[wait time=10]
[sp]研究に詰まると、時々外を散策していたのです。[r]
[sp]桜を見ると、貴方を思い浮かべたりして」[l][r]
[r]
[wait time=10]
【[名前]】[r]
「桜で思い浮かべていただけるなんて、光栄ですわ。[r]
[sp]でも、私は簡単には散りませんよ」[p]

[wait time=10]
【黒田】[r]
「はは、そのくらいしぶとい方がいいですよ。[r]
[sp]では『千日紅の君』とお呼びしましょうか」[l][r]
[r]
[wait time=10]
【[名前]】
（枯れても紅色の残る、千日紅……）[l][r]
[r]
[wait time=10]
「千日紅は愛らしいけれど[r]
[sp]もうすこし、潤いのあるお花でお願いしたいです」[p]

[wait time=10]
と軽口をたたきつつ[r]
千日紅の名を聞いて私はハッとした。[r]
[r]
[wait time=10]
花言葉は、たしか[p]
[r]
[r]
[r]
[r]
[wait time=10]
[sp]　　　　　　　　『永遠の恋』[p]


[wait time=10]
（永遠の……[l][r]
　[r]
[wait time=10]
[sp]　　『恋』[l][r]
　[r]
[wait time=10]
[sp]その先を[r]
[sp]求めてはいけないのでしょうか）[l][r]
[r]
[wait time=10]
――チクリと胸が痛む。[p]
;【BGM】フェードアウト
[fadeoutbgm time=3000]
[wait time=10]

ふと黒田様を見ると[r]
桜の花を見つめたまま黙っておられる。[r]
[r]
[wait time=10]
その拳は固く握られて[r]
卒業証書の筒がきしみそうに見える。[p]

[wait time=10]
【[名前]】[r]
「黒田様、証書が――」[l][r]
[r]
[wait time=10]
【黒田】[r]
「あっ……！[r]
[sp]き、気にしないでください」[p]

;【SE】小鳥のはばたき
[playse storage=tori_habataki_kotori.ogg loop=false ]
[wait time=30]
黒田様は桜へ歩を進め[r]
枝先に下がる花に顔を埋めんばかりだ。[r]
[r]
;【SE】メジロ（ピピ？問いかけるようなさえずり）
[playse storage=tori_mejiro.ogg loop=false ]
[wait time=30]
その時、目白が枝に止まり、花弁がひらひらと舞った。[l][r]
[r]
[if exp="sf.BGM=='ON'"]
;【BGM】はなごよみ〜さくら〜（normal/goodED用
[playbgm storage="ending_hanagoyomi_sakura.ogg" loop=true]
[wait time=10]
[eval exp="f.bgm_storage='ending_hanagoyomi_sakura.ogg'"]
[wait time=30]
[endif]
[wait time=10]
枝に揺れる目白を見上げ、黒田様は力を得たようにこちらへと向き直られた。[r]
[r]
[wait time=10]
その瞳は決意をたたえている。[p]

[wait time=10]
【黒田】[r]
「[名前]さん。[l][r]
[sp]この先、研究で身を立てた暁には[r]
[sp]貴方と共に歩みたいのです。[r]
[r]
[wait time=10]
[sp]一緒に来ていただけますか」[r]
[r]
[wait time=10]
こちらへ手を差し出す。[p]

[wait time=10]
ゆっくりとその手を取り、私は[l][r]
[r]
[wait time=10]
「はい」[r]
[r]
[wait time=10]
と答えた。[p]

[wait time=10]
【黒田】[r]
「まだ一人前にもなっていない身ですが[r]
[sp]早く貴方にお伝えしたくて」[p]

@jump storage="kuroda_3_4_normalED2.ks" target=*scene0

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

[return]



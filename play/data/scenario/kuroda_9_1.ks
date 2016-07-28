﻿;=============================================
;◆黒田イベント４章【実際に会う事を決める】9月1週、お相手選択で「黒田」を選ぶと発生
;=============================================
*replay_kuroda_9_1
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_9_1_scene1==undefined"]
	[skipstop]
[endif]
*scene1
[freeimage layer = 24]

;【背景】ヒロインの部屋
[背景_庭]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="message_bg" storage="message_bg/frame_red.png"]
;[chara_show left=1 top=391 layer=10 name="message_bg"]

;セーブ等ボタン配置
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]

;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=270 y=407]
[chara_config ptext="chara_name_area"]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]

;【SE】鈴虫の音
;[playse storage=mushi_suzumushi.ogg loop=false ]
;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……黒田様。お手紙の人柄に、触れてみたい）[p]

;【立ち絵】主人公：決意
[主人公閉目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
元々気持ちは固まりつつあったのだ、これ以上悩んでは他の方に失礼になるだろう。[r]
私は覚悟を決め、スッと姿勢を正して息を整えた。
[autosave]
[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父様、[名前]は黒田様にお会いしたいと思います」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_9_1_scene2==undefined"]
	[skipstop]
[endif]
*scene2
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「……！　そうか、将貴君か」
[autosave]
[p]

;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
「[名前]にとって、将貴君はどんな人物なのかね？」[p]

;↓ここからのやりとりは仮状態。手紙を実際に色々書いてから変更する可能性が高いです
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お手紙からは、黒田様が研究に真摯に取り組んでおられる様子や自然に親しんでおられることが伝わります。[r]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
読むたびに、私も頑張ろう、と勇気づけられました」[p]

;【このセリフのみ分岐】淑女度一定値以上の場合
[if exp="f.para_shujinkou_shukujodo >= 40"]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「それで最近お稽古に励んでいたのか」[p]
[endif]
[if exp="f.para_shujinkou_shukujodo < 40"]
;【このセリフのみ分岐】淑女度一定値未満の場合
[whosay name=&sf.father_name color="DarkSlateBlue"]
「それは良いことだな」[p]
[endif]
[主人公目パチ1回]
[wait time=10]
;以下共通セリフに戻る
「将貴君は努力家と聞くなぁ。[名前]に良い影響を与えてくれるのだね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「はい」[p]

「お父様。私は黒田様と文通をはじめてから、お庭の植物や色々な物事が[r]
これまでと違ったように見えるようになりました」
[autosave]
[p]
;【立ち絵】主人公：笑顔
[主人公笑顔]
「とても新鮮な気分です」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「ほう、植物だけではないのだね」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_9_1_scene3==undefined"]
	[skipstop]
[endif]
*scene3
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。黒田様が色々な物事を興味深く語ってくださるので……[r]
お稽古ごとにしても、もっと知りたくなって、
;【立ち絵】主人公：ほほえみ
楽しくなりました」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「それは何よりだなぁ。近ごろの[名前]は、活き活きとお稽古しているね」[p]

;【立ち絵】主人公：笑顔頬染め
[主人公笑顔]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。色々と学んで、黒田様のお力になれたら……[r]
[sp]なんてつい、思ってしまうのです。[r]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[sp]お手紙だけではなく、実際にお会いしてみたいです」[p]

[主人公通常]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「そうか。では、早速見合いの準備を進めよう……[r]
[名前]。将貴君に決めて、本当に良いのだね？」
[autosave]
[p]

;【立ち絵】主人公：目閉じ思案
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（時子さんにも心配されたっけ……苦労するかもと。[r]
[sp]けれど苦労は、糧になるとも言いますね）[p]

;【立ち絵】主人公：決意
[主人公閉目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「はい。黒田様に、決めます」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「わかった。[r]
[sp]この事はすぐに先方に伝えよう。文奈からも手紙を送っておくといい」
[autosave]
[p]

;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、分かりました」[p]
#
話が終わり、お父様を見送るために立ち上がる。[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「お休み、[名前]」[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「おやすみなさい」[p]

;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]
;【SE】落ち着いた足音（フェードアウト）
[playse storage=isono_out.ogg loop=false ]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_9_1_scene4==undefined"]
	[skipstop]
[endif]
*scene4
;【立ち絵】主人公：ふぅ
[主人公ふぅ閉]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ふぅ、これでもう後戻りはできないわ）[p]
　
;【立ち絵】主人公：目閉じ思案
;[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
;[wait time=10]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;（そういえば、お父様は黒田様のお家のことは、何もおっしゃらなかった……）[p]

;【分岐】他攻略対象の好感度が高い場合
;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そうだ、他の方にも手紙を送らなければ）[p]

;【立ち絵】主人公：目閉じ困り眉
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（せっかく長い間楽しい時間を過ごさせて頂いたのに心苦しいけれど、こればっかりは仕方ないわね）[p]

;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（せめて、今まで以上に心を込めて別れの手紙を書こう。もしどこかでお会いすることがあっても笑顔でお話できるように）[p]

;個別ルート前夜終了

[eval exp="f.kuroda_au=1"]
@jump storage="event.ks" target=*event_owari

;回想記録終了 
[endreplay] 

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
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" target="*window_close" ]
[wait time=10]
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



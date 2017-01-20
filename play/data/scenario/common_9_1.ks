﻿﻿;=============================================
;◆顔合せのお相手選び： 9月1週になった時点で、攻略対象の好感度一定値以上なら1度だけ発生
;=============================================
*replay_common_9_1
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_common_9_1_scene1==undefined"]
	[skipstop]
[endif]
*scene1
[freeimage layer = 24]
;【背景】主人公邸 庭の見える部屋：夜
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
;【SE】鈴虫の音
[playse storage=mushi_suzumushi.ogg loop=false]

[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「あら？」
[autosave]
[p]

[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
（もう鈴虫が鳴いているなんて……今年は時が経つのが早く感じるわ）[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
#
読んでいた文から目を離し、一息つく。[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
（ふふ、手紙がこんなに溜まるわけね）[p]

[主人公目パチ1回]
[wait time=10]
#
今まで送られてきた手紙が入っている文箱をそっと撫でる。[r]
中はもう半分ほど埋まっていて、きっと後半年もすれば蓋が[r]
閉まらなくなるだろう。
[autosave]
[p]

[stopse]
;【SE】鈴虫の音
[playse storage=mushi_suzumushi.ogg loop=false ]

[whosay name=&sf.girl_namae color="mediumvioletred"]
「……」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
（そういえば……）[p]

[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
（お兄様と義姉様がお見合いをされたのも、鈴虫が鳴く季節だったかしら？）[p]

[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=文矢 color="Teal"]
（文奈にもいつか……）
[autosave]
[p]

[主人公閉目パチ1回]
[wait time=10]
#
もう何度も思い起こした、あの日の兄の言葉が頭に浮かぶ。[p]

[whosay name=&sf.girl_namae color="mediumvioletred"]
（お兄様。私にはまだ、そこまで思える方はいないようです）[p]

[whosay name=&sf.girl_namae color="mediumvioletred"]
（けれど……）[p]

[主人公目パチ1回]
[wait time=10]
;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
#
無意識に一枚の手紙を手に取る。
[autosave]
[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「……もし、貴方と
;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]
会えたなら」[p]

[主人公閉目パチ1回]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]？」[p]

[主人公驚]
[wait time=10]
[chara_mod name="girl_te" storage="girl/S/katate.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「……は、はい!!」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_common_9_1_scene2==undefined"]
	[skipstop]
[endif]
*scene2
[whosay name=&sf.father_name color="DarkSlateBlue"]
「少し話したいことがあるのだが、入ってもいいかな？」
[autosave]
[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「お父様……！　はい、大丈夫です」[p]

;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]

[主人公通常]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「ふふ、ずいぶんと素っ頓狂な声を出していたが何かしていたのかい？」[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「いえ、少し考え事を……」[p]

[主人公横目パチ1回]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「ふむ、最近はだいぶ淑女らしくなったと聞いていたんだがなぁ」[p]

[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「そ、そんなに変な声でしたか？」[p]

[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
（うぅ、恥ずかしくて顔から火が出そう）[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「ははは！　冗談だよ、そんなに気にするな」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_common_9_1_scene3==undefined"]
	[skipstop]
[endif]
*scene3
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「それで、考え事とは手紙のことか？」
[autosave]
[p]

[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「はい、文通を始めてもう４ヶ月も経ったのだと感慨深く思っていました」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「そうか……」[p]

[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「文奈、覚えているか？」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「文矢が見合いをしたのは９月の終わり頃だった……」[p]

[主人公目パチ1回]
[wait time=10]
ふと、お父様は真剣な表情を浮かべる。[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「まぁ、それでだ。文奈もそろそろ誰かと会ってみる気はないかと思ってな？」[p]

[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「……お父様」[p]

;【SE】鈴虫の音
[playse storage=mushi_suzumushi.ogg loop=false ]
#
どなたとお会いしましょうか？
;【分岐】暫定的に各シナリオ9月1週へ飛ぶ処理を入れています(現状ではイベント後テストページに移動します。後日お稽古パートへ戻る処理を追記予定です)
;好感度と淑女度によるif分岐処理を追記予定です(スクリプト担
[glink storage="kuroda_9_1.ks" target=*replay_kuroda_9_1 text="黒田様" fontcolor=gray size=23 width="200" x=200 y=100 color=white]
[glink storage="zaizen/zaizen_9_1.ks" target=*replay_zaizenzaizen_9_1 text="財前様" fontcolor=gray size=23 width="200" x=550 y=100 color=white]
[glink storage="sijyou/sijyou_9_1.ks" target=*replay_sijyou_9_1 text="四条様" fontcolor=gray size=23 width="200" x=200 y=200 color=white]
;藤枝イベント発生中の場合のみ「誰も選ばない」ボタン表示
[if exp="f.event_hujieda[5]==1"]
[glink storage="hujieda/hujieda_9_1.ks" target=*replay_hujieda_9_1 text="誰も選ばない" fontcolor=gray size=23 width="200" x=550 y=200 color=white]
[endif]
[glink target=*horyuu text="もっと考えたい" fontcolor=gray size=23 width="200" x=550 y=300 color=white]
[autosave]
[s]

*horyuu
[if exp="sf.KSKIP=='ON' && sf.trail_common_9_1_scene4==undefined"]
	[skipstop]
[endif]
*scene4
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「……もう少し、お時間をください」
[p]

[主人公閉目パチ1回]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「わかった。今週末までには決めておくようにな」[p]

[whosay name=&sf.girl_namae color="mediumvioletred"]
「はい、お父様」[p]

[eval exp="f.event_oaite_mitei=1"]
@jump storage="event.ks" target=*event_owari

;回想記録終了 
[endreplay] 

*common_9_1_futatabi_oaiteerabi
[if exp="sf.KSKIP=='ON' && sf.trail_common_9_1_scene5==undefined"]
	[skipstop]
[endif]
*scene5

;【背景】ヒロインの部屋
[背景_庭]
;メッセージエリアの表示;【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="message_bg" storage="message_bg/frame_red.png"]
;[chara_show left=1 top=391 layer=10 name="message_bg"]

;セーブ等ボタン配置
[if exp="sf.FButton=='ON'"]
[else]
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
;[locate x=900 y=390]
;[button name="message_close" graphic="button_message_close.png" role=message ]
[eval exp="sf.FButton='ON'"]
[endif]

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
[playse storage=mushi_suzumushi.ogg loop=false ]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「さて、[名前]」
[autosave]
[p]

[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「はい」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「誰に会うか、決めたかね？」[p]

#
どなたとお会いしましょうか？
;【分岐】暫定的に各シナリオ9月1週へ飛ぶ処理を入れています(現状ではイベント後テストページに移動します。後日お稽古パートへ戻る処理を追記予定です)
;好感度と淑女度によるif分岐処理を追記予定です(スクリプト担
[glink storage="kuroda_9_1.ks" target=*replay_kuroda_9_1 text="黒田様" fontcolor=gray size=23 width="200" x=200 y=100 color=white]
[glink storage="zaizen/zaizen_9_1.ks" target=*replay_zaizen_9_1 text="財前様" fontcolor=gray size=23 width="200" x=550 y=100 color=white]
[glink storage="sijyou/sijyou_9_1.ks" target=*replay_sijyou_9_1 text="四条様" fontcolor=gray size=23 width="200" x=200 y=200 color=white]
;藤枝イベント発生中の場合のみ「誰も選ばない」ボタン表示
[if exp="f.event_hujieda[5]==1"]
[glink storage="hujieda/hujieda_9_1.ks" target=*replay_hujieda_9_1 text="誰も選ばない" fontcolor=gray size=23 width="200" x=550 y=200 color=white]
[endif]
[autosave]
[s]



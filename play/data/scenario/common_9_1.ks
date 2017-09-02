﻿﻿﻿;=============================================
;◆顔合せのお相手選び： 9月1週になった時点で、攻略対象の好感度一定値以上なら1度だけ発生
;=============================================
*replay_common_9_1
;◆黒田、財前、四条の進行条件を満たさない場合にイベント発生を回避
[if exp="f.para_kuroda_koukando < 30 && (f.para_zaizen_koukando < 30 || f.para_shujinkou_shukujodo < 20) && f.para_sijyou_koukando < 30"]
	@jump storage="event_hantei_week_hajime.ks" target=*common_9_1_hantei_owari
[endif]

;判定より下
[stopbgm]
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_girl.jpg" time=500] 
[wait time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 
[wait time=10]
[preload storage="data/fgimage/bg/room_niwa_yoru.jpg" wait=true]

;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_common_9_1_scene1==undefined"]
	[skipstop]
[endif]
*scene1
[freeimage layer = 24]
[wait time=10]
;【背景】主人公邸 庭の見える部屋：夜
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa_yoru.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
[if exp="tf.test_gamen == true"]
テストページから開始しています。選択肢手前のif分岐までjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]

*jump_ok
[current layer="message0"]
[resetfont]
「はい」[r]
jumpします。[p]
[cm]
[イベント中テスト数値表示]
@jump target=*if_bunki
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
最初からはじめます。[p]
[cm]
[イベント中テスト数値表示]
[endif]

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
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
（もう鈴虫が鳴いているなんて……。[r]
[sp]今年は時が経つのが早く感じるわ）[p]

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
（お兄様とお義姉様がお見合いをされたのも、鈴虫が鳴く季節だった[r]
[sp]かしら？）[p]

[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=文矢 color="Teal"]
（[名前]にもいつか……）
[autosave]
[p]

[主人公閉目パチ1回]
[wait time=10]
#
何度も思い起こした、あの日の兄の言葉が頭に浮かぶ。[p]

[whosay name=&sf.girl_namae color="mediumvioletred"]
（お兄様。　私にはまだ、そこまで思える方はいないようです）[p]

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
「はい、文通を始めてもう[ruby text=よん]四[ruby text=か]ヶ[ruby text=げつ]月も経ったのだと感慨深く思っていました」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「そうか……」[p]

[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]、覚えているか？」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「文矢が見合いをしたのは[ruby text=く]九[ruby text=がつ]月の終わり頃だった……」[p]
#
[主人公目パチ1回]
[wait time=10]
ふと、お父様は真剣な表情を浮かべる。[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「まあ、それでだ。[名前]もそろそろ誰かと会ってみる気はないかと[r]
[sp]思ってな？」[p]

*if_bunki
;◆選択可能なお相手を調べるスクリプトはevent_hantei_week_owari.ks
「[名前]の淑女らしさは
;淑女度一定値以下で父のセリフ変化
[if exp="f.para_shujinkou_shukujodo < f.zaizen_shukujodo"]
まだまだ
[else]
なかなか
[endif]
だね。[r] 

[if exp="f.common_9_1_ninzuu == 2"]
[sp]いま手紙を交わしているなかで、 縁談を進められるのは[emb exp="f.common_9_1_oaite_full[0]"]君と[r]
[sp][emb exp="f.common_9_1_oaite_full[1]"]君だな。会ってみるかい？」[p] 
[elsif exp="f.common_9_1_ninzuu == 1"]
[sp]いま手紙を交わしているなかで、 縁談を進められるのは[emb exp="f.common_9_1_oaite_full[0]"]君[r]
[sp]だけだな。 会ってみるかい？」[p]
[elsif exp="f.common_9_1_ninzuu == 3"]
[sp]誰かと会ってみるかい？」[p]
[endif]

[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「……お父様」[p]

;【SE】鈴虫の音
[playse storage=mushi_suzumushi.ogg loop=false ]
*sentaku
#
[if exp="f.common_9_1_ninzuu == 1"]
お会いしましょうか？
[else]
どなたとお会いしましょうか？
[endif]
;【分岐】
[eval exp="f.common_9_1_y_left = 100"]
[eval exp="f.common_9_1_y_right = 100"]
[glink storage=&f.common_9_1_storage[0] target=&f.common_9_1_target[0] text=&f.common_9_1_oaite[0] fontcolor=gray size=23 width="200" x=200 y=&f.common_9_1_y_left color=white exp=&f.common_9_1_oaite_exp[0]]
[if exp="f.common_9_1_ninzuu >= 2"]
[glink storage=&f.common_9_1_storage[1] target=&f.common_9_1_target[1] text=&f.common_9_1_oaite[1] fontcolor=gray size=23 width="200" x=550 y=&f.common_9_1_y_right color=white exp=&f.common_9_1_oaite_exp[1]]
[endif]
[if exp="f.common_9_1_ninzuu >= 3"]
[eval exp="f.common_9_1_y_left = f.common_9_1_y_left + 100"]
[glink storage=&f.common_9_1_storage[2] target=&f.common_9_1_target[2] text=&f.common_9_1_oaite[2] fontcolor=gray size=23 width="200" x=200 y=&f.common_9_1_y_left color=white exp=&f.common_9_1_oaite_exp[2]]
[endif]
;藤枝イベント発生中の場合のみ「誰も選ばない」ボタン表示
[if exp="f.common_9_1_ninzuu >= 2"]
	[eval exp="f.common_9_1_y_right = f.common_9_1_y_right + 100"]
[endif]
[if exp="f.event_hujieda[5] == 1 && f.common_9_1_ninzuu == 1"]
[glink storage="hujieda/hujieda_9_1.ks" target=*replay_hujieda_9_1 text="お会いしない" fontcolor=gray size=23 width="200" x=550 y=&f.common_9_1_y_right color=white exp="f.hujieda_au = 1"]
[elsif exp="f.event_hujieda[5] == 1 && f.common_9_1_ninzuu >= 2"]
[glink storage="hujieda/hujieda_9_1.ks" target=*replay_hujieda_9_1 text="誰も選ばない" fontcolor=gray size=23 width="200" x=550 y=&f.common_9_1_y_right color=white exp="f.hujieda_au = 1"]
[endif]
[eval exp="f.common_9_1_y_left = f.common_9_1_y_left + 100"]
[glink target=*horyuu text="もっと考えたい" fontcolor=gray size=23 width="200" x=200 y=&f.common_9_1_y_left color=white]
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
#
[eval exp="f.event_oaite_mitei=1"]

*common_event_mitei
[イベントシーン終了]
@jump storage="event_hantei_week_hajime.ks" target=*common_event_hantei_owari

;回想記録終了 
[endreplay] 

*common_9_1_futatabi_oaiteerabi
;◆黒田、財前、四条の進行条件を満たさない場合にイベント発生を回避
[if exp="f.para_kuroda_koukando < 30 && (f.para_zaizen_koukando < 30 || f.para_shujinkou_shukujodo < 20) && f.para_sijyou_koukando < 30"]
	@jump storage="event_hantei_week_owari.ks" target=*common_9_1_hantei_owari
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_common_9_1_scene5==undefined"]
	[skipstop]
[endif]
*scene5
[stopbgm]
;【背景】主人公邸 庭の見える部屋：夜
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;メッセージエリアの表示;【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="message_bg" storage="message_bg/frame_red.png"]
;[chara_show left=1 top=391 layer=10 name="message_bg"]

;セーブ等ボタン配置
[if exp="sf.FButton=='ON'"]
[else]
[locate x=580 y=357]
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[locate x=650 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=730 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=810 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=880 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
[endif]

;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=270 y=407]
[chara_config ptext="chara_name_area"]

[if exp="f.event_katuraginomiya[4] != 1"]
;葛城宮のイベントをみていないとき主人公合体画像を表示
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_futuu_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=300]
[endif]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]

;主人公合体画像を削除　なければremoveはスルーするが同じ条件下にする
[if exp="f.event_katuraginomiya[4] != 1"]
[iscript]
$('.junbi_girl').remove();
[endscript]
[endif]

;【SE】鈴虫の音
[playse storage=mushi_suzumushi.ogg loop=false ]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「さて、[名前]」
[autosave]
[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「はい」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「誰に会うか、決めたかね？」[p]

#
;週終わりのイベントであることを示す変数に1を代入
[eval exp="f.event_weekend = 1"]
[if exp="f.common_9_1_ninzuu == 1 && f.event_hujieda[5] != 1"]
お会いしましょう。
[elsif exp="f.common_9_1_ninzuu == 1 && f.event_hujieda[5] == 1"]
お会いしましょうか？
[else]
どなたとお会いしましょうか？
[endif]
;【分岐】
[eval exp="f.common_9_1_y_left = 100"]
[eval exp="f.common_9_1_y_right = 100"]
[glink storage=&f.common_9_1_storage[0] target=&f.common_9_1_target[0] text=&f.common_9_1_oaite[0] fontcolor=gray size=23 width="200" x=200 y=&f.common_9_1_y_left color=white exp=&f.common_9_1_oaite_exp[0]]
[if exp="f.common_9_1_ninzuu >= 2"]
[glink storage=&f.common_9_1_storage[1] target=&f.common_9_1_target[1] text=&f.common_9_1_oaite[1] fontcolor=gray size=23 width="200" x=550 y=&f.common_9_1_y_right color=white exp=&f.common_9_1_oaite_exp[1]]
[endif]
[if exp="f.common_9_1_ninzuu >= 3"]
[eval exp="f.common_9_1_y_left = f.common_9_1_y_left + 100"]
[glink storage=&f.common_9_1_storage[2] target=&f.common_9_1_target[2] text=&f.common_9_1_oaite[2] fontcolor=gray size=23 width="200" x=200 y=&f.common_9_1_y_left color=white exp=&f.common_9_1_oaite_exp[2]]
[endif]
;藤枝イベント発生中の場合のみ「誰も選ばない」ボタン表示
[if exp="f.common_9_1_ninzuu >= 2"]
	[eval exp="f.common_9_1_y_right = f.common_9_1_y_right + 100"]
[endif]
[if exp="f.event_hujieda[5] == 1 && f.common_9_1_ninzuu == 1"]
[glink storage="hujieda/hujieda_9_1.ks" target=*replay_hujieda_9_1 text="会わない" fontcolor=gray size=23 width="200" x=550 y=&f.common_9_1_y_right color=white]
[elsif exp="f.event_hujieda[5] == 1 && f.common_9_1_ninzuu >= 2"]
[glink storage="hujieda/hujieda_9_1.ks" target=*replay_hujieda_9_1 text="誰も選ばない" fontcolor=gray size=23 width="200" x=550 y=&f.common_9_1_y_right color=white]
[endif]
[s]



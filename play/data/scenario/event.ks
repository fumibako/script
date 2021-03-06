*start
[freeimage layer = 26]
[freeimage layer = 27]

[if exp="f.event_type=='talk'"]
@jump storage=&f.event_storage target=&f.event_target
[endif]


;背景変更:主人公邸_お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko_main.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[wait time=10]

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

[call target=*start storage="macro_tati_girl.ks"]

;[if exp="(f.okeiko_month==4 && f.okeiko_week==1)"]

;【機能ボタン表示】
[locate x=250 y=17]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=350 y=17]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=450 y=17]
[button name="button_info" fix=true graphic="button_info.png" storage=info_oaite_fumi.ks target=*info_oaite]
[wait time=10]
[locate x=550 y=17]
[button name="button_sansaku" fix=true graphic="button_sansaku.png" storage=sansaku.ks target=*sansaku]
[wait time=10]
[locate x=650 y=17]
[button name="button_fumibako" fix=true graphic="button_fumi.png" storage=info_oaite_fumi.ks target=*fumibako]
[wait time=10]

;【お稽古ボタン表示】
[locate x=350 y=549]
[button name="okeiko_sadou" fix=true graphic="button_okeiko_sadou.png" target=*okeiko_sadou]
[wait time=10]
[locate x=470 y=549]
[button name="okeiko_kadou" fix=true graphic="button_okeiko_kadou.png" target=*okeiko_kadou]
[wait time=10]
[locate x=590 y=549]
[button name="okeiko_reihou" fix=true graphic="button_okeiko_reihou.png" target=*okeiko_reihou]
[wait time=10]
[locate x=710 y=549]
[button name="okeiko_gogaku" fix=true graphic="button_okeiko_gogaku.png" target=*okeiko_gogaku]
[wait time=10]
[locate x=852 y=533]
[button name="okeiko_qk" fix=true graphic="button_okeiko_qk.png" target=*okeiko_qk]
[wait time=10]

;【システム表示】月週
[layopt layer=21 visible=true]
[image layer=21 x=81 y=6 storage=&f.sysgra_okeiko_month]
[wait time=10]
[layopt layer=22 visible=true]
[image layer=22 x=81 y=50 storage=&f.sysgra_okeiko_week]
[wait time=10]
[eval exp="f.okeikopart_shuuhajime=1"]

;【パラメータ計算＆描画】
;↓処理ループ中に含める
[iscript]
f.para_shujinkou_tairyoku=f.para_shujinkou_tairyoku_now + "/" + f.para_shujinkou_tairyoku_max;
f.para_shujinkou_kiryoku=f.para_shujinkou_kiryoku_now + "/" + f.para_shujinkou_kiryoku_max;
f.para_shujinkou_shukujodo_max_width = f.para_shujinkou_shukujodo * 1 + 2;
f.para_shujinkou_shukujodo_now_width = f.para_shujinkou_shukujodo * 1;
f.para_shujinkou_tairyoku_max_width = f.para_shujinkou_tairyoku_max * 1 + 2;
f.para_shujinkou_tairyoku_now_width = f.para_shujinkou_tairyoku_now * 1;
f.para_shujinkou_kiryoku_max_width = f.para_shujinkou_kiryoku_max * 1 + 2;
f.para_shujinkou_kiryoku_now_width = f.para_shujinkou_kiryoku_now * 1;
[endscript]

;称号判定
[iscript]
if (f.para_shujinkou_shukujodo > 80){f.shougou = "淑女";}
else {f.shougou = "お転婆娘";}
[endscript]

;レイヤー24にパラメータ画像を表示
[layopt layer=24 visible=true]
[if exp="f.para_shujinkou_shukujodo == 0"]
[else]
[image layer=24 x=835 y=111 width=&f.para_shujinkou_shukujodo_max_width height=10 storage="button/parabar_empty_brown.png"]
[image layer=24 x=836 y=112 width=&f.para_shujinkou_shukujodo_now_width height=8 storage="button/parabar_pink.png"]
[endif]
[if exp="f.para_shujinkou_tairyoku_max == 0"]
[else]
[image layer=24 x=835 y=174 width=&f.para_shujinkou_tairyoku_max_width height=10 storage="button/parabar_empty_brown.png"]
[image layer=24 x=836 y=175 width=&f.para_shujinkou_tairyoku_now_width height=8 storage="button/parabar_green.png"]
[endif]
[if exp="f.para_shujinkou_kiryoku_max == 0"]
[else]
[image layer=24 x=835 y=212 width=&f.para_shujinkou_kiryoku_max_width height=10 storage="button/parabar_empty_brown.png"]
[image layer=24 x=836 y=213 width=&f.para_shujinkou_kiryoku_now_width height=8 storage="button/parabar_blue.png"]
[endif]

;レイヤー24にパラメータテキストを表示
[ptext text=&f.shougou layer=24 size=25 x=800 y=55 color=black bold=bold]
;[ptext text=&f.para_shujinkou_shukujodo layer=24 size=20 x=914 y=92 color=moccasin bold=bold]
[ptext text=&f.para_shujinkou_shukujodo layer=24 size=20 x=915 y=93 color=black bold=bold]
;[ptext text=&f.para_shujinkou_tairyoku layer=24 size=20 x=869 y=157 color=moccasin bold=bold]
[ptext text=&f.para_shujinkou_tairyoku layer=24 size=20 x=870 y=158 color=black bold=bold]
;[ptext text=&f.para_shujinkou_kiryoku layer=24 size=20 x=869 y=194 color=moccasin bold=bold]
[ptext text=&f.para_shujinkou_kiryoku layer=24 size=20 x=870 y=195 color=black bold=bold]
;[endif]

[if exp="f.event_type=='advice'"]
@jump storage=&f.event_storage target=&f.event_target
[endif]

;[clearfix]
;[freeimage layer = 21]
;[freeimage layer = 22]
;[freeimage layer = 24]
[stopbgm ]

;-----設定タグここから-----
[if exp="sf.BGM=='OFF'"]
[iscript]
/*BGMを再生しない*/
TG.stat.play_bgm = false;
[endscript]
;ロード時点で再生していたBGMを停止します。
[stopbgm ]
[else]
[iscript]
/*BGMを再生する*/
TG.stat.play_bgm = true;
[endscript]
[endif]

[if exp="sf.SE=='OFF'"]
[iscript]
/*効果音を再生しない*/
TG.stat.play_se = false;
[endscript]
;ロード時点で再生していたSEを停止します。
[stopse ]
[else]
[iscript]
/*効果音を再生する*/
TG.stat.play_se = true;
[endscript]
[endif]
;-----設定タグここまで-----

;◆主人公立ち絵（L）を透明化
[chara_mod name="A_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="A_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="A_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="toumei.gif" time=0]
[wait time=10]


*event_jump
[iscript]
TG.stat.stack["call"] = [];
[endscript]

;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

;◆イベントにジャンプ
[freeimage layer = 24]

@jump storage=&f.event_storage target=&f.event_target

;◆イベント　終
*event_owari
[skipstop]
#
[freeimage layer = 26]
[freeimage layer = 27]
[主人公退場]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif"]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]

;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false
[cm]
[stopbgm ]
;【BGM】夕涼み（お稽古）
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[wait time=10]

[if exp="f.event_jiki=='weekend'"]
	[eval exp="f.event_jiki='weekstart'"]
@jump storage="okeiko.ks" target=*okeiko_qk_shori
[endif]

;◆主人公立ち絵を戻す
[chara_mod name="A_base" storage="girl/L/base.png" time=0]
[wait time=10]
[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
[wait time=10]

;背景変更:主人公邸_お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko_main.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[wait time=10]

@jump storage="okeiko.ks" target=*draw_button_system

[return]

;◆イベント　終
*event_ED
[stopbgm]
[skipstop]
#
[freeimage layer = 26]
[freeimage layer = 27]
[主人公退場]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif"]
;機能ボタン消去

[clearfix]
[eval exp="sf.FButton='OFF'"]
[cm]

@jump storage="title.ks"
[return]

;◆イベント4月1週「お稽古パートチュートリアル」
*replay_common_4_1

[if exp="sf.KSKIP=='ON' && sf.trail_event_common_4_1==undefined"]
	[skipstop]
[endif]
*common_4_1
[skipstop]
;◆立ち絵L通常
[chara_mod name="A_base" storage="girl/L/base.png" time=0]
[wait time=10]
[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
[wait time=10]
;◆磯野メッセージ表示
[layopt layer=26 visible=true]
[layopt layer=27 visible=true]
[image layer=26 x=250 y=120 storage="button/frame_lesson_message.png"]
[ptext text="【磯野】　このお部屋は初めてになりますね" layer=27 size=21 x=270 y=150 color=darkslateblue bold=bold]
[ptext text="説明を聞かれますか？" layer=27 size=21 x=345 y=185 color=darkslateblue bold=bold]

[glink target=*common_4_1_yes text="はい" size=40 width="150" x=300 y=350 color=white]
[glink target=*common_4_1_no text="いいえ" size=40 width="150" x=550 y=350 color=white]
[s]

*common_4_1_yes
[freeimage layer = 27]
[image layer=27 x=250 y=490 storage="button/kira_frame_lesson.png"]
[wait time=10]
;【SE】キラキラ
[playse storage=kira.ogg loop=false ]

[ptext text="では、まず『お稽古』について。お部屋下の『お稽古』窓" layer=27 size=18 x=280 y=150 color=darkslateblue bold=bold]
[ptext text="からお好みのお稽古ボタンを押してください。" layer=27 size=18 x=280 y=188 color=darkslateblue bold=bold]
[p]
[freeimage layer = 27]
[image layer=27 x=625 y=-5 storage="button/kira_button.png"]
[wait time=10]
[主人公目パチ1回L]
[wait time=10]
;【SE】キラキラ
[playse storage=kira_s.ogg loop=false ]
[ptext text="お部屋上の『文箱』を押すと、お相手からのお手紙" layer=27 size=18 x=280 y=150 color=darkslateblue bold=bold]
[ptext text="を読んだりお手紙を送ることができます。" layer=27 size=18 x=280 y=188 color=darkslateblue bold=bold]
[p]
[freeimage layer = 27]
[image layer=27 x=525 y=-5 storage="button/kira_button.png"]
[wait time=10]
;【SE】キラキラ
[playse storage=kira.ogg loop=false ]
[ptext text="『散策』を押すと、町へお出かけができます。" layer=27 size=18 x=280 y=150 color=darkslateblue bold=bold]
[ptext text="お手紙の話題作りにもなるかもしれません。" layer=27 size=18 x=280 y=188 color=darkslateblue bold=bold]
[p]
[freeimage layer = 27]
[image layer=27 x=425 y=-5 storage="button/kira_button.png"]
[wait time=10]
;【SE】キラキラ
[playse storage=kira_s.ogg loop=false ]
[ptext text="『情報』を押すと、お相手の情報やお手紙を" layer=27 size=18 x=280 y=150 color=darkslateblue bold=bold]
[ptext text="見たりすることができます。" layer=27 size=18 x=280 y=188 color=darkslateblue bold=bold]
[p]
[主人公目パチ1回L]
[wait time=10]
[chara_mod name="A_mayu" storage="girl/L/mayu_yowa.png" time=0]
[wait time=10]
[freeimage layer = 27]
[ptext text="仲を深めるには返信だけでなく、こちらから" layer=27 size=18 x=280 y=150 color=darkslateblue bold=bold]
[ptext text="手紙を書くことも大切でございます。" layer=27 size=18 x=280 y=188 color=darkslateblue bold=bold]
[p]
[freeimage layer = 27]
[image layer=27 x=625 y=-5 storage="button/kira_button.png"]
[wait time=10]
;【SE】キラキラ
[playse storage=kira_s.ogg loop=false ]
[ptext text="こちらから手紙を書くことは『文箱』の" layer=27 size=18 x=280 y=150 color=darkslateblue bold=bold]
[ptext text="画面下の方からできます。" layer=27 size=18 x=280 y=188 color=darkslateblue bold=bold]
[chara_mod name="A_kuti" storage="girl/L/kuti_hohoemi.png" time=0]
[wait time=10]
[p]
[freeimage layer = 27]
[ptext text="説明は以上になります。" layer=27 size=18 x=280 y=150 color=darkslateblue bold=bold]
;[ptext text="何かお困りのことがありましたら、お呼びください。" layer=27 size=18 x=280 y=188 color=darkslateblue bold=bold]
[p]
[freeimage layer = 26]
[freeimage layer = 27]
@jump target=*common_4_1_2

*common_4_1_no
[freeimage layer = 26]
[freeimage layer = 27]
;◆主人公メッセージ表示
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
;メッセージレイヤサイズをお稽古フキダシ窓用に設定変更
[position left=360 width=500 height=170 top=250 page=fore margint="50"]
;フキダシ枠表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="sys_fukidasi" storage="button/frame_lesson_fukidasi.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_hohoemi.png" time=0]
[wait time=10]
[font size=25]
いいえ、今は結構よ
[p]
[resetfont]
@jump storage="okeiko.ks" target=*draw_button_system

*common_4_1_2
;◆主人公メッセージ表示
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
;メッセージレイヤサイズをお稽古フキダシ窓用に設定変更
[position left=360 width=500 height=170 top=250 page=fore margint="50"]
;フキダシ枠表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="sys_fukidasi" storage="button/frame_lesson_fukidasi.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_hohoemi.png" time=0]
[wait time=10]
[font size=25]
ありがとう、磯野[p]
[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
[resetfont]
@jump storage="okeiko.ks" target=*draw_button_system



;回想記録終了 
[endreplay] 

;◆イベント4月2週「お稽古の助言」
*replay_common_4_2
[if exp="sf.KSKIP=='ON' && sf.trail_event_replay_common_4_2_b==undefined"]
	[skipstop]
[endif]
*replay_common_4_2_b

;◆立ち絵L通常
[chara_mod name="A_base" storage="girl/L/base.png" time=0]
[wait time=10]
[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
[wait time=10]
;◆磯野メッセージ表示
[layopt layer=26 visible=true]
[layopt layer=27 visible=true]
[image layer=26 x=250 y=120 storage="button/frame_lesson_message.png"]
[ptext text="【磯野】　お嬢様。お稽古で『淑女度』を" layer=27 size=18 x=270 y=150 color=darkslateblue bold=bold]
[ptext text="高めることは、大切にござります。" layer=27 size=18 x=345 y=188 color=darkslateblue bold=bold]
[p]
[freeimage layer = 27]
[image layer=27 x=250 y=490 storage="button/kira_frame_lesson.png"]
[wait time=10]
;【SE】キラキラ
[playse storage=kira.ogg loop=false ]
[ptext text="お稽古をなさってみてはいかがですかな？" layer=27 size=18 x=290 y=150 color=darkslateblue bold=bold]
[ptext text="お部屋下の『お稽古』窓から選べますぞ。" layer=27 size=18 x=290 y=188 color=darkslateblue bold=bold]
[p]
[freeimage layer = 26]
[freeimage layer = 27]
;◆主人公メッセージ表示
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
;メッセージレイヤサイズをお稽古フキダシ窓用に設定変更
[position left=360 width=500 height=170 top=250 page=fore margint="50"]

;フキダシ枠表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="sys_fukidasi" storage="button/frame_lesson_fukidasi.png" time=0]
[wait time=10]
[font size=25]
[chara_mod name="A_kuti" storage="girl/L/kuti_hohoemi.png" time=0]
[wait time=10]
ありがとう、磯野。[r]
お稽古は大切なのですね。[p]
[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]
[wait time=10]
[resetfont]

@jump storage="okeiko.ks" target=*draw_button_system

;回想記録終了 
[endreplay] 

;◆イベント4月3週「散策の助言」:4月3週になった時点で散策を一度もしていないと1度だけ発生
*replay_common_4_3
[if exp="sf.KSKIP=='ON' && sf.trail_event_replay_common_4_3_b==undefined"]
	[skipstop]
[endif]
*replay_common_4_3_b

;◆立ち絵L通常
[chara_mod name="A_base" storage="girl/L/base.png" time=0]
[wait time=10]
[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
[wait time=10]
;◆磯野メッセージ表示
[layopt layer=26 visible=true]
[layopt layer=27 visible=true]
[image layer=27 x=525 y=-5 storage="button/kira_button.png"]
[wait time=10]
;【SE】キラキラ
[playse storage=kira.ogg loop=false ]
[image layer=26 x=250 y=120 storage="button/frame_lesson_message.png"]
[ptext text="【磯野】　お嬢様。今日は良いお天気ですね。" layer=27 size=18 x=270 y=150 color=darkslateblue bold=bold]
[ptext text="『散策』に出られてはいかがでしょう？" layer=27 size=18 x=345 y=188 color=darkslateblue bold=bold]
[p]
[freeimage layer = 26]
[freeimage layer = 27]
;◆主人公メッセージ表示
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
;メッセージレイヤサイズをお稽古フキダシ窓用に設定変更
[position left=360 width=500 height=170 top=250 page=fore margint="50"]

;フキダシ枠表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="sys_fukidasi" storage="button/frame_lesson_fukidasi.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_hohoemi.png" time=0]
[wait time=10]
[font size=25]
ありがとう、磯野。[r]
本当に良いお天気ね。[p]
[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]
[wait time=10]
[resetfont]

@jump storage="okeiko.ks" target=*draw_button_system

;回想記録終了 
[endreplay] 

;◆イベント4月4週「手紙の返信を一度もしていないと磯野より助言」
*replay_common_4_4
[if exp="sf.KSKIP=='ON' && sf.trail_event_replay_common_4_4_b==undefined"]
	[skipstop]
[endif]
*replay_common_4_4_b
;◆立ち絵L通常
[chara_mod name="A_base" storage="girl/L/base.png" time=0]
[wait time=10]
[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
[wait time=10]
;◆磯野メッセージ表示
[layopt layer=26 visible=true]
[layopt layer=27 visible=true]
[image layer=27 x=625 y=-5 storage="button/kira_button.png"]
[wait time=10]
;【SE】キラキラ
[playse storage=kira_s.ogg loop=false ]
[image layer=26 x=250 y=120 storage="button/frame_lesson_message.png"]
[ptext text="【磯野】　お嬢様。右上の『文箱』は" layer=27 size=18 x=270 y=150 color=darkslateblue bold=bold]
[ptext text="ご覧になりましたか？" layer=27 size=18 x=345 y=188 color=darkslateblue bold=bold]
[p]
[freeimage layer = 27]
[ptext text="お手紙のご返事をなさってはいかがでしょう？" layer=27 size=18 x=300 y=170 color=darkslateblue bold=bold]
[p]
[freeimage layer = 26]
[freeimage layer = 27]
;◆主人公メッセージ表示
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
;メッセージレイヤサイズをお稽古フキダシ窓用に設定変更
[position left=360 width=500 height=170 top=230 page=fore margint="50"]

;フキダシ枠表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="sys_fukidasi" storage="button/frame_lesson_fukidasi.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_hohoemi.png" time=0]
[wait time=10]
ありがとう、磯野。[r]
[r]
そうね。あまりお待たせ[r]
するのは悪いわね。[p]
[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]
[wait time=10]

@jump storage="okeiko.ks" target=*draw_button_system

;回想記録終了 
[endreplay] 


;◆イベント5月1週「返信の忠告」
*replay_common_5_1
[if exp="sf.KSKIP=='ON' && sf.trail_event_replay_common_5_1_b==undefined"]
	[skipstop]
[endif]
*replay_common_5_1_b
[clearfix]
[freeimage layer = 21]
[freeimage layer = 22]
;【背景】お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
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
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" target="*window_close" ]
[wait time=10]
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

[whosay name="磯野" color="dimgray"]
「お嬢様。まだどなたにもお返事を書かれていないようですが……」
[autosave]
[p]

「お忙しいのでしょうか？[r]
[sp]今月末までにお返事をされませんと、ご破談になってしまいます」[p]

[locate x=650 y=17]
[button name="button_fumibako" fix=true graphic="button_fumi.png" storage=info_oaite_fumi.ks target=*fumibako]
[wait time=10]
[image layer=27 x=625 y=-5 storage="button/kira_button.png"]
[wait time=10]
;【SE】キラキラ
[playse storage=kira_s.ogg loop=false ]
「お返事は右上の『文箱』からできます。[r]
[sp]お忘れにならないよう、お気をつけくださいませ」[p]

[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、磯野」[p]
#

@jump target=*event_owari

;回想記録終了 
[endreplay] 

;◆イベント5月2週「お稽古の助言」
*replay_common_5_2
[if exp="sf.KSKIP=='ON' && sf.trail_event_replay_common_5_2_b==undefined"]
	[skipstop]
[endif]
*replay_common_5_2_b
;◆立ち絵L通常
[chara_mod name="A_base" storage="girl/L/base.png" time=0]
[wait time=10]
[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
[wait time=10]
;◆磯野メッセージ表示
[layopt layer=26 visible=true]
[layopt layer=27 visible=true]
[image layer=26 x=250 y=120 storage="button/frame_lesson_message.png"]
[ptext text="【磯野】　お嬢様。お稽古で『淑女度』を" layer=27 size=18 x=270 y=150 color=darkslateblue bold=bold]
[ptext text="高めることは、大切にござります。" layer=27 size=18 x=345 y=188 color=darkslateblue bold=bold]
[p]
[freeimage layer = 27]
[image layer=27 x=250 y=490 storage="button/kira_frame_lesson.png"]
[wait time=10]
;【SE】キラキラ
[playse storage=kira.ogg loop=false ]
[ptext text="そろそろお稽古をなさってはいかがですかな？" layer=27 size=18 x=290 y=150 color=darkslateblue bold=bold]
[ptext text="お部屋下の『お稽古』窓から選べますぞ。" layer=27 size=18 x=290 y=188 color=darkslateblue bold=bold]
[p]
[freeimage layer = 26]
[freeimage layer = 27]
;◆主人公メッセージ表示
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
;メッセージレイヤサイズをお稽古フキダシ窓用に設定変更
[position left=360 width=500 height=170 top=250 page=fore margint="50"]

;フキダシ枠表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="sys_fukidasi" storage="button/frame_lesson_fukidasi.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_hohoemi.png" time=0]
[wait time=10]
[font size=25]
ありがとう、磯野。[r]
そろそろお稽古をしなくては……[p]
[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]
[wait time=10]
[resetfont]


@jump storage="okeiko.ks" target=*draw_button_system

;回想記録終了 
[endreplay] 

;◆イベント5月3週「散策の助言」
*replay_common_5_3
[if exp="sf.KSKIP=='ON' && sf.trail_event_replay_common_5_3_b==undefined"]
	[skipstop]
[endif]
*replay_common_5_3_b
;◆立ち絵L通常
[chara_mod name="A_base" storage="girl/L/base.png" time=0]
[wait time=10]
[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
[wait time=10]
;◆磯野メッセージ表示
[layopt layer=26 visible=true]
[layopt layer=27 visible=true]
[image layer=26 x=250 y=120 storage="button/frame_lesson_message.png"]
[image layer=27 x=525 y=-5 storage="button/kira_button.png"]
[wait time=10]
;【SE】キラキラ
[playse storage=kira.ogg loop=false ]
[ptext text="【磯野】　お嬢様。今日は良いお天気ですね。" layer=27 size=18 x=270 y=150 color=darkslateblue bold=bold]
[ptext text="『散策』に出られてはいかがでしょう？" layer=27 size=18 x=345 y=188 color=darkslateblue bold=bold]
[p]
[freeimage layer = 26]
[freeimage layer = 27]
;◆主人公メッセージ表示
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
;メッセージレイヤサイズをお稽古フキダシ窓用に設定変更
[position left=360 width=500 height=170 top=250 page=fore margint="50"]

;フキダシ枠表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="sys_fukidasi" storage="button/frame_lesson_fukidasi.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_hohoemi.png" time=0]
[wait time=10]
[font size=25]
ありがとう、磯野。[r]
外へ出たくなるお天気ね。[p]
[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]
[wait time=10]
[resetfont]

@jump storage="okeiko.ks" target=*draw_button_system

;回想記録終了 
[endreplay] 

;◆イベント5月4週「返信の忠告」
*replay_common_5_4
[if exp="sf.KSKIP=='ON' && sf.trail_event_replay_common_5_4_b==undefined"]
	[skipstop]
[endif]
*replay_common_5_4_b
;【背景】お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[eval exp="f.message_storage='message_bg/frame_red.png'"]
[chara_mod name="message_bg" storage=&f.message_storage]
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
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" target="*window_close" ]
[wait time=10]
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

[whosay name="磯野" color="dimgray"]
「お嬢様。何度も申し上げるのは心苦しいのですが[r]
[sp]お手紙のお返事がまだのようですね……」
[autosave]
[p]

[locate x=650 y=17]
[button name="button_fumibako" fix=true graphic="button_fumi.png" storage=info_oaite_fumi.ks target=*fumibako]
[wait time=10]
[image layer=27 x=625 y=-5 storage="button/kira_button.png"]
[wait time=10]
;【SE】キラキラ
[playse storage=kira_s.ogg loop=false ]
「どなたにもお返事をされませんと、ご破談になってしまいます。[r]
[sp]お返事は右上の『文箱』からできますぞ」[p]

「何かお考えがあるのでしょうか？[r]
[sp]どなたかとご縁を望まれるのでしたら、今週中にお返事くださいませ」[p]

[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、磯野」[p]
#

@jump target=*event_owari

;回想記録終了 
[endreplay] 

;◆イベント5月4週「badED」
*replay_common_5_4_badED
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_event_common_5_4_badED==undefined"]
	[skipstop]
[endif]
*common_5_4_badED
;[stopbgm]
;【BGM】雪解水（哀しげな曲
;[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
;【背景】お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
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
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" target="*window_close" ]
[wait time=10]
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

[whosay name="磯野" color="dimgray"]
「お嬢様。お手紙のお返事はこれ以上お待ちできません……。[r]
[sp]このたびは残念ですが、どなた様ともご破談になります」[p]
[主人公目パチ1回]
[wait time=10]

「お返事を書かれなかったのは、何かお考えあってのことでございますか？」[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]

[whosay name="磯野" color="dimgray"]
「旦那様も『ご縁を急ぎすぎたかもしれない。[r]
[sp]もっと[名前]の気持ちを聞いてみたい』[r]
[sp]とおっしゃっておいでです」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……お父様には悪いことをしてしまったわ」[p]

[whosay name="磯野" color="dimgray"]
「文通には色々なことがつきものでございます。[r]
[sp]旦那様とお話なさってみてはいかがでしょうか」[p]

[主人公閉目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……はい」[p]

#
[主人公退場]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
[chara_mod name="bg" storage="toumei.gif" time=500]
[wait time=10]
[chara_mod name="bg" storage="bg/bg_prologue.jpg" time=1000]
[wait time=10]
;【背景】黒背景（完全な黒か、和紙風の黒っぽい背景か考え中。スクリプト組み時に決めます）全画面テキスト、褪せた灰青色文字（場面変化と緊張の色的な）色は仮でスクリプト組む際に調整予定
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]

;テキスト全画面
[font color=white size=27]
[fadeoutbgm time=3000]
磯野の淹れてくれる温かいお茶を飲み[r]
私は深呼吸をした。[r]
[r]
この二ヶ月間、手紙については[r]
色々と思いを巡らせた……。[r]
[r]
そのことを、お父様にお話してみよう。[p]
[wait time=500]

;画面中央に
[font color=white size=35]
[r]
[r]
[r]
[sp]　　　　　　　　終[p]
[wait time=1000]
[eval exp="sf.ED_kuroda_gameover5_4=1"]

@jump target=*event_ED

;回想記録終了 
[endreplay] 

;◆イベント8月4週「badED」
*replay_common_8_4_badED
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_event_common_8_4_badED==undefined"]
	[skipstop]
[endif]
*common_8_4_badED
;【背景】お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
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
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" target="*window_close" ]
[wait time=10]
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

[whosay name="磯野" color="dimgray"]
「お嬢様。……このたび、最後までお手紙を下さっていた[r]
[sp]お相手様よりご連絡がございました。[r]
[sp]残念ながら、これ以上の文通は難しいとのことでございます」[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[主人公目パチ1回]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]

[whosay name="磯野" color="dimgray"]
「お忙しい方でいらっしゃいますから[r]
[sp]あまりお気落としなさいませんよう」[p]

[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……どうすればよかったのかしら」[p]

[whosay name="磯野" color="dimgray"]
「そうですね。次の機会がございましたら[r]
[sp]お相手を思って話題などをお選びいただいてはいかがでしょう」[p]

[主人公目パチ1回]
[wait time=10]

「また、お手紙はいただくばかりではなく[r]
[sp]もっとご自分からも出されると良いのではないでしょうか」[p]



[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、磯野」[p]

#
[主人公退場]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
[chara_mod name="bg" storage="toumei.gif" time=500]
[wait time=10]
[chara_mod name="bg" storage="bg/bg_prologue.jpg" time=1000]
[wait time=10]
;【背景】黒背景（完全な黒か、和紙風の黒っぽい背景か考え中。スクリプト組み時に決めます）全画面テキスト、褪せた灰青色文字（場面変化と緊張の色的な）色は仮でスクリプト組む際に調整予定
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]

;テキスト全画面
[font color=white size=27]
[fadeoutbgm time=3000]
磯野の淹れてくれる温かいお茶を飲み[r]
私は深呼吸をした。[r]
[r]
「次の機会」[r]
と磯野は言ってくれた。[r]
[r]
次の機会に備えて、もっとお稽古をしよう。[r]
良い文通ができますように……。
[p]
[wait time=500]

;画面中央に
[font color=white size=35]
[r]
[r]
[r]
[sp]　　　　　　　　終[p]
[wait time=1000]
[eval exp="sf.ED_kuroda_gameover8_4=1"]
@jump target=*event_ED

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
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[freeimage layer = 27]
[wait time=10]

[return]


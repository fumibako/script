*start
;休憩中画像消去。順番を最初にすると消えてくれるでしょうか？
[freeimage layer = 26]
[freeimage layer = 27]
@layopt layer=message1 page=fore visible = false
;背景チラ見え防止
;[bg storage="../fgimage/bg/toumei.gif" time=0]
[freeimage layer=1]
[wait time=10]
[if exp="f.event_type=='talk'"]
[freeimage layer = 26]

@jump storage=&f.event_storage target=&f.event_target
[endif]

[if exp="f.event_type=='advice'"]
;◆お稽古パート画面表示処理へ飛んで戻ってくる
;↓どこから飛んだか、戻る際の道標
[eval exp="f.hyoujimae_storage='event.ks'"]
[eval exp="f.hyoujimae_target='*draw_owari'"]
@jump storage="okeiko_hyouji.ks" target=*start
[endif]
*draw_owari
[if exp="f.event_type=='advice'"]
;◆各イベントスクリプトへ飛ぶ
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
[freeimage layer = 26]
[freeimage layer = 27]
;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false
@layopt layer=message1 page=fore visible=false
@layopt layer=message2 page=fore visible=false
;[skipstop]
#
[主人公退場]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif"]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]

[cm]
;◆四条11月1週は週をまたぐイベントであるため、週数を調整
[if exp = "f.okeiko_month == 11 && f.okeiko_week == 1 && f.sijyou_au == 1"]
[eval exp = "f.okeiko_week = 3"]
[eval exp="f.sysgra_okeiko_week = 'button/kanji_' + f.okeiko_week + '.png'"]
[endif]
;◆四条9月4週は週終わりに発生のため休憩処理続きへjump
[if exp="f.okeiko_month == 9 && f.okeiko_week == 4 && f.sijyou_au == 1"]
@jump storage="okeiko.ks" target=*okeiko_qk_shori
[endif]
;◆9月1週、週終わりに発生した場合は休憩処理続き(休憩中画像非表示)へjump
[if exp="f.okeiko_month == 9 && f.okeiko_week == 1 && f.event_weekend == 1"]
[eval exp="f.event_weekend == 0"]
;[eval exp="f.event_jiki=''"]
@jump storage="okeiko.ks" target=*okeiko_qk_shori
[endif]


;◆6月4週はイベント被りの可能性があるため(黒田、藤枝)再度イベント発生チェックへjump
[if exp="f.okeiko_month == 6 && f.okeiko_week == 4"]
@jump storage="event_hantei_week_hajime.ks"
[endif]

;◆週終わりのイベントは休憩処理続きへ→フラグリセットは休憩中非表示のために使用後にリセット
[if exp="f.event_jiki=='weekend'"]
;	[eval exp="f.event_jiki=''"]
@jump storage="okeiko.ks" target=*okeiko_qk_shori
[endif]

;◆お稽古パートイベント判定終了へ
@jump storage="okeiko.ks" target=*event_hantei_week_hajime_owari

[return]

;◆イベント　終
*event_ED
[stopbgm]
;[skipstop]
#
[freeimage layer = 26]
[freeimage layer = 27]
@layopt layer=message2 page=fore visible=false
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
;◆チュートリアル中はフキダシを透明化
[cm]
[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]
[wait time=10]
;[skipstop]
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
[wait time=10]
[ptext text="【磯野】　このお部屋は初めてになりますね" layer=27 size=21 x=270 y=150 color=darkslateblue bold=bold]
[ptext text="説明を聞かれますか？" layer=27 size=21 x=345 y=185 color=darkslateblue bold=bold]
[wait time=10]

[お稽古ボタン表示]
[wait time=10]

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
;[お稽古ボタン表示]
[wait time=10]
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
;↓アドバイスイベントを(1=通過済)に変更
[eval exp="f.event_advice=1"]
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
[eval exp="f.event_advice=1"]
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
[wait time=10]
[ptext text="【磯野】　お嬢様。お稽古で『淑女度』を" layer=27 size=18 x=270 y=150 color=darkslateblue bold=bold]
[ptext text="高めることは、大切にござります。" layer=27 size=18 x=345 y=188 color=darkslateblue bold=bold]
[お稽古ボタン表示]
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
[eval exp="f.event_advice=1"]
;◆お稽古パートイベント判定終了へ
@jump storage="okeiko.ks" target=*event_hantei_week_hajime_owari

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
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
;◆磯野メッセージ表示
[layopt layer=26 visible=true]
[layopt layer=27 visible=true]
[image layer=27 x=525 y=-5 storage="button/kira_button.png"]
[wait time=10]
;【SE】キラキラ
[playse storage=kira.ogg loop=false ]
[image layer=26 x=250 y=120 storage="button/frame_lesson_message.png"]
[wait time=10]
[if exp="f.sijyou_au == 1 && f.okeiko_month == 9 || f.okeiko_month == 10"]
	[ptext text="【磯野】　お嬢様、秋晴れの心地よい日となりましたね。" layer=27 size=18 x=270 y=150 color=darkslateblue bold=bold]
	[ptext text="『散策』に出られてはいかがでしょうか？" layer=27 size=18 x=345 y=188 color=darkslateblue bold=bold]
[elsif exp="f.okeiko_month == 2"]
	[ptext text="【磯野】　お嬢様、うららかな冬晴れの日となりましたね。" layer=27 size=18 x=270 y=150 color=darkslateblue bold=bold]
	[ptext text="『散策』に出られてはいかがでしょうか？" layer=27 size=18 x=345 y=188 color=darkslateblue bold=bold]
[elsif exp="f.okeiko_month == 3"]
	[ptext text="【磯野】　お嬢様、春らしい暖かな日となりましたね。" layer=27 size=18 x=270 y=150 color=darkslateblue bold=bold]
	[ptext text="『散策』に出られてはいかがでしょうか？" layer=27 size=18 x=345 y=188 color=darkslateblue bold=bold]
[else]
	[ptext text="【磯野】　お嬢様。今日は良いお天気ですね。" layer=27 size=18 x=270 y=150 color=darkslateblue bold=bold]
	[ptext text="『散策』に出られてはいかがでしょう？" layer=27 size=18 x=345 y=188 color=darkslateblue bold=bold]
[endif]
[お稽古ボタン表示]
[p]
[freeimage layer = 26]
[freeimage layer = 27]
;◆主人公メッセージ表示
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
[eval exp="f.event_advice=1"]
;◆お稽古パートイベント判定終了へ
@jump storage="okeiko.ks" target=*event_hantei_week_hajime_owari

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
[wait time=10]
[ptext text="【磯野】　お嬢様。右上の『文箱』は" layer=27 size=18 x=270 y=150 color=darkslateblue bold=bold]
[ptext text="ご覧になりましたか？" layer=27 size=18 x=345 y=188 color=darkslateblue bold=bold]
[お稽古ボタン表示]
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
[eval exp="f.event_advice=1"]
;◆お稽古パートイベント判定終了へ
@jump storage="okeiko.ks" target=*event_hantei_week_hajime_owari

;回想記録終了 
[endreplay] 


;◆イベント5月1週「返信の忠告」
*replay_common_5_1
[if exp="sf.KSKIP=='ON' && sf.trail_event_replay_common_5_1_b==undefined"]
	[skipstop]
[endif]
*replay_common_5_1_b
;共通イベント：プリロード処理
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500] 
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 
[wait time=50]
[clearfix]
[freeimage layer = 21]
[freeimage layer = 22]
;【背景】お稽古部屋
[bg wait=true storage="../fgimage/bg/bg_okeiko.jpg"]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

[イベントシーン構築ボタン無し版]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
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
[eval exp="f.event_advice=1"]
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
[wait time=10]
[ptext text="【磯野】　お嬢様。お稽古で『淑女度』を" layer=27 size=18 x=270 y=150 color=darkslateblue bold=bold]
[ptext text="高めることは、大切にござります。" layer=27 size=18 x=345 y=188 color=darkslateblue bold=bold]
[お稽古ボタン表示]
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

[eval exp="f.event_advice=1"]
;◆お稽古パートイベント判定終了へ
@jump storage="okeiko.ks" target=*event_hantei_week_hajime_owari

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
[wait time=10]
[image layer=27 x=525 y=-5 storage="button/kira_button.png"]
[wait time=10]
;【SE】キラキラ
[playse storage=kira.ogg loop=false ]
[ptext text="【磯野】　お嬢様。今日は良いお天気ですね。" layer=27 size=18 x=270 y=150 color=darkslateblue bold=bold]
[ptext text="『散策』に出られてはいかがでしょう？" layer=27 size=18 x=345 y=188 color=darkslateblue bold=bold]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
[お稽古ボタン表示]
[p]
[freeimage layer = 26]
[freeimage layer = 27]
;◆主人公メッセージ表示
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
[eval exp="f.event_advice=1"]
;◆お稽古パートイベント判定終了へ
@jump storage="okeiko.ks" target=*event_hantei_week_hajime_owari

;回想記録終了 
[endreplay] 

;◆イベント5月4週「返信の忠告」
*replay_common_5_4
[if exp="sf.KSKIP=='ON' && sf.trail_event_replay_common_5_4_b==undefined"]
	[skipstop]
[endif]
*replay_common_5_4_b
;共通イベント：プリロード処理
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500] 
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 
[wait time=50]
;【背景】お稽古部屋
[bg wait=true storage="../fgimage/bg/bg_okeiko.jpg"]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
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
[eval exp="f.event_advice=1"]
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
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500] 
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 
[wait time=50]
;[stopbgm]
;【BGM】雪解水（哀しげな曲
;[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
;【背景】お稽古部屋
[bg wait=true storage="../fgimage/bg/bg_okeiko.jpg"]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
[whosay name="磯野" color="dimgray"]
「お嬢様。お手紙のお返事はこれ以上お待ちできません……。[r]
[if exp="f.para_shujinkou_shukujodo >= 18"]
@jump target=*common_5_4_katuraginomiya
[endif]
[主人公目パチ1回]
[wait time=10]
[sp]このたびは残念ですが、どなた様ともご破談になります」[p]

「お返事を書かれなかったのは、何かお考えあってのことで[r]
[sp]ございますか？」[p]

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
「……お父様や皆様には悪いことをしてしまったわ」[p]

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
[bg wait=true storage="toumei.gif" time=500]
[wait time=10]
[bg wait=true storage="../fgimage/bg/bg_prologue.jpg" time=1000]
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

;◆イベント5月4週葛城宮専念
*common_5_4_katuraginomiya
[sp]このたびは残念ですが、黒田様、四条様、財前様のお三方とは[r]
[sp]ご破談になります」[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ごめんなさい磯野。　言いにくいことを言わせてしまって。[r]
[sp]お三方には申し訳ないことをしてしまいました」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[whosay name="磯野" color="dimgray"]
「お返事を書かれなかったのは、何かお考えあってのことでござい[r]
[sp]ますか？」[p]

[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
「淑女として私は未熟すぎます。お返事を書こうとしても、そのことが[r]
[sp]気がかりで手をつけられませんでした」[p]

「それでお稽古に集中していたのです」[p]

[whosay name="磯野" color="dimgray"]
「そうだったのですか。[r]
[sp]では、お三方とはご破談になりますが、旦那様より御伝言がございます」[p]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]

「『お稽古を続けるように。己を磨けば、新たな道が開けることもある』[r]
[sp]　とのお言葉でございます」[p]

[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父様が、そう仰せでしたか……」[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[主人公目を開く]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「ありがとう、磯野」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
「お父様とお話してみるわ。そしてご破談となるお三方にもお手紙を[r][sp]書きます」[p]

（お返事を書けなかったお詫びと別れについて、心を込めて書きましょう。[r]
[sp]もし、どこかでお会いすることがあっても、笑顔でお話できるように）[p]
[eval exp="f.katuraginomiya_only = 1"]
@jump target=*event_owari

;◆イベント共通ルート葛城宮のみ進行時「badED」
*replay_common_katuraginomiya_only_badED
*common_katuraginomiya_only_badED
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500] 
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 
[wait time=50]
;【背景】お稽古部屋
[bg wait=true storage="../fgimage/bg/bg_okeiko.jpg"]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]

[whosay name="磯野" color="dimgray"]
「お嬢様。……このたび、葛城宮親王殿下よりご連絡がございました。[r]
[sp]残念ながら、これ以上の文通は難しいとのことでございます」
[p]

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
「そうですね。殿下のお眼鏡にかなうためには、相応の淑女らしさが[r]
[sp]大切かと思います。 次に高貴な方との機会がございましたら、[r]
[sp]今以上にお稽古をされてはいかがでしょうか」[p]

[主人公目パチ1回]
[wait time=10]

「また、お手紙はいただくばかりではなく、もっとご自分からも[r]
[sp]頻繁に出されると良いのではないでしょうか」[p]



[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、磯野」[p]

#
[主人公退場]
[wait time=10]
;機能ボタン消去
[clearfix]
[wait time=10]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
[bg wait=true storage="toumei.gif" time=500]
[wait time=10]
[bg wait=true storage="../fgimage/bg/bg_prologue.jpg" time=1000]
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
[eval exp="sf.ED_katuraginomiya_only_gameover=1"]
@jump target=*event_ED



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
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500] 
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 
[wait time=50]
;【背景】お稽古部屋
[bg wait=true storage="../fgimage/bg/bg_okeiko.jpg"]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
[whosay name="磯野" color="dimgray"]
「お嬢様。……このたび、最後までお手紙を下さっていた[r]
[sp]お相手様よりご連絡がございました。[r]
[sp]残念ながら、これ以上の文通は難しいとのことでございます」
[p]

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
[bg wait=true storage="toumei.gif" time=500]
[wait time=10]
[bg wait=true storage="../fgimage/bg/bg_prologue.jpg" time=1000]
[wait time=10]
;【背景】黒背景（完全な黒か、和紙風の黒っぽい背景か考え中。スクリプト組み時に決めます）全画面テキスト、褪せた灰青色文字（場面変化と緊張の色的な）色は仮でスクリプト組む際に調整予定
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
[fadeoutbgm time=3000]

[if exp="f.event_katuraginomiya[3] == 1 && f.katuraginomiya_only != 1"]
;お茶事をみたフラグがある オンリーではない

さらに、数日後殿下からもお別れの手紙が届いた。[r]

その報告を聞いて、[p]
[endif]

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

*back_test
[ct]
[clearfix]
[clearstack]
;[skipstop]
[stopse]
@layopt layer=message0 page=fore visible = false
@layopt layer=message1 page=fore visible = false

;◆全レイヤクリア
[freeimage layer = 0]
[freeimage layer = 1]
[freeimage layer = 2]
[freeimage layer = 3]
[freeimage layer = 4]
[freeimage layer = 5]
[freeimage layer = 6]
[freeimage layer = 7]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 13]
[freeimage layer = 14]
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
[freeimage layer = 21]
[freeimage layer = 22]
[freeimage layer = 23]
[freeimage layer = 24]
[freeimage layer = 25]
[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer = 28]
[freeimage layer = 29]
[chara_new name="bg" storage="bg/title.jpg"]
[chara_show left=1 top=1 layer=1 name="bg" time=0]
@jump storage="test.ks"
[s]

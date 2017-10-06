﻿;=============================================
;◆黒田イベント５章【顔合せ】判定 黒田ルートかつ9月3週になった時点で1度だけ発生
;=============================================
*replay_kuroda_9_3
;[call target=*start storage="tyrano.ks"]
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500] 
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 
[wait time=50]
;==========================================================================================
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_9_3_scene1==undefined"]
	[skipstop]
[endif]
;==========================================================================================
*scene1
[freeimage layer = 24]
[stopbgm]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸_庭
[背景_庭]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[プリロード画面消去]
;セーブ等ボタン配置
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
;==========================================================================================
*scene1_1
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
#
――ついに、顔合せ当日となった。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
;------------------------------------------------------------------
[if exp="tf.test_gamen==true"]
テストページから開始しています。黒田出会い前までjumpしますか？[r]
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
@jump target=*scene4
[s]
*jump_no
[current layer="message0"]
「いいえ」[r]
最初からはじめます。[p]
[cm]
[endif]
;------------------------------------------------------------------

;【立ち絵】主人公：横目頬染め、片手を上げている
[主人公横目パチ1回]
[wait time=10]
[主人公ポーズ指]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ねぇばあや、髪飾りが曲がっていないかしら？」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="ばあや" color="#916565"]
「大丈夫でございますよ、お嬢様」[p]

;【立ち絵】主人公：目をキョロキョロ、手は見えない
[主人公ポーズ通常]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=200]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ねぇばあや、帯はこれで良いかしら？」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[主人公横目パチ1回]
[wait time=10]
[whosay name="ばあや" color="#916565"]
「大丈夫でございますよ、お嬢様」[p]

[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=200]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi1.png" time=0]
[wait time=10]
;【立ち絵】主人公：伏目
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ねぇばあや……」[p]

[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="ばあや" color="#916565"]
「お嬢様。全て、大丈夫でございますよ。[r]
[sp]お気持を楽になさってください」
[autosave]
[p]
;【立ち絵】主人公：目閉じ頬染め、両手を頬に
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[chara_mod name="girl_base" storage="girl/S/base_ryoute.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="girl/S/ryoute.png" time=0]
[wait time=10]
;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いやだわ、私ったら……」[p]
[wait time=1000]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_9_3_scene2==undefined"]
	[skipstop]
[endif]
*scene2

[whosay name="磯野" color="dimgray"]
「お嬢様、ご準備はよろしいですか？」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]や、入って良いかね？」[p]

;【立ち絵】主人公：あせり頬染め
[主人公ポーズ通常]
[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あっ、お父様たち……[r]
[sp]いま、参ります」[p]

[stopse]
;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]
;【背景】庭を明るめ加工（ふすまが開いて廊下の光が入る演出的な）
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa_akarui.jpg" time=500]
[wait time=10]
[preload storage="data/fgimage/kuroda/base_haori.png"]
[preload storage="data/fgimage/kuroda/base_haori_hohosome.png"]
[wait time=200]
;【立ち絵】主人公：通常頬染め
[主人公通常]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「ほう、[名前]。なかなかの淑女に見えるぞ」
[autosave]
[p]

;【立ち絵】主人公：目閉じ頬染め
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お恥ずかしゅうございます」[p]

[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[主人公閉目パチ1回]
[wait time=10]
[whosay name="磯野" color="dimgray"]
「では、参りましょうか」[p]

;【立ち絵】主人公：下がり眉、ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……はい」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_9_3_scene3==undefined"]
	[skipstop]
[endif]
*scene3

;【背景】暗転黒背景、会話ウィンドウは残る
[bg wait=true method='crossfade' storage="toumei.gif" time=500]
[wait time=10]
;【立ち絵】主人公：下がり眉伏目（不安）
[主人公困り]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（いよいよ黒田様に、お目にかかるのだわ。[r]
[sp]お父様や磯野は励ましてくれたけれど[r]
[sp]何か粗相をしてしまわないか、とても不安だわ……）[p]

;【立ち絵】消去
[主人公退場]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_9_3_scene4==undefined"]
	[skipstop]
[endif]
*scene4

;【テキスト枠】消去
#
[freeimage layer = 26]
[freeimage layer = 27]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif"]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]

;【背景】黒背景（完全な黒か、和紙風の黒っぽい背景か考え中。スクリプト組み時に決めます）全画面テキスト、褪せた灰青色文字（場面変化と緊張の色的な）色は仮でスクリプト組む際に調整予定
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_prologue_dark.jpg" time=500]
[wait time=10]
;黒田画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
[chara_new name="kuroda_base" storage="toumei.gif"]
[chara_show left=250 top=60 layer=8 name="kuroda_base" time=0]
[wait time=10]
[chara_new name="kuroda_kuti" storage="toumei.gif"]
[chara_show left=250 top=60 layer=9 name="kuroda_kuti" time=0]
[wait time=10]
[chara_new name="kuroda_me" storage="toumei.gif"]
[chara_show left=250 top=60 layer=10 name="kuroda_me" time=0]
[wait time=10]
[chara_new name="kuroda_mayu" storage="toumei.gif"]
[chara_show left=250 top=60 layer=11 name="kuroda_mayu" time=0]
[wait time=10]
[chara_new name="kuroda_emo" storage="toumei.gif"]
[chara_show left=250 top=60 layer=12 name="kuroda_emo" time=0]
[wait time=10]

[call target=*start storage="macro_tati_kuroda.ks"]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]

;【SE】足音3人石畳（フェードインアウト）
[playse storage=asioto_isidatami_3nin.ogg loop=false ]
[font color=lightcyan size=27]

料亭の門をくぐり、石畳を歩むうちに[r]
一歩一歩、緊張が高まってゆく。[l][r]
[r]
周囲の景色はまるで目に入らない。[r]
私はひたすら父の背中を見つめて、足を進めた。
[autosave]
[p]
[fadeoutse]
;テキスト褪せたベージュ色文字（レトロな暖か味）or 明るめ抹茶色文字（料亭イメージ）
[font color=palegoldenrod size=27]
【料亭の主人】[r]
「――これは[名字]様、いらっしゃいませ。[r]
[sp]黒田様はこちらのお座敷で、お待ちでございますよ」[p]

;【SE】足音複数廊下
[playse storage=asioto_rouka_3nin.ogg loop=false ]
;テキスト、褪せた灰青色
[font color=lightcyan size=27]
歩むうちに襖が目に映る。[r]
[r]
（この奥に、黒田様がいらっしゃるのね）
[r]
胸がドキドキと高鳴った――。[p]
;================================================================
[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_9_3_scene5==undefined"]
	[skipstop]
[endif]
;================================================================
*scene5
[resetfont]
[fadeoutse]
;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]
[layopt layer=29 visible=true]
[image name="jumbi" layer=29 storage="bg/bg_ryoutei.jpg" left=1 time=500]
;【背景】料亭風の屋内（昼）
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_ryoutei.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　usagi_s　フリー素材屋Hoshino　http://www.s-hoshino.com/'"]
;================================================================
;【立ち絵】黒田：通常
[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
;[黒田通常]

[イベントシーン構築ボタン無し版]
;セーブ等ボタン配置
[freeimage layer=29 time=1000]
[layopt layer=29 visible=true]

[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]

[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_futuu_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
;【立ち絵】主人公：伏目
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[iscript]
$('.junbi_girl').remove();
[endscript]

[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
#
私は恥ずかしさのあまり、父の背に隠れながら、チラリと黒田様を見た。[p]

[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（この方が、黒田様……）[p]
;【立ち絵】主人公：通常頬染め
[主人公通常]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]

（繊細なお顔立ちに、純粋な瞳をされた方……。[r]
[sp]お手紙に書かれた自然の数々は、この瞳に映ってきたのね）[p]

[黒田目パチ1回]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「[名字]様、お久しぶりです」
[autosave]
[p]

;------------------------------------------------------------------
[if exp="tf.test_gamen==true"]
テストページから開始しています。イベント終わりまでjumpしますか？[r]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]
[link target=*jump_ok2]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no2]い　い　え[endlink][r]
[resetfont]
[s]
*jump_ok2
[current layer="message0"]
[resetfont]
「はい」[r]
jumpします。[p]
[cm]
@jump target=*scene_end
[s]
*jump_no2
[current layer="message0"]
「いいえ」[r]
最初からはじめます。[p]
[cm]
[endif]
;------------------------------------------------------------------


#
耳に優しく響く声。[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（想像していたよりも、温かいお声だわ。[r]
[sp]お姿を見てお声を聞けるだけでも、嬉しい……）[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「お久しぶりですなぁ。[r]
[sp]ご母堂様のお加減は、いかがですかな」[p]

;【立ち絵】黒田：伏目
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「お気遣いをありがとうございます。落ち着いてはおりますが[r]
[sp]外出がままならず、欠席となり申し訳ありません」[p]
[黒田閉目パチ1回]
[wait time=10]
「母が[名字]様によろしく、と申しておりました」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_9_3_scene6==undefined"]
	[skipstop]
[endif]
*scene6

[chara_mod name="kuroda_mayu" storage="kuroda/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]

[chara_mod name="kuroda_mayu" storage="kuroda/mayu_odoroki.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_ake.png" time=0]
[wait time=10]
#
黒田様が頭を下げられた拍子に、ふと目が合った。[p]

;【立ち絵】黒田：視線そらし（頬染め）
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="kuroda_base" storage="kuroda/base_haori_hohosome.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_yoko.png" time=0]
[wait time=10]
;【立ち絵】主人公：視線そらし（頬染め）
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[主人公横目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（思わず目を逸らしてしまったわ。[r]
[sp]でも、黒田様も目を逸らされたような……？）[p]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]

;【立ち絵】黒田：ハッとした顔↓wait数値は実装時に調節予定。目立たない又はwaitがもたつく場合は省略
[黒田驚]
[wait time=50]
;【立ち絵】黒田：伏目（頬染め）
[chara_mod name="kuroda_me" storage="kuroda/me_futuu.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「黒田です……」[p]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_yoko.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]、ご挨拶なさい」[p]

;【立ち絵】主人公：伏目頬染め
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「[名前]でございます……」[p]
（緊張でのどが詰まってしまったみたい。声を出すのも一苦労だわ）[p]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=0]
[wait time=10]
#
料理が運ばれてくるなか、私は緊張で震える手をそっと[ruby text="たもと"]袂に隠していた。
[autosave]
[p]

;【立ち絵】主人公：伏目目パチ
[主人公伏目パチ1回]
[wait time=10]
;【立ち絵】黒田：伏目視線そらし
[chara_mod name="kuroda_me" storage="kuroda/me_yokofusi.png" time=0]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「さて、乾杯と参ろうか」[p]

;【SE】杯が机に当たる音（カチャ）
[playse storage=tya_katya.ogg loop=false ]
#
黒田様の手が震えていらっしゃる。[r]
――杯が机に当たってしまった。[p]

[主人公驚]
;【立ち絵】黒田：あわてる（頬染め）
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_odoroki.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_ake.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ooake.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「……！」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
「失礼いたしました！」[p]
[chara_mod name="kuroda_emo" storage="kuroda/emo_ase.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ugugu.png" time=0]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_9_3_scene7==undefined"]
	[skipstop]
[endif]
*scene7

;【立ち絵】主人公：伏目
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（同じように、緊張されているのね）[p]
#
親近感が湧く。[r]
私の手も、震えていたから……[p]

[chara_mod name="kuroda_emo" storage="toumei.gif" time=0]
[wait time=10]
[黒田通常]
[wait time=10]
[主人公通常]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「お気になさらずに[r]
[sp]……では、二人の前途を祝って、乾杯！」[p]

;【SE】乾杯の音(日本酒の杯なので袂を持ち上げ着物の擦れる的な音)衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「将貴君。今日は忙しいなか、ありがとう」
[autosave]
[p]

[黒田目パチ1回]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「いえいえ。[名字]様こそ、お忙しいなか[r]
[sp]このような席を設けていただきまして、誠にありがとうございます」[p]

[主人公目パチ1回]
[wait time=10]
;【立ち絵】黒田：通常（頬染め）
[chara_mod name="kuroda_base" storage="kuroda/base_haori_hohosome.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
「先ほどは、失礼いたしました。[r]
[sp][名前]さんにお会いして、ついあがってしまいまして」[p]

;【立ち絵】黒田：通常
[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
[黒田目パチ1回]
[wait time=10]
;【立ち絵】主人公：目閉じ
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（『[名前]さん……』[r]
[sp]そう呼ぶ声を聞くことができるなんて、夢みたい）[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「無理もないなぁ。[名前]はどうなんだい？」[p]

;【立ち絵】主人公：ハッとした顔↓wait数値は実装時に調節予定。目立たない又はwaitがもたつく場合は省略
[主人公閉目パチ1回]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=100]
;【立ち絵】主人公：伏目頬染め
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私も、緊張してしまいまして……」[p]

[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「二人とも、緊張していたのだなぁ。初顔合せは、そういうものさ。[r]
[sp]ゆっくりすればいい」[p]

;【立ち絵】黒田：目閉じ
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「恐れ入ります」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_9_3_scene8==undefined"]
	[skipstop]
[endif]
*scene8

[黒田閉目パチ1回]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
#
互いに緊張しているとわかり、少し和らいだ空気になったものの[r]
なかなか会話は進まない。[p]

;【立ち絵】主人公：不安
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（黒田様……お手紙では言葉豊かに語っておられたのに……）[p]

;【SE】コサギ羽ばたき
[playse storage=tori_habataki_kosagi.ogg loop=false ]
#
私の不安は庭からの羽音にかき消された。[r]
白い羽根が目に映る――
[autosave]
[p]

[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
;【立ち絵】黒田：横目
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_odoroki.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_yoko.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「コサギですね……」[p]

[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
;【立ち絵】主人公：疑問 又は 通常
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まあ、綺麗……[r]
[sp]しらさぎ、ではなくコサギなのですか？」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage.png" time=0]
[wait time=10]
[黒田目パチ1回]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「しらさぎの種類の一つです。[r]
[sp]水路をパシャパシャ歩いていますね……あの足指を見てみてください」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=50]
[chara_mod name="kuroda_me" storage="kuroda/me_yoko.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
「黒い脚に黄色い足指が、コサギの特徴です。[r]
[sp]顔立ちもしらさぎのなかでは可愛らしいですね……鳴き声は、渋いのですが」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]

;【SE】コサギ（グアーグアー）
[playse storage=tori_kosagi.ogg loop=false ]
#
「グァアー……グァアー……」[r]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_odoroki.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_ake.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
しわがれた鳴き声が、庭に響く。[p]

;【立ち絵】主人公：驚
[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あら！　可愛らしい姿から、あんな声が」[p]

;【立ち絵】黒田：苦笑
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_niko.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_warau.png" time=0]
[wait time=10]
「似合わないでしょう！　私も最初に聞いた時は、びっくりしました」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_9_3_scene9==undefined"]
	[skipstop]
[endif]
*scene9

;【立ち絵】主人公：笑顔
[主人公笑顔]
[wait time=10]
#
楽しそうな黒田様につられて、思わず笑顔になる。
[autosave]
[p]

[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（コサギのお話をされるときは瞳が輝いていらっしゃるわ。[r]
[sp]お手紙の印象どおり、本当に生き物がお好きなのね……）[p] 
（笑顔が見られて、良かった）[p]

;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
;【立ち絵】黒田：ハッとした顔
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_odoroki.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_yoko.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「おや、吉祥草。[r]
[sp]少し陰になったところで、楚々と咲いていますね」[p]

;【立ち絵】主人公：興味
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「清らかな感じのお花ですね」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_9_3_scene10==undefined"]
	[skipstop]
[endif]
*scene10
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;【立ち絵】黒田：ほほえみ
[黒田ほほえみ]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「この花が咲くと、吉事があると言いますよ」
[autosave]
[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「素敵ですね。　あやかりたいです」[p]

;【立ち絵】黒田：笑顔
[黒田笑顔]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「ええ。
;【立ち絵】黒田：伏目又は目閉じ
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
本当に……」[p]

[黒田閉目パチ1回]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi.png" time=0]
[wait time=10]
;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（お手紙を書かれるときも[r]
[sp]今のようなご様子で筆をとっていらっしゃったのかしら……[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（これからは、お手紙を読むのもお話をするのも[r]
[sp]ますます楽しみになりそうだわ）[p]

;【背景】フェードアウト→黒っぽい背景に
[chara_mod name="bg" storage="toumei.gif" time=500]
;【背景】フェードイン：料亭風の屋内（夕）
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_ryouotei_yuu.jpg" time=500]
[wait time=10]

;【立ち絵】黒田：通常
[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=0]
[wait time=10]
[黒田通常]
[wait time=10]
[主人公通常]
[wait time=10]
;==========================================================================================
[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_9_3_scene11==undefined"]
	[skipstop]
[endif]
;==========================================================================================
*scene11

#
楽しい時間はあっという間に過ぎてしまった――。
[autosave]
[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「[名前]さん」[p]

[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
;【立ち絵】主人公：ハッとした顔
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]

;【立ち絵】黒田：ほほえみ
[黒田ほほえみ]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「今日はお話できて、とても楽しかったです」[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「こちらこそ、楽しゅうございました」[p]

;【立ち絵】黒田：通常
[黒田通常]
[wait time=10]
;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「[名字]様、本日はありがとうございました。[r]
[sp]また、お目にかかる機会をいただけると嬉しいです」[p]

[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「こちらこそ、今日はありがとう。[r]
[sp]今後はいつでも[名前]と会ってもらって構わないよ。[r]
[sp]どんどん連れ出してやってほしい。[名前]も喜ぶだろう」[p]

;【立ち絵】主人公：ハッとした顔(スクリプト時に、この表情がよく出て来すぎと感じるなら、通常目パチなどに変更予定)
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（お父様が、お会いすることを許してくださったわ）[p]
[fadeoutbgm time=3000]
[wait time=10]

;【立ち絵】黒田：通常
[黒田目パチ1回]
[whosay name="黒田 将貴" color="#7a65b2"]
「そうおっしゃっていただけると、嬉しいです。[r]
;【立ち絵】黒田：ほほえみ
[黒田ほほえみ]
[wait time=10]
[sp]では、またお会いしましょう」[p]
[stopbgm]

;見合い編終了
[黒田退場]
[wait time=10]

*scene_end
[eval exp="sf.event_kuroda_9_3 = 1"]
[if exp="tf.test_kuroda == true || f.event_replay == 'kuroda'"]
[イベントシーン終了]
[endif]

[if exp="tf.test_kuroda == true"]
@jump storage="01_jsYiJcqRkk_test.ks"
[endif]

;◆「休憩中」画像消去
[freeimage layer = 26]
;回想記録終了 
[endreplay] 

@jump storage="event.ks" target=*event_owari



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

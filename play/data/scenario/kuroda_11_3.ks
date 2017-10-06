;=============================================
;◆黒田イベント【黒田多忙と聞く】黒田ルートかつ11月3週になった時点で1度だけ発生
;=============================================
*replay_kuroda_11_3
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

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_3_scene1==undefined"]
	[skipstop]
[endif]
;==========================================================================================
*scene1
[stopbgm]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸_庭
[背景_庭]
[wait time=10]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
;セーブ等ボタン配置
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
;==========================================================================================
*scene1_1

[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……磯野」
[autosave]
[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[whosay name="磯野" color="dimgray"]
「はい。お嬢様」[p]

[主人公横目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……ねぇ、今日はその」[p]

[whosay name="磯野" color="dimgray"]
「何でございましょう」[p]

;【立ち絵】主人公：目閉じ（頬染め）
[主人公ポーズ片手]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……コホン」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_3_scene2==undefined"]
	[skipstop]
[endif]
*scene2

[主人公閉目パチ1回]
[wait time=10]
[主人公ポーズ指]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「お手紙は、届いていないかしら」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[whosay name="磯野" color="dimgray"]
「今日は届いておりませんね」
[autosave]
[p]

[主人公ポーズ通常]
[wait time=10]
;【立ち絵】主人公：目閉じ
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
;【立ち絵】主人公：ほほえみ（眉下げ）
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「なら良いの。[r]
[sp]ありがとう、磯野。下がってちょうだい」[p]

[whosay name="磯野" color="dimgray"]
「では、失礼いたします」[p]
;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]
[wait time=500]
[stopse]
;【SE】落ち着いた足音（フェードアウト）
[playse storage=isono_out.ogg loop=false ]

[fadeoutbgm time=3000]
;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ふぅ……」[p]
（先週お会いした為か、特にお手紙が待ち遠しいわ）[p]
;【立ち絵】主人公：通常
[主人公閉目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
（気分を変えに、町へ出てみましょう）
[autosave]
[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_3_scene3==undefined"]
	[skipstop]
[endif]
*scene3

[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
;【背景】町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=500]
[wait time=10]
[主人公目パチ1回]
[wait time=10]

#
――町に出た。[p]

行きかう雑踏の中から、ひょいとこちらに顔を出す人がいる。[p]

[whosay name="田中　岩男" color="#775545"]
「あれ、[名字]さん。こんにちは」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_3_scene4==undefined"]
	[skipstop]
[endif]
*scene4

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ごきげんよう、田中様。[r]
[sp]町にもいらっしゃるのですね」
[autosave]
[p]

[主人公閉目パチ1回]
[wait time=10]
[whosay name="田中　岩男" color="#775545"]
「もちろん！　仙人じゃないんですから。[r]
[sp]今日は山行きを済ませて、研究室の買出しなんですよ」[p]
「研究が山場の奴が多くて、黒田も泊まりで頑張っていますよ」[p]

;【立ち絵】主人公：驚
[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まあ、黒田様も」[p]
[主人公通常]
[wait time=10]

[whosay name="田中　岩男" color="#775545"]
「ええ。もうすぐ成果が出そうだと張り切っています」[p]

;【立ち絵】主人公：通常
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「それは大切な時期ですね」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_3_scene5==undefined"]
	[skipstop]
[endif]
*scene5

[whosay name="田中　岩男" color="#775545"]
「ま。張り切ってる理由はもう一つあるみたいですがね」
[autosave]
[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「もう一つ……とは、何でしょう？」[p]

[whosay name="田中　岩男" color="#775545"]
「……次の週末。誰かさんと会う、時間を作りたいってね！」[p]

;【立ち絵】主人公：驚（頬染め）
[主人公ポーズ片手]
[wait time=10]
[主人公驚]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……！！」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="田中　岩男" color="#775545"]
「会ったら激励してやってくださいな」[p]

[主人公ポーズ通常]
[wait time=10]
;【立ち絵】主人公：目閉じ（頬染め）
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……はい」[p]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_3_scene6==undefined"]
	[skipstop]
[endif]
*scene6

[whosay name="田中　岩男" color="#775545"]
「あ、そろそろ行かなくちゃ」
[autosave]
[p]
;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「黒田様によろしくお伝えくださいませ」[p]
[主人公目パチ1回]
[wait time=10]

[whosay name="田中　岩男" color="#775545"]
「ええ。俺が会ったと聞いたら悔しがると思います！　では、また」[p]

[fadeoutbgm time=3000]
;【立ち絵】主人公：通常（頬染め）
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ごきげんよう、田中様」[p]
[fadeoutbgm time=3000]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
（悔しがる黒田様……まだ、そんなお姿は見たことがない）[p]
;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=50]
（いつか見せてくださるかしら。もう少し、打ち解けたいわ）[p]
[stopbgm]
[eval exp="sf.event_kuroda_11_3 = 1"]
;町にお出かけ編、終了（11月第3週）

[if exp="tf.test_kuroda == true || f.event_replay == 'kuroda'"]
[イベントシーン終了]
[endif]
;シナリオのみのテスト中はもどる
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

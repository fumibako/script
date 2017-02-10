;=============================================
;◆黒田イベント【黒田多忙と聞く】黒田ルートかつ11月3週になった時点で1度だけ発生
;=============================================
*replay_kuroda_11_3
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_3_scene1==undefined"]
	[skipstop]
[endif]
*scene1

[stopbgm]
;【背景】主人公邸_庭
[背景_庭]
[wait time=10]
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
;[locate x=900 y=390]
;[button name="message_close" graphic="button_message_close.png" role=message ]
[eval exp="sf.FButton='ON'"]

;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=270 y=407]
[chara_config ptext="chara_name_area"]

[主人公ポーズ通常]
[wait time=10]
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
;【BGM】古都に咲く花（プロローグ等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]

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

;【BGM】筍の訪れ(町
[fadeinbgm storage=machi_takenoko.ogg loop=true click=true time=3000]
;【背景】町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=500]
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
「まぁ、黒田様も」[p]
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

;町にお出かけ編、終了（11月第3週）
;◆「休憩中」画像消去
[freeimage layer = 26]

@jump storage="event.ks" target=*event_owari

;回想記録終了 
[endreplay] 
;=============================================
;◆黒田イベント【黒田実験失敗と聞く→手紙を書こうと決意】黒田ルートかつ12月2週になった時点で1度だけ発生
;=============================================
*replay_kuroda_12_2
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_12_2_scene1==undefined"]
	[skipstop]
[endif]
*scene1
[背景_庭]
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="message_bg" storage="message_bg/frame_red.png"]
;[chara_show left=1 top=391 layer=10 name="message_bg"]
[stopbgm]

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
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;町で田中に会う編 イベント発生:12月第2週
[stopbgm]
;【テキスト枠】会話パート用 下部横長
「……黒田様は、どうされているかしら」
[autosave]
[p]
;【BGM】冬支度（悲しげ・筝曲）
[playbgm storage="kanasige_koto_fuyujitaku.ogg" loop=true]
#
――あの日以来、手紙は無い。[p]

[主人公閉目パチ1回]
[wait time=10]
「どうも気分がふさいで、いけないわ。[r]
[sp]こんな日は、町に出てみましょう」[p]

;【背景】町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=1000]

#
――町に出た。[p]
[主人公目パチ1回]
[wait time=10]

見覚えのある人影が、こちらを向く。[p]
[主人公通常]
[wait time=10]
[whosay name="田中　岩男" color="#775545"]
「おや、[名字]さんじゃないですか。[r]
[sp]おひさしぶりですなぁ」[p]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
#
心なしか、田中様の顔色がすぐれない。[p]

;【立ち絵】主人公：通常
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あら、田中様ごきげんよう。[r]
[sp]……今日も研究室の買出しですか？」[p]

;【立ち絵】主人公：伏目
[主人公伏目]
[wait time=10]
（本当は、もっと聞きたいことがあるけれど[r]
[sp]……言葉が上手く出ないわ）[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[fadeoutbgm time=3000]
[whosay name="田中　岩男" color="#775545"]
「いやぁ、そうなんですよ。[r]
[sp]……黒田もあんなことになっちまってねぇ」[p]
「俺も旨いもの買うくらいしか励ましようがなくってね」[p]

;【立ち絵】主人公：驚
[主人公ポーズ片手]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「えっ！」[p]
[stopbgm]
;【BGM】一閃（緊迫シーン）
[playbgm storage="kinpaku_issen.ogg" loop=true click=true]
;【立ち絵】主人公：不安
「……『あんなこと』って、どうされたのでしょう？」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[whosay name="田中　岩男" color="#775545"]
「いけね。つい口が滑っちゃった」[p]
;【背景】ゆっくり暗転
[chara_mod name="bg" storage="toumei.gif" time=2000]
「貴女には言いづらいんですが、黒田は研究のここぞというときに[r]
[sp]……実験に失敗しちゃったんですよ」[p]
「よっぽど疲れていたみたいでねぇ」
[autosave]
[p]

;【立ち絵】主人公：不安
[主人公困り]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まぁ……！」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[whosay name="田中　岩男" color="#775545"]
「それで今まで集めた貴重な試料がほとんどおじゃんになってね」[p]

「……残ったもので挽回しようと泊まり込みで頑張っているんですが[r]
[sp]失敗続きで行き詰っているみたいでね」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_12_2_scene2==undefined"]
	[skipstop]
[endif]
*scene2

;【立ち絵】主人公：伏目
[主人公伏目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうだったのですか……。[r]
[sp]教えてくださって、ありがとうございます」[p]

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=50]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
「…………」[p]
（私に何かできるだろうか……）[p]

[whosay name="田中　岩男" color="#775545"]
「そんなわけで、ここのところ手紙もご無沙汰しているでしょうが[r]
[sp]勘弁してあげてくださいね」[p]

[主人公閉目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、そんな……」[p]

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=50]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=50]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
……[p]
……！[p]
[fadeoutbgm time=3000]
『手紙』[p]

黒田様のお手紙で、これまで何度も前向きな気持ちになった。[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[主人公閉目パチ1回]
[wait time=10]
（想いをかたちにする……[r]
[sp]『手紙』は強い力を持っているのかもしれない）
[autosave]
[p]
;【背景】暗転終了、町並み背景フェードイン
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=1000]
[stopbgm]
;【BGM】絆（想いを込める感じ）
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true click=true]

;【立ち絵】主人公：決意
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
「田中様。[r]
[sp]黒田様は、手紙を読むお時間はありそうでしょうか」[p]

[主人公目パチ1回]
[wait time=10]
[whosay name="田中　岩男" color="#775545"]
「……！[r]
[sp]ええ。貴女からのお手紙でしたら、もちろん！」[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……そうですか！」[p]

;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
「では、来週までに書いて参りますので[r]
[sp]手紙をお渡しいただけますか」[p]

[主人公目パチ1回]
[wait time=10]
[whosay name="田中　岩男" color="#775545"]
「お任せを。[r]
[sp]折を見て、渡しますよ」[p]

;町で田中に会う編終了
;◆「休憩中」画像消去
[freeimage layer = 26]

@jump storage="event.ks" target=*event_owari

;回想記録終了 
[endreplay] 
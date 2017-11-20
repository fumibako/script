;=============================================
;◆黒田イベント【黒田実験失敗と聞く→手紙を書こうと決意】黒田ルートかつ12月2週になった時点で1度だけ発生
;=============================================
*start
*replay_kuroda_12_2
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

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_12_2_scene1==undefined"]
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
[wait time=10]
[プリロード画面消去]
;セーブ等ボタン配置
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
;==========================================================================================
*scene1_1

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
[if exp="sf.BGM=='ON'"]
;【BGM】冬支度
[playbgm storage="kanasige_koto_fuyujitaku.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_koto_fuyujitaku.ogg'"]
[endif]
#
――あの日以来、手紙は無い。[p]

[主人公閉目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どうも気分がふさいで、いけないわ。[r]
[sp]こんな日は、町に出てみましょう」[p]

;【背景】町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=1000]
[wait time=10]

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
[if exp="sf.BGM=='ON'"]
;【BGM】一閃（緊迫シーンに
[playbgm storage="kinpaku_issen.ogg" loop=true]
[eval exp="f.bgm_storage='kinpaku_issen.ogg'"]
[endif]
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
[bg wait=true method='crossfade' storage="toumei.gif" time=2000]
[wait time=10]
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
「まあ……！」[p]
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
[fadeoutbgm time=3000]

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
[stopbgm]

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=50]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=50]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
#
……[p]
……！[p]
『手紙』[p]

黒田様のお手紙で、これまで何度も前向きな気持ちになった。[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[主人公閉目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（想いをかたちにする……[r]
[sp]『手紙』は強い力を持っているのかもしれない）
[autosave]
[p]
;【背景】暗転終了、町並み背景フェードイン
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=1000]
[wait time=10]
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

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
[fadeoutbgm time=3000]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name="田中　岩男" color="#775545"]
「お任せを。[r]
[sp]折を見て、渡しますよ」[p]
[stopbgm]

*scene_end
;町で田中に会う編終了
[eval exp="sf.event_kuroda_12_2 = 1"]

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

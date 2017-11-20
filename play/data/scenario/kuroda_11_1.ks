;=============================================
;◆黒田イベント【友人に会う】黒田ルートかつ11月1週になった時点で1度だけ発生
;=============================================
*start
*replay_kuroda_11_1
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

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_1_scene1==undefined"]
	[skipstop]
[endif]
;==========================================================================================
*scene1
[stopbgm]
[freeimage layer = 1]
[wait time=10]
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

[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「今日は秋晴れで良い天気ね。[r]
[sp]お散歩に出てみましょう」
[autosave]
[p]

[stopbgm]
;==========================================================================================
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
;==========================================================================================
[主人公通常]
[wait time=10]
#
――町へ出た。[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
秋風に乗ってふわり、と品の良い香りが漂う。[r]
時子さんの姿が見えた。[p]

[whosay name="三宮　時子" color="firebrick"]
「[名前]さん、ごきげんよう」[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「時子さん、ごきげんよう」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[whosay name="三宮　時子" color="firebrick"]
「お相手に、会われたのですって？　いかがでした？」[p]

;【立ち絵】主人公：目閉じ眉下げ
[主人公ポーズ指]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[主人公頬染め]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「つい緊張してしまって。[r]
[sp]はじめはうまく話せなかったの……」[p]

[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公閉目パチ1回]
[wait time=10]
[whosay name="三宮　時子" color="firebrick"]
「そうだったの……途中からは大丈夫でしたの？」[p]

;【立ち絵】主人公：苦笑
[主人公困りほほえみ]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、なんとか」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_1_scene2==undefined"]
	[skipstop]
[endif]
*scene2

;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「きのこのお話や、紅葉谷のお能の話をうかがったわ」[p]
（虫のお話は伏せておくのが無難ね……）[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[主人公目パチ1回]
[wait time=10]
[whosay name="三宮　時子" color="firebrick"]
「紅葉谷の……そういえば黒田家の先代は[r]
[sp]お能がお好きだったと聞いたことがありますわ」
[autosave]
[p]

「屋敷内に能舞台をお持ちで、黒田家のお山にも舞台を作らせたとか」[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まあ。そうだったのね」[p]
;【立ち絵】主人公：伏目
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
（紅葉谷は、黒田家のお山だったのかもしれない）[p]
#
――紅葉谷のお話をされるときに、少し寂しそうに見えたことが気にかかる。[p]
[fadeoutbgm time=3000]
[wait time=10]
;【立ち絵】主人公：通常
[主人公閉目パチ1回]
[wait time=10]
黒田様のお姿を思い出しつつ、私は友人と挨拶を交わして家に戻った。[p]
[stopbgm]
;（11月第1週）町で友人に会うイベント終了

[eval exp="sf.event_kuroda_11_1 = 1"]

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

;=============================================
;◆黒田イベント【手紙が届く：紅葉散策お誘い】黒田ルートかつ9月4週になった時点で1度だけ発生
;=============================================
*start
*replay_kuroda_9_4
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

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_9_4_scene1==undefined"]
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

;【立ち絵】主人公：通常
[whosay name="磯野" color="dimgray"]
「お嬢様、黒田様からお手紙でございます」
[autosave]
[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、磯野」[p]
#


;テスト中時とリプレイ時は配列スキップ
[if exp="tf.test_kuroda == true || f.event_replay == 'kuroda'""]
@jump target="test_kuroda_hairetu_skip"
[endif]

[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「紅葉散策お誘い」　黒田 将貴";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+"「紅葉散策お誘い」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi14");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(13);
f.fumi_list_kuroda_location_fumi.push(13);
f.fumi_list_kuroda_title.push(f.fumi_kuroda_title_new);
f.fumi_list_kuroda_target.push("*kuroda_fumi14");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
f.fumi_toutyaku_kuroda[13]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_kuroda_number=f.fumi_kuroda_number + 1;
f.hensin_list_hairetsu[0][13]=1;
f.para_kuroda_koukando = f.para_kuroda_koukando + 4;
[endscript]

*test_kuroda_hairetu_skip
[手紙黒田]
[名字] [名前]様[r]
[r]
[sp]秋の気配が濃くなりましたね。[r]
先日は、お話ができてとても嬉しく思いました。[r]
[r]
[sp]来月下旬には、森林公園の木々が見ごろになりそうです。[r]
ご一緒に紅葉散策はいかがでしょうか。[r]
[r]
[sp]お返事をお待ちしております。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　黒田　将貴[p]
;[iscript]
;[endscript]
[if exp="f.okeiko_gamen == true"]
;◆黒田読了配列セット シナリオのみのテスト中はスキップ
[eval exp="f.midoku_list_hairetsu[0][13] = 0;"]
[endif]

[手紙黒田読了]

;【立ち絵】主人公：ほほえみ
[主人公笑顔]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「嬉しいわ。　お誘いいただけるなんて」[p]
[主人公ほほえみ]
[wait time=10]
（紅葉を見ながら色々とお話が聞けそうね。楽しみだわ）[p]

;【SE】パラリ(手紙を見直す)
[playse storage=paper_open.ogg loop=false ]
;【立ち絵】主人公：伏目（憂い）
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
「でも、ひと月も先……それまではお会いできないのね」[p]

;【立ち絵】主人公：ふぅ↓wait数値は実装時に調節予定。目立たない又はwaitがもたつく場合は省略
[主人公ふぅ閉]
[wait time=10]
「……ふぅ。考えても仕方がないわ」[p]
[fadeoutbgm time=3000]
[wait time=10]
;【立ち絵】主人公：ほほえみ（下がり眉）
[主人公ほほえみ]
[wait time=10]
（お誘いは嬉しかったのだし、早速お返事を書きましょう）[p]
;【SE】サラサラと書く音
[playse storage=pen_write.ogg loop=false ]

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
（……お誘いいただき、嬉しゅうございます[r]
[sp]紅葉が待ち遠しいです。
[sp]ぜひご一緒させていただきたく存じます……）[p]
;手紙編終了
[stopse]
[stopbgm]
[eval exp="sf.event_kuroda_9_4 = 1"]

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

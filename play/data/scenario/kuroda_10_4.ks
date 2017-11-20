;=============================================
;◆黒田イベント【手紙が届く：散策お誘い】黒田ルートかつ10月4週になった時点で1度だけ発生
;=============================================
*start
*replay_kuroda_10_4
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500] 
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 
[wait time=10]
;==========================================================================================
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_4_scene1==undefined"]
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


;◆テスト中は配列スキップ
[if exp="tf.test_kuroda == true || f.event_replay == 'kuroda'"]
@jump target="test_kuroda_hairetu_skip"
[endif]

[if exp="f.okeiko_gamen == true"]
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「散策お誘い」　黒田 将貴";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+"「散策お誘い」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi15");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(14);
f.fumi_list_kuroda_location_fumi.push(14);
f.fumi_list_kuroda_title.push(f.fumi_kuroda_title_new);
f.fumi_list_kuroda_target.push("*kuroda_fumi15");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
f.fumi_toutyaku_kuroda[14]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_kuroda_number=f.fumi_kuroda_number + 1;
f.hensin_list_hairetsu[0][14]=1;
f.para_kuroda_koukando = f.para_kuroda_koukando + 4;
[endscript]
[endif]

*test_kuroda_hairetu_skip
[手紙黒田]
[名字] [名前]様[r]
[r]
[sp]日毎に寒さが加わるこのごろですね。[r]
先日は、紅葉散策にご一緒してくださりありがとうございました。[r]
お疲れは出ていませんか。[r]
ゆっくりとお話できたことが、とても嬉しかったです。[r]
[r]
冬が近づくと木々もすこし様変わりします。[r]
また散策に出かけませんか。[r]
来月の二週目は、いかがでしょう。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　黒田　将貴[p]
[iscript]
[endscript]
;◆テスト中は配列スキップ
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[0][14] = 0;"]
[endif]
[手紙黒田読了]


;【立ち絵】主人公：笑顔
[主人公笑顔]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まあ！　またのお誘いをいただいて、嬉しいわ」[p]
[主人公ポーズ指]
[wait time=10]
[主人公ほほえみ]
[wait time=10]
（今度は二週間後にお会いできるのね……待つのも楽しみのうちかしら）[p]
[fadeoutbgm time=3000]
[wait time=10]
;【立ち絵】主人公：通常
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
「早速、お返事を書きましょう」[p]
;【SE】サラサラと書く音
[playse storage=pen_write.ogg loop=false ]

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
（……こちらこそ沢山お話しできて、嬉しゅうございました。[r]
[sp]木々の冬仕度も楽しみに、ご一緒させていただきたく存じます……）[p]
[stopbgm]
;手紙編終了
[eval exp="sf.event_kuroda_10_4 = 1"]

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

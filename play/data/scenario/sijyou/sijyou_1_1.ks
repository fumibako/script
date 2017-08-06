;¥¥¥¥¥¥¥¥イベント6.5¥¥¥¥¥¥¥¥
;☆結果の知らせ (黒田ルートと同じお正月なイメージ)手紙がくる＿×日程の調整によって変更してもokです。
;暗転プリロードサブルーチン
*replay_sijyou_1_1
*start
[call target=*1_1 storage="sijyou/preload_sijyou.ks"]
[stopbgm]
;=================================================================================_
;[chara_mod name="bg" storage="bg/room_niwa_akarui.jpg" time=1000]
;【背景】主人公邸 庭の見える部屋：冬
[freeimage layer = 1]
[wait time=10]
[背景_庭_冬]
;[chara_mod name="bg" storage="bg/room_niwa_fuyu.jpg" time=1000]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=================================================================================_
*seen1
[whosay name="磯野" color="dimgray"]
「お嬢様、
;お嬢様、
『四条華織』さまからお手紙が届いております」[p]
[autosave]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
*fumi_toutyaku_sijyou_101
[if exp="f.okeiko_gamen == true"]
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「お正月」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「お正月」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_event_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_event_fumi.ks");
f.fumi_list_all_target.push("*1_1");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(100);
f.fumi_list_sijyou_location_fumi.push(100);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*1_1");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[101]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_sijyou_number=f.fumi_sijyou_number + 1;
f.hensin_list_hairetsu[2][100]=1;//イベント中に届く手紙は基本的に「返信済」とします(返信している前提で物語が進行するため)
f.para_sijyou_koukando = f.para_sijyou_koukando + f.sijyou_koukando_up_event_fumi;
[endscript]
[endif]
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
;名前表示消去
[whosay name=""]
[cm]
;機能ボタン消去
[clearfix]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[image layer=29 x=0 y=0 storage="bg/B4nFWraU42/nengajou_sijyou.jpg" time=500]
[resetfont]
;メッセージレイヤを年賀状用に設定変更
[position vertical=true]
[position left=270 width=350 height=510 top=40 page=fore margint=0]
@layopt layer=message0 page=fore visible=true
[wait time=10]
[font color=black size=19]

;○四条手紙 正月はがき？
お健やかに新年をお迎えのこととお慶び申し上げます。[r]
昨年は大変お世話になり、ありがとうございました。[r]
本年も宜しくお願いいたします。 [r]
[r]
;↓縦書きハガキ対応のため、いくつか変更させていただきました。原案はこちらになります(スクリプト担
;本年もよろしくお願いいたします[p]
;ー追伸ー[r]
追伸[r]
先日、[名前]のお父様とお会いしました。[r]
つきましては、[名前]さんと直接会ってお話しをしたいと[r]
考えております。[r]
[r]
;↓絵柄と被るため空白を入れています(スクリプト担
[sp]　　　　　　返事待ってます。[p]
[r]
[r]
;↓差出人名はハガキに記載しましたので、コメントアウトします
;[sp]　　　　　　　　　　　　　　　　　四条華織[p]
[position vertical=false]
[resetfont]
[if exp="f.okeiko_gamen == true"]
;未読→既読処理
[eval exp="f.midoku_list_hairetsu[2][100] = 0"]
[endif]
[手紙四条読了 fumi_number=]
;位置変更
[背景明度アップ]
;=================================================================================_
*seen2
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[autosave]
#
[wait time=10]
澄んだ空気の空にまばゆい日が昇る。[p]
[主人公ほほえみ]
[wait time=10]
私は筆を取ると、今までの事を噛みしめながら[r]
新しい門出について文をしたためた。[p]
[wait time=100]
[主人公退場]
;=================================================================================_
*seen3
[背景明度アップ解除]

@jump storage="sijyou/sijyou_1_1b.ks" target=*start

[イベントシーン終了]

[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[else]
[イベントシーン終了４]
[endif]

@jump storage="test_sijyou.ks"
[s]

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

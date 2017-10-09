;==========================================================================
;イベント２回目【手紙が届くその２】5月お琴のお稽古を２回以上
;=======================お芝居の準備中です==================================
*replay_hujieda_5_4
[stopbgm]
[call target=*5_4 storage="hujieda/preload_hujieda.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸 お稽古部屋
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_okeiko.jpg" time=30]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=========================================================================

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 照れ目普通
[主人公眉通常]
[主人公照れ目普通]
（あのお手紙が嬉しくて、最近お[ruby text=こと]箏を中心に練習しているけれど、[r]
[sp]また聴いてくださるかしら？)[p]
[主人公目伏柔]
[主人公眉下げ下]
（それにしても、簡単な曲でも弾きこなせると嬉しいものね）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]

;【立ち絵】主人公 驚
[主人公驚]
[主人公効果消]
「もしかして！」[p]

;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]

;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]

;【立ち絵】主人公　微笑み
[主人公笑顔]
「やっぱり！ あの時の鳩さんだわ」[p]

[主人公口笑顔小]
[主人公ポーズ指]
（……またお[ruby text=こと]箏の上にとまって、そこがお気に入りなの？）[p]

;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]

;【立ち絵】主人公 通常
[主人公ほほえみ]
「待ってね」
[主人公ポーズ通常]
[p]

;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

*fumi_toutyaku_hujieda_3
[if exp="f.okeiko_gamen == true"]
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「貴方様の箏の調べ」";//←仮タイトルです。お好みに変更してください
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「貴方様の箏の調べ」";//←仮タイトルです。お好みに変更してください
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi02");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(2);
f.fumi_list_hujieda_location_fumi.push(2);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi02");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[3]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_hujieda_number=f.fumi_hujieda_number + 1;
f.hensin_list_hairetsu[4][2] = -1;
f.para_hujieda_koukando = f.para_hujieda_koukando + f.hujieda_koukando_up_event_fumi;
[endscript]
[endif]

[手紙藤枝 fumi_number=]

[ruby text=こと]箏の奏者様へ[l][r]
[r]
[sp]緑照り映える時節。
[r]
[sp]この手紙は貴方様に届いていますでしょうか？　[r]
[r]
[sp]また貴方様の[ruby text=こと]箏の調べを聞きました。[r]
少し上達されましたね。心から嬉しく想います。[r]
[r]
[sp]母は[ruby text=こと]箏が、とても上手で、その音色が好きでした。[r]
;[ruby text=こと]箏の音色が好きでした。[r]
[sp]貴方様の音は母と違った魅力があります。[r]
[sp]母は華やかで優美な調べでした。[p]
;アイコンにかかっているので分割します
[r][sp]
[sp]貴方の音は初々しく楚々とした調べです。[r]
[sp]つま弾く音は、どの音も、とても丁寧な響きを持っていて[r]
今後、基礎を覚えたらどんな風に曲を奏でるのか楽しみです。
[sp][r]
[sp]極めることは、貴方様の為にもなると思います。[r]
[sp]続けることは、嫌な事もありますが、喜びも多くあります。[r]
[r]
[sp]また貴方様の[ruby text=こと]箏の音を聴けることを願っています。[p]
[if exp="f.okeiko_gamen == true"]
;未読→既読処理
[eval exp="f.midoku_list_hairetsu[4][2] = 0"]
[endif]
[手紙藤枝読了 fumi_number=]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
[主人公目パチ1回]
;【立ち絵】主人公　微笑み
[主人公ほほえみ]
「ふふ……もっとお[ruby text=こと]箏を練習しましょう」[p]
[fadeoutbgm time=3000]
;【立ち絵】主人公　笑顔
[主人公笑顔]
「また上手になったらお手紙を頂けるかしら？」[p]
[主人公口笑顔小]
（楽しみだわ……）[p]
#
;次のイベントにでてしまう名前残りを消去
[eval exp="sf.event_hujieda_5_4 = 1"]
[イベントシーン終了]
[イベントシーン終了４]
@jump storage="test_hujieda.ks"
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

[locate x=580 y=357]
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[locate x=650 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=730 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=810 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=880 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;[メッセージウィンドウ上ボタン表示]

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

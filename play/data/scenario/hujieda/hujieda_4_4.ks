;=========================================================================
;イベント１回目【手紙が届くその１】4月お琴のお稽古を２回以上
*replay_hujieda_4_4
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*4_4 storage="hujieda/preload_hujieda.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸 お稽古部屋
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_okeiko.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=========================================================================

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 困り
[主人公困り]
（お稽古って、やっぱり難しいわ。[r]
[sp]始めたばかりなのに[ruby text=くじ]挫けそう……）[p]
[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

;地の文
#
思い悩んでいると、突如、窓から白鳩が飛び込んできた。[p]
;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]

;【立ち絵】鳩_箏の柏葉　夢と結びつけるために画像配置　一回のみにします。他で付けたい部分があれば以下をコピー。
[bg wait=true method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/bg_hujieda_hato2.jpg" time=1000]
[eval exp="f.haikei_credit='illustration by ◆I9IhvvVdPo editing by ＠名無しさん１'"]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 驚
[主人公驚]
「まあ！ かわいい鳩さんね。[r]
[sp]あ……お[ruby text=こと]箏の上にのってはダメよ」[p]
[主人公口通常]

#
愛らしい鳩が慣れた様子で、[ruby text=こと]箏の柏葉に[ruby text=と]留まった。[r]
;↑鳩の表現を、意図のある場面以外は「鳩」に統一させていただきます(◆jsYiJcqRkk
鳩は弦を見ながら首を動かし、まるで演奏を待ちわびているようだった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（あら、近づいても逃げないのね？）[p]

;【立ち絵】主人公　微笑み
[主人公ほほえみ]
「随分人に慣れた鳩さんなのね」 [p]
[主人公目パチ1回]
「足に紙が括り付けてあるわ。　取った方がいいのかしら？」[p]

;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]

;【立ち絵】主人公 伏目
[主人公口ほほえみ]
「待ってね」[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

;【立ち絵】主人公 驚き
[主人公驚]
「これは、お手紙？」[p]
;【SE】鳩の羽ばたき（バサバサッ）
[playse storage=tori_habataki_hato.ogg loop=false ]

;【背景】主人公邸 お稽古部屋
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_okeiko.jpg" time=1000]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;【立ち絵】主人公 困り
[主人公困り]
「あ……行ってしまったわ」[p]

[stopbgm]
;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
*fumi_toutyaku_hujieda_2
[if exp="f.okeiko_gamen == true"]
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「箏の音に惹かれて」";//←仮タイトルです。お好みに変更してください
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi01");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(1);
f.fumi_list_hujieda_location_fumi = [];
f.fumi_list_hujieda_location_fumi[0] = 1;
f.fumi_list_hujieda_title = [];
f.fumi_list_hujieda_title[0] = "四月 「箏の音に惹かれて」";
f.fumi_list_hujieda_target = [];
f.fumi_list_hujieda_target[0] = "*hujieda_fumi01";
f.hensin_list_hairetsu[4][1] = -1;
f.midoku_list_hairetsu[4][1] = 0;
f.fumi_toutyaku_hujieda[2] = 1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_hujieda_number = 1;
f.para_hujieda_koukando = f.para_hujieda_koukando + f.hujieda_koukando_up_event_fumi;
[endscript]
[endif]

[手紙藤枝 fumi_number=]

箏の奏者様へ[l][r]
[r]
[sp]桜の花が咲きまた散る季節[r]
[r]
[sp]たまたま貴方様の家の近くを通り、[r]
[ruby text=こと]箏の音を聴き、[r]
その音色に拙いながら才能の鱗片を感じました。[r]
[r]
[sp][ruby text=こと]箏の音が心に響き[r]
僕はこうして手紙を書き綴りたくなり、筆を取りました。[p]
[sp]貴方様の筝が上達し益々成長することを[r]
願っています。[r]
[r]
[sp]ちなみに毎日、[ruby text=に]二～[ruby text=さん]三時間ほど練習すると効果的です。[r]
[r]
[sp]僕は名乗るほどの者ではありませんので[r]
この手紙の事、僕の事はお構いなく。[p]
[if exp="f.okeiko_gamen == true"]
;未読→既読処理
[eval exp="f.midoku_list_hairetsu[4][1] = 0"]
[endif]
[手紙藤枝読了 fumi_number=]
[resetfont]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[主人公驚]
[主人公目パチ1回]
;【立ち絵】主人公　微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「こんな風に応援してくれる方もいらっしゃるのね」[p]
[主人公目閉]
「お[ruby text=こと]箏、うまくなれるかしら……」[p]
[主人公ほほえみ]
「いえ……精一杯、お稽古がんばりましょう！」[p] 
[fadeoutbgm time=3000]
#
;次のイベントにでてしまう名前残りを消去
[if exp="f.okeiko_gamen == true"]
[eval exp="f.para_shujinkou_koto_kaisuu = 0"]
[endif]
[eval exp="sf.event_hujieda_4_4 = 1"]
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

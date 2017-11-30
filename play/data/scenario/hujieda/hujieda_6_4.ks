;=============================================
;イベント3回目【手紙が届くその３】６月お琴のお稽古を２回以上
;=======================お芝居の準備中です==================================
*replay_hujieda_6_4
[stopbgm]
[call target=*6_4 storage="hujieda/preload_hujieda.ks"]
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
[主人公閉伏目パチ1回]
;【立ち絵】主人公　困り
[主人公困り]
（簡単な曲は弾けるようになったけれど、お[ruby text=こと]箏のお稽古のやりすぎで[r]
[sp]つま弾く指の感覚が、分からなくなってしまう）
[autosave改]
[p]

（それに押さえの手が痛くなって腕も痛いわ。[r]
[sp]もっとうまくなりたいのに……）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]

[whosay name=磯野 color="dimgray"]
「お嬢様、お茶をお持ちしました」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「ありがとう、入っていいわよ」[p]

;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]

[whosay name=磯野 color="dimgray"]
「失礼します」 [p]

#
磯野は、お茶を差し出すと心配そうに尋ねた。[p]

;【SE】湯のみを置く（コトリ）
[playse storage=tya_yunomi_oku.ogg loop=false ]

[whosay name=磯野 color="dimgray"]
「お嬢様、[r]
[sp]いくら早く上達されたいとお考えでも、やり過ぎではないでしょうか？[r]
[sp]遅くまでお[ruby text=こと]箏のお稽古をなされてて、旦那様もご心配されています[p]


#
磯野の出したお茶を手にし、その香りにほっとする。[p]

[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 憂い
[主人公憂い]
「心配かけて申し訳ないと思っているわ。[r]
[sp]でも嗜み程度でなく もっと上手になりたいの」[p]

[whosay name=磯野 color="dimgray"]
「私は熱心にされるのはいい事と思いますので、反対しませんが[r]
[sp]ほどほどになさいませんと、お体の調子が悪くなります」 [p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 憂い
[主人公憂い]
「ええ、今日はここまでにして、他のお稽古に取り掛かるわ」[p]

[whosay name=磯野 color="dimgray"]
「ええ、それがいいと存じます」[p]

「それにお稽古ばかりでなくお手紙も目を向けられませんと、[r]
[sp]誰からのご縁も無かったことになります」[p]

「では失礼します」[p]

;【SE】襖を閉める（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]

#
[主人公目閉]
磯野が部屋から出ていき、私はため息をついた。[p]
#
[主人公憂い]
その時だった。[r]
開いた障子から、あの愛らしい鳴き声が聞こえてきた。[p]

;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 驚
[主人公驚]
「鳩さん！」
[autosave改]
[p]
#
最近、暑くなってきたのでお稽古部屋の障子も開けたままにしている。[r]
そして、鳩は迷うことなくお[ruby text=こと]箏の上に[ruby text=と]留まった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 困り
[主人公困り]
「ありがとう。[r]
[sp]でも最近は、思うような演奏が出来ていないわ」[p]

;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 困り
[主人公困り]
[主人公口ほほえみ]
「待ってね」[p]
#
私は、恐る恐る紙に手を伸ばした。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口通常]
[主人公目閉じ]
（うまく弾けないから、きっと呆れていらっしゃるかしら？）[p]

[fadeoutbgm time=3000]

;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

*fumi_toutyaku_hujieda_4
[if exp="f.okeiko_gamen == true"]
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「時には翼を休めて」";//←仮タイトルです。お好みに変更してください
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「時には翼を休めて」";//←仮タイトルです。お好みに変更してください
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi03");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(3);
f.fumi_list_hujieda_location_fumi.push(3);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi03");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[4]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_hujieda_number=f.fumi_hujieda_number + 1;
f.hensin_list_hairetsu[4][3] = -1;
f.para_hujieda_koukando = f.para_hujieda_koukando + f.hujieda_koukando_up_event_fumi;
[endscript]
[endif]

[手紙藤枝 fumi_number=]
[ruby text=こと]箏の奏者様へ[l][r]
[r]
[sp]雨に萌ゆる緑が風情を漂わせる季節。[r]
[r]
[sp]貴方様におかれましては何かあられたのでしょうか？[r]
[sp][ruby text=こと]箏の音色がとても痛々しく、いつも丁寧につま弾く響きも[r]
ブレが感じられます。[r]
[r]
[sp]いえ、一生懸命に取り組まれているのは伝わって来るのです。[r]
[r]
[sp]まさか指の感覚が麻痺するほどに練習していらっしゃるのですか？[r]
[sp]早く上達したい時もあります。[r]
[sp]僕も睡眠を削り楽器を弾くこともありました。[p]
;アイコン
[sp]ですがあまり熱心に練習しても調子を崩す時もあります。[r]
[sp]自分を追い詰めていくことは必ずしも[r]
いい結果をうむとは限りません。 ノイローゼになる人も居ると聞きます。[r]
[r]
[sp]自然に触れたりして一度視点を変えて余裕を持ってください。[r]
[r]
[sp]焦らずとも貴方様は丁寧にお箏を慈しみ優しく弾けていました。[r]
[sp]必ず上達できる方だと思います。[r]
[r]
[sp]初心を忘れずゆっくり上達していきましょう。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]
[if exp="f.okeiko_gamen == true"]
;未読→既読処理
[eval exp="f.midoku_list_hairetsu[4][3] = 0"]
[endif]
[手紙藤枝読了 fumi_number=]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]


[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公目パチ1回]
;【立ち絵】主人公　微笑み
[主人公目閉じ]
[主人公眉下げ下]
[主人公口ほほえみ]
（良かった……。[r]
[sp]音色から察してくれるなんて、きっと優しい方なのね）[p]

;【SE】紙を折る（丁寧）
[playse storage=paper_oru.ogg loop=false ]

#
励まされて、嬉しさがこみ上げ心が温かくなった。[p]

;【立ち絵】主人公　ほほえみ
[主人公柔和ほほえみ１]
「私も、お手紙を返せるといいのだけれど」[p]
[fadeoutbgm time=3000]
#
;次のイベントにでてしまう名前残りを消去

[eval exp="sf.event_hujieda_6_4 = 1"]
;@jump storage="event.ks" target=*event_owari
[イベントシーン終了]
[イベントシーン終了４]
@jump storage="test_hujieda.ks"
[s]

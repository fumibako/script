;=========================================================================
;イベント５回目【手紙のお返事】８月２回以上お琴の稽古をする
*replay_hujieda_8_4
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*8_4 storage="hujieda/preload_hujieda.ks"]
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
[主人公目パチ1回]
（お稽古をすすめて、どれくらいがたったでしょうか）[p]
#
私は、六段の調べの四段まで弾けるようになっていた。[p]
お[ruby text=こと]箏をかき鳴らすと、つい鳥文の君の事を考えてしまう。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

;【立ち絵】主人公　目伏せ　不安そう
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り]
（もう一月も経つけど、鳥文の君へ。　私のお手紙は届いているかしら……)[p]
[主人公目閉]
（鳩さんは、たまに来るけれど、お手紙は[ruby text=くく]括り付いてないわ）[p]

;【立ち絵】主人公　目伏せ　不安そう
[主人公伏目]
[主人公眉下げ下]
（……いけないわ集中しないと。　曲を弾くときは無心で！）[p]
（先生も、"今度はどこか心ここにあらずね" と注意されたばかりなのに……）[p]

#
私は、なんとか曲を弾き終え、一息つく。[p]

;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]

;【立ち絵】主人公　驚
[主人公驚]
「鳩さん！」[p]

#
私は、今回も手紙は来るだろうかと、期待して見上げた。[p]

;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]

;【立ち絵】主人公　微笑み
[主人公ほほえみ]
「お手紙が括り付けてあるわ！」[p]

#
はやる気持ちを抑えて、鳩の足に括りつけられていた手紙をさっと解く。[p]

[fadeoutbgm time=2000]

;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]
;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

*fumi_toutyaku_hujieda_6
[if exp="f.okeiko_gamen == true"]
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「謝辞とお別れを」";//←仮タイトルです。お好みに変更してください
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「謝辞とお別れを」";//←仮タイトルです。お好みに変更してください
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi05");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(5);
f.fumi_list_hujieda_location_fumi.push(5);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi05");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[6]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_hujieda_number=f.fumi_hujieda_number + 1;
f.hensin_list_hairetsu[4][5] = -1;
f.para_hujieda_koukando = f.para_hujieda_koukando + f.hujieda_koukando_up_event_fumi;
[endscript]
[endif]
[手紙藤枝 fumi_number=]
[名字]　[名前]様へ [l][r]
[r]
[sp]降るような蝉しぐれ。[r]
[r]
[sp]僕の事は、お構いなくと最初の手紙に書きながら[r]
僕は、いつのまにか貴方様に深入りをしてしまったようです。[r]
[r]
[sp]このひと月ずっと、どうお返事しようかと悩んでました。[r]
[sp]僕も少なからず貴方様に好意を持ってしまったようです。[r]
[r]
[sp]正直に伝えましょう。[r]
[sp]僕はただの郵便配達員です。[r]
[sp]貴方様が気にされるような身分のものでもありません。[p]
[sp]僕がただの郵便配達員と知って貴方様が[r]
どんな反応されるのか怖いです。[r]
[sp][r]
[sp]また、このまま、ずるずると僕と手紙を[r]
交わすのは、貴方様の為にはならないでしょう。[r]
[r]
[sp]これで僕が書くのは最後の手紙とします。[r]
お[ruby text=こと]箏を聞かせていただいてありがとうございました。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　藤枝　肇 [p]
[sp]追伸[sp]貴方が大切な文通の最中だという事に気づいてました。[r]
[r]
[sp]貴方の文通相手に名乗り出るような行為だったのかもしれません。[r]
[sp]誤解させて申し訳ありませんでした。[r]
[sp]今、文通されている方と親しくなってください。[r]
[sp]僕は貴方の幸せを願っているのです。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]
[if exp="f.okeiko_gamen == true"]
;未読→既読処理
[eval exp="f.midoku_list_hairetsu[4][5] = 0"]
[endif]
[手紙藤枝読了 fumi_number=]
[resetfont]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;【立ち絵】主人公　目伏せ　悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り]
「そんな！　これが最後のお手紙なの？」[p]

（でも、確かに磯野やお父様に話したら、[r]
[sp]きっとお手紙を交わす事を反対されてしまうわ）[p]
[主人公憂い]
（どうしたらいいの？）[p]
#
[暗転２]
;【背景】主人公邸 庭の見える部屋：昼
 [bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=100]
[wait time=10]
 [eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公通常]
[暗転２終了]
[主人公目パチ1回]
;【SE】軽い足音（フェードイン）
[playse storage=girl_in_run.ogg loop=false ]
;【SE】襖を開ける（勢いよく）
[playse storage=fusuma-open_fast.ogg loop=false ]

;【立ち絵】主人公 通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公口開]
「ねえ！　磯野。[r]
[sp]郵便屋さんは、いつも何時ぐらいに来られるのかしら？」[p]

[whosay name=磯野 color="dimgray"]
「お嬢様！　最近は随分と淑女らしくおなりでしたのに[r]
[sp]廊下を走るなど……」[p]

;【立ち絵】主人公　目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り]
「ごめんなさい。[r]
[sp]……それで郵便は何時頃に届くものなのですか？」[p]

[whosay name=磯野 color="dimgray"]
「いつも[ruby text=じゅう]十時頃でしょうか……。[r]
[sp]どうしてそんなことを？」[p]

;【立ち絵】主人公　慌てる
[whosay name=&sf.girl_namae color="#cf5a7f"]
 [主人公困り]
 [主人公汗]
 [主人公口開]
「いえ……お手紙を交わしている方の手紙が気になって……」[p]

[whosay name=磯野 color="dimgray"]
「そうでございますか、[r]
[sp]どなたからのお手紙でしょうか？」[p]

;【立ち絵】主人公　慌てる
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り]
 [主人公汗]
「いえ……秘密です」[p]
;シーンが被るので上に↓
[fadeoutbgm time=3000]
[主人公目閉]
（直接話しては、お手紙を交わした事が分ってしまうわ）[p]
#
[主人公効果消]

;【テキスト全画面】黒茶・和紙風背景に白文字
 [テキスト全画面白文字]
翌日[r]
[ruby text=じゅう]十時。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

;【背景】主人公邸 玄関
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_genkan.jpg" time=1000]
[wait time=10]
[mtext text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[表示準備 storage="bg/bg_genkan.jpg" layer=29]
[表示準備 storage="bg/bg_genkan.jpg"]
[call target=*start storage="macro_tati_hujieda.ks"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[freeimage layer=29 time=400]
[wait time=400]
;=========表示================
[メッセージウィンドウ上ボタン表示]
[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（こっそり拝見するだけならいいわよね）[p]
;SE自転車ベル
;【SE】自転車のベル（チリンチリン）
[playse storage=jitensha_tirin.ogg loop=false]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ片手]
（自転車の音が聞こえるわ。 もうすぐだわ！）[p]
[stopse]
#
;=========表示================
;【立ち絵】 藤枝　通常
[藤枝ベース郵便屋]
[藤枝通常]
[藤枝口微笑み]
[freeimage layer=13 time=300]
[wait time=300]
;=========================
[主人公ポーズ通常]
;[whosay name="藤枝 肇" color=%mp.color] 初見であり、確実に藤枝とはいえない可能性もあるため「郵便屋」とさせていただきました(◆jsYiJcqRkk
[whosay name="郵便屋" color=%mp.color] 
「郵便です！」[p]
[whosay name="女中" color=%mp.color] 
「お疲れ様です」[p]

;【立ち絵】 藤枝　通常
[藤枝笑顔]
[whosay name="郵便屋" color=%mp.color] 
[主人公目パチ1回]
「ありがとうございます！　では失礼します！」[p]
#
[藤枝退場準備 storage="bg/bg_genkan.jpg" time=300]
[wait time=300]
;【立ち絵】主人公　驚き
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
[主人公口通常]
（私と同じぐらいの歳かしら。
[主人公照れ目普通]
[主人公眉通常]
[sp]明るくて爽やかそうな方だわ）[p]
[主人公眉下げ下]
[主人公目パチ1回]
(同じぐらいの歳なのに働いているのね……）[p]

;【立ち絵】主人公　目閉じ　
[主人公効果消]
[主人公口通常]
[主人公目閉じ]
[主人公眉困り]
（私が出て行ったらきっと皆に知られてしまう。[r]
[sp]藤枝様にも迷惑がかかるし……何か出来ないかしら）[p]

;【立ち絵】主人公　ハッとする
[主人公眉通常]
[主人公目大]
[主人公口開]
（そうだわ。　郵便が来るこの時間帯に、お[ruby text=こと]箏を精一杯弾きましょう）[p]
[主人公口ほほえみ]
[主人公目伏柔]
[主人公眉下げ下]
[主人公頬染め]
（そうしたら、藤枝様も喜んで下さるかもしれないわ）[p]
;表情の優先順位は口→目→眉→エモ

[主人公憂い]
（けれど、今交わしているお手紙のお方達にも失礼にならないように、[r]
[sp]お手紙も出さなくては……[r]
[sp]そうしないと藤枝様が責任を感じてしまわれるわね）[p]

[主人公目閉じ]
（藤枝様は私の幸せを願っていると書いてくださったから……[r]
[sp]努力してみましょう）[p]

[fadeoutbgm time=3000]
#
;思い出等の名前表示フラグ↓
[eval exp="sf.replay_hujieda = 1"]
[eval exp="sf.event_hujieda_8_4 = 1"]

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



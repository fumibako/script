;============================================================================
;イベント７回目【再び手紙が届く】9月2週、お琴のお稽古
;============================ここからお芝居の幕================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*9_2 storage="hujieda/preload_hujieda.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;【背景】主人公邸 お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg" time=30]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;最大全角３１文字×４行
;============================ここからお芝居の幕開け================================

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公目パチ1回]
;【立ち絵】主人公：目閉じ
[主人公目閉じ]
（弾いても、きっともう藤枝様から手紙は来ない。[r]
[sp]でも、今はだた藤枝様を想って弾きたい。[r]
[sp]私は藤枝様の事をそんなに知っているわけでもないけれど）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

#
そっとお[ruby text=こと]箏に手を伸ばしお琴を弾いてみる。[r]
その音は空気に響き溶けていく。[p]

;【立ち絵】主人公：伏目
[主人公伏目]
[主人公眉下げ下]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私もすっかりお[ruby text=こと]箏の音が好きになってしまった）[p]

;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]

;【立ち絵】主人公：驚き
[主人公驚]
「鳩さん！」[p]
;#
;やってきた鳩には、手紙が括りつけてあった。[p]
（鳩さんに手紙が括りつけてある）[p]

#
[主人公口通常]
鳩さんは手元の[ruby text=こと]箏の端に止まり、私は手紙をほどいた。[p]


[fadeoutbgm time=3000]
;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

[手紙藤枝 fumi_number=]
[名字][名前] 様へ[l][r]
[r]
[sp]秋色次第に濃く、貴方様におかれましてはお変わりない[r]
でしょうか？[r]
[r]
[sp]毎日の貴方様の[ruby text=こと]箏の音を聴き胸が締め付けられるような[r]
気持です。[r]
[r]
[sp]僕はそうして気持ちを抑えきれず再び筆を取り、[r]
貴方様に手紙を書います。[r]
[r]
[sp]貴方様は僕の身分に失望を覚えなかったのですね、[r]
[sp]心から喜んでいる僕がいます。[r]
[sp]まだお会いしたこともないのになぜでしょうか？　[p]
;アイコン回避
[sp][r][r]
[sp]少しの間だけでいいです、僕とお手紙を交わして頂けませんか？[r]
厚かましいお願いだという事は重々承知です。[r]
[r]
[sp]僕は郵便配達と郵便の仕分け、事務処理、郵便局が休みの日には[r]
ミルクホールでのピアノの演奏をしています。[r]
[r]
[sp]毎日が目まぐるしく忙しい毎日ですが、[r]
貴方のお[ruby text=こと]箏の音が、僕に貴方の事を考えさせるのでしょうか？　[p]
[sp][r]
[sp]高貴な身分のものは手紙を交わし結婚相手を選びます。[r]
[sp]つい最近、家が没落するまでは僕も華族の一人でした、[r]
手紙の書き方も教わり、いつか僕もお手紙で結婚相手を決めるのかと[r]
幼いころは思ったものです。[r]
[sp][r][r]
[sp]少しの間だけいいです……我ながら女々しいと思うのですが[r]
貴方様からのお返事を待っています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　藤枝　肇 [p]
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]
[手紙藤枝読了 fumi_number=]
[resetfont]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]


;【立ち絵】主人公：微笑み
[主人公口ほほえみ]
[主人公目閉じ]
[主人公頬染め]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……うれしくて涙がこぼれそう」[p]
[主人公目伏]
[主人公眉下げ下]
（鳩さんは、たまに姿を見せていたけど、もう迷惑になると手紙を[r]
[sp]出せずにいた）[p]
[主人公目閉じ]
(これから手紙を沢山出すわ……）[p]
[fadeoutbgm time=3000]
#
私は手紙をそっと抱きしめた[p]

#
;次のイベントにでてしまう名前残りを消去
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
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
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" target="*window_close" ]
[wait time=10]
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

;背景:町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[イベントシーン構築]
#
[主人公ポーズ通常]
[主人公通常]


今日も町は人が行き交い[r]
賑やかで明るい活気にあふれている。[p]


[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[whosay name="三宮　時子" color="#c25232"]
「まあ、見違えましたわ！　[r]
[sp][名前]さんごきげんよう」[p]

[主人公目パチ1回]
#
時子さんは少し驚いたように目を見開いている。[r]
時子さんと会うのはとても久しぶり、[r]
私は微笑んで挨拶を返した[p]


[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ごきげんよう時子さん、[r]
[sp]お久しぶりですね」[p]

[whosay name="三宮　時子" color="#c25232"]
「[名前]さん本当に雰囲気が変わられたわ、 [r]
[sp]所作が洗練されて見とれてしまうほどよ」[p]

;【立ち絵】主人公：苦笑（頬染め）
[主人公目を開く]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうかしら？　ありがとうございます」[p]
[主人公伏目]
[主人公眉下げ下]
[主人公頬染め]
[主人公口ほほえみ]

[whosay name="三宮　時子" color="#c25232"]
「お稽古がんばっておられるのね……そういえば [r]
[sp]お手紙を始められて数ヶ月ね。意中の方はいらっしゃるの？」[p]

;【立ち絵】主人公：苦笑 （困り眉）
[主人公苦笑]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、数ヶ月では [r]
[sp]まだ心がきまらなくて」[p]

;【立ち][葛城宮微笑み][絵】主人公 通常
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？」[p]

;[if exp="sf.BGM=='ON'"]
;[fadeoutbgm time=3000]
;[endif]

#
ふと視線を感じて思わず振返ると[r]
気品があり、華やかで男らしい青年と視線が絡まった。[p]

[葛城宮ベース私服]
[葛城宮通常]

[主人公ポーズ片手]
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！」[r]
（意思の強そうな眼差しに[r]
[sp]一瞬思考が停止する）[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

#
その方と私は数秒見つめ合い、[r]
私ははっとしてうつむいた[p]

[主人公伏目]
[主人公眉下げ下]
[主人公頬染め]
[主人公口通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（異性の方からの視線を[r]
[sp]まともに受けたことがなかったけど[r]
[sp]こんなにも胸が高鳴るものなのかしら）[p]

[葛城宮驚き]
[葛城宮微笑み]
;【立ち絵】葛城宮 驚き
;【立ち絵】葛城宮 微笑み
[主人公ポーズ通常]
[whosay name="葛城宮　晴仁" color=%mp.color]
「これはぶしつけに失礼した」[p]

[whosay name="三宮　時子" color="#c25232"]
「葛城宮殿下！」[p]

[主人公目パチ1回]
;【立ち絵】葛城宮 通常
[葛城宮横目]
[whosay name="葛城宮　晴仁" color=%mp.color]
「……君は確か三宮の家の御令嬢だったな？」[p]

[whosay name="三宮　時子" color="#c25232"]
「ええ。三宮家のものです。[r]
[sp]殿下ほどの身分の方でも町へお越しになるのですね」[p]

;【立ち絵】葛城宮 通常
[葛城宮通常]
[whosay name="葛城宮　晴仁" color=%mp.color]
「周囲の者たちはともかく[r]
[sp]私は町の様子を見るのが好きなのでな」[p]

;【立ち絵】葛城宮 微笑み
[葛城宮微笑み]
[whosay name="葛城宮　晴仁" color=%mp.color]
「私は葛城宮晴仁という。[r]
[sp]君の名は？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（殿下……ということは皇族の方！？　失礼のないようにしないと！）[p]
;【立ち絵】主人公 微笑み
[主人公ほほえみ]
「[名字][名前]と申します」[p]

[主人公目を開く]
[主人公通常]
#
教えられたお辞儀をし、いつもの笑みを浮かべる。[r]
……今はもう子供の頃の無邪気な笑みでなく[r]
優雅で優しく控えめな笑みになったと皆から言われるようになった。[r]
一つを得れば一つを失うそれが少し寂しい。[p]

;【立ち絵】葛城宮 照れ
[葛城宮微笑み照れ]
[whosay name="葛城宮　晴仁" color=%mp.color]
「[名字][名前]殿か……良き名だな」[p]

[主人公目パチ1回]
[whosay name="侍従" color=%mp.color]
「殿下、そろそろお時間です」[p]
[葛城宮効果消]
;[if exp="sf.BGM=='ON'"]
;[fadeoutbgm time=3000]
;[endif]

;【立ち絵】葛城宮 ため息
[葛城宮横目]
[whosay name="葛城宮　晴仁" color=%mp.color]
「もうこんな時間か名残惜しい」[p]

;【立ち絵】葛城宮 微笑み
[葛城宮笑顔]
[whosay name="葛城宮　晴仁" color=%mp.color]
「君にはまたお目にかかろう」[p]

[葛城宮退場]
;[if exp="sf.BGM=='ON'"]
;[stopbgm]
;【BGM】筍の訪れ(町
;[playbgm storage="machi_takenoko.ogg" loop=true]
;[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
;[endif]


[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 通常
「時子さんあの方はもしかして……」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[whosay name="三宮　時子" color="#c25232"]
「ええ、今上帝の甥御様に当たる親王様よ。[r]
[sp]でも女嫌いで手紙をだされなくて[r]
[sp]話が出てもことごとく破談にしていらっしゃると噂なの」[p]

[主人公目パチ1回]
;【立ち絵】主人公 通常
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「またお目にかかろうとおっしゃったわ[r]
[sp]あれは社交辞令ではないのかしら？」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="三宮　時子" color="#c25232"]
「いいえ。社交辞令はいわれない方だから、[r]
[sp]あなたが気に入ったのだわ。[r]
[sp]きっとあなたに手紙を送るつもりなのよ」[p]

;【立ち絵】主人公 驚
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まさか、そんなに身分の高い方があり得ないわ」[p]
[if exp="sf.BGM=='ON'"]
[fadeoutbgm time=3000]
[endif]

[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="三宮　時子" color="#c25232"]
「あの方は型におさまることはしない、[r]
[sp]革新的で行動力もある方で周囲も苦労しているの。[r]
[sp]少々の身分違いなんて気にされないと思うわ」[p]
[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】古都に咲く花（プロローグ等）スマホでのフリーズ対策試験的に[p]or[l]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
#


;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]

[layopt layer=29 visible=true]
;背景変更:黒茶・和紙風
[image layer=29 x=1 y=1 storage="bg/bg_prologue.jpg" time=1000]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]

;【背景】お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公通常]
;テキスト全画面
[font color=white size=27]
#
――その翌日。[p]

[resetfont]
[freeimage layer = 29 time=1000]

;機能ボタン表示
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

;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;--------------------------------------------------------------------
;1.5回目イベント翌日手紙が届く

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 通常
（今日はお稽古がよく進んだわ……明日の予習も……）[p]
;【SE】軽い足音（フェードイン）
[playse storage=girl_in_run.ogg loop=false ]
[wait time=500]
;【SE】襖を開ける（勢いよく）
[playse storage=fusuma-open_fast.ogg loop=false ]

[主人公目パチ1回]
[stopbgm]

;【立ち絵】主人公 驚
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野の足音にしては、荒々しい……」[p]

[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】みやび（磯野テーマ）
[playbgm storage="isono_miyabi.ogg" loop=true]
[eval exp="f.bgm_storage='isono_miyabi.ogg'"]
[endif]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「それより、お嬢様大変です！[r]
[sp]親王様からお嬢様にお手紙が！！」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公  驚
[主人公ポーズ片手]
[主人公驚]
（え！？　まさか……[r]
[sp]昨日出会った葛城宮殿下のお顔が浮かんだ）[p]
[if exp="sf.BGM=='ON'"]
[fadeoutbgm time=3000]
[endif]
#
[主人公退場]

;背景:町並み
[chara_mod name="bg" storage="bg/bg_machi_omoide.jpg" time=1500]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]

[whosay name="葛城宮　晴仁" color=%mp.color]
　　『またお目にかかろう』[p]
#
;【背景】お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

;【立ち絵】主人公 眉強気
[主人公ポーズ通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、そのお手紙は？」[p]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[whosay name=磯野 color="dimgray"]
「こちらに」[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[主人公目閉じ]
#
榊のお印入りの上質の白封筒を開け、[r]
はやる心を落ち着けて御名を確かめる。[p]
[stopbgm]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】「きずな」
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

[手紙葛城宮 fumi_number=1]

[font color=navy size=21]

[名字]　[名前]殿へ[l][r]
[r]
拝呈　先日は色々と失礼したが[名字]殿が気を[r]
悪くしていないといいのだが。[r]
[r]
[sp]梅雨が明けた明るい日差しの中[r]
町で君と出会い率直に君をとても好ましく思った。[r]
[r]
[sp]女性を心から美しいと思ったのは君が初めてだ。[r]
[sp]身分の所為か性格の所為か私の周囲にいる女性は[r]
私に媚か恐れをもっている者が多いが[p]

[sp]君は佇まいが淑やかななだけでなく[r]
初々しく楚々として、目が澄んでいた。[r]
[r]
[sp]君の噂を軽く聞き[r]
[sp]君が手紙を交わし始めたと知った。[r]
そして私はこうして手紙を綴るに至っている。[r]
[r]
[sp]私はこういったたぐいの手紙を書いたことがないので[r]
少々戸惑っている。[p]
[r]
[sp]私は遠回しな言い方は苦手だ。[r]
[sp]こうして手紙を出すという行為が求婚の意味を含んでいる[r]
ことも理解した上で、私は君と手紙を交わしたいと考えている。[r]
[r]
君の事を知りたいと思ったのだ。
[r]
[r]
[r]
心より返信を待つ。[r]
[r]
[r]

[sp]　　　　　　　　　　　　　　　　　　　　　　　謹言[r]
[sp]　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
[resetfont]
[手紙葛城宮読了 fumi_number=1]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;【背景】お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
[主人公汗]

「……でもきっと殿下は[r]
[sp]少し私に興味を持たれただけだわ。[r]
[sp]求婚といっても冷静になって考えてみると[r]
[sp]周囲の方々が反対されます」[p]

[主人公目を開く]
[主人公通常]
[whosay name=磯野 color="dimgray"]
「ですが実際に手紙を出されているのです。[r]
[sp]葛城宮殿下の事をお調べしておきます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 苦笑
[主人公苦笑]
「そうね、高位の方の戯れだとは思いません。[r]
[sp]文面から殿下は率直で誠実な方だと思います。[r]
[sp]私も誠実にお返事を書きます」[p]



;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
@jump storage="test_katuragi.ks"
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

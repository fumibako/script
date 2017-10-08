;作者コメント欄　
;=======================お芝居の準備中です==================================
*replay_katuraginomiya_event_1
[stopbgm]
[call target=*event_1 storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[表示準備]
[freeimage layer = 1]
[wait time=10]
;【背景】町並み
[bg method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50 wait=true]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
[if exp="tf.test_gamen == true"]
テストページから開始しています。手紙到着までjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]


*jump_ok
[current layer="message0"]
[resetfont]
「はい」[r]
jumpします。[p]
[cm]
@jump target=*fumi_toutyaku_katuraginomiya_2
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
最初からはじめます。[p]
[cm]
[endif]
;=====================ここからお芝居の幕引きです===============================

*seen_1

#
今日も町は人が行き交い、賑やかで明るい活気にあふれている。[p]

[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[whosay name="三宮　時子" color="#c25232"]
「まあ、見違えましたわ！ 　[名前]さん、ごきげんよう」[p]

[主人公目パチ1回]
#
時子さんは少し驚いたように目を見開く。[p]
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ごきげんよう、時子さん。 お久しぶりですね」[p]
#
時子さんと会うのは、とても久しぶりで私は、微笑んで挨拶を返した。[p]

[whosay name="三宮　時子" color="#c25232"]
「[名前]さん、本当に雰囲気が変わられたわ。 所作が洗練されて、[r]
[sp][ruby text=み]見[ruby text=と]惚れるしまうほどよ」[p]

;【立ち絵】主人公：苦笑（頬染め）
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[主人公目を開く]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
「そうかしら？　ありがとうございます」[p]

[whosay name="三宮　時子" color="#c25232"]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
;↓眉：下がり眉下位置 (伏目、目閉じ時の柔和な表情に向きます) [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
;[主人公伏目]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
「お稽古がんばっておられるのね……。[r]
[sp]そういえば お手紙を始められて数ヶ月ね。 意中の方は、[r]
[sp]いらっしゃるの？」[p]

;【立ち絵】主人公：苦笑 （困り眉）
[主人公苦笑]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、数ヶ月では……まだ心がきまらなくて」[p]
#
[葛城宮ベース私服]
[葛城宮通常]
[表示開始 time=400]

;【立ち][葛城宮微笑み][絵】主人公 通常
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？」[p]

*seen_2
#
ふと視線を感じて振返ると、[ruby text=ふう]風[ruby text=が]雅で[ruby text=せい]精[ruby text=かん]悍な顔立ちをした青年と[r]
視線が絡まった。
[葛城宮目パチ1回]
[p]

;気品があり、華やかで、男らしい青年と視線が絡まった。[p]
;↑修飾が多い
;華やかで上品（気品）である単語は・・風雅
;精悍な青年http://hyogen.info/word/3961339

[主人公ポーズ片手]
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！」[p]
#
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
意思の強そうな眼差しに一瞬、思考が停止する。[p]

;【立ち絵】葛城宮 驚き
#
[主人公眉下げ下]
[主人公伏目]
[主人公頬染め]
その方と私は、数秒見つめ合い、私は、ハッとして俯いた。
;[葛城宮眉驚き]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_odoroki.png" time=0]
[wait time=10]
;[葛城宮目大]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_ake.png" time=0]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（異性の方からの視線をまともに受けたことがなかったけど[r]
[sp]こんなにも胸が高鳴るものなのかしら）
[p]
;表示まで時間かかるので近づく足音
;【SE】足音（靴
[playse storage=walk_kutsu.ogg loop=false ]

[暗転２ storage="bg/bg_machi.jpg"]
[葛城宮サイズ隣に並ぶ]
[葛城宮ベース私服]
[葛城宮微笑み]
[暗転２終了 time=800]

;【立ち絵】葛城宮 微笑み
[主人公ポーズ通常]
[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮微笑み]
「これは、[ruby text=ぶ]不[ruby text=しつけ]躾に失礼した」[p]
;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]

*seen_3
[whosay name="三宮　時子" color="#c25232"]
「葛城宮殿下！」[p]
;【SE】衣擦れ（ザッ）
[playse storage=za_kinuzure.ogg loop=false ]

[主人公目パチ1回]
;【立ち絵】葛城宮 通常
[葛城宮横目]
[whosay name="葛城宮　晴仁" color=%mp.color]
「……君は確か三宮の家の御令嬢だったな？」[p]

[whosay name="三宮　時子" color="#c25232"]
「ええ。 三宮家のものです。 殿下ほどの身分の方でも町へお越しに[r]
[sp]なるのですね」[p]

;【立ち絵】葛城宮 通常
[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮通常]
「周囲の者たちはともかく、私は、町の様子を見るのが好きなのでな」[p]

;【立ち絵】葛城宮 微笑み
[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮微笑み]
「私は、葛城宮晴仁 という。 君の名は？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（殿下……ということは皇族の方！？　失礼のないようにしないと！）[p]
;【立ち絵】主人公 微笑み
[主人公ほほえみ]
「[名字][名前]と申します」[p]
#
教えられたお辞儀をし、いつもの笑みを浮かべる。[p]

[主人公目を開く]
[主人公通常]
……今はもう子供の頃の無邪気な笑みでなく、[r]
優雅で[ruby text=つつま]慎しやかな笑みになったと皆から言われるようになった。[r]
[ruby text=ひと]一つを得れば[ruby text=ひと]一つを失う。 それが少し寂しい。[p]

;【立ち絵】葛城宮 照れ
[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮微笑み照れ]
「[名字][名前]殿か……良き名だな」[p]

[whosay name="侍従" color=%mp.color]
[主人公目パチ1回]
「殿下、そろそろお時間です」[p]
[葛城宮効果消]

*seen_4
;【立ち絵】葛城宮 ため息
[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮横目]
「もうこんな時間か、[ruby text=な]名[ruby text=ごり]残惜しい」[p]

;【立ち絵】葛城宮 微笑み
[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮笑顔]
「君にはまたお目にかかろう」[p]

#
[葛城宮退場準備 time=500]

[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 通常
「時子さん、あの方はもしかして……」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[whosay name="三宮　時子" color="#c25232"]
「ええ、今上帝の甥御様に当たる親王様よ。[r]
[sp]でも女嫌いでお手紙をだされなくて、お話が出ても、ことごとく[r]
[sp]破談にしていらっしゃると噂なの」[p]

[主人公目パチ1回]
;【立ち絵】主人公 通常
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「またお目にかかろうとおっしゃったわ。 あれは、社交辞令では[r]
[sp]ないのかしら？」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="三宮　時子" color="#c25232"]
「いいえ。社交辞令は言われない方だから、あなたが気に入ったのだわ。[r]
[sp]きっと、あなたにお手紙を送るつもりなのよ」[p]

;【立ち絵】主人公 驚
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まさか、そんなに身分の高い方があり得ないわ」[p]
[if exp="sf.BGM=='ON'"]
[fadeoutbgm time=3000]
[endif]

*seen_5
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="三宮　時子" color="#c25232"]
「あの方は、型におさまることはしない。革新的で行動力もある方で[r]
[sp]周囲も苦労しているの。 少々の身分違いなんて気にされないと思うわ」[p]
[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】古都に咲く花（プロローグ等）スマホでのフリーズ対策試験的に[p]or[l]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
#

;==========================スクリプト・全画面表示の間に設定===============================
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[layopt layer=29 visible=true]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1000]
[wait time=1000]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;【背景】お稽古部屋
[bg method='crossfade' storage="../fgimage/bg/bg_okeiko.jpg" time=600 wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公通常]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

#
――その翌日。[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
[freeimage layer = 29 time=1000]
[wait time=1000]
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
;==========================スクリプト・全画面表示からの復帰==========================================

;1.5回目イベント翌日手紙が届く
*seen_6
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
「それより、お嬢様大変です！　親王様からお嬢様にお手紙が！！」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公  驚
[主人公ポーズ片手]
[主人公驚]
（え！？　まさか……）[p]
#
[if exp="sf.BGM=='ON'"]
[fadeoutbgm time=3000]
[endif]
[主人公退場]
;==========================================================================================================================
;【背景】:町並み　回想シーン・セピア用
[bg method='crossfade' storage="../fgimage/bg/bg_machi_omoide.jpg" time=1500 wait=true]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
;===========================================================================================================================
#
私は、昨日、出会った葛城宮殿下のお顔が浮かんだ。[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
　　『またお目にかかろう』[p]
  
;====================================================================
#
;主人公復帰表情
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=300] 
;【背景】お稽古部屋
[bg method='crossfade' storage="../fgimage/bg/bg_okeiko.jpg" time=1000 wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;====================================================================

;【立ち絵】主人公 眉強気
[主人公ポーズ通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
;===================
;主人公復帰表情消去
[iscript]
$('.junbi_girl').remove();
[endscript]
;===================
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
榊のお印入りの上質の白封筒を開け、はやる心を落ち着けて[r]
御名を確かめる。[p]
[stopbgm]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】「きずな」
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

*fumi_toutyaku_katuraginomiya_2
[if exp="f.okeiko_gamen == true"]
[iscript]
f.fumi_list_all_title.push("六月 「最初の手紙」 葛城宮 晴仁");
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi00");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(1);

f.fumi_list_katuraginomiya_location_fumi = [];
f.fumi_list_katuraginomiya_location_fumi[0] = 1;
f.fumi_list_katuraginomiya_title = [];
f.fumi_list_katuraginomiya_title[0] = "六月 「最初の手紙」";
f.fumi_list_katuraginomiya_target = [];
f.fumi_list_katuraginomiya_target[0] = "*katuraginomiya_fumi00";
f.midoku_list_hairetsu[3][1] = 0;
f.hensin_list_hairetsu[3][1] = 1;
f.fumi_toutyaku_katuraginomiya[2]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_katuraginomiya_number = 1;
f.para_katuraginomiya_koukando = f.para_katuraginomiya_koukando + f.katuraginomiya_koukando_up_event_fumi;
[endscript]
[endif]

[手紙葛城宮 fumi_number=1]

[font color=navy size=21]

[名字]　[名前]殿へ[l][r]
[r]
　先日は色々と失礼したが[名字]殿が気を悪くしていないと[r]
いいのだが。[r]
[r]
[sp]
[if exp="f.katuraginomiya_only == 1 "]
梅雨の晴れ間、
[else]
梅雨が明けた明るい日差しの中、
[endif]
町で君と出会い率直に[r]
君をとても好ましく思った。[r]
[sp]女性を心から美しいと思ったのは君が初めてだ。[r]
[r]
;アイコンにかかる
[sp]身分の所為か性格の所為か、私の周囲にいる女性は、[r]
[sp]　　　私に媚か恐れをもっている者が多いが、[r]
[sp]　　　君は佇まいが、淑やかなだけでなく、初々しく[r]
[sp]　　　楚々として、目が澄んでいた。[p]

[sp]君の噂を耳にし、君が手紙を交わし始めたと知った。[r]
そして、私は手紙を綴るに至っている。[r]
[r]
[sp]私はこういった[ruby text=たぐい]類の手紙を書いたことがないので、[r]
少々、戸惑っている。[p]
[r]
[sp][r]
私は遠回しな言い方は苦手だ。[r]
[sp]こうして手紙を出すという行為が、求婚の意味を[r]
含んでいることも、理解した上で、私は、君と手紙を[r]
交わしたいと考えている。[r]
[r]
[sp]君の事を知りたいと思ったのだ。[r]
[r]
[r]
心より返信を待つ。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
[resetfont]
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[3][1] = 0"]
[endif]
[手紙葛城宮読了 fumi_number=1]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;【背景】お稽古部屋
[bg method='crossfade' storage="../fgimage/bg/bg_okeiko.jpg" time=1000 wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
[主人公汗]

「……でも、きっと殿下は、少し私に興味を持たれただけだわ。[r]
[sp]求婚といっても冷静になって考えてみると、周囲の方々が[r]
[sp]反対されます」[p]
#
[主人公目を開く]
[主人公通常]
[whosay name=磯野 color="dimgray"]
「ですが実際にお手紙を出されているのです。  葛城宮殿下の事を[r]
[sp]お調べしておきます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 苦笑
[主人公苦笑]
「そうね、高位の方の戯れだとは思いません。[r]
[sp]文面から殿下は率直で誠実な方だと思います。[r]
[sp]私も誠実にお返事を書きます」[p]


;====================================================================
[eval exp="sf.event_katuragi_event_1 = 1"]
[if exp="f.okeiko_gamen == true"]
[eval exp="sf.replay_katuraginomiya=1"]
[eval exp="f.katuraginomiya_fumi_start=1"]
[endif]
;次イベントでの名前残り消去
#
[イベントシーン終了]

[イベントシーン終了４]
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

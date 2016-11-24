;イベント3回目
;一定の淑女度、葛城宮一定の好感度
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*event_1 storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;【背景】主人公部屋昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公ポーズ通常]
[主人公通常]
[イベントシーン構築ボタン無し版]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
[主人公目パチ1回]
#
皇后様のお印入りの簡単な[r]
挨拶と日時の書いてある[r]
お茶事の招待状に目を通し、[r]
葛城宮殿下の手紙を丁寧に開いた[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[stopbgm]
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

 
[手紙葛城宮 fumi_number=]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
拝呈　時に皇后陛下からのお茶事の招待状は[r]
もう届いたであろうか？　[r]
[r]
[sp]残暑厳しき折、今上、皇后両陛下に[r]
君を婚約者候補として認めて頂くように交渉を行い、[r]
[r]
[sp]結果、皇后陛下自ら君を未来の親王妃として[r]
ふさわしいか確かめると言われ、[r]
直接会われるという 運びとなった。[r]
[r]
[sp]少々大事になってしまったと反省している。[p]
[sp]だが皇后陛下は誰にでも[r]
分け隔てなく接する方で[r]
純粋に君に興味を持たれたようだ。[r]
 [r]
[sp]君が私との結婚を考えられないなら断って構わない[r]
[sp]だが私の婚約者候補と挙げられるのが嫌でなければ[r]
受けて欲しい[r]
[r]
[sp]いや心から君が受けてくれるのを望んでいるの。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　謹言[r]
[sp]　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
 [手紙葛城宮読了 fumi_number=]
 [resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
;==============================================================================
;[イベントシーン構築]
;[背景_庭]
;[主人公ポーズ通常]
;手紙スクリプト
;==============================================================================

[主人公伏目]
[主人公眉下げ下]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[r]
（殿下は率直な方で、[r]
[sp]……私に好意を寄せ下さっている[r]
[sp]それがとても嬉しい）[p]

[whosay name=磯野 color="dimgray"]
「お嬢様どうされますか？」[p]

#
心配そうに磯野が問い掛け、[r]
私はうなずく[p]

[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「招待を受けますわ。」[p]

;【立ち絵】主人公 照れ目普通
[主人公目伏柔]
[主人公眉下げ下]
[主人公頬染め]
「殿下がどんなに苦労して私を[r]
[sp]婚約者候補の一人に[r]
[sp]しようとして下さっているか分りますわ[r]
[sp]私も期待に応えたいと思います」[p]

#
私の微笑んだ様子に、磯野も安心したように微笑む[p]

[whosay name=磯野 color="dimgray"]
「お嬢様なら大丈夫です[r]
[sp]お稽古でのお茶立てもお作法も、身についておられますから」[p]

;==========================スクリプト・全画面表示の間に設定===============================
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=1 y=1 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;【背景】お稽古部屋
;[chara_mod name="bg" storage="bg/bg_okeiko.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公憂い]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
;3.5回目イベント
;【テキスト全画面】黒茶・和紙風背景に白文字 [テキスト全画面白文字]

十日後[p]
;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
[freeimage layer = 29 time=1000]
;機能ボタン表示
[layopt layer=fix visible=false]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;==========================スクリプト・全画面表示からの復帰準備========================================

[主人公憂い]
[主人公目パチ1回]
[whosay name=磯野 color="dimgray"]
「お迎えの車が到着しました。[r]
[sp]支度は整っておられるようですね」[p]

[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】五色（重いムードに
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]

;【立ち絵】主人公 憂い
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どこか変なところはないかしら？」[p]

[whosay name=磯野 color="dimgray"]
「変なところなどどこにもありません。[r]
[sp]着物もお似合いです」[p]

;【立ち絵】主人公 困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「そう・・・・直前になると緊張するわ。[r]
[sp]なかなか落ち着かなくて、[r]
[sp]粗相をしてしまわないといいのだけれど」[p]

[whosay name=磯野 color="dimgray"]
「いつもの調子でされば心配はございません。[r]
[sp]平常心ですよお嬢様」[p]

[chara_mod name="bg" storage="bg/B4nFWraU42/gosyo.jpg"]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
 
;【SE】足音3人石畳（フェードインアウト）
[playse storage=asioto_isidatami_3nin.ogg loop=false ]

[主人公憂い]
#
２人の侍従に案内されて離宮の広い敷地に入り[r]
緊張で足が少しすくむ[r]
……宮中の方は私の事をどう思われいるのかしら[p]

[chara_mod name="bg" storage="toumei.gif" time=1500]
[eval exp="f.haikei_credit=''"]
#侍従
「[名字]様に事前にお会いしたいとのことで[r]
こちらに晴仁親王様がいらっしゃいます」[p]
;==============================================================================
[chara_mod name="bg" storage="bg/bg_katuraginomiya_gosyo_in.jpg" time=1500]
[eval exp="f.haikei_credit=''"]
;==============================================================================

;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]

;【立ち絵】主人公 困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り]
[主人公口ほほえみ]
「……殿下」[p]
[主人公目閉]
（殿下の姿が見えて嬉しいけれど、緊張で顔がこわばって[r]
[sp]笑みが浮かべられないわ）[p]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]

;【立ち絵】葛城宮 微笑み
[葛城宮ベース軍服]
[葛城宮微笑み]
[葛城宮口笑顔]
[whosay name="葛城宮　晴仁" color=%mp.color]
「よく来てくれた」[p]
[葛城宮眉困り]
[葛城宮口通常]
;【立ち絵】葛城宮 困り顔
「……表情がいつもより硬い。[sp]緊張しているのだな？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 困り 
[主人公目閉じ]
「ええ……殿下。[r]
[sp]少し緊張しておりますわ」[p]


;【立ち絵】葛城宮 微笑み
[葛城宮微笑み]
[whosay name="葛城宮　晴仁" color=%mp.color]
「君はいつもの様に微笑んでいれば問題はない。[r]
[sp]今回の茶会の参加者は、君を客観的に判断できると[r]
[sp]判断した皇后陛下の人選だ」[p]

[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

#
安心させるような葛城宮殿下のとても優しい微笑みにつられて[r]
自然に笑みがこぼれ、緊張がほぐれていく[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 微笑み[r]
[主人公ほほえみ]
[主人公頬染め]
「ふふ、気持ちが落ち着きました。[r]
[sp]殿下、ありがとうございます」[p]

;【立ち絵】葛城宮 真剣
[葛城宮真剣]
[whosay name="葛城宮　晴仁" color=%mp.color]
「……ああ君なら大丈夫だ[r]
[sp]いつもの笑顔が見れて、私も安心した」[p]

#
殿下は力強くうなずき、私は応えるように微笑む[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 微笑み[r]
[主人公目閉じ]
（私はいつもの様に私らしく、[r]
[sp]殿下が好意を寄せて下さった私に自信を持つのだわ）[p]
[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
[葛城宮退場]

;==============================================================================
;【テキスト全画面】　茶室 [テキスト全画面白文字無背景]
[image layer=29 x=1 y=1 storage="bg/I9IhvvVdPo/tyasitu.jpg" time=1000 visible=true]
[eval exp="f.haikei_credit='illustration　by　◆I9IhvvVdPo'"]
[mtext text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
;==============================================================================
[sp]茶事は亭主に、皇后さま、正客に晴仁殿下の[r]
母である葛城宮妃殿下、次客に内親王縁子様、三客に私、[r]
半東にに皇后様の侍従である桂伯爵夫人。[p]
[r]
[sp]今まで習って身につけた作法と流派の違いは[r]
周りの見よう見まねで同じように動作をして[r]
誰かと目が合えば微笑んだ。[p]
[r]
[sp]殿下の「君なら大丈夫だ」という言葉が[r]
魔法の言葉のように[r]
私に力を与え自然な笑みが浮かべられる。[r]
[r]
[sp]茶道での会話は基本的に亭主と正客がして[r]
その趣をくみ取り、[r]
言葉を選びながら場にあった受け答えをする。[r]
[r]
[sp]皇后様と葛城宮妃様の会話は品があり、[r]
興味深く場を和ませるもので[r]
私もその雰囲気に合わせていった。[r]
[r]
そして茶事が終わり追って沙汰を報せると伝えられる。[p]

;===================スクリプト・全画面表示からの復帰準備=================================
[resetfont]
[chara_mod name="bg" storage="bg /B4nFWraU42/ gosyo.jpg"]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[freeimage layer = 29 time=1000]
;機能ボタン表示
[layopt layer=fix visible=true]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;[イベントシーン構築]
;[主人公ポーズ通常]
;==============================================================================

[主人公伏目]
[主人公眉下げ下]
[主人公伏目パチ1回]

[whosay name="桂伯爵夫人" color=%mp.color]
「皇后陛下が[r]
[sp]楽しかったとおっしゃられておりましたわ」[p]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
[主人公口開]
「私などに勿体ないお言葉でございます」[p]
;【立ち絵】主人公 目閉じ
[主人公目閉じ]
[主人公口通常]
（良かったわ、嬉しい……）[p]

;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[whosay name=磯野 color="dimgray"]
「お嬢様お疲れ様でした。[r]
[sp]いかがだったでしょうか？」[p]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ええ。分らないけれど[r]
[sp]悪い雰囲気ではなかったの」[p]

;【立ち絵】主人公 目閉じ
[主人公伏目]
[主人公眉下げ下]
[主人公口ほほえみ]
（それにしても殿下の微笑みで安心できた[r]
不思議ね……きっと、[r]
いつのまにか葛城宮さまの存在が[r]
私の中で大きくなっているのだわ）[p]

;【テキスト全画面】黒茶・和紙風背景に白文字
 [テキスト全画面白文字]
数日後[p]


[手紙皇后さま]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
謹呈　降るような蝉しぐれ、貴方におかれましては[r]
ますますご清祥のことと拝察いたしております。[r]
[r]
[sp]先日のお茶事はとても楽しませてもらいました。[r]
[sp]流石、あの晴仁親王の選んだ方だと[r]
感服いたしておりますの。[r]
[r]
[sp]お茶事に立ち会った者や一族の者と話し合った結果[r]
貴方を晴仁親王の婚約者候補として認めることになりました。[p]
 [r]
[sp]ですが他に何人か晴仁親王の婚約者候補は挙がっており、[r]
その何人かは皆家柄や血統が上位のものです。[r]
[sp]貴方の為にも貴方と晴仁親王は今後も節度をもって[r]
手紙を交わすようにお願いしますわ。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　敬白[r]
[sp]　　　　　　　　　　　　　　　　　　　皇后　薫子[p]
[手紙読了]
[resetfont]
[stopbgm]
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

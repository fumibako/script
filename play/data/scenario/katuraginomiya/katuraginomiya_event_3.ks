;イベント3回目
;一定の淑女度、葛城宮一定の好感度
[背景_庭]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[主人公ポーズ通常]
[主人公通常]
[主人公目パチ1回]


#
皇后様のお印入りの[r]
簡単な挨拶と日時の書いてある[r]
お茶事の招待状と[r]
葛城宮殿下の手紙に目を通す[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[stopbgm]
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]



[テキスト全画面白文字]
 
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
[sp]少々大事になってしまったと反省している。[r]
[sp]だが皇后陛下は誰にでも[r]
分け隔てなく接する方で[r]
純粋に君に興味を持たれたようだ。[r]
 [r]
[sp]君が私との結婚を考えられないなら断って構わない[r]
[sp]だが私の婚約者候補と挙げられるのが嫌でなければ[r]
受けて欲しい[r]
[r]
[sp]いや心から君が受けてくれるのを望んでいるのだ[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　謹言[r]
[sp]　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
 [手紙葛城宮読了 fumi_number=]
 [resetfont]
 
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[イベントシーン構築]
[背景_庭]
[主人公ポーズ通常]
[主人公伏目]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]


[whosay name=磯野 color="dimgray"]
「お嬢さまどうされますか？」[p]

#
心配そうに磯野が問い掛けている[p]

[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「招待を受けますわ。」[p]

;【立ち絵】主人公 照れ目普通
[主人公照れ目普通]
「殿下がどんなに苦労して私を[r]
[sp]婚約者候補の一人に[r]
[sp]しようとして下さっているか分ります[r]
[sp]私も期待に応えましょう」[p]

[whosay name=磯野 color="dimgray"]
「お嬢様なら大丈夫です[r]
お稽古でのお茶立てもお作法も[r]
[sp]身についておられますから」[p]

;--------------------------------------------------------
;3.5回目イベント
;【テキスト全画面】黒茶・和紙風背景に白文字
 [テキスト全画面白文字]
十日後[p]
[resetfont]
[イベントシーン構築]
[背景_庭]
[主人公ポーズ通常]
[主人公通常]
[主人公目パチ1回]

[whosay name=磯野 color="dimgray"]
「お迎えの車が到着しました。[r]
支度は整っておられるようですね」[p]

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
着物もお似合いです」[p]

;【立ち絵】主人公 困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り]
「そう・・・・直前になると緊張するわ。[r]
[sp]なかなか落ち着かなくて、[r]
[sp]粗相をしてしまわないといいのだけれど」[p]

[whosay name=磯野 color="dimgray"]
「いつもの調子でされば心配はございません。[r]
[sp]平常心ですよお嬢様」[p]

[chara_mod name="bg" storage="bg / I9IhvvVdPo / gosyo.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
 

#侍従
「こちらで少しお待ちください。」[p]

;【立ち絵】葛城宮 微笑み
[whosay name="葛城宮　晴仁" color=%mp.color]
「よく来てくれた」[p]
;【立ち絵】葛城宮 困り顔
「表情がいつもより硬いな[r]
[sp]緊張しているのだな？」[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 困り ほほえみ
[主人公困りほほえみ]
「ええ・・・・殿下、[r]
[sp]少し緊張しております」[p]

;【立ち絵】葛城宮 微笑み
[whosay name="葛城宮　晴仁" color=%mp.color]
「君はいつもの様に微笑んでいれば問題はない、[r]
[sp]今回の茶会の参加者は[r]
[sp]君を客観的に判断できると判断した[r]
[sp]皇后陛下の人選だ」[p]

[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

#
安心させるような葛城宮殿下の[r]
とても優しいほほ笑みにつられて[r]
自然に笑みがこぼれる……[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 微笑み[r]
[主人公ほほえみ]
「ふふ、気持ちが落ち着きました。[r]
[sp]殿下、ありがとうございます」[p]

;【立ち絵】葛城宮 真剣
[whosay name="葛城宮　晴仁" color=%mp.color]
「ああ君なら大丈夫だ。」[r]

#
葛城宮さまは力強くうなずく。[r]
その言葉が私を緊張を[r]
解き放つようにふわっと軽くした。[p]
[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]



;【テキスト全画面】
[chara_mod name="bg" storage="bg / I9IhvvVdPo / tyasitu.jpg "]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
 [テキスト全画面白文字]
[sp]茶事は亭主に、皇后さま、正客に晴仁殿下の[r]
母である葛城宮妃殿下、次客に内親王縁子様、[r]
三客に私、末客結子女王様[r]
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
茶事が終わり追って沙汰を報せると伝えられた。[p]
[resetfont]

[chara_mod name="bg" storage="bg / I9IhvvVdPo / gosyo.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]
[主人公目パチ1回]

#桂伯爵夫人
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
純粋にうれしさがこみ上げる[p]

[背景_庭]
[whosay name=磯野 color="dimgray"]
「お嬢様お疲れ様でした。[r]
[sp]いかがだったでしょうか？　」[p]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ええ。分らないけれど[r]
悪い雰囲気ではなかったわ」[p]

;【立ち絵】主人公 目閉じ
[主人公目閉じ]
（それにしても葛城宮さまの一言で安心できた[r]
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
貴方を晴仁親王の婚約者候補として認めることになりました。[r]
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

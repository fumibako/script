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
;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

#
皇后様のお印入りの[r]
簡単な挨拶と日時の書いてある[r]
お茶事の招待状と[r]
葛城宮殿下の手紙に目を通す[p]

[手紙]

[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
拝呈　ときにもう皇后陛下からのお茶事の招待状は[r]
もう届いたであろうか？　[r]
[r]
[sp]残暑厳しき折、今上、皇后両陛下に[r]
君を婚約者候補として認めてもらうように交渉を行った。[r]
[r]
[sp] その結果皇后陛下自ら君を未来の親王妃として[r]
ふさわしいか確かめると言われ、
直接会われるという 運びとなった。[r]
[r]
[sp]少々大事になってしまったと反省している。[r]
[sp]だが皇后陛下は誰にでも分け隔てなく接する方で[r]
純粋に君に興味を持たれたようだ。[r]
 [r]
[sp]もし君が私との結婚を考えられないなら断って構わない[r]
[sp]だがただ私の婚約者候補と挙げられるのが嫌でなければ[r]
受けて欲しい[r]
[r]
[sp] ……いや心から君が受けてくれるのを望んでいるのだ[r]
[r]
謹言
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」
[主人公閉伏目パチ1回]

[whosay name=磯野 color="dimgray"]
「お嬢さまどうされますか？」[p]

＃心配そうに磯野が問い掛けている[p]

;【立ち絵】主人公困り目閉じ
「招待を受けますわ。」[p]

;【立ち絵】主人公 真剣
「殿下がどんなに苦労して私を[r]
[sp] 婚約者候補の中に入れようと[r]
[sp] して下さっている事がにわかります[r]
[sp] 殿下の期待を裏切るつもりはありません」[p]

[whosay name=磯野 color="dimgray"]
「お嬢様なら大丈夫ですお稽古でのお茶立てもお作法も[r]
[sp] 身についておられますから」[p]

;--------------------------------------------------------
;3.5回目イベント
[背景_庭]
[主人公ポーズ通常]
[主人公通常]
[主人公目パチ1回]
[whosay name=磯野 color="dimgray"]
「お迎えの車が到着しました。支度は整っておられるようですね」[p]

;【立ち絵】主人公ためいき
「どこか変なところはないかしら？」[p]

[whosay name=磯野 color="dimgray"]
「変なところなどどこにもありません。着物もお似合いです」[p]
;【立ち絵】主人公 困り
「そう・・・・直前になると緊張するわ。
[sp]なかなか落ち着かなくて、粗相をしてしまわないといいのだけれど」[p]

[whosay name=磯野 color="dimgray"]
「いつもの調子でされば心配はございません。
[sp] 平常心ですよお嬢様」[p]

背景御所
＃侍従
「こちらで少しお待ちください。」[p]

;【立ち絵】葛城宮 微笑み
「よく来てくれた」[p]
;【立ち絵】葛城宮 困り顔
「表情がいつもより硬いな[r]
[sp] 緊張しているのだな？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 困り
「殿下・・・ええ。少し緊張しております」[p]

;【立ち絵】葛城宮 微笑み
「君はいつものように微笑んでいれば問題はない[r]
[sp] 今回の参加者は君を客観的に判断できると判断した[r]
[sp] 皇后陛下の人選だ」[p]

＃
安心させるような葛城宮殿下の[r]
[sp] とても優しいほほ笑みにつられて[r]
[sp] 自然に笑みがこぼれる……[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 微笑み[r]
「なんだが落ち着きました。[r]
[sp] 殿下、ありがとうございます」[p]

;【立ち絵】葛城宮 通常
「ああ君なら大丈夫だ。」[r]

＃
葛城宮さまは力強くうなずく。
その言葉が私を緊張を解き放つようにふわっと軽くした。[p]

背景茶室
[sp] 茶事は亭主に、皇后さま、正客に晴仁殿下の母である葛城宮妃殿下、[r]
次客に内親王縁子様、三客に私、末客結子女王様　半東にに皇后様の侍従である桂伯爵夫人。[p]
[r]
[sp]今まで習って身につけた作法と流派の違いは[r]
周りの見よう見まねでなんとか同じように動作をして誰かと目が合えば微笑んだ。[p]
[r]
[sp] 葛城宮さまの「君なら大丈夫だ」という言葉が魔法の言葉のように[r]
私に力を与え自然な笑みが浮かべられた。[p]
[r]
[sp] 茶道での会話は基本的に亭主と正客がしてその趣をくみ取り、[r]
言葉を選びながら場にあった受け答えをする。[p]
[r]
[sp] 皇后様と葛城宮妃様の会話は品があり、[r]
興味深く場を和ませるものでそして私もその雰囲気に合わせていく。[p]
[r]
茶事が終わったあと追って沙汰を報せると伝えられた。[p]
[resetfont]

背景御所

＃桂伯爵夫人
「皇后陛下が[r]
[sp] 楽しかったとおっしゃられておりましたわ」[p]

;【立ち絵】主人公 微笑み
「私などに勿体ないお言葉でございます」[p]
;【立ち絵】主人公 目閉じ
純粋にうれしさがこみ上げる[p]

[背景_庭]
[whosay name=磯野 color="dimgray"]
「お嬢様お疲れ様でした。[r]
[sp] いかがだったでしょうか？　」[p]

;【立ち絵】主人公 微笑み
「ええ。分らないけれど[r]
悪い雰囲気ではなかったわ」[p]
;【立ち絵】主人公 目閉じ
（それにしても葛城宮さまの一言で安心できた[r]
いつのまにか葛城宮さまの存在が[r]
私の中で大きくなっているのだわ）[p]

＃数日後


[手紙]

[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
謹呈　降るような蝉しぐれ、貴方におかれましては[r]
ますますご清祥のことと拝察いたしております。[r]
[r]
[sp]先日のお茶事はとても楽しませてもらいました。[r]
[sp]流石、あの晴仁親王の選んだ方だと感服いたしておりますの。[r]
[r]
[sp]お茶事に立ち会った者や一族の者と話し合った結果[r]
貴方を晴仁親王の婚約者候補として認めることになりました。[r]
 [r]
[sp]ただまだ他に何人か晴仁親王の婚約者候補は挙がっており、[r]
その何人かは皆家柄や血統が上位のものです。[r]
[sp] 貴方の為にも貴方と晴仁親王は今後も節度をもって[r]
手紙を交わすようにお願いしますわ。[r]
[r]
敬白
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　皇后　薫子[p]
[resetfont]
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

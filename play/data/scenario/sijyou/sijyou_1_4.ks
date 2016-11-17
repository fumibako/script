;///////////////////////////////
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;///////////////////////////////
;=================================================================================_
[テキスト全画面白文字]
;全画面表示
正月を過ぎる頃。 [r]
[r]
私は磯野に四条家に関する行儀作法について、[r]
刻々と学習を進めていた。[p]
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000]
[eval exp="f.haikei_credit='photo by ゆうあかり http://light77.sakura.ne.jp/'"]
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ片手]
「四条家に入るにあたって、[r]
[sp]お言葉など気をつけることは、他にあるかしら？」[p]
*seen0
[whosay name=磯野 color="dimgray"]
[主人公ポーズ通常]
「ご当家におかれましては、何も格別難しい言葉などは使われません」[p]
[whosay name=磯野 color="dimgray"]
「淑女の基礎たる言葉、[r]
[sp]'御機嫌よう。"  "おそれ入ります。" で、お間に合います[r]
[sp]でしょう」[p]
#
磯野は、薫り立つお茶を注ぐと、円熟した古茶のように微笑んだ。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
「……わかりましたわ」[p]
#
私は、そんな磯野に少し癒されながらも、 [r]
;淑女度分岐
[主人公目伏]
[if exp="f.para_shujinkou_shukujodo >= 200"]
夢中で四条家に関わる行儀作法について筆を走らせた。 [p]
[else]
お茶を片手に四条家に関わる行儀作法について筆を走らせた。 [p]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
「ふぅ。 礼法のお稽古とは、また違って覚えることが多いわね」[p]
#
四条家は洋宅となっている為、今まで家で見習ったことは、[r]
ほぼ捨ててしまわないと、ならない。[p]
#
スリッパを寝所以外で履かないなんて、相手の女中頭と、[r]
その女中頭と、電話口で、やり取りをしている磯野以外、[r]
誰が教えてくれるだろうか。[p]
;否、誰に聞けるだろうか。
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
(できる限り、ここで知っておきたいわ)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]

（なにかしらある度に、華織様や、女中頭に聞くなんて、 [r]
[sp]淑女として、恥ずかしいもの)[p]
[whosay name=磯野 color="dimgray"]
[主人公通常]
「……お嬢様、少しお疲れでしょう。 散策などされては[r]
[sp]いかがでしょうか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「ですが……」[p]
[whosay name=磯野 color="dimgray"]
「お帰り遊ばしましたら、また半刻ほどは、お勉強の時間にさせて [r]
[sp]いただきたいと考えております。[r]
[sp]……よろしいでしょうか？」[p]
#
[主人公通常]
磯野は、古茶の含みのような微笑みで、私をニコリと見つめた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(磯野は、頑張りすぎても良くないと言いたいのかしら？ )[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
「ふぅ……わかりましたわ。[r]
[主人公通常]
[sp]少しだけ、そうさせて頂こうかしら」[p]
[主人公目閉]
;=================================================================================_
*seen1
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[主人公通常]
#
町に出た。[r]
町は、新しい年を迎え、楽しげに歩く人々で賑わっている。[p]
そんな店の前には、個性を得た門松達が、行儀よく並んでいた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(やはり、華織様は、こういったお飾りも、お得意様に……？)[p]
#
年末年始の "花に関わる者" の忙しさを想像していると、横から[r]
聞き覚えのある声がして、振り返った。[p]

[whosay name="華織様？"]
「失礼、見返り橋に行くには、どちらに向かえばいいかね？[r]
[sp]久しぶりに来たら随分と店構えや道も変わってしまったようだね……」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(！？ 華織……様？)[p]
#
私の隣には、声も姿も、華織様によく似た洋装の男性が立っていた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「そ、それなら、こちらの路地を抜けて左に曲がれば、直ぐです」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(見れば、見るほど……よく似ていらっしゃるわ)
[p]

#
華織様という課題があれば、[r]
これは間違いなく、"間違い探しの課題"、そのものであった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(いけないわ、はしたなく殿方を見つめてわ)[p]

[whosay name="華織様に似た男性"]
「そうか、ありがとう。やはり、そちらに行けばよかったのか。[r]
[sp]ん……？ 君はどこかで会ったような？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(？)[p]

#
華織様によく似た男性は、顎に指を構えると、眉を寄せて私の顔を[r]
マジマジと見つめた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(どうして、こちらを熱心に見つめていらっしゃるのかしら？)[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(それにこの方は一体？)[p]

#
お付きの人をつけずに出歩いている事は、こちらも同じだったが、[r]
私の家は、そこそこ自由な家風であるからだ。[p]

この様な身なりの良い男性がほうほうと出歩き、[r]
ましては、こちらを穴が開く様に見つめられては、少々、[r]
"あやしき方"と気になってしまう。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私も、先ほどまで、凝視したことを反省すれば、人のことを言えない[r]
[sp]ですけれど……本当に華織様にソックリなんですもの)[p]
#
誰に対するわけでもない言い訳を考えると、頭上の声は、[r]
明るく伸し掛かってきた。[p]
[whosay name="華織様に似た男性"]
「なんだ！[sp]よく見てみれば、君は華織の御内約者ではないか！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？！……貴方様は一体……？」[p]
#
伸し掛けてきた疑問を眉を潜めて尋ねたが、[r]
彼は我関せず、またもや私の顔をシゲシゲと見つめた。[p]

[whosay name="華織様に似た男性"]
「華族画報の写真で見たよりも、随分とまぁ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(！ 何でしょうか……女性を値踏みする様に見つめて、失礼な方)[p]

[whosay name="華織様に似た男性"]
「可愛いらしい方ではないか」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(！　……)[p]

[whosay name="華織様に似た男性"]
「華織が夢中になるのも、無理はないな」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「……おそれ入ります」[p]
#
普段なら"素直に謙遜をする"ところであったが、[r]
得体の知れない人物に私は、磯野に教わった"御機嫌よう" と[r]
"恐れ入ります"の定常句でやり過ごすほかならなかった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(もう、一体誰なのかしら……！)[p]
#
やきもきしている様子に気づいたのか、[r]
ようやく彼は、黒のベルベットの帽子をとり、挨拶を始めた。[p]
;=================================================================================_
[whosay name="四条 一華"]
「失礼、名乗っていなかったね……[r]
[sp]僕は、 四条[ruby text=いち]一[ruby text=か]華。 　華織の兄だ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「！ そうでしたのね……失礼しましたわ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(道理で似ているはず、だわ！)[p]
#
腑に落ちないものが、ようやく落ち着きを得て、[r]
私の心は、不思議な安堵感を感じてしまった。[p]

[whosay name="四条 一華"]
「君は、[名字]家の[名前]様だね？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、華織様には、いつも お心遣いいただいております 」[p]

[whosay name="四条 一華"]
「ほぅ。挨拶も愛らしいではないか。[r]
[sp][名字]様も、長男の僕を選ばず、華織を選ぶとは、[r]
[sp][名字]様も、お目が高い」[p]
#
[ruby text=いち]一[ruby text=か]華と名乗った、華織様のお兄様は、謎の自信に満ちた微笑みをこちらに向けた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(？……華織様とは、また違った方……なのね)[p]

[whosay name="四条 一華"]
「ふ、君みたいな愛らしい薔薇の在り方を隠していたとは、父も意地が悪いな」[p]
#
やはり、似ているのは姿形のみで、中身は、真逆のようであった。[p]
[主人公照れ]
[if exp="f.para_shujinkou_shukujodo >= 200"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「おそれいります」[p]
[else]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(恥ずかしくて、受け答えに頭を抱えてしまいますわ……)[p]
[endif]
#
私は、自身を自信満々に比較される[ruby text=いち]一[ruby text=か]華様をみて、[r]
思わず縁談を持ってきたお父様とお兄様に感謝をしてしまった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
(そういえば……)[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様のお父様が、私の父にお話を持っていかれたのでは、[r]
[sp]ないのですか？」[p]

[whosay name="四条 一華"]
「それもそうだが。[r]
[sp]それなら、僕でも構わないはずだ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(何と言えばよろしいのでしょうか……この方は、面白い方……なのね)[p]

#
歯に物着せず、女性に手慣れたご様子は、[r]
どう転んでみせても、華織様には似ても似つかなかった。[p]

[whosay name="四条 一華"]
「実を言うと僕は、一度見合いに失敗していてね。[r]
[sp]そのせいで、僕自身、結婚にコリゴリしていた時期もあったのさ。[r]
[sp]そういわけで、父が気を使ったところもあっただろうが……[r]
[sp]それでも、男なら大した傷跡でもないだろう？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(まぁ…)[p]
[whosay name="四条 一華"]
「[名字]様や、父が、この僕ではなく華織を選んだのは……[r]
もしかしたら、君が良く知っているのではないかね？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(……華織様とは、昔からのお付き合いだからでしょうか？)[p]
#
女である私には、殿方がなさる"世の中への企み"というものが、[r]
少々、掴み所がなかった。[p]
[whosay name="四条 一華"]
「けど、これだけは言える」[p]
[whosay name="四条 一華"]
「このご時世、[r]
[sp]次男とは、家にとっての捨てがたき才能がなければ、[r]
[sp]将来は分家をするか、他家に養子に行くしかない」[p]

[whosay name="四条 一華"]
「その中で華織は、恵まれている方だ。[r]
[sp]華織は、四条家において、もっとも名誉たる役目を継いで[r]
[sp]いるのだから」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「名誉たる役目？」[p]
[whosay name="四条 一華"]
「あぁ、四条家は、名誉のために華道家を続けている」[p]
[whosay name="四条 一華"]
「名誉は、国ため、もっと詳しくいえば国の文化貢献のためさ」[p]
[whosay name="四条 一華"]
「つまり、華織は、なんら長男として遜色ない役目を得ている」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(そうなのですね……)[p]
[whosay name="四条 一華"]
「今は、華道家競合大会で準賞に甘んじ、大賞を逃しているようだが、[r]
[sp]将来は、祖母にも負けぬ華道家になりえるだろう」[p]
[whosay name="四条 一華"]
「君は、そう思わないかい？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですね……私も、華織様を応援したいです」[p]
[whosay name="四条 一華"]
「ふふ。そうでなくては。[r]
[sp]僕には、そういった才能は皆無だが、その代わりに四条家の基礎を[r]
[sp]支えることなら、容易いことだ。[sp]君と華織の平穏な暮らしを約束しよう」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「おそれ入ります」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(それにしても四条家の基礎って何かしら？)[p]
[whosay name="四条 一華"]
「ん？ 君は女性だから何も知らないのか？[r]
[sp]それとも、華織は、自分のことを話したがらないから知らないのか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
[whosay name="四条 一華"]
「ふ、失礼した。[r]
[sp]これから家族の一員となるものだからかもしないが、[r]
[sp]君のような愛らしい女性を見ていると、つい僕は、本音で話して[r]
[sp]しまうようだ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(……)[p]
[whosay name="四条 一華"]
「言うなれば、何でも教えたくなる。[sp]何でも与えたくなる。[r]
[sp]そんな人だね君は」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「……おそれいります」[p]

[whosay name="四条 一華"]
「四条家の基礎は、財だ。[r]
[sp]財がなければ、国に貢献できない。[r]
[sp]つまり、その役目を担っているのが、外交官であり、父とともに[r]
[sp]四条鉱山の管理補佐をしている僕というわけさ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうなのですね……おそれいります」[p]

[whosay name="四条 一華"]
「ふぅ。[r]
[sp]そんな話をしたって、君に微笑みを与えられそうにないことは、[r]
[sp]わかっていたよ。[r]
[sp]君の期待通り、華織の話でもしようか」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(何と言えばよろしいのでしょうか……この方は、本当に面白い方なのね)[p]

[whosay name="四条 一華"]
「華織は、自分のことは自分で解決しようとして[r]
[sp]話したがらない奴だから、君は、知っておくべきだ」[p]

#
[ruby text=いち]一[ruby text=か]華様は、持っていた暖かいストールを私にかけると、真剣な表情を向けた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「は、はい」[p]
#
正直、私も、先ほどの花咲く[ruby text=いち]一[ruby text=か]華様の口上よりも、[r]
今となっては、真剣な表情をした一華先生の講義に興味がそそられたのは、愛する人を想えば言うまでもない。[p]

[whosay name="四条 一華"]
「華織は、名誉の役目以外に四条家の仲らいを保つ役割も与えられている。 [r]
ふ、いわば、中間管理職だな」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様……)[p]

#
私は、尊大な立ち振る舞いをなさる、一華様をみて、どうにも忙しくやつれる華織様の姿が脳裏をよぎってしまった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(華衣さんのことも、追いかけるのも、また別の意味で……)[p]

#
降り積もる懺悔もさることながら、自分の意思以外に家の役目としても、動かなくてはならない。[p]

その気持ちは、どれだけのものか？[r]
末妹であった私は、どう言ったらよいのかと計かねた。[p]
[whosay name="四条 一華"]
「面倒ごとから逃げてきた、僕が言える立場ではないが、[r]
[sp]華織、今まで四条家の為に相当、自身を捨ててきたはずだ」[p]

[whosay name="四条 一華"]
「男の身にしては、外で遊ぶことも知らないまま、修行にあけくれ、[r]
[sp]友人も少ない。……いや、いるのかだって怪しい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(きちんといますわ！……私のお兄様しか知りませんが……)[p]

[whosay name="四条 一華"]
「弟が我儘に泣けば、自分の持っているものをあげ、[r]
[sp]妹が弟と折り合いが悪く悩み叫べば、家族と周りに取り計らって[r]
[sp]良いように環境を見繕う」[p]
[whosay name="四条 一華"]
「彼奴は、そんな頼りない男なのさ。[r]
[sp]……いい意味でね」[p]

[whosay name="四条 一華"]
「なんにせよ、[r]
[sp]華織は、僕から見たら、まだまだ頼りない男だが、[r]
[sp]君は、そこそこ大事にしてやってくれ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]

[whosay name="四条 一華"]
「Pardonne-moi！……長話に付き合わせてしまったな。[r]
どうも、君の愛らしさに惹かれてしまうようだ。
暫くは此処に滞在している、困ったことがあったら僕に頼ってくれ」[p]

#
[ruby text=いち]一[ruby text=か]華様は、ベルベットの帽子を被りなおし、颯爽と四条家への方角に向かっていく。[p]
[whosay name="四条 一華"]
「ロサ・ブランカの君、またいずれお会いしよう！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ご、ごきげんよう」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様の顔で言われると、もどかしいわね……私も帰りましょうか……)[p]
#
私は、磯野に改めて教わった言葉の有効性を噛み締めながら、新たな学習の為に家路へと急いだ。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(ストール、またお会いしたときに返しましょうか……)[p]
；==============================================================================================================
#
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
@jump storage="test_sijyou.ks"
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

;書き終わりましたら元の場所に写します
;間を埋める為の凡庸用の返信を追加　口調は見合い前か悩む　両方書いておこうかな
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[eval exp="sf.FButton='OFF'"]
;テスト以外はコメはずす
;@jump target=*fumi_cmmon
*test
[if exp=tf.test_sijyou==true]
*test_page1
[glink target="*midori" text="緑の石" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="*midori2" text="緑の石２回目" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="*midori2" text="緑の石３回目" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="*ichi_nichi" text="一日のはじまり" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="*ichi_nichi2" text="一日のはじまり２" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="*ichi_nichi3" text="一日のはじまり３" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]
[glink target="*neko" text="猫" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]
[glink target="*neko" text="猫2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 color=white]
[glink target="*page2" text="次へ" graphic="select_waku_x500.png" size=20 width="250" x=100 y=500 color=white]
;ページ停止に地点にジャンプ
@jump target="*common"
*page2
[glink target="*neko3" text=猫3" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="*neko4" text=猫4" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="*kiki_jyouzu1" text=聞き上手" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="*kiki_jyouzu2" text=聞き上手２" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="*kiki_jyouzu2" text=聞き上手３" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]

*common
;[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=550 color=white]
;[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=600 color=white]
[s]
[endif]

*fumi_cmmon


*sincya
[テキスト全画面白文字]
新茶の話題[p]
;///////新茶の話題///////
[手紙四条 fumi_number=]
[名前]、手紙をありがとう。[r]
[r]
もう、新茶の季節なのですね。[r]
僕も、あの場所をよく通りますが、[名前]の季節を[r]
感じ取る感性には目を見張るものがありますね。[r]
[r]
なんだか、[名前]の手紙を読んでいたら、お茶の[r]
いい香りがしてきました。[p]
[r]
[r]
追記[r]
[r]
お茶を飲みながら、季節の花を眺める時間が[r]
とても落ち着く時間です。[r]
[名前]さんは、どんな時にお茶をいただきますか？[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*sincya_2
[テキスト全画面白文字]
新茶の話題[p]
;///////新茶の話題///////
[手紙四条 fumi_number=]
[名前]、手紙をありがとう。[r]
[r]
この前、見晴らしの良い山通りを散策していたら[r]
山岳の合間に小さな茶畑を見つめました。[r]
茶畑の上で、風車が回っているのは、何か意味が[r]
あるのでしょうか？[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*sincya_3
[テキスト全画面白文字]
新茶の話題[p]
;///////新茶の話題///////
[手紙四条 fumi_number=]
[名前]さん、手紙をありがとう。[r]
[r]
あの風車は扇風機っていうらしいです。[r]
暖かい空気の層を各藩する事で、霜の被害を防ごいで[r]
いるんだそう。[r]
そういった努力によってより美味しいお茶が出来てい[r]
ると思うと、ありがたいですよね[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*satuki
[wait time=10]
[テキスト全画面白文字]
さつきの話題[p]
;///////さつきの話題///////
[手紙四条 fumi_number=]
[名前]。手紙をありがとう。[r]
[e]
百年の月日の経つ、さつきとは見事な[r]
ものでしょうね……。[r]
盆栽は、小さな箱庭のように思えて、[r]
生花とは、違った面白さがあるよね[p]
あの小さな世界の中の大きな木の下で、[r]
のんびりと過ごしてみたい。なんて思うのは、[r]
僕だけでしょうか？[p]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*sisyu
[wait time=10]
[テキスト全画面白文字]
詩集[p]
;///////さつきの話題///////
[手紙四条 fumi_number=]
[名前]。手紙をありがとう。[r]
素敵な詩集を見つけたんだね[r]
[r]
高く競い合う葉の中に[r]
咲く薄紫の上品の菖蒲の花。[r]
凛とした姿は貴婦人のよう。[r]
[r]
僕も詩人になれるでしょうか？[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]


*kiki_jyouzu
[wait time=10]
[テキスト全画面白文字]
聞き上手と話し上手[p]
;///////聞き上手と話し上手の話題///////
[手紙四条 fumi_number=]
[名前]へ　手紙をありがとう。[r]
[r]
そんなことがあったんだね[r]
よく話す方って話題が尽きないですね[r]
僕は、文矢の前以外では、聞く側かも？[r]
[r]
今の[名前]さんは、どちらかと言えば[r]
話を聞く方ですか？[r]
それとも、話をする方ですか？[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]


*kiki_jyouzu_2
[テキスト全画面白文字]
[wait time=10]
聞き上手と話し上手　凡庸[p]
;///////聞き上手と話し上手の話題2///////
[手紙四条 fumi_number=]
[名前]。手紙をありがとう。[r]
[r]
今日は、どんな話をしたかな？[r]
[r]
時には、相手の話をゆっくり聞くことも[r]
大事だね。　でも話したくなったら僕に[r]
話してね。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]


*kiki_jyouzu_2_1
[テキスト全画面白文字]
[wait time=10]
聞き上手と話し上手　凡庸[p]
;///////聞き上手と話し上手の話題2///////
[手紙四条 fumi_number=]
[名前]さん。手紙をありがとう。[r]
[r]
今日は、どんな話をされましたか？[r]
[r]
時には、相手の話をゆっくり聞くことも[r]
大事ですね。　でも話したくなったら僕に[r]
お話してください。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]


[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*kiki_jyouzu_3
[テキスト全画面白文字]
[wait time=10]
聞き上手と話し上手[p]
;///////聞き上手と話し上手の話題2///////
[手紙四条 fumi_number=]
[名前]さん。手紙をありがとう。[r]
[r]
[名前]さんが楽しく話をしてくれる姿を[r]
思い描くと心が穏やかになります。[r]
[r]
今日あったこと、気づいたこと[r]
何気ないことを教えて下さると嬉しいです[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*syokuji
[テキスト全画面白文字]
[wait time=10]
『食事』[p]
;///////聞き上手と話し上手の話題2///////
[手紙四条 fumi_number=]
[名前]。手紙をありがとう。[r]
[r]
暖かいハムボーグ、ステーキは、[r]
とても美味しいですよ。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*syokuji_2
[テキスト全画面白文字]
[wait time=10]
『食事』[p]
;///////聞き上手と話し上手の話題2///////
[手紙四条 fumi_number=]
[名前]さん。手紙をありがとう。[r]
[r]
お父様のお許しを得てからになってしまいますが[r]
ウチで食事会を行いたいですね[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*midori
[テキスト全画面白文字]
[wait time=10]
『緑の石』[p]
[手紙四条 fumi_number=]
[名前]。手紙をありがとう。[r]
[r]
調べてみたら、翡翠の天然石のようだね[r]
僕も、この前、宝石商の知人から、[r]
天然石の話をしたところ、[r]
腕の良い職人を雇ってるそうです[r]
この石の持ち味をそのままに加工してくれる、[r]
そうなので、また、[名前]に贈りますね[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*midori2
[テキスト全画面白文字]
[wait time=10]
『緑の石』[p]
[手紙四条 fumi_number=]
[名前]。手紙をありがとう。[r]
[r]
もう少し待ってくれると助かるよ。[r]
楽しみにしていてください。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*midori3
[テキスト全画面白文字]
[wait time=10]
『緑の石』２[p]
[手紙四条 fumi_number=]
[名前]。この前の手紙の件です。[r]
[r]
どうでしょうか？　[r]
台座下には透かしが入っているため、[r]
光が入って側面からの見た時のデザインも
美しいかと思います。[r]
お送り致しました帯どめをお喜びいただけ[r]
ると幸いです。[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

*ichi_nichi
[テキスト全画面白文字]
[wait time=10]
『一日のはじまり』[p]
[手紙四条 fumi_number=]
[名前]へ。手紙をありがとう。[r]
[r]
そうだね。一日のはじまりに良いことがあると[r]
その日の気分がよくなることもあるよね[r]
思った通りに花を生けることが出来たときなんか、[r]
嬉しい気持ちになるよ。[r]
[名前]も楽しい一日が過ごせますように[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*ichi_nichi_2
[テキスト全画面白文字]
[wait time=10]
『一日のはじまり２凡庸』[p]
[手紙四条 fumi_number=]
[名前]へ。手紙をありがとう。[r]
[r]
今日は、よいことがありましたか？[r]
[名前]も楽しい一日が過ごせますように[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*ichi_nichi3
[テキスト全画面白文字]
[wait time=10]
『一日のはじまり３変化』[p]
[手紙四条 fumi_number=]
[名前]さんへ。手紙をありがとうございます。[r]
[r]
一日のはじまりに[名前]さんからの[r]
手紙が届くと嬉しい気持ちになります。[r]
[名前]にも、幸せな一日を過ごせますように[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*neko
[テキスト全画面白文字]
[wait time=10]
『猫』[p]
[手紙四条 fumi_number=]
[名前]。いつも手紙をありがとう。[r]
[r]
僕は、猫も犬も大好きだよ。[r]
一人で歩いている時に人懐っこい猫を見つけ[r]
てしまうと撫でてしまうよね[r]
[名前]さんは、どちらが好きですか？[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*neko2
[テキスト全画面白文字]
[wait time=10]
『猫 凡庸』[p]
[手紙四条 fumi_number=]
[名前]。いつも手紙をありがとう。[r]
[r]
今日は、猫を見かけましたか？[r]
[名前]は、猫が好きなんだね[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*neko3
[テキスト全画面白文字]
[wait time=10]
『猫２』[p]
[手紙四条 fumi_number=]
[名前]さん。いつも手紙をありがとう。[r]
[r]
実は、この前。[r]
泣いていた子供に出会ったんだ。[r]
それで理由を聞いたところ[r]
家で猫を飼えないから捨てないと[r]
いけないらしくって……[r]
ウチで飼うことになったんだ。[p]
といっても、ウチには猫アレルギーの[r]
祖父がいるから貰い手が見つかるまで[r]
の間になってしまうのだけど……[r]
[r]
既に愛着が湧きそうだよ[r]
[r]
また機会があったら、[名前]さんに[r]
近況を報告するよ[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*neko4
[テキスト全画面白文字]
[wait time=10]
『猫２』[p]
[手紙四条 fumi_number=]
[名前]さん。いつも手紙をありがとう。[r]
[r]
[r]
子猫は、健やかに大きくなっていますよ。[r]
ちなみに、今は、白い足でしっかり立ちあがって[r]
僕の様子を見ています。[r]
（もし、この手紙に足跡がついていたら[r]
申し訳ない）[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*neko4
[テキスト全画面白文字]
[wait time=10]
『猫３』[p]
[手紙四条 fumi_number=]
[名前]さん。いつも手紙をありがとう。[r]
[r]
[r]
先日、引き取り手が見つかったらしく[r]
別れの時が近いようです。[r]
それまでに、後悔がないように可愛がろうとは[r]
思っている。　でも寂しくなるね。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*neko5
[テキスト全画面白文字]
[wait time=10]
『猫３』[p]
[手紙四条 fumi_number=]
[名前]さん。いつも手紙をありがとう。[r]
[r]
[r]
今日は、引き取りの日でした。[r]
家族の中で僕に一番なついていました。[r]
体重もみるみる多くなってとても天真爛漫で健康な[r]
子でした。[r]
家に残った猫じゃらしを見ると切なくなります。[r]
どうか、幸せでありますように。[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

[テキスト全画面白文字]
[wait time=10]
『道』[p]
[手紙四条 fumi_number=]
[名前]へ。手紙をありがとう。[r]
[r]
道案内をしてあげたんだね。[r]
違う町から来たのかな？[r]
あの迷いやすい裏通りからやってくると、[r]
向かってる先が合っているか不安になるの[r]
かもしれない。[r]
そんな時に優しい[名前]がいてくれて[r]
その方は、どんなに安心したのだろう。[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[テキスト全画面白文字]
[wait time=10]
『道２』[p]
[手紙四条 fumi_number=]
[名前]さんへ。手紙ありがとう。[r]
[r]
向かってる先が合っているか不安になる[r]
こともあった。[r]
そんな時に優しい[名前]がいてくれて[r]
僕、どんなに安心したのだろう。[r]
ありがとう。
道は人の出会いそのものでもあるの[r]
かもしれない[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

[テキスト全画面白文字]
[wait time=10]
『好きな曲』[p]
[手紙四条 fumi_number=]
[名前]へ。手紙ありがとう。[r]
[r]
独逸の歌曲が好きだよ。[r]
懐かしくて切ない気持ちになる曲なんだ。[r]
連作歌曲だから詩もついている。[r]
～僕の心をひたしたい[r]
ユリの中のうてなにひたしたい[r]
ユリは響かせるだろう[r]
僕の恋人への歌を～[r]
一度聴いたら忘れられなくなる、[r]
そんな曲だと思うよ[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

[テキスト全画面白文字]
[wait time=10]
『好きな曲２』[p]
[手紙四条 fumi_number=]
[名前]へ。手紙ありがとう。[r]
[r]
つづきの詩を聞きたいの？[r]
～いとしい恋人よ[r]
 いとしい恋人よ、僕の胸に手を当ててごらん、[r]
 ほら、聞こえるだろう？[r]
部屋の中でトントンやっているのが。[r]
 陰険な、意地の悪い大工が[r]
ひとりここに住み込んで、[r]
僕の棺桶を作ってるのさ。～[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*henka1
[手紙四条 fumi_number=]
[名前]へ　手紙をありがとう。[r]
[r]
変わらないでいてほしいものって何だろう。[r]
[r]
あえて、いうなら今使っている 花鋏 でしょうか[r]
そこそこ切れ味もよく、耐久性もあり研ぎやすいので重宝しています。[r]
これ一本で、花も枝も、紙もリボンも切れますので、ありがた花鋏 です[r]
[名前]さんには、そういったものはありますか？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙 四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*henka2
[手紙四条 fumi_number=]
[名前]へ　手紙をありがとう。[r]
[r]
変わらないものなんてあるのでしょうか。[r]
どこかにそういったものがあるなら[r]
置いていかれた愛なのでしょうか？[r]
[名前]さんには、そういったものはありますか？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙 四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

*henka3
[手紙四条 fumi_number=]
[名前]さんへ　手紙をありがとう。[r]
変わらない日々や景色が[名前]さんのおかげで[r]
変わっていきます。[r]
[名前]さんへの愛も、もっと深まっていくように[r]
[名前]さんには、そういったものはありますか？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙 四条読了 fumi_number=]

[if exp=tf.test_sijyou==true]
[clearstack]
@jump target="*test"
[endif]

;/////////////////ここからは戻り処理//////////////////////
*back_test
[イベントシーン終了]
@jump storage="test_sijyou.ks"
[s]
*title
@jump storage="title.ks"
[s]

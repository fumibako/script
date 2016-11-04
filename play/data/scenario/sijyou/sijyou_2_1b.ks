*test
[if exp=tf.test_sijyou==true]
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[イベントシーン構築]
テストページからはじめます[p]
[主人公ポーズ通常]
[主人公通常]
[主人公憂い]
[endif]
*start
;表情は前回の続きから
;〜〜〜シーン 急降下〜〜〜
;あらすじ。敵の登場 邪魔がはいる 先生が湖池屋さんのお嬢様を連れてくる 途中で路線を決定したのでまだ飛び飛びな部分があります

;エスコート・・・介助？
[whosay name="華織" color="olivedrab"]
「もし、分からないことがあったら仰ってください、こちら側からお手伝いしますので」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「は、はい……」[p]
[主人公眉下げ下]
[主人公口通常]
(正面に座っていらっしゃったのは、私をお手伝いする為でしたのね)[p]
;なくてもいいかも↑
;まず、床の間から畳一帖を隔てた位置に座り、花に向かって一礼してから拝見します。
;次に全体の構成、花材の取り合わせ、花器、花台までをよく拝見し、花を生けた人へ感謝の一礼をしましょう。
[whosay name="華織" color="olivedrab"]
「……」[p]
#
ふと、華織様のしなやかに動いていた手が止まり、その瞳が不安気に私の目を捕えた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
[主人公口開]
「どうかされましたか？」[p]
[主人公口通常]
;ひとつの疑問に対して会話をぶつける
[whosay name="華織" color="olivedrab"]
 「……[名前]さん。やはり不快にさせてしまったでしょうか？」[p]
 ;主人公の気持ちに気づいてたよ
#
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口開]
「えっ……？！」[p]
[主人公口通常]
;今日来た理由を話す
[whosay name="華織" color="olivedrab"]
「今日は、祖母から[名前]さんと華道家としての仕事が出来るときいて、[r]
[sp]喜び急いで来てしまいましたが」[p]
[whosay name="華織" color="olivedrab"]
「何の考えもなく、[名前]さんを呼び出してしまった形です」[p]
[whosay name="華織" color="olivedrab"]
「……ご迷惑でしたよね[r]
[sp]まだ婚約"だけ"している身の[名前]さんを四条家の名誉の為に[r]
[sp]呼び出して良い道理なんて、僕には」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
[主人公口開]
「そんなことは……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ムッ]
[主人公目閉]
(そんな風に仰らないで下さい……四条家に嫁ぐ"淑女として"、[r]
[主人公憂い]
[sp]これくらいの緊張は……)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(緊張……？ 違うわ……私、緊張していた事よりも……もっと違う何かが)[p]
;///////////////////////////
;[whosay name="華織" color="olivedrab"]
;「僕という本性は、[名前]さんと文矢に出会うまで、華道という[r]
;[sp]相手しか接しておらず……酷く心が無く、人の心を見誤って[r]
;[sp]しまう、無情な人間性なのです……」[p]
;「だから、知らぬうちに、人を、[名前]さんを不快にさせてしまっている……」[p]
;(未だに大賞１つもとらず)
;///////////////////////////
[whosay name="華織" color="olivedrab"]
「ご迷惑をかけてしまって申し訳ありません」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
(華織様、待って下さい、迷惑だなんて、謝らないで下さい！[r]
[sp]……一人で抱え込まないで下さい……)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(私……今の気持ちを華織様に伝えたいのに……)[p]
[whosay name="華織" color="olivedrab"]
「次からは、」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口開]
「待ってください！」[p]
;四条目大
#
[主人公口通常]
私は、初めて華織様の声を遮って、自身の声を荒げてしまった。[p]
;四条伏せ目
#
華織様の驚かれた顔が、遠く感じる。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ムッ]
「……そうではないのです……」[p]
;///////////////////////////
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;(華織様は、華衣様の事を思い悩んだり、私の事を気遣って下さる……)[p]
;(心が無いなんて思うほどに人のことを考えようとしていらっしゃる[r]
;[sp]清廉な方だと思います)[p]
;///////////////////////////
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
(華織様に伝えないといけないのに……ごめんなさい。[r]
[sp]私、今[ruby text=いだ]抱いている、自分の気持ちがわからないのです)[p]

#
華織様との間を埋めようと、考えを巡らす。[r]
;二人の距離を埋めるために考えを巡らすが答えは靄に消えて見えない
――その時だった[p]
#
[whosay name=華道の先生 color=%mp.color]
「湖池屋お嬢様、待ってください、今日の教室は……」[p]
#
;音の欠如
;静粛な空気の中に慌ただしい声がこだます。[p]
閑寂な二人の境界線に慌ただしい声が震え響く。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
[主人公横伏目]
（何でしょうか……？）[p]
#
私は、声がした先を振り返った。[p]
;教室の入り口から焦ったような高い声がして、私たちは、振り返った[p]

[whosay name=湖池屋男爵令嬢 color=%mp.color]
[主人公目伏]
「ごきんげんよう お二方さま」[p]
#
そこには、流行りの洋服を嫌味なく纏う、都会的な淑女が佇んでいた[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どちらのご令嬢でしょうか……)[p]
#
"湖池屋様"と呼ばれた令嬢は、 一点の曇りもない瞳で私の後ろにいた華織様を見つめていた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様を見て……いらっしゃるの？)[p]
#
言葉にならない胸のざわめきが、身体を強張らせる[p]
;名状しがたいできない胸のざわめきが、身体を強張らせた[p]
[主人公目閉]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「失礼しますわ」[p]
;ゴメンあそばせ？
#
湖池屋令嬢は、私に手短な挨拶を済ますと、 華織様の前へと割って入っていった。[p]
[whosay name=湖池屋男爵のお嬢様 color=%mp.color]
「この方が四条綾花様の……本当、噂通りに麗しい方ですのね」[p]
;艶麗だと女か 淡麗だとビールがよぎる
;祖母と比べらた気がして嫌な気持ちな華織
[whosay name="華織" color="olivedrab"]
「なんでしょうか？」[p]
;主人公、割って入られ嫌な気持ちになる
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
(……)[p]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「先生……いえ、……廊下で子女たちの話し声が耳に入りましたの」[p]
;説明すぎるけど、イベントしてないと困るなぁ
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「国の文化貢献を担う華道家、四条綾花様の弟子であり、[r]
[sp]孫であらせる、美しい華道家がいらっしゃるとお聞きして……」[p]
;短くてもいいならカットする 続きが悪いですね
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「私、好奇心のあまり、いてもたってもいられませんでしたの」[p]
#
ふわりと笑顔を見せる湖池屋様。[p]
彼女のスラリとした身長と都会的な洋装も、あいまって、大人らしい理想の淑女に見えてしまった。[p]
;性格が淑女かわからないけど
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
(……)[p]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「申し遅れましたわ。[sp]私、湖池屋 矢須子です」[p]
;スコーンスコーンから命名 ツボありがとうございます
;長いので切ろう

[whosay name=湖池屋男爵令嬢 color=%mp.color]
「父が、こちらの教室を借しながら、私自身も淑女見習いとして、[r]
[sp]こちらの先生と綾花様に華道の教えを頂いているんですの」[p]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「ちなみに 湖池屋家は、この裏にございますわ[r]
[sp]……宜しければ、綾花様と、ご一緒に湖池屋サロンにお遊び来てくだ[r]
[sp]されまし……」
[主人公目大]
[p]
;お菓子くれるよ
;#
;彼女は、畳に両膝をつくと、楚々と挨拶を済ました。[p]
;湖池屋はずっと立ってるのかな？の疑問で

#

――　綾花様と、ご一緒に湖池屋サロンにお遊び来てくだされまし[p]
#
湖池屋様の ある言葉が、引っかかり、心に黒い靄を作っていく。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
(華織様のお祖母様と一緒に……？)[p]
#
どうしてか、私は華織様と華織様のお祖母が湖池屋様の家に入っていく後ろ姿を思い浮かんでしまった。[p]
#
華織様なら、"私の為なら"、ありえないはずなのに[r]
……四条家の名誉の為なら、そうともいえない。[p]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;(華織様は、"私の為なら"、きっと行かないでくれるはずだわ……でも、四条家の名誉の為なら、もしかしたら、行ってしまうのかもしれない)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(私の為なら？……そんな風に考えてはいけないわ)[p]
#
;余裕をもって一歩引けるような、お呼ばれできるような淑女
華織様の為に淑女になれない自分の惨めさと悔しさが込み上げてくる。[p]
;プレイヤー怒られそうね〜
#
華族とは、資本は基礎。名誉は国の為に第一に考えるのが古式由来の思想。[p]
;他ルート配慮[r]
ましては、四条家は、そういった思想を大事にしており、[p]
;[r]でもいいのかもしれない
鉱山業を基礎とし、[r]
家の名誉の為に代々、華道を行っているとお兄様にも聞かされている[p]
;兄か、お見合い前に磯野が説明した方がいいかもしれない

[whosay name=湖池屋男爵令嬢 color=%mp.color]
「私、花と絵画が好きなんですの[r]
[sp]今日のお稽古は、華織様も、ご一緒にして下さったら、とても心強いわ」[p]
;理由2として、どうでしょう？
;華織(今はちょっと文奈さんと話してるからな、ちょっと面倒だな……でもお祖母様のお客様の様ですし、どう断ろうかな)
[whosay name="華織" color="olivedrab"]
「……今日は、難しいですが、[r]
[sp]また今度、機会がありましたら祖母と共に参りますね」[p]
;華織(…無難なところで)

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目大]
(！ 華織様、断って下さらないのですか？)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
(いえ……こちらは、お祖母様のお付き合いされている家ですから……[sp]
[r]だから私は……)
[主人公目閉]
[主人公口ムッ]
[p]

;湖池屋、察し。
[whosay name=湖池屋男爵令嬢 color=%mp.color]
[主人公目伏]
「……そうですか。[r]
[sp]こちらのお教室は、湖池屋家の敷地でもありますから、いつでも構いませんわ」[p]
[whosay name="華織" color="olivedrab"]
「はい……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
(華織様、微笑まないで下さい……)[p]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「私、今年で18となります。[sp]中々の歳でしょう？」[p]
;いきなり歳をきくなら名乗ってみたら？
[whosay name="華織" color="olivedrab"]
「いえ……」[p]
;華織(ふーん。文奈さんより年上の方なんだな〜)
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「失礼しますが、華織さまは、お幾つなのでしょうか？[r]
[sp]先ほど、22と、子女たちの噂で聞きましたけれど、とてもお若く見えましてよ」[p]
;この時点では微笑み
#
華織様は、男爵令嬢に歳のことを聞かれ、一瞬だけ、華織様の眉を曇らせた。[p]
;憂い
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横伏目]
(華織様、もしかして歳のことを気になさっていらっしゃる？)[p]
;華織は月ではなく、ただの人ということ
[whosay name=湖池屋男爵令嬢 color=%mp.color]
[主人公目伏]
「そうなのですね……失礼しましたわ[r]
[sp]華織様のように美しい方ですと、どうも浮足たってしまいますわ。[r]
[sp]ところで、華織さまは、お手紙の相手は決められまして？」[p]
#
男爵令嬢も気づいたのか、それとなく謝り、本題へと挿し迫った。[p]
[whosay name="華織" color="olivedrab"]
[主人公横伏目]
「えぇ。 ようやく。来月には結納をと、決めております」[p]
;華織(色々とあって文奈さんとは長かったなぁ というか早く終わらないかなー 文奈さんに嫌われたりしたらやだし)
;主人公少しホッとする
[主人公目閉]
[主人公汗]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「あら、残念ですわ……。[r]
[sp]でも、今日お会いできたのは感謝させていただきますわね」[p]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
[主人公横伏目]
「華族とは、国の為に生かされているもの。[r]
[sp]ほんの少しの間だけ夢を見させて頂いてありがとうございましたわ」[p]
[whosay name="華織" color="olivedrab"]
「？ えぇ」[p]
;華織(この方は、なんでしょうか？)
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「ふぅ、世の中の手紙のお相手が皆、華織様のような素敵な殿方であればいいですのに！」[p]
[主人公目伏]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「失礼。私、有名な方や運命を感じる方には、自身が"身請け"されるまでに[r]
[sp]会っておきたい性分でしたので！ [r]
[sp]それでは、ごきげんよう。その時は、夫人としてお会いしましょう」[p]
#
男爵令嬢は、引き際も明快にして笑ってみせた。[p]
;結局彼女も手紙の範囲には逆らえない皮肉
;華織(この方も、華族としての責任があるのでしょうね)
#
よほど場慣れしてるのか、はたまた、さほど好意を持ってして、現れたのではないのか[p]
;なくてもいいかも
#
いずれにせよ。若干、強引さはあっても、社交界では、殿方を優先するのが常識であったし、
彼女は悪い人ではなさそうに見えた。[p]
;なくてもいいかも
#
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
(湖池屋様は悪い人ではない……と思うわ。[r]
[sp]お相手が決められているからこそ、ただ一目、華織様を見ようと[r]
[sp]したかったのかも……しれません……)[p]
[whosay name=華道の先生 color=%mp.color]
「湖池屋様、今日の教室は隣です」[p]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「えぇ、そうでしたわね。今日は、特別授業をお願いしていたのよね。 [r]
[sp]送り迎えご苦労様。[r]
[sp]では、参りましょうか。[sp]それでは、お二方、失礼しますわ！ 」[p]
[whosay name="華織" color="olivedrab"]
「はい、では」[p]
;華織(やっと、終わった…。なんだったのでしょう)
#
華織様が、余所行きの微笑みで、湖池屋様を見送っていく[p]
;華織(うちの兄と本音でお付き合いするなら、あぁいった女性が良いのかもしれませんね)
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
(なのに、嫌な気持ちになるのは何故かしら？)[p]
[whosay name="華織" color="olivedrab"]
「[名前]さん、お待たせしてしまい申し訳ありません」[p]

;〜〜〜〜〜〜シーン急上昇〜〜〜〜〜〜
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横伏目]
[主人公口開]
「華織様は、あぁいった淑女らしい方がお好みでしょうか」[p]
[whosay name="華織" color="olivedrab"]
[主人公目伏]
[主人公口ムッ]
「？ 淑女……？」[p]
;華織(あれが淑女？にしては言葉がたつような？)
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横伏目]
[主人公口開]
「大人のような気品を持ち合わせていらしゃいましたわ。それに明快で[r]
[sp]受け答えも、はっきりなさってました」[p]
[主人公目伏]
[主人公口ムッ]
;おられました なさっていられました？
;華織(あぁ、もしかして、これは)
#
私は、すぐに『違う』と言ってくれない華織様に気が立ってしまった。[p]
[主人公目閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様も、しっかりと湖池屋様に対して、私との事をお答えくださって[r]
[sp]いますのに……私、何でこんな事を……)[p]
[whosay name="華織" color="olivedrab"]
「[名前]さん。　僕は、社交的な常識には疎い男ですので、[名前]さんが[r]
[sp]おっしゃるのような"淑女"というものが分かりませんが」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
[主人公口ムッ]
「……」[p]
[whosay name="華織" color="olivedrab"]
「昔からのお付き合いです。[名前]さんがいうどんな淑女が現れた[r]
[sp]としても、僕の好みは、"そのままの"[名前]さんが、好きですよ」[p]
;少し華織を見る
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横伏目]
[主人公口ムッ]
[主人公頬染め]
[主人公ポーズ指]
「……」[p]
[whosay name="華織" color="olivedrab"]
「花を美しいと思うように[名前]さんを美しいと思っています」[p]
;うまくいかない気持ちを伝える 共用する
#
[主人公ポーズ通常]
[主人公横目閉]

私は先ほどの花を見つめていた華織様のお姿が、脳裏をよぎった。[p]
;私は先ほどの生徒を見守る"華織お兄様の姿"が脳裏によぎった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様がおっしゃる花への気持ちは、どんな言葉よりも…… )[p]
#
私は、このまま黙っているのも[ruby text=い]居た[ruby text=たた]堪れなくなって、
[ruby text=つか]掴み[ruby text=どころ]所のない[r]気持ちを打ち明けることにした。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横伏目]
[主人公口ムッ]
[主人公頬染め]
[主人公ポーズ指]
「……ごめんなさい。 華織様も湖池屋様も、とても素晴らしい方なのに[r]
[sp]何故だか、とても嫌な気持ちになって……」[p]
#
[主人公目閉]
[主人公ポーズ片手]
打ち明けた後、心を焼くような痛みで瞼を閉じてしまった。[p]
[whosay name="華織" color="olivedrab"]
[主人公横伏目]
[主人公口通常]
「いいえ、四条家の責務とはいえ、[r]
[sp][名前]さんとの話を途中にしたまま、他の方への話を長引かせてしまい[r]
[sp]申し訳ありませんでした……」
[主人公驚]
[p]
#
華織様は、驚くほどに懇切丁寧に非礼を詫びられた。[p]
[主人公ポーズ通常]
;他に言い回しあるか考えている
;詫びた？ 詫びられた？ お辞儀した？
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉困り]
[主人公ポーズ指]
[主人公頬染め]
「いえっ！ その、いいんです！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
(華織様って、少し、私の事を"考えすぎて"いらっしゃる所があるのかも……)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横目]
(ですけど、嬉しいと感じてしまう私がいる……)
[主人公目閉]
[p]


;〜〜悟りの時〜〜〜出荷よー(´・ω・`)
#
心に暖かな灯火を感じてしまう。[r]
そんな私の心は、ようやく１つの答えを導き出した。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目大]
(！ そうだわ、私、華織様にお近づきしたかったのですわ……)
[主人公眉下げ下]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
(華織様が、あまりに聡明で、憧れに感じていたから……[r]
[sp]あの月のように遠く感じて……)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(心も立場も全て……隣にいたくて、華織様の為になりたいのに、[r]
[sp]上手くできなくて寂しかった)
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉困り]
(自信に満ちた湖池屋様のお姿が悔し
[主人公目閉]
…かった…)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
(淑女として、失格ですよね)[p]
#
[主人公口ほほえみ]
[主人公眉下げ下]
[主人公目伏]
[主人公頬染め]
落ちつきを取り戻したところで、私は、華織様を真っ直ぐ見つめた。[p]
[whosay name="華織" color="olivedrab"]
「それで、今更……ですが、[名前]さんの話を聞きたいのです……が……」[p]
#
見つめた先には、話の腰を戻そうと、困っていらっしゃる華織様が目に入った。[p]
;月ではないよというシーン2
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横目]
[主人公口ほほえみ]
(意外に不器用でいらっしゃる部分もあるのですね)[p]
;感想 素朴でいらっしゃる部分も？
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
(そうだわ。 私が月と思っていた方は、ずっと側にいてくれた方ですもの。[r]
[sp]たとえ華道に対するお志が高くとも、私が……)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ]
「華織様、私の手を握って下さりませんか？」[p]
[主人公ポーズ通常]
[whosay name="華織" color="olivedrab"]
[主人公目伏]
[主人公眉下げ下]
「はい」[p]
#
華織様の大きな手が私の両手を包んだ。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
(華織様。どうか私の成長を見守っててください[r]
[sp]いつか四条家のお役にも立てるよう、もっと華道のお稽古も頑張ります)[p]
[whosay name="華織" color="olivedrab"]
「[名前]さん？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉困り]
(だから、どうか私の側に……)[p]
[whosay name="華織" color="olivedrab"]
「……どんな時でも[名前]さんと共にいます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目大]
[主人公口開]
「！華織様……？」[p]
[whosay name="華織" color="olivedrab"]
「わかりますよ、それくらいは」[p]
[whosay name="華織" color="olivedrab"]
[主人公口ほほえみ]
「……と、思って良いでしょうか？ [r]
[sp]付き合いが長い割には、離れていた時間も長くて自信もなくて……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏柔]
[主人公頬染め]
「……」[p]
#
[主人公目閉]
華織様の素朴な、お答えに私の心の奥底にたまっていた靄が晴れていく。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(やっぱり、華織様は、こんなにも近くにいらっしゃったのね……)[p]
[whosay name="華織" color="olivedrab"]
[主人公目大]
「こんな"歳になってしまいました"が、
[名前]さんの夫として」[p]
[whosay name="華織" color="olivedrab"]
「[名前]さんに心配をおかけしない男となるまで、愛情や興味を持って[r]
[sp]眺めてやって下さい」[p]
#
兄のように冗談をいって悪戯気に笑う華織様。[p]
;気分を変える為に行う文矢の真似なのかも
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ指]
(やっぱり、 華織様は、歳のことを気にしていらっしゃたのですね)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
[主人公目伏]
[主人公眉下げ下]
「いいえ、私も、 そのままの華織さまで充分に」[p]
[whosay name="華織" color="olivedrab"]
「充分に？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉困り]
[主人公横目]
[主人公口開]
[主人公頬染め]
[主人公ポーズ両手]
「今日の華織さまって意地が悪いのですね！ 」[p]
;ラブコメの波動が長い……
[whosay name="華織" color="olivedrab"]
[主人公口通常]
[主人公ポーズ通常]
「ええ、今日だけはね……」[p]
[whosay name="華織" color="olivedrab"]
(偶然にも、この場所で[名前]さんと出会えた特別な日ですから)[p]
;照れ怒り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ムッ]
「私も、もっと上達するまでは、華織様に花をいけることはしません」[p]
[主人公目閉]
[whosay name="華織" color="olivedrab"]
「いいですよ、それが[名前]さんの決意であるなら」[p]
;拗ねている？
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横伏目]
「……」[p]
[whosay name="華織" color="olivedrab"]
「けど、もし機会があるなら、お父様や、家の皆様にいけてみては、[r]
[sp][ruby text=い]如[ruby text=かが]何でしょうか？」[p]
;無理やりしゃべらせた
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉通常]
[主人公目通常]
[主人公口ムッ]
（お父様や磯野に？)[p]
;話カッコでもいい お好きな方で
#
[主人公目閉]
[主人公口通常]
教室の窓から梅に宿るメジロの声が聞こえ、季節に思いを馳せる。[p]
季節は、二月。　結納の日取りまで、あと一月程であった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(もう少しで、お父様と磯野と暮らしていた日々が終わってしまうのですね)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
「そうですね。　私、お父様達やお世話になった方のことを考えてみます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「今日は、お騒がせしてしまってすみません」[p]
[whosay name="華織" color="olivedrab"]
「いえ、めずらしい[名前]さんが見れて嬉しかったですよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……"華織お兄様"は、いつも余裕があっていいですわね」[p]
[whosay name="華織" color="olivedrab"]
「そうですか？……[名前]さんが、どうせ他の手紙をしてるんだしと[r]
[sp]思っていた時もありましたが……」[p]
;月ではない3
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目大]
「え？！」[p]
[whosay name="華織" color="olivedrab"]
[主人公通常]
「いえいえ、何でもありません。[sp]さぁ、続きをしましょうか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公笑顔]
「はい！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
[主人公目閉]
（今日は、懐かしい気持ちと、新しい気持ちの両方に出会った気がするわ)
[p]
;なんかこの辺でイチャコラすればいいのか？
[whosay name="華織" color="olivedrab"]
「[名前]さん。[ruby text=我君]花[ruby text=を]が[ruby text=愛]綺[ruby text=す]麗ですね」[p]
;そういえば、先ほどの話は
#
華織様が私をみて微笑む。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公伏目柔]
[主人公口ほほえみ]
[主人公頬染め]
「ええ、一緒に見られて嬉しいですわ」[p]
[whosay name="華織" color="olivedrab"]
「これからも美しい花を見られたら、幸せですね」[p]
#
[主人公目閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（誰かを思うって、本当ままならないけれど……とても幸せなのね)
[主人公ほほえみ]
[p]
#
[主人公伏目]
[主人公口ほほえみ]
決して真っ直ぐにならない花の姿を大切にしながら、私は大切な誰かのために花を生けた[p]
[四条退場]
;@jump storage=sijyou/sijyou_3_1b.ks
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

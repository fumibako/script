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
[endif]

*start
;〜〜〜シーン 急降下〜〜〜
;敵の登場 邪魔がはいる 先生が湖池屋さんのお嬢様を連れてくる 主人公ヤキモチをやく 書くのもめんどくさいシーン

[whosay name=華道の先生 color=%mp.color]
「湖池屋お嬢様、待ってください、今日の教室は……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（？　どうかされたのかしら？）[p]
#
教室の入り口から焦ったような高い声がして、私たちは、振り返った[p]
[whosay name=湖池屋男爵令嬢color=%mp.color]

「こんにちは お二方」[p]
#
そこには、流行りの洋服を嫌味なく纏う、都会的な淑女が佇んでいた[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]

（どちらのご令嬢でしょうか……)[p]
#
"湖池屋様"と呼ばれた令嬢は、 一点の曇りもない瞳で私の後ろにいた華織様を見つめており、
名状しがたい胸のざわめきが、身体を強張らせた[p]
;言葉にならない 胸のざわめきが、身体を強張らせた[p]

[whosay name=湖池屋男爵令嬢color=%mp.color]

「失礼しますわ」[p]
#
湖池屋令嬢は、手短な挨拶を済ますと、 華織様の前へと割って入っていく[p]
;主人公驚
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！」[p]
[whosay name=湖池屋男爵のお嬢様color=%mp.color]
「この方が四条綾花様の……本当、噂通りに素敵な方ですのね」[p]
;祖母と比べらた気がして嫌な気持ちな華織
[whosay name="華織" color="olivedrab"]
「なんでしょうか？」[p]
;主人公、割って入られ嫌な気持ちになる
[whosay name=&sf.girl_namae color="#cf5a7f"]
(……)[p]
[whosay name=湖池屋男爵令嬢color=%mp.color]

「四条綾花様の弟子であり、孫である貴方が此処にいらっしゃると、
お聞きまして、私、いてもたってもいられませんでしたの」[p]

[whosay name=湖池屋男爵令嬢color=%mp.color]

「申し遅れましたわ。[r]
私、湖池屋男爵家の娘の 矢須子です。[r]
;スコーンスコーンから命名
こちらの教室でも、淑女見習いとしてお世話になっているんですの」[p]
;やや冗談を含んだ会話

#
彼女は社交界に出慣れた様子で、しっかりと笑顔を花咲かせると、華織様に質問を迫った。[p]
[whosay name=湖池屋男爵令嬢color=%mp.color]
「"華織"さまって今、お幾つなんですか？
[r]22と聞きましたけれど、とてもお若く見えましてよ」[p]
;この時点では微笑み
[whosay name="華織" color="olivedrab"]
「今年で23となります。よくおもてとは言われますが……どうかされましたか？」[p]
;本人は気にしてるはず。
#

華織様は、男爵令嬢に歳のことを聞かれ、一瞬だけ、華織様の眉が曇った。[p]
;憂い
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様、もしかして歳のことを気になさっていらっしゃる？)[p]
[whosay name=湖池屋男爵のお嬢様color=%mp.color]
「そうなのですね……失礼しましたわ[r]
[sp]華織さまは、お手紙の相手は決められまして？」[p]
#
男爵令嬢も気づいたのか、それとなく謝り、本題へと挿し迫った。[p]
[whosay name="華織" color="olivedrab"]
「えぇ。 ようやく。来月には結納をと、決めております」[p]
[whosay name=湖池屋男爵のお嬢様color=%mp.color]
「あら、残念ですわ。でも、今日お会いできたのは感謝させていただきますわね
私ってば、有名な方には、死ぬまでに会っておきたい性分ですから！」[p]
#
男爵令嬢は引き際も明快にして笑ってみせた。[p]
よほど場慣れしてるのか、はたまた、然程、好意を持ってして現れたのではないのか[p]
#
どちらにせよ。若干、強引さはあっても、社交界では、殿方を優先するのが常識であったし、
彼女は悪い人ではなさそうであった。[p]
;結局彼女も手紙の範囲には逆らえないからね
#
[whosay name=&sf.girl_namae color="#cf5a7f"]
(湖池屋様は、悪い人ではないわ……それなのにどうしてでしょうか……華織様と話しているのが……)[p]
[whosay name=華道の先生 color=%mp.color]
「湖池屋様、今日の教室は隣です」[p]
[whosay name=湖池屋男爵令嬢color=%mp.color]

「えぇ、そうでしたわね。特別授業をお願いしていたのよね。 急に変更したのに付き合わせてしまってごめんなさいね！[r]
それでは、お二方、失礼しますわ！ 」[p]
[whosay name="華織" color="olivedrab"]
「はい、では」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(嫌な気持ちになるのは何故かしら？)[p]
[whosay name="華織" color="olivedrab"]
「なかなか、春の嵐のような方でしたね」[p]
;(うちの兄と本音でお付き合いするなら、あぁいった女性が良いのかもしれませんね)とか考えている

;〜〜〜〜〜〜シーン急上昇〜〜〜〜〜〜
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様は、あぁいった淑女らしい方がお好みでしょうか」[p]
[whosay name="華織" color="olivedrab"]
「？ 淑女……？」[p]
;あれが淑女？にしては言葉がたつような？
[whosay name=&sf.girl_namae color="#cf5a7f"]
「大人のような気品を持ち合わせていらしゃいましたわ。それに明快で受け答えも、はっきりなさってます」[p]
#
私は、すぐに『違う』と言ってくれない華織様に気が立ってしまった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様も、しっかりと湖池屋様に対して、私との事をお答えなさってくださってるのに……私、何でこんな事を……)[p]
[whosay name="華織" color="olivedrab"]
「[名前]さん。　僕は、社交的な常識には疎い男ですので、[名前]さんがおっしゃるのような"淑女"というものが分かりませんが」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
[whosay name="華織" color="olivedrab"]
「昔からのお付き合いです。どんな淑女が現れたとしても、僕の好みは、"そのままの"[名前]さんが
好きですよ」[p]
;少し華織を見る
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
[whosay name="華織" color="olivedrab"]
「花を美しいと思うように[名前]さんを美しいと思っています」[p]
;うまくいかない気持ちを伝える 共用する
#
私は先ほどの生徒を見守る"華織お兄様の姿"が脳裏によぎった。[p]
;前のシーンの言葉ももってきたいけど
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様がおっしゃる花への気持ちは、どんな言葉よりも…… )[p]
#
私は、このまま黙っているのも居た堪れなくなって、掴み所のない気持ちを打ち明けることにした。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……ごめんなさい。 華織様も湖池屋様も、とても素晴らしい方なのに[r]
何故だか、とても嫌な気持ちになって……」[p]
;ラブコメの波動が長い……
#
打ち明けた後、心を焼くような痛みで瞼を閉じてしまった。[p]
; 華織 、恥を欠かしてはいけないからどうしよう？とは考えている
[whosay name="華織" color="olivedrab"]
「謝らないで、どんな時でも[名前]さんと共にいます」[p]
#
華織様の大きな手が私の両手を包んだ。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様」[p]
[whosay name="華織" color="olivedrab"]
「こんな、おもてたった歳になってしまいましたが、[名前]さんの夫として、
心配をかけない男になるまで、愛情や興味を持って眺めてやって下さい」[p]
#
兄のように冗談をいって悪戯気に笑う華織様。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
( やっぱり、 華織様は、もうひとりの兄のような方で)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(私の尊敬できる素敵な想い人だわ)[p]
;キャラ紹介

[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいえ、私も、 そのままの華織さまで充分に」[p]
[whosay name="華織" color="olivedrab"]
「充分に？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「今日の華織さまって意地が悪いのですね！ 」[p]
;ラブコメの波動が長い……
[whosay name="華織" color="olivedrab"]
「ええ、今日だけはね」[p]
;照れ怒り
[whosay name=&sf.girl_namae color="#cf5a7f"]

「私も、もっと上達するまでは、華織様にいけることはしません」[p]
[whosay name="華織" color="olivedrab"]
「いいですよ、それが[名前]さんの決意であるなら」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
[whosay name="華織" color="olivedrab"]

「けど、もし機会があるなら、お父様や、家の皆様にいけてみては、どうでしょうか？」[p]
;無理やりしゃべらせた
[whosay name=&sf.girl_namae color="#cf5a7f"]

（お父様や磯野に？)[p]
;「梅に鶯」----梅にウグイスが来るという意味ではない

#
教室の縁側から梅に宿るメジロの声が聞こえ、季節に思いを馳せる。[r]
季節は、二月。　結納の日取りまで、あと一月程であった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(もう少しで、お父様と磯野と暮らしていた日々が終わってしまうのですね)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですね。　私、お父様達やお世話になった方のことを考えてみます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]

「今日は、お騒がせしてしまってすみません」[p]
[whosay name="華織" color="olivedrab"]
「いえ、めずらしい[名前]さんが見れて嬉しかったですよ」[p]
[whosay name="華織" color="olivedrab"]

「……それに僕も、[名前]さんが、どうせ他の手紙をしてるんだしと思っていた時もありましたし……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「え？！」[p]
[whosay name="華織" color="olivedrab"]
「いえいえ、何でもありません。[r]
[sp]さぁ、続きをしましょうか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（今日は、懐かしい気持ちと、新しい気持ちの両方に出会った気がするわ)
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（誰かを思うって、本当ままならないけれど……とても幸せなのね)
[p]
#
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

;///////散策案4 キャラの良さ、フラグ回収///////
;期間 終わったあと
;元散策3案
;☆このイベントの目的、フラグを回収、キャラの良さ
;登場人物 四条親戚 四条華織 華衣
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[macro name=華衣]
[ruby text="か"]華[ruby text="い"]衣
[endmacro]
[イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]

木の葉はすっかり落ち、次の新緑の為に息を潜める季節。[r]
冷たい空気が背筋を伸ばしてくれる。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(今日は、どこを見て回りましょうか)[p]
#
全てが落ち付きを取り戻したからこそ、余裕をもって町をみて回ることもできる。[p]
#
「「おねえちゃんーーー！！、おねえちゃんーーー！！」」[p]
#
ふと、見ると飴屋の前で泣き叫んでる小さな子供が２人、手を繋ぎながらも、泣き崩れていた。[p]

;※思いつかないので画像つけてるだけです。実際は町のみ。
[whosay name="飴屋の主人"]
「まいったなぁ……ここから離れるわけにいかないし」[p]

#
飴屋の主人は、店から離れられない様子で、誰かが救いの手を出してくれないかと、流れ行く人をオロオロと見つめている。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(……)[p]
私はそれを見て思わず足が動き、女の子に近寄っていた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「大丈夫？ お姉ちゃんとはぐれたの？」[p]
#
子供達の視点に合わせ、比較的、子供に伝わりやすい口調で尋ねてみた。[p]
[whosay name="子供達・壱"]
「……おねえちゃん……どこにも……さがしてもいなくて……」[p]
[whosay name="子供たち"]
「えんちゃんが、飴屋に行こうなんて、言わなければよかったのに……」[p]
[whosay name="子供達・壱"]
「かんちゃんも行くっ……言ったじゃん……！！」[p]
#
子供達は、喧嘩を始めると、また降り出しに戻って泣き叫んでしまった。[p]
[whosay name="飴屋の主人"]
「はぁ。さっきから、この調子なんだよ……」[p]
;◎戸惑う主人公　憂いではないと思うよ　あせり
[主人公憂い]
[wait time=10]
[主人公ポーズ片手]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(どうしましょう)[p]
[主人公ポーズ通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(もう一度、この子達が言っている、『おねちゃん』について聞いてみましょうか)[p]
#
その時だった。[p]
[whosay name="？？？"]
「何してんの？」[p]
#
頭上から華織に似た声がして、ハッとして見上げた[p]

[主人公驚]
[wait time=10]
[主人公ポーズ片手]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！ [華衣]さん！」[p]
#
見上げた先には、華織の弟、[華衣]が立っていた。[p]
#
;雄雄しい　幼い？　激しい性格↓
華織の弟だけあって、やはり似ているが、[華衣]の方が鋭い目付きをしており、立ち振る舞いも雄々しい。[p]

[主人公通常]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「こんにちは」[p]
#
楚々と立ち上がると礼をしてみせる[p]

[whosay name="華衣" color=%mp.color]
「ていうか、"そいつら"……」[p]
[whosay name="子供たち"]
「[華衣]ニーチャン！」[p]

[主人公驚]
[wait time=10]
[主人公ポーズ片手]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(え……？)[p]
[whosay name="華衣" color=%mp.color]
「何で、こんなとこに来てるワケ？」[p]
#
[華衣]は、子供達に話しかけた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お知り合いですか？」[p]
[whosay name="華衣" color=%mp.color]
「親戚の子」[p]
[whosay name="子供たち"]
「「いつも、遊んでくれるのー」」[p]

[主人公通常]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうなのですね」[p]
#
運良く、親族の者が現れた為、私は、ほっと胸を撫で下ろした[p]

;ふぅとひといき
[主人公ふぅ閉]
[wait time=10]
[主人公伏目]
[wait time=20]

[whosay name="華衣" color=%mp.color]
「……迷惑、かけた」[p]
[主人公目通常]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？ 」[p]

[whosay name="華衣" color=%mp.color]
「迷惑かけたって言ったの！ 悪かったって思ってる」[p]
;主人公 控えめに微笑み　これかな

[主人公目伏柔]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ」[p]

[whosay name="華衣" color=%mp.color]
「コイツらのことは、まかしといて」[p]

[主人公驚]
[wait time=10]
[主人公ポーズ片手]
[wait time=10]

#
[華衣]は、しゃがみ込むと、先程、私がしたように子供達に質問をした。[p]
[whosay name="華衣" color=%mp.color]
「お前ら、今日は誰と来たんだ？ 後藤のおばちゃんか？ それとも姉貴か？」[p]

[主人公通常]
[wait time=10]
[主人公ポーズ指]
[wait time=10]

[whosay name="子供達・壱"]
「おねーちゃん……」[p]
[whosay name="華衣" color=%mp.color]
「姉貴のほうか。で？ どこではぐれた？」[p]
[whosay name="子供達・弐"]
「わかんない……」[p]

[主人公ポーズ通常]
[wait time=10]

;◎あんまり解決しない
[whosay name="子供達・壱"]
「……おねえちゃん……どこにも……さがしてもいなくて……」[p]
[whosay name="子供達・弐"]
「えんちゃんが、飴屋に行こうなんて、言わなければよかったのに……」[p]
[主人公憂い]
[whosay name="子供達・壱"]
「かんちゃんも行くっ……言ったじゃん……！！」[p]
[whosay name="飴屋の主人"]
「君たち、場所を変えてくれないかな……？」[p]
[whosay name="子供たち"]
「「わぁぁん！！」」[p]
[主人公驚]
[wait time=10]
[主人公ポーズ片手]
[wait time=10]

[whosay name="華衣" color=%mp.color]
「あー、うるさい！ そんなんじゃ分かんないよ！」[p]
#
まるで、ふりだしに戻ったかのように子供達は泣き出してしまった[p]
[主人公憂い]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(……どうしましょう)[p]


;◎華織に出会う まだ華衣とはやや険悪
[whosay name="華織" color="olivedrab"]
「[名前]さん、 [華衣]？ どうかされたのですか？」[p]

[主人公驚]
[wait time=10]
[主人公ポーズ片手]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織さま！」[p]


[whosay name="華織" color="olivedrab"]
「祖母に『[華衣]に買い出しを頼んだのにまだ帰ってこない』と言われ来てみたら」[p]
;険悪なのにどうなの？このセリフ、あと買い出しってどうなの？→罰だと思いねぇ
[whosay name="華衣" color=%mp.color]
「……」[p]
[主人公憂い]
[wait time=10]
[主人公ポーズ片手]
[wait time=10]
;このポーズは特に意味ない気が

#
[華衣]は、バツの悪そうに腕組みをすると、華織から目を背けた。[p]

[主人公ポーズ通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(やっぱり、すぐには……無理ですよね[r]
_ いつかは仲良くなってほしいですが)[p]
#
そんな[華衣]を見た華織は、僅かに憂いを見せたが、直ぐに柔和な表情を繕ってみせた。[p]
[whosay name="華織" color="olivedrab"]
「あぁ、エンさんとカンさんですよね。お久しぶりです」[p]
[whosay name="子供たち"]
「「うう ……おねえちゃん……どこにも……さがしてもいなくて…… ！！」」[p]
[whosay name="華織" color="olivedrab"]
「そうですか。不安ですよね」[p]
#
華織は、一言、子供達に同情すると、立ち上がる[p]

[主人公口開]
[wait time=10]
[主人公ポーズ指]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
( ？ )[p]

;◎華織の機転で迷子をなんとかする？;まだ決まってない
[whosay name="華織" color="olivedrab"]
「腹が空いて…とは言いますし、ひとまず、みんなで、飴でも食べませんか？ 」[p]
[whosay name="華衣" color=%mp.color]
「はぁ ？」[p]

[主人公ポーズ片手]
[wait time=10]
[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「えっ？」[p]
[whosay name="華織" color="olivedrab"]
「懐かしいですよね。 子供の頃は……あ、5人分でお勧めを下さい」[p]
[whosay name="飴屋の主人"]
「……あいよ」[p]
#
動植物の形をした飴細工を手に華織は子供達の前へと座る。[p]
[whosay name="子供たち"]
「「飴！！」」[p]
#子供・壱
「エンは、鶴がいいなー」[p]
#子供・弐
「カンは、金魚がいいなー」[p]
[whosay name="華織" color="olivedrab"]
「はい。どうぞ」[p]
#
子供達は、すっかり不安な気持ちを忘れ、落ち着きを取り戻した。[p]
;◎流れで４人でわいわいする？

[whosay name="華織" color="olivedrab"]
「[名前]さんには、兎の飴細工なんて如何ですか？」[p]
;鳥獣戯画的な飴 蛙は手紙を思い出すかと。亀でもいいかも？

[wait time=10]
#
華織は、兎と蛙が並んで踊る飴細工から、兎を[名前]に手渡した。[p]
;食べているように"も"みえるように片手ポーズ

[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(かわいらしい)[p]
[whosay name="華衣" color=%mp.color]
「そんなことより、さっさと探した方がいいと思う」[p]
;主人公 ハッとする？

[主人公驚]
[wait time=10]

[whosay name="華織" color="olivedrab"]
「エンさんとカンさんは、今日は何をなさりに来たのでしょうか？」[p]

[主人公ポーズ通常]
[主人公憂い]
[wait time=10]
#子供・壱
「うんとねー、お山を見にいったー、あと、お洋服買うっていってたー」[p]
#子供・弐
「おねぇちゃん……」[p]
[whosay name="華織" color="olivedrab"]
「大丈夫。ここで待っていれば、必ず来られますよ」[p]
[whosay name="華織" color="olivedrab"]
「お山と言われますと、四条鉱山。呉服屋ならこの付近に２．３件、ありますね。[r]
_ さてどうしましょうか？」[p]
[whosay name="華衣" color=%mp.color]
「何でそんな悠長なんだよ！ 俺は行ってくる！」[p]
[fadeoutbgm time=3000]
[whosay name="華織" color="olivedrab"]
「[華衣]お兄ちゃんが、頑張って探してくれるそうです。待ちましょう」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「よろしいのですか？」[p]
;何で探してあげないのですか？

;◎華織、華衣に対しての想いを語る
[if exp="sf.BGM=='ON'"]
;【BGM】哀しげな曲（攻略対象側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukisugara.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukisugara.ogg'"]
[endif]
;普通に鳴る

[whosay name="華織" color="olivedrab"]
「僕が探しに行ったしても、[華衣]はここで待ってるなんて出来ないでしょう」 [p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私のことなら、お気になさらずとも」[p]

[whosay name="華織" color="olivedrab"]
「いいんだ。いざって時は、家に電話をかけてしまえばいい」 [p]
[主人公ポーズ片手]
[wait time=10]
[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あ……」[p]
[whosay name="華織" color="olivedrab"]
「けどね、しなかった」[p]

[主人公ポーズ通常]
[wait time=10]
[主人公憂い]
[wait time=10]
[主人公口開]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どうしてですか？」[p]
#
私は、華織さまのお考えが読めなくて、思わず眉を曇らせてしまった。[p]

[主人公口ムッ]
[wait time=10]

[whosay name="華織" color="olivedrab"]
「[華衣]には、まだ色々なことを頑張ってほしい」[p]
[whosay name="華織" color="olivedrab"]
「僕は次男で、それなりに四条家と跡取り候補として教育を受けてきましたが、
[華衣]は、末っ子で
;役割も与えられず、
[ruby text="おん"]乳[ruby text="ば"]母[ruby text="ひ"]日[ruby text="がさ"]傘のように
育てられていました」[p]
[whosay name="華織" color="olivedrab"]
「今思うと、僕も、[華衣]に対して、過保護に何でも解決してあげようといたのが良くなかったのかもしれない」[p]

[主人公口開]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どうして、その様なことを」[p]
[whosay name="華織" color="olivedrab"]
「波ヶ浦で[華衣]は、僕のことをこう言ってました」[p]
[主人公口通常]
[wait time=10]
#
－－勉学も運動も、笑って何でも出来るアンタには、一生この気持ちがわからない [p]

[主人公ポーズ片手]
[wait time=10]
[主人公口開]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！ 」[p]
[whosay name="華織" color="olivedrab"]
「[華衣]の目の前で 何もかも、 解決していく内に、[r]
 _[華衣]は、疲弊して周りをみることができなくなってしまっていたのだと思うのです」 [p]
 ;華衣の心は　？
[whosay name="華織" color="olivedrab"]
「だから、僕が出しゃばって、成し遂げてしまうより、自分で乗り越えてほしい」[p]

[主人公憂い]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「ましては、そのせいで[華衣]に迷惑を被ったのですから」[p]

[主人公憂い]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織さま……」[p]
[whosay name="華織" color="olivedrab"]
「もちろん。[華衣]にどうしてもって助けを求められたら手を貸すつもりです」[p]
[whosay name="華織" color="olivedrab"]
「余計な御世話でしょうか……」[p]

[主人公目閉じ]
[wait time=10]
#
どうにも出来ないときは、手を差し伸べ、[r]
いつもは陰ながら見守ること。[p]
#
なかなか出来ないことだと感じつつも、華織さまの為に、胸に染み渡る苦渋を抑え込んだ。[p]
[主人公口ムッ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……華織さまの良きお考えがあるなら、私は何も言いません」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(今、私が感じている、それ以上に華織さまは、お辛いはず)[p]

[主人公口通常]
[wait time=10]

[whosay name="華織" color="olivedrab"]
「きっと、僕より、[華衣]なら凄いことが出来ると思う」[p]
[主人公憂い]
[wait time=10]
#
儚げに微笑む華織さまをみて、[r]
私は、兄弟という掛け替えのない繋がりを作ろうとしている彼を見守ろうと思った。 [p]
[主人公ポーズ指]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(もしかしたら、時折、お兄さまも、その様なことをお考えになられているのでしょうか)[p]



#子供・壱
「ねぇ！おにーちゃんは飴2本も食べるのー？」[p]

[fadeoutbgm time=3000]
;三つ前だとダメなのかよくわからない

[whosay name="華織" color="olivedrab"]
「これは、帰ってきた方達のお土産用です」[p]

;主人公 ほほえみ？
[主人公通常]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]

;◎子供nのを発見する
#
まもなくして、[r]
息も絶え絶えの[華衣]が帰ってきた。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
;【BGM】夕涼み（お稽古パートなど
;[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
;[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

[whosay name="華衣" color=%mp.color]
「おい！姉貴を見つけてきたぞ！！」[p]
[whosay name="子供たち"]
「「！！」」[p]
[whosay name="子供たち"]
「「おねぇちゃーーん！！」」[p]
#
子供達は、思い出したかのように泣き出すと、探し主の元へと駆け寄り、再開の喜びを確かめ合う。[p]
[主人公ほほえみ]
[whosay name="華織" color="olivedrab"]
「おかえり、[華衣]」[p]
[主人公通常]
[wait time=10]
[whosay name="華衣" color=%mp.color]
「はぁ、何にもしないで、ヘラヘラしやがって、少しは探してくれたっていいじゃないか」[p]
[whosay name="華織" color="olivedrab"]
「犯人は必ず、現場に戻ってくると、本に読んだことがありましたから、念のために待ってました」[p]
[主人公通常]
[wait time=10]
[whosay name="華衣" color=%mp.color]
「犯人って、なんだよ」[p]
[whosay name="華織" color="olivedrab"]
「それに僕は[名前]さんと、一緒なら探し物は何でも見つけてしまうのだよ」[p]
[主人公照れ]
[wait time=10]
;主人公 冗談にくすりと笑う？

[whosay name="華衣" color=%mp.color]
「ほぼ、座ってただけじゃん」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;淑女度にしよう。値は適当
[主人公通常]
[主人公口ほほえみ]
[if exp="f.para_shujinkou_shukujodo >= 200"]
(見つかってよかったですね)[p]
[else]
(見つかってよかった……)[p]
[endif]

;◎華織、華衣に迷子を渡す任務を任せて帰る。
[whosay name="華織" color="olivedrab"]
「さぁ、[華衣]。後はお願いします。
;淑女度にしよう。値は適当
[if exp="f.para_shujinkou_shukujodo >= 200"]
見つからないということは悲しいことだから」
[else]
[whosay name="華織" color="olivedrab"]
その子達は、貴方の友人なのだから」
[endif]


[主人公通常]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]

[p]

[whosay name="華織" color="olivedrab"]
「それとも、僕が横から出しゃばってほしいですか？」[p]
#
華織は、何気なく[華衣]に飴細工を渡した。[p]
[whosay name="華衣" color=%mp.color]
「ッ……言われなくても」[p]
そういって子供たちと彼らの姉の元へと走っていく。[p]
[主人公ポーズ片手]
[wait time=10]
[主人公眉下げ]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]

[whosay name="子供たちの姉"]
「[華衣]さん、ありがとうございます」[p]
[whosay name="華衣" color=%mp.color]
「別に。いつもコイツらとは、遊んでるし。これからは、見落とすなよ」[p]
;飴をあげてると思いねぇ あげるよって書くと流れがどうだろ
[whosay name="子供たちの姉"]
「はい！」[p]
[whosay name="子供たち"]
「「[華衣]ニーチャンありがとう！！」」[p]
#
真冬の木漏れ日に暖かな笑顔が並ぶ。[p]
[主人公ポーズ通常]
[wait time=10]
#
それを見た私たちは静かに微笑んだ後、その場を後にした。[p]
[主人公目閉じ]
[wait time=10]
[whosay name="華織" color="olivedrab"]
（今は、まだ意地の悪い兄でいよう。[r]
_ いつか、またそのときが来るまで） [p]



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


[機能ボタン表示]


;【背景】[背景_庭]
;[chara_mod name="bg" storage="bg/room_niwa.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
;[主人公ポーズ通常]


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

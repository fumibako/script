*replay_sijyou_1_4
*start
*first
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*1_4 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;///////////////////////////////
;=================================================================================_
[wait time=50]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[image layer=29 x=1 y=1 zindex=0 storage="bg/bg_prologue.jpg" time=50]
[font color=white size=27]
[プリロード画面消去]
正月を過ぎる頃。 [r]
[r]
四条家の行儀作法について、[r]
私は磯野から日々習っていた。[p]
;磯野に四条家にと「に」が続くため調整しました(◆jsYiJcqRkk
;原文：私は磯野に四条家に関する行儀作法について、[r]
;刻々と学習を進めていた。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000]
[eval exp="f.haikei_credit='photo by ゆうあかり http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[freeimage layer=29 time=0]
[メッセージウィンドウ上ボタン表示]
;==========================================================================
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ片手]
「四条家に入るにあたって、[r]
[sp]お言葉など気をつけることは、他にあるかしら？」[p]
;あたり？
*seen0
[whosay name=磯野 color="dimgray"]
[主人公ポーズ通常]
;↓磯野にとって「ご当家」は［苗字家]を指すと思われますので変更させていただきました。また、他家の場合伝聞的な形が自然かと思い調整させていただきました。『ある華族の昭和史』を読んだ方にニヤリとしてもらえそうな程度には元の香りを残そうと試みたのですが、いかがでしょうか(◆jsYiJcqRkk
「四条家におかれましては、[ruby text=かく]格[ruby text=べつ]別難しい言葉などは使われない、とお聞き[r]
[sp]してございます」[p]
;原文：「ご当家におかれましては、何も[ruby text=かく]格[ruby text=べつ]別難しい言葉などは使われません」[p]
[whosay name=磯野 color="dimgray"]
「淑女の基礎たる言葉、[r]
[sp]" ごきげんよう"  "おそれ入ります" で、間に合うでしょう」[p]
;お間に合います[r][sp]でしょう　は引用ですが、分からないので普通に
#
磯野は、薫り立つお茶を注ぐと、円熟した[ruby text=こ]古[ruby text=ちゃ]茶のように微笑んだ。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
「……わかりましたわ」[p]
#
私は、磯野に癒されながらも、 [r]
;淑女度分岐
[主人公目伏]
[if exp="f.para_shujinkou_shukujodo >= 200"]
夢中で、四条家に関わる行儀作法について筆を走らせた。 [p]
[else]
お茶を片手に四条家に関わる行儀作法について筆を走らせた。 [p]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
「ふぅ。 礼法のお稽古とは、また違って覚えることが多いわね」[p]
#
四条家本宅は、洋風建築となっている為、今まで家で見習った事と、[r]
勝手が違う。[p]
#
スリッパを寝所以外で履かないなんて、相手の[ruby text=じょ]女[ruby text=ちゅう]中[ruby text=がしら]頭と、[r]
その方とやり取りをしている磯野以外、誰が教えてくれるでしょうか。[p]
;否、誰に聞けるだろうか。
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
（できる限り、ここで知っておきたいわ）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉困り]
（なにかしらある度に、華織様や、[ruby text=じょ]女[ruby text=ちゅう]中[ruby text=がしら]頭に聞くなんて、 [r]
[sp]淑女として、恥ずかしいもの）[p]
[whosay name=磯野 color="dimgray"]
[主人公通常]
「……お嬢様、少しお疲れでしょう。 散策などされては[r]
[sp]いかがでしょうか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「ですが……」[p]
[whosay name=磯野 color="dimgray"]
「お帰り遊ばされましたら、また半刻ほどは、お勉強の時間にさせて [r]
[sp]いただきたいと考えております。[r]
[sp]……よろしいでしょうか？」[p]
[fadeoutbgm time=3000]
#
[主人公通常]
磯野は、含みを帯びた笑みで、私をニコリと見つめた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（磯野は、頑張りすぎても良くないと言いたいのかしら？ )[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
「ふぅ……わかりましたわ。
[主人公通常]
[sp]少しだけ、そうさせて[r]
[sp]頂こうかしら」[p]
[暗転]
[主人公目閉]
[whosay name=磯野 color="dimgray"]
「いってらっしゃいませ、お嬢様」[p]
;=================================================================================_
*seen1
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[主人公通常]
#
町に出た。[r]
[autosave]
新しい年を迎え、楽しげに歩く人々で賑わっている。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
店の前には、凛とした[ruby text=かど]門[ruby text=まつ]松達が、[ruby text=ぎょうぎ]行[ruby text=ぎ]儀よく並んでいた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ指]
（やはり、華織様は、こういったお飾りも、お得意様方に……？）[p]
#
年末年始の "花に関わる者" の忙しさを想像していると、[r]
横から聞き覚えのある声がして、振り返った。[p]
[whosay name="華織様？"]
[主人公ポーズ通常]
「失礼、『見返り橋』に行くには、どちらに向かえばいいかね？[r]
[sp]久しぶりに来たら、[ruby text=ずい]随[ruby text=ぶん]分と店構えや道も、変わってしまった[r]
[sp]ようだね……」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
[主人公ポーズ片手]
（！？ 華織……様？）[p]
#
私の隣には、声も姿も、華織様によく似た洋装の男性が立っていた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横目]
「そ、それなら、こちらの路地を抜けて左に曲がれば、直ぐです」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口通常]
[主人公眉困り]
（見れば、見るほど……よく似ていらっしゃるわ）
[p]
#
華織様という課題があれば、[r]
これは間違いなく"間違い探しの課題"そのものであった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
（いけないわ、はしたなく殿方を見つめては）[p]
[whosay name="華織様に似た男性"]
[主人公通常]
「そうか、ありがとう。やはり、そちらに行けばよかったのか。[r]
[sp]ん……？[sp]君はどこかで会ったような？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（　？　）[p]
#
華織様によく似た男性は、顎に指を構えると、眉を寄せて私の顔を[r]
マジマジと見つめた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り]
（どうして、こちらを熱心に見つめていらっしゃるのかしら？）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目通常]
（それに、この方は一体？[r]
[sp]お付きの方は、お連れではないのかしら？）
[主人公ポーズ片手]
[p]
#
辺りを見回しても、周囲には、お付きの人の姿らしき姿は、見当たらない。[p]
#
この様に身なりの良い男性にほうほうと[ruby text=で]出[ruby text=ある]歩かれ、[r]
まして、こちらを穴が[ruby text=あ]開く[ruby text=よう]様に見つめられては、少々、"あやしき方"と[r]
気になってしまう。[p]

;原文：この様な身なりの良い男性がほうほうと[ruby text=で]出[ruby text=ある]歩き、ましては、[r]
;こちらを穴が[ruby text=あ]開く[ruby text=よう]様に見つめられては、少々、"あやしき方"と[r]
;気になってしまう。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
（どうしましょう。このまま逃げ出してもいいのでしょうか？[r]
[sp]ですけど、華織様にソックリですし……えぇと……）[p]
#
頭を悩ませてると、頭上の声は、明るく伸し掛かってきた。
[主人公通常]
[主人公ポーズ通常]
[p]
[whosay name="華織様に似た男性"]
「なんだ！[sp]よく見てみれば、君は華織の[ruby text=ご]御[ruby text=ない]内[ruby text=やく]約[ruby text=しゃ]者ではないか！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「？！ ……[ruby text=あ]貴[ruby text=なた]方様は一体……？」
[主人公ポーズ片手]
[p]
#
伸し掛けてきた疑問を眉を潜めて[ruby text=たず]尋ねたが、[r]
彼は[ruby text=われ]我[ruby text=かん]関せずに、またもや私の顔をシゲシゲと見つめた。[p]
[whosay name="華織様に似た男性"]
「[ruby text=か]華[ruby text=ぞく]族[ruby text=が]画[ruby text=ほう]報の写真で見たよりも、随分とまぁ」
[主人公憂い]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（何でしょうか……女性を値踏みする様に見つめて、失礼な方）[p]
[whosay name="華織様に似た男性"]
「可愛いらしい方ではないか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
（！　……）
[主人公困り照れ]
[主人公ポーズ通常]
[p]
[whosay name="華織様に似た男性"]
「華織が夢中になるのも、無理はないな」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
「……おそれ入ります」[p]
#
普段なら"素直に[ruby text=けん]謙[ruby text=そん]遜をする"ところであったけれど、[p]

得体の知れない人物に私は、磯野に教わった　"ごきげんよう" と[r]
"恐れ入ります"の[ruby text=じょう]常[ruby text=とう]套[ruby text=く]句でやり過ごすほかならなかった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ片手]
（もう、一体誰なのかしら……！）[p]
#
やきもきしている様子に気づいたのか、[r]
ようやく彼は、黒のベルベットの帽子をとり、挨拶を始めた。[p]
;=================================================================================_
*seen2
[autosave]
[whosay name="四条 一華"]
[主人公目通常]
[主人公口通常]
「失礼、名乗っていなかったね……。[r]
[主人公ポーズ通常]
[sp]僕は、 四条[ruby text=いち]一[ruby text=か]華。[sp]華織の兄だ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「！
[主人公目大]
[主人公眉下げ下]
そうでしたのね……失礼しましたわ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（[ruby text=どう]道[ruby text=り]理で似ているはず、だわ！）[p]
#
腑に落ちないものが、ようやく落ち着きを得て、私の心は、[r]
不思議な安堵感を感じてしまった。[p]
[whosay name="四条 一華"]
「君は、[名字]家の[名前]様だね？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「はい、華織様には、いつも お心遣いいただいております」[p]
[whosay name="四条 一華"]
「ほぅ。挨拶も愛らしいではないか。[r]
[主人公困り]
[sp][名字]様も、長男の僕を選ばず、華織を選ぶとは、お目が高い」[p]
#
[主人公目通常]
[ruby text=いち]一[ruby text=か]華と名乗った、華織様のお兄様は、謎の自信に満ちた微笑みを[r]
こちらに向けた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（？……華織様とは、また違った方……なのね）[p]

[whosay name="四条 一華"]
「ふ、君みたいな愛らしい[ruby text=バ]薔[ruby text=ラ]薇の[ruby text=あ]在り[ruby text=か]方を隠していたとは、[r]
[sp]父も意地が悪いな」[p]
#
やはり、似ているのは姿形のみで、中身は、真逆のようであった。[p]
[主人公照れ]
[if exp="f.para_shujinkou_shukujodo >= 200"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「おそれ入ります」[p]
[else]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（恥ずかしくて、受け答えに頭を抱えてしまいますわ……）[p]
[endif]
#
私は、自身を自信満々に比較される[ruby text=いち]一[ruby text=か]華様をみて、[r]
思わず縁談を持ってきたお父様とお兄様に感謝をしてしまった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
（そういえば……）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様のお父様が、私の父にお話を持っていかれたのでは、[r]
[sp]ないのですか？」[p]
[whosay name="四条 一華"]
「それもそうだが。[r]
[sp]それなら、僕でも構わないはずだ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ片手]
[主人公照れ]
（何と言えばよろしいのでしょうか……この方は、面白い方……なのね）[p]
#
[主人公眉困り]
[主人公目通常]
歯に衣着せず、女性に手慣れたご様子は、[r]
どう転んでみせても、華織様には、似ても似つかなかった。[p]
[whosay name="四条 一華"]
[主人公眉通常]
[主人公ポーズ通常]
「実を言うと僕は、一度見合いに失敗していてね。[r]
[sp]そのせいで、僕自身、結婚にコリゴリしていた時期もあったのさ」[p]
「そういわけで、父が気を遣ったところもあっただろうが……。[r]
[sp]それでも、"男なら大した傷跡でもない"だろう？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉困り]
[主人公目大]
（まぁ……）
[主人公ポーズ指]
[p]
;表情適当　複雑な表情
[whosay name="四条 一華"]
[主人公眉下げ下]
「[名字]様や、父が、この僕ではなく華織を選んだのは……。[r]
[sp]もしかしたら、君が良く知っているのではないかね？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
[主人公ポーズ片手]
（……華織様とは、昔からのお付き合いだからでしょうか？）[p]
#
女である私には、殿方がなさる"世の中への[ruby text=たくら]企み"というものが、[r]
少々、理解に[ruby text=およ]及ばなかった。[p]
;=================================================================================_
*seen3
[autosave]
[whosay name="四条 一華"]
「けど、これだけは言える」
[主人公通常]
[主人公ポーズ通常]
[p]
[whosay name="四条 一華"]
「このご時世、[r]
[sp]次男とは、家にとっての捨てがたき才能がなければ、[r]
[sp]将来は分家をするか、他家に養子に行くしかない」[p]
[whosay name="四条 一華"]
「その中で華織は、恵まれている方だ。[r]
[sp]華織は、四条家において、もっとも名誉たる役目を継いで[r]
[sp]いるのだから」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目大]
「名誉たる役目？」[p]
[whosay name="四条 一華"]
[主人公目通常]
「あぁ、四条家は、名誉のために華道を続けている」[p]
[whosay name="四条 一華"]
「名誉は、国ため、もっと詳しくいえば国の文化貢献のためさ」
[主人公目パチ1回]
[p]
[whosay name="四条 一華"]
「つまり、華織は、なんら長男として[ruby text=そん]遜[ruby text=しょく]色ない役目を得ている」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
（そうなのですね……）[p]
[whosay name="四条 一華"]
「今は、華道家競合大会で準賞に甘んじ、大賞を逃しているようだが、[r]
[sp]将来は、祖母にも負けぬ華道家になりえるだろう」[p]
[whosay name="四条 一華"]
「君は、そう思わないかい？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[主人公柔和ほほえみ１]
「そうですね……私も、華織様を応援したいです」[p]
[whosay name="四条 一華"]
[主人公通常]
「ふふ。そうでなくては。[r]
;↓効果：無し(通常) [主人公効果消]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[sp]僕には、そういった才能は皆無だが、その代わりに四条家の基礎を[r]
[sp]支えることなら、容易いことだ」[p]
「君と華織の平穏な暮らしを約束しよう」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[if exp="f.para_shujinkou_shukujodo >= 200"]
「恐縮でございます」
[else]
「おそれ入ります」
[endif]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉困り]
（それにしても四条家の基礎って何かしら？[r]
[sp]なんとなく分かりそうな気がしますが……実際のところは知らないわ）[p]
[whosay name="四条 一華"]
「ん？ 君は女性だから何も知らないのか？[r]
[sp]それとも、華織は、自分のことを話したがらないから知らないのか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
[主人公口ムッ]
「……」[p]
[whosay name="四条 一華"]
「ふ、失礼した。[r]
[sp]これから家族の一員となるものだからかもしないが、[r]
[sp]君のような愛らしい女性を見ていると、つい僕は、本音で話して[r]
[sp]しまうようだ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ]
（……）[p]
[whosay name="四条 一華"]
「言うなれば、何でも教えたくなる。[sp]何でも与えたくなる。[r]
[sp]そんな人だね君は」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
[if exp="f.para_shujinkou_shukujodo >= 200"]
「勿体無きこと、ありがとう存じます」
[else]
「……おそれ入ります」
[endif]
[p]
[whosay name="四条 一華"]
「四条家の基礎は、財だ。[r]
[主人公通常]
[sp]財がなければ、国に貢献できない」[p]
「つまり、その役目を担っているのが、外交官であり、父とともに[r]
[sp]四条鉱山の管理補佐をしている僕というわけさ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
 [主人公眉下げ]
「そうなのですね……」[p]
[whosay name="四条 一華"]
「ふぅ。[r]
[sp]そんな話をしたって、君に微笑みを与えられそうにないことは、[r]
[sp]わかっていたよ」[p]
[whosay name="四条 一華"]
「君の期待通り、華織の話でもしようか」[p]
#
[ruby text=いち]一[ruby text=か]様は、華織様に似た、艶やかな黒髪を[ruby text=か]掻き上げると[r]
流し目を送った。[p]
;長いのでセリフを切ったけどもとに直してもいいです
[whosay name=&sf.girl_namae color="#cf5a7f"]
（何と言えばよろしいのでしょうか……この方は、本当に[r]
[sp]面白い方なのね）
[主人公照れ]
[p]
[whosay name="四条 一華"]
[主人公通常]
「華織は、"自分のことは自分で解決"しようとして[r]
[sp]話したがらない奴なんだ。[sp]なればこそ、華織の妻となる君は、[r]
[sp]知っておくべきだ」[p]
;=================================================================================_
*seen4
[autosave]
#
[ruby text=いち]一[ruby text=か]華様は、持っていた暖かいストールを私にかけると、[r]
真剣な表情を向けた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「は、はい」[p]
#
[主人公口ほほえみ]
正直、私も、先ほどの花咲く[ruby text=いち]一[ruby text=か]華様の[ruby text=こう]口[ruby text=じょう]上よりも、[r]
今となっては、真剣な表情をした[ruby text=いち]一[ruby text=か]華先生の講義に興味がそそられたのは、[r]
[主人公目通常]
愛する人を想えば言うまでもない。[p]
[whosay name="四条 一華"]
「華織は、名誉の役目以外に四条家の仲らいを保つ役割も与えられて[r]
[sp]いる。 ……ふ、いわば、中間管理職だな」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口通常]
「中間管理職？」[p]
[whosay name="四条 一華"]
[主人公眉通常]
「かいつまんで言えば、家のことは全て華織が責任を持ち、[r]
[sp]整える」[p]
[whosay name="四条 一華"]
「家族や、女中が問題ごとを起こしたら、最終的にどう乗り[r]
[sp]越えるか……それを決めるのが、華織の役目だ。[r]
[sp]僕には、他にやることがあるからね」[p]
#
[主人公眉困り]
私は、尊大な立ち振る舞いをなさる、[ruby text=いち]一[ruby text=か]華様をみて、[r]
忙しくやつれる華織様の姿が脳裏をよぎってしまった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ムッ]
（華織様……）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（[華衣]さんのことを追いかけるのも、また別の意味で……）[p]
#
降り積もる懺悔もさることながら、自分の意思以外に家の役目[r]
としても、動かなくてはならない。[p]
[主人公目閉]
その気持ちは、どれだけのものか？[r]
[ruby text=すえの]末[ruby text=いもうと]妹であった私は、どう気遣ったらよいのかと[ruby text=はかり]計かねた。[p]
[whosay name="四条 一華"]
[主人公目通常]
[主人公口通常]
「面倒ごと([ruby text=か]華[ruby text=い]衣)から逃げてきた、僕が言える立場ではないが、[r]
[sp][ruby text=あ]華[ruby text=いつ]織は、今まで四条家の為に相当、自身を捨ててきたはずだ」[p]
[whosay name="四条 一華"]
[主人公憂い]
「男の身にしては、外で遊ぶことも知らないまま、華道の修行にあけくれ、[r]
[sp]友人も少ない。……いや、いるのかだって怪しい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目大]
（きちんといますわ！……[wait time=50]
[主人公目伏]
私のお兄様しか知りませんが……）[p]
[whosay name="四条 一華"]
「弟が[ruby text=わが]我[ruby text=まま]儘に泣けば、自分の持っているものをあげ、[r]
[sp]妹が弟と折り合いが悪く悩み[ruby text=さけ]叫べば、家族と周りに取り計らって[r]
[sp]良いように環境を見[ruby text=つくろ]繕う」[p]
[whosay name="四条 一華"]
「[ruby text=あ]華[ruby text=いつ]織は、そんな頼りない男なのさ。[r]
[sp]……いい意味でね」[p]
[whosay name="四条 一華"]
[主人公通常]
「なんにせよ、[r]
[sp]華織は、僕から見たら、まだまだ頼りない男だが、[r]
[sp]君は、そこそこ大事にしてやってくれ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「はい」[p]
;=================================================================================_
*seen5
[autosave]
[whosay name="四条 一華"]
「Pardonne-moi！……長話に付き合わせてしまったな。[r]
[sp]どうも、君の愛らしさに惹かれてしまうようだ。[r]
[主人公照れ]
[sp][ruby text=しばら]暫くは[ruby text=こ]此[ruby text=こ]処に滞在している、困ったことがあったら僕に頼ってくれ」[p]
#
[ruby text=いち]一[ruby text=か]華様は、ベルベットの帽子を被りなおし、颯爽と[r]
四条家への方角に向かっていく。[p]
[whosay name="四条 一華"]
「ロサ・ブランカの君、またいずれお会いしよう！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ご、ごきげんよう」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様の顔で言われると、もどかしいわね……。[r]
[sp]私も帰りましょうか……）[p]
#
私は、磯野に改めて教わった言葉の有効性を噛み締めながら、[r]
新たな学習の為に家路へと急いだ。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
（ストール、またお会いしたときに返しましょうか……）[p]
[eval exp="f.sijyou_ani=true"]
;==============================================================================================================
#
[イベントシーン終了]
[if exp="tf.okeiko_gamen==true"]
@jump storage="event.ks" target=*event_owari
[else]
[イベントシーン終了４]
[endif]

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

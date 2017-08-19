*test
[if exp="tf.test_sijyou == true"]
[暗転１]
;[chara_mod name="bg" storage="toumei.gif"]
[stopbgm]
;↓テスト画面からも背景マクロを参照できるように追記します。参照ラベルが違っていたらご調整ください◆jsYiJcqRkk
[call target=*end_sub storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;背景　床の間のみ表示　夕方バージョン
[freeimage layer = 1]
[wait time=10]
[背景_四条華道教室(夕)]
[イベントシーン構築]
[四条_隣_ベース羽織]
[四条_隣_微笑み]
テストページからはじめます[p]
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]
[主人公ポーズ通常]
[主人公通常]
[主人公憂い]
[endif]
;=================================================================================_
*seen0
*start
[autosave]
;表情は前回の続きから
;〜〜〜シーン 急降下へ　メモ〜〜〜
;あらすじ。敵の登場 邪魔がはいる 先生が湖池屋さんのお嬢様を連れてくる 途中で路線を決定したのでまだ飛び飛びな部分があります
;シーンをわけて整理いましょう
;~~~~~~~~~~~~~~エスコ-トシーン~~~~~~~~~~~~~~~~~~~~~
[whosay name="華織" color="olivedrab"]
「もし、分からないことがあったら仰ってください、こちら側からお手伝い[r]
[sp]しますので」[p]
;---------------------------
[if exp="tf.test_gamen == true"]
テストページからプレイしています。手紙まで移動しますか？[r]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]

[link target=*jump_ok1]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no1]い　い　え[endlink][r]
[resetfont]
[s]

*jump_ok1
[current layer="message0"]
[resetfont]
「はい」[r]
移動します。[p]
[cm]
@jump target=*seen11
;@jump target=*seen_end
[s]

*jump_no1
[current layer="message0"]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]
[四条_隣_目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「は、はい……」[p]
[主人公眉下げ下]
[主人公口通常]
[if exp="f.para_shujinkou_shukujodo >= 200"]
（御正面にお座りになれたのは、私をお手伝いしてくださる為でしたのね）
[else]
（正面に座っていらっしゃったのは、私をお手伝いされる為でしたのね）[p]
[endif]
;まず、床の間から畳一帖を隔てた位置に座り、花に向かって一礼してから拝見します。
;次に全体の構成、花材の取り合わせ、花器、花台までをよく拝見し、花を生けた人へ感謝の一礼をしましょう。
#
[主人公目閉]
私は、華織様を前にして、花を手に取り、器にいけていく。[p]
;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉困り]
（何でしょうか……今日は[ruby text=まと]纏まりが良くないわ）[p]
;読みにくいのでルビa
#
[主人公目伏]
;美しい姿を求める度に思わぬ姿となっていく花を目にして、気持ちも四方八方へと見定まらない。[p]
美しい姿を求める度に思わぬ姿となっていく花は、まるで自身の心を[r]
映すようであった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
（華織様の前なのにどうしましょう）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
 [主人公横伏目]
 [if exp="f.para_shujinkou_shukujodo >= 200"]
（何でしょう、 昔は、その様なことはございませんでしたのに)[p]
 [else]
（何でしょう、昔はそんなことなかったですのに）[p]
[endif]
;
[四条_隣_微笑み]
#
私が困惑していると、華織様が優美な微笑みで私の手を取った。[p]
;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公頬染め]
[主人公目大]
[主人公口ムッ]
「！」[p]
[whosay name="華織" color="olivedrab"]
「葉を少なくしてみては如何でしょうか？」[p]
;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]
#
華織様の冷たい指先に鼓動が高まる。[p]
;水触ってるからとか前のイベントの印象を持ってくる
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
[主人公口開]
「は、はい！」[p]
[主人公口通常]
#
[主人公憂い]
[主人公効果消]
けれども、乱れた私とは、対照的に華織様は、真面目な表情をして[r]
私を見つめていた。[p]
[whosay name="華織" color="olivedrab"]
「もう少し七五三の対比を意識されますと、奥行きが生まれ、[r]
[sp]より自然な表情があらわれるかと思います」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい……」[p]
[fadeoutbgm time=3000]
[whosay name="華織" color="olivedrab"]
[四条_隣_眉困り]
[wait time=10]
[四条_隣_目伏]
[wait time=10]
「……」[p]
;~~~~~~~~~~~~~~エスコ-トシーンここまで~~~~~~~~~~~~~~~~~~~~~

;~~~~~~~~~~~~~~問題にせまるシーン~~~~~~~~~~~~~~~~~~~~~
[autosave]
#
ふと、華織様のしなやかに動いていた手が止まり、華織様の瞳が不安気に[r]
私の目を捕えた。[p]
;華織様の目が不安気に私の目を捕えた。その瞳が[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;[主人公憂い]
[主人公口開]
「どうかされましたか？」[p]
[主人公口通常]
[whosay name="華織" color="olivedrab"]
[四条_隣_目閉じ]
 「[名前]さん。やはり不快にさせてしまったでしょうか？」[p]
 [if exp="sf.BGM=='ON'"]
;【BGM】哀しげな曲（攻略対象側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukisugara.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukisugara.ogg'"]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口開]
[主人公目大]
「えっ……？！」[p]
[主人公口通常]
;今日来た理由を話す
[whosay name="華織" color="olivedrab"]
[主人公目伏]
「今日は、祖母から[名前]さんと華道家としての仕事が出来るときいて、[r]
[sp]喜び急いで来てしまいましたが」[p]
[whosay name="華織" color="olivedrab"]
「何の考えもなく、[名前]さんを呼び出してしまった形です」[p]
[whosay name="華織" color="olivedrab"]
[四条_隣_口ムッ]
「……ご迷惑でしたよね。[r]
[sp]まだ婚約"だけ"している身の[名前]さんを四条家の名誉の為に[r]
[sp]呼び出して良い道理なんて、僕には」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
[主人公目大]
[主人公口開]
「そんなことは……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ムッ]
[主人公目閉]
（そんな風に仰らないで下さい……四条家に嫁ぐ"淑女として"、[r]
_　これくらいの緊張は……）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（緊張……？ 違うわ……私、緊張していた事よりも……もっと違う何かが）[p]
[whosay name="華織" color="olivedrab"]
「ご迷惑をかけてしまって申し訳ありません」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
（華織様、待って下さい、迷惑だなんて、謝らないで下さい！[r]
_　……一人で抱え込まないで下さい……）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
（私……今の気持ちを華織様に伝えたいのに……）[p]
[whosay name="華織" color="olivedrab"]
「次からは、」[p]
[fadeoutbgm time=3000]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目大]
[主人公口開]
「待ってください！」[p]
[主人公口通常]
[四条_隣_通常]
[whosay name="華織" color="olivedrab"]
 「！」[p]
;会話文いれないとぶつ切り間半端ない
#
私は、初めて華織様の声を遮って、自身の声を荒げてしまった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（…………）[p]
;【SE】時計（控え目カチコチ）
[playse storage=tokei_hikaeme.ogg loop=true]
#
華織様の驚かれた顔が、遠く感じる。[p]
[四条_隣_眉困り]
[四条_隣_目伏]
[wait time=10]
[四条_隣_口通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横伏目]
[主人公口ムッ]
「……そうではないのです……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
（華織様に伝えないといけないのに……ごめんなさい。[r]
[sp]私、今[ruby text=いだ]抱いている、自分の気持ちがわからないのです）[p]
#
華織様との間を埋めようと、考えを巡らす。[p]
;二人の距離を埋めるために考えを巡らすが答えは靄に消えて見えない
;~~~~~~~~~~~~~~問題にせまるシーン~~~~~~~~~~~~~~~~~~~~~ここまではOKにしよう
;=================================================================================_
*seen1
[autosave]

;~~~~~~~~~~~~~~敵の登場シーン~~~~~~~~~~~~~~~~~~~~~
[stopse]
――その時だった。[p]
;【SE】軽い足音（小走りフェードアウト）
[playse storage=girl_out_run.ogg loop=false ]
#
[whosay name=華道の先生 color=%mp.color]
[主人公目伏]
「湖池屋お嬢様、待ってください、今日の教室は……」[p]
#
[四条_隣_通常]
;音の欠如
;静粛な空気の中に慌ただしい声がこだます。[p]
[ruby text=かん]閑[ruby text=じゃく]寂な二人の境界線に慌ただしい声が響き渡った。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
[主人公横伏目]
（何でしょうか……？）[p]
#
私は、声がした先を振り返った。[p]
;SEは想像なので・・・変更しても大丈夫です
;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]
#
そこには、流行りの洋服を嫌味なく[ruby text=まと]纏う、都会的な淑女が佇んでいた。[p]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
[主人公目伏]
「あの方が四条綾花様の……」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】五色（重いムードに
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]
#
"湖池屋様"と呼ばれた令嬢は、 一点の曇りもない瞳で私の後ろにいる[r]
華織様を見つめていた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どちらのご令嬢でしょう……）[p]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「ごきんげんよう お二方さま」[p]
;ゴメンあそばせ？
#
湖池屋令嬢は、私に手短な挨拶を済ますと、 華織様の前へと割って入って[r]
いった。[p]
;~~~~~~~~~~~~~~敵の登場シーンおわり~~~~~~~~~~~~~~~~~~~~~

;~~~~~~~~~~~~~~敵の説明シーン~~~~~~~~~~~~~~~~~~~~~
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「……本当、噂通りに麗しい方ですのね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
（華織様を見ていらっしゃるの……？）[p]
;主人公、割って入られ嫌な気持ちになる
[whosay name="華織" color="olivedrab"]
「貴方は？」[p]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「申し遅れましたわ。[sp]私、湖池屋 矢須子です」[p]
;長いので切ろう
#
ふわりと笑顔を見せる湖池屋様。[p]
彼女のスラリとした身長と都会的な洋装も、あいまって、大人らしい理想の淑女に見えてしまった。[p]
;子供と感じている主人公の敵
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
（……）[p]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「父が、こちらの教室を借しながら、私自身も淑女見習いとして、[r]
[sp]こちらの先生と
[四条_隣_目大]
"四条綾花様"に華道の教えを頂いているんですの」[p]
;~~~~~~~~~~~~~~敵の説明シーン~~~~~~~~~~~~~~~~~~~~~
[autosave]

;~~~~~~~~~~~~~~敵と華織との立ち位置・説明シーン~~~~~~~~~~~~~~~~~~~~~
;さらっと読んで気付かないのでセリフか地の文を　ここで祖母から～の流れじゃないと違和感
[whosay name="華織" color="olivedrab"]
[主人公目伏]
[四条_隣_微笑み]
「ああ、教室を開かれている湖池屋の令嬢とは貴方のことでしたか」[p]
#
[主人公目閉]
湖池屋令嬢の口から、華織様のお祖母様、"四条綾花"の名が出た途端、[r]
華織様は、興味の色を示されたかのように目を細められた。[p]
[主人公横伏目]
[whosay name="華織" color="olivedrab"]
[四条_隣_目閉じ]
[四条_隣_口通常]
「ご挨拶遅れまして大変、失礼[ruby text=いた]致しました。[r]
[sp]四条華織と申します。[r]
[sp]祖母が、いつもお世話になっております」[p]
[主人公目伏]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「ご丁寧にありがとうございます。[r]
[sp]いいんですの、私、お稽古以外では外に出れない身ですので、[r]
[sp]無理もないこと」[p]
[四条_隣_通常]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「それに、この教室は、知名度のために先生の名で、お貸しておりますし[r]
[sp]華織様のような方でもご挨拶が遅れるのは[ruby text=いた]致し方ありませんわ……」[p]
;ご挨拶を遅れる→ご挨拶が遅れる、かつ「が」連続を避けるよう調整しました。意図が異なる場合は再調整願います(◆jsYiJcqRkk
;原文：[sp]華織様のような方が、挨拶を遅れるのも[ruby text=いた]致し方ありませんわ……」[p]

;律儀な　礼節をわきまえた方　を重んじる
#
湖池屋令嬢は、長い[ruby text=まつ]睫毛を落として、艶やかに溜息を落とした。[p]
;ルビは消してもいいです
[主人公目伏]
;セリフ適当すぎ
[whosay name="華織" color="olivedrab"]
「そうでしたか」[p]
;（はやくおわらないかなー）
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「華織様。急遽、お祖母の代わりに来てくださったのですってね。[r]
[sp]そちらの先生方から聞かされたわ」[p]
;ウチのものから
;~~~~~~~~~~~~~~敵と華織との立ち位置・説明シーン~~~~~~~~~~~~~~~~~~~~~
;=================================================================================_
*seen2
[autosave]
;~~~~~~~~~~~~~~敵との立ち位置心情・説明シーン１~~~~~~~~~~~~~~~~~~~~~
#
教室の廊下に視線を流すと、ぐったりと肩を落として湖池屋令嬢を見つめる先生達が待ちかねていた。[p]
[whosay name=華道の先生 color=%mp.color]
「あの、そろそろ……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横伏目]
（華織様……いつまでお話されているのでしょうか。[r]
[主人公目閉]
_　けど……これも四条家のお付き合いのひとつですから……）[p]
[whosay name="華織" color="olivedrab"]
[四条_隣_目閉じ]
「お待たせしてよろしいのでしょうか」[p]
;僕のような半人前を相手にお待たせしてよろしいのでしょうか
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「ご挨拶くらい構わないでしょう？」[p]
[四条_隣_通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
（どうして、この方は華織様から離れないのでしょうか？）[p]
;上のシーンを整理したから出してみる
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
（嫌だわ。こんな風に誰かを疎ましく思うなんて、はしたない）[p]
#
;~~~~~~~~~~~~~~敵と華織との立ち位置・説明シーン１~~~~~~~~~~~~~~~~~~~~~
;=================================================================================_
*seen3

;~~~~~~~~~~~~~~華織との立ち位置・説明シーン~~~~~~~~~~~~~~~~~~~~~
[whosay name=湖池屋男爵令嬢 color=%mp.color]
[主人公目伏]
「ちなみに 湖池屋家は、この裏にございますわ。[r]
[sp]……宜しければ、綾花様と、ご一緒に湖池屋サロンにお遊びに[r]
[sp]おいでいただければ幸いです……」
[主人公目大]
[p]
#
湖池屋様の ある言葉が、引っかかり、心に黒い靄を作っていく。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
（華織様のお祖母様と一緒に……？）[p]
#
どうしてか、私は華織様と華織様のお祖母が湖池屋様の家に[r]
入っていく後ろ姿を思い浮かべてしまった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様は、"私の為なら"、きっと行かないでくれるはずだわ……。[r]
_　でも、四条家の名誉の為なら、もしかしたら、行ってしまうのかも[r]
_　しれない）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
（私の為なら？ ……そんな風に考えてはいけないわ）[p]
#
華織様の為に淑女になれない自分の惨めさと悔しさが込み上げてくる。[p]
;プレイヤー怒られそうね〜
#
華族とは、資本は基礎。名誉は国の為に第一に考えるのが古式由来の思想。[p]
;他ルート配慮[r]
ましては、四条家は、そういった思想を大事にしており、[p]
;[r]でもいいのかもしれない
鉱山業を基礎とし、[r]
家の名誉の為に代々、華道を行っているとお兄様にも聞かされている。[p]
;兄か、お見合い前に磯野が説明した方がいいかもしれない
;~~~~~~~~~~~~~~華織との立ち位置・説明シーン２~~~~~~~~~~~~~~~~~~~~~
;=================================================================================_
*seen4
[autosave]
;~~~~~~~~~~~~~~華織を疑うシーン~~~~~~~~~~~~~~~~~~~~~
[whosay name=湖池屋男爵令嬢 color=%mp.color]
[主人公目伏]
「私、花と絵画が好きですの。 [r]
[sp]今日のお稽古に華織様も、ご一緒にして下さったら、とても心強いわ」[p]

;華織(今はちょっと文奈さんと話してるからな、ちょっと面倒だな……でもお祖母様のお客様の様ですし、どう断ろうかな）
[whosay name="華織" color="olivedrab"]
「……今日は、難しいですが、[r]
[四条_隣_口微笑み]
[sp]また今度、機会がありましたら祖母と共に参りますね」[p]
;華織(…無難なところで)
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目大]
（！ 華織様、断って下さらないのですか？）[p]
[四条_隣_通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
（いえ……こちらは、お祖母様のお付き合いされている家ですから……。[r]
_　だから私は……）
[主人公目閉]
[主人公口ムッ]
[p]
;湖池屋、察し。
[whosay name=湖池屋男爵令嬢 color=%mp.color]
[主人公目伏]
「……そうですか。[r]
[sp]こちらのお教室は、湖池屋家の敷地でもありますから、[r]
[sp]いつでも構いませんわ」[p]
[whosay name="華織" color="olivedrab"]
[四条_隣_目にこ]
「はい……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
（華織様、微笑まないで下さい……）[p]
;~~~~~~~~~~~~~~華織を疑うシーンここまで~~~~~~~~~~~~~~~~~~~~~
[autosave]
;~~~~~~~~~~~~~~後半へのシーン~~~~~~~~~~~~~~~~~~~~~
[四条_隣_通常]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
[四条_隣_憂い]
「私、今年で[ruby text=じゅう]十[ruby text=なな]七となります。[sp]中々の歳でしょう？」[p]
;いきなり歳をきくなら名乗ってみたら？
[whosay name="華織" color="olivedrab"]
[四条_隣_汗]
「いえ……」[p]
;華織(ふーん。文奈さんより年上の方なんだな〜　はやくおわらないかな)
[whosay name=湖池屋男爵令嬢 color=%mp.color]
[四条_隣_効果消]
[四条_隣_眉下げ]
「失礼しますが、華織さまは、お幾つなのでしょうか？[r]
[sp]先ほど、
[ruby text=に]二[ruby text=じゅう]十[ruby text=に]二と、子女たちの噂で聞きましたけれど、[r]
[四条_隣_目閉じ]
[sp]とてもお若く見えましてよ」[p]
;この時点では微笑み
;///////////次の会話に問題がなければ消しても大丈夫です///////////
[whosay name="華織" color="olivedrab"]
[四条_隣_笑顔]
「今年で[ruby text=に]二[ruby text=じゅう]十[ruby text=さん]三となります」[p]
[四条_隣_目通常]
[四条_隣_眉通常]
;//////////////////////
#
[主人公横伏目]
華織様は、男爵令嬢に歳のことを聞かれ、一瞬だけ、華織様の眉を曇らせた。[p]
;憂い
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様、もしかして歳のことを気になさっていらっしゃる？）[p]
;華織は月ではなく、ただの人ということ
;~~~~~~~~~~~~~~後半へのシーン~~~~~~~~~~~~~~~~~~~~~
;=================================================================================_
*seen5
[autosave]
;~~~~~~~~~~~~~~退場へのシーン~~~~~~~~~~~~~~~~~~~~~
[whosay name=湖池屋男爵令嬢 color=%mp.color]
[主人公目伏]
[四条_隣_通常]
「そうなのですね……失礼しましたわ。[r]
[sp]華織様のように美しい方ですと、どうも浮足たってしまいますわ。[r]
[sp]ところで、お手紙の相手は決められまして？」[p]
#
男爵令嬢も気づいたのか、それとなく謝り、本題へと挿し迫った。[p]
[whosay name="華織" color="olivedrab"]
[主人公横伏目]
[四条_隣_口微笑み]
「えぇ。 ようやく。来月には結納をと、決めております」[p]
;華織(色々とあって文奈さんとは長かったなぁ というか早く終わらないかなー 文奈さんに嫌われたりしたらやだし)
;主人公少しホッとする
[主人公目閉]
[主人公汗]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
[四条_隣_通常]
「あら、残念ですわ……。[r]
[sp]でも、今日お会いできたのは感謝させていただきますわね」[p]
;ぽかーん(　ﾟдﾟ)となるので自然な流れを模索、パーツ変更するなど　迷走
[whosay name=湖池屋男爵令嬢 color=%mp.color]
[四条_隣_汗]
「ふぅ、世の中の手紙のお相手が皆、華織様のような素敵な殿方であれば[r]
[sp]いいですのに……」[p]
[主人公横伏目]
[whosay name="華織" color="olivedrab"]
「どうかされましたか？」[p]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「失礼。私、有名な方や運命を感じる方には、自身が"身請け"されるまでに[r]
[主人公目大]
[sp]会っておきたい性分でしたので！」 [p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（もしかして、湖池屋様は……）[p]
;既に決められた方がいらしゃるのでしょうか？)[p]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
[主人公目伏]
「ほんの少しの間だけ夢を見させて頂いてありがとうございましたわ」[p]
[whosay name="華織" color="olivedrab"]
[四条_隣_目パチ1回]
「？ えぇ」[p]
;華織(この方は、なんでしょうか？)
[主人公目伏]
;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
[四条_隣_目閉じ]
「それでは、ごきげんよう。その時は、夫人としてお会いしましょう」[p]
;華織(この方も、華族としての責任があるのでしょうね)
#
男爵令嬢は、明快に笑ってみせると、去り際に私の顔を恨めしそうに[r]
見つめた。[p]
[fadeoutbgm time=3000]
;読みにくい
[whosay name=湖池屋男爵令嬢 color=%mp.color]
;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]
「ごきげんよう」[p]
;お相手が素敵な方で羨ましいですわね
;~~~~~~~~~~~~~~退場へのシーン~~~~~~~~~~~~~~~~~~~~~

;=================================================================================_
*seen6
[autosave]
;~~~~~~~~~~~~~~再度・華織への疑いと気持ちの主張~~~~~~~~~~~~~~~~~~~~~
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目大]
（ ！ ）[p]

;前BGMをどこで切るべきか
[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

;ぶつ切り感ぱないので地の文つけてみたりうーん
#
心に残った靄が一斉に拡がっていく。[r]
私は、それを抑えようと、必死に綺麗な理由を求めた。[p]
;サウンドノベルになってきたぞ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
（湖池屋様は……悪い人ではない……と思うわ。[r]
_　お相手が決められているからこそ、ただ一目、華織様にお会い[r]
_　したかったのかもしれません……）[p]
#
[whosay name=華道の先生 color=%mp.color]
[四条_隣_効果消]
[四条_隣_横目]
「湖池屋様、今日の教室は隣です」[p]
[whosay name=湖池屋男爵令嬢 color=%mp.color]
「えぇ、そうでしたわね。今日は、特別授業をお願いしていたのよね。 [r]
[sp]わざわざありがとうございます。[r]
[sp]では、参りましょうか。それでは、お二方、失礼しますわ！」[p]
;華織に会いたかった感は出たでしょうか
[whosay name=華道の先生 color=%mp.color]
「四条様、帰ってまいりましたがまだ取り込み中でして、[r]
[sp]申し訳ございません……後ほど改めてご挨拶させて頂き[r]
[sp]ます」[p]
[whosay name="華織" color="olivedrab"]
[四条_隣_目にこ]
「はい、では」[p]

#
華織様が、[ruby text=よ]余[ruby text=そ]所[ruby text=ゆ]行きの微笑みで、湖池屋様を見送っていく。[p]
;華織(うちの兄と本音でお付き合いするなら、ああいった女性が良いのかもしれませんね)
;大したことないというプレイヤーへの説明
[whosay name=&sf.girl_namae color="#cf5a7f"]
[四条_隣_憂い]
[四条_隣_口開]
[四条_隣_汗]
;華織(やっと、終わった…。なんだったのでしょう)
[主人公目伏]
（大したことではないのに、我慢しなくてはいけないのに）[p]
[四条_隣_口ムッ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[四条_隣_目閉じ]
[主人公目閉]
（どうして気持ちが抑えれないのでしょうか）[p]
;~~~~~~~~~~~~~~再度・華織への疑いと気持ちの主張~~~~~~~~~~~~~~~~~~~~~

;=================================================================================_
*seen7
[autosave]
;~~~~~~~~~~~~~~主人公気持ちの主張~~~~~~~~~~~~~~~~~~~~~
[whosay name="華織" color="olivedrab"]
[主人公目伏]
[四条_隣_困り]
「[名前]さん、お待たせしてしまい申し訳ありません」[p]
;〜〜〜〜〜〜シーン急上昇〜〜〜〜〜〜
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横伏目]
[主人公口開]
「華織様は、ああいった淑女らしい方がお好みでしょうか」[p]
;http://thesaurus.weblio.jp/content/%E3%81%82%E3%81%82%E3%81%84%E3%81%A3%E3%81%9F%E9%A1%9E%E3%81%AE%E4%BA%BA%E9%96%93
[whosay name="華織" color="olivedrab"]
[主人公目伏]
[主人公口ムッ]
[四条_隣_通常]
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
;華織(ああ、もしかして、これは)
[四条_隣_微笑み]
#
私は、すぐに『違う』と言ってくれない華織様に気が立ってしまった。[p]
[主人公目閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様も、しっかりと湖池屋様に対して、私との事をお答えくださって[r]
[sp]いますのに……私、何でこんな事を……）[p]
;~~~~~~~~~~~~~~主人公気持ちの主張~~~~~~~~~~~~~~~~~~~~~
[fadeoutbgm time=3000]
[autosave]
;~~~~~~~~~~~~~~華織との和解~~~~~~~~~~~~~~~~~~~~~
;社交界の常識？　
[whosay name="華織" color="olivedrab"]
「[名前]さん。　僕は、そういった類の常識には疎い男ですので、[r]
[sp][名前]さんが、おっしゃるような"淑女"というものが[r]
[sp]分かりませんが」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
「……」
[主人公口ムッ]
[p]
[whosay name="華織" color="olivedrab"]
「昔からのお付き合いです。[名前]さんがいうどんな淑女が現れた[r]
[sp]としても、僕の好みは、"そのままの"[名前]さんが、好きですよ」[p]
;少し華織を見る　チョロインすぎるかもしれないのでシーンAで前シーンを思い出してもらう
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横伏目]
[主人公口ムッ]
[主人公頬染め]
[主人公ポーズ指]
「……」[p]
[whosay name="華織" color="olivedrab"]
「花を美しいと思うように[名前]さんを美しいと思っています」[p]
;うまくいかない気持ちを伝える 共用する

;~~~~シーンA~~~~~
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]
#
[主人公ポーズ通常]
[主人公目閉]
私は先ほどの花を見つめていた華織様のお姿が、脳裏をよぎった。[p]
;私は先ほどの生徒を見守る"華織お兄様の姿"が脳裏によぎった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様がおっしゃる花への気持ちは、どんな言葉よりも…… ）[p]
;~~~~シーンA~~~~~~

;~~~~~~~~~~~~~~華織との和解２~~~~~~~~~~~~~~~~~~~~~
;=================================================================================_
*seen8
[autosave]
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
打ち明けた後、心を焼くような痛みで[ruby text=まぶだ]瞼を閉じてしまった。[p]
[whosay name="華織" color="olivedrab"]
[四条_隣_憂い]
[主人公横伏目]
[主人公口通常]
「いいえ、四条家の責務とはいえ、[r]
[四条_隣_目閉じ]
[sp][名前]さんとの話を途中にしたまま、他の方への話を長引かせてしまい[r]
[sp]申し訳ありませんでした……」
[主人公驚]
[p]
#
華織様は、しおれた花のように[ruby text=こうべ]首を垂れた。[p]
;華織様は、懇切丁寧に[ruby text=こうべ]首を垂れた。[p]
[主人公ポーズ通常]
;他に言い回しあるか考えている
;詫びた？ 詫びられた？ お辞儀した？
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉困り]
[主人公ポーズ指]
[主人公頬染め]
「いえっ！ その、いいんです！」[p]
;[whosay name="華織" color="olivedrab"]
;「[名前]さんには、恩義があるというのに」
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
;エスっぽい？　納得いく説明に入ってないので違和感
（華織様って、少し、私の事を"考えすぎて"いらっしゃる所があるのかも……）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横目]
（ですけど、嬉しいと感じてしまう私がいる……）
[主人公目閉]
[p]
;~~~~~~~~~~~~~~華織との和解２~~~~~~~~~~~~~~~~~~~~~
;=================================================================================_
*seen9
;~~~~~~~~~~~~~~悟りの時~~~~~~~~~~~~~~~~~~~~~
#
心に暖かな灯火を感じてしまう。[r]
そんな私の心は、ようやく[ruby text=ひと]一つの答えを導き出した。[p]
;主人公の心の動きや時間経過に合わせて背景に変化が欲しく、夕方2バージョン目を追記してみます(スクリプト担
;加工具合や背景の変化位置などご希望がありましたら教えてください
[背景_四条華道教室(夕)_2]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目大]
（！ そうだわ、私、華織様にお近づきしたかったのですわ……）
[主人公眉下げ下]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
（華織様が、あまりに聡明で、憧れに感じていたから……。[r]
[sp]あの月のように遠く感じて……）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（心も立場も全て……隣にいたくて、華織様の為になりたいのに、[r]
[sp]上手くできなくて寂しかった）
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉困り]
（自信に満ちた湖池屋様のお姿が現れて[r]
[主人公目閉]
[sp]子供のころから一緒にいた華織様が、私以外の方と親しく[r]
[sp]されて、とても嫌でした）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
（淑女として、失格ですよね）[p]
#
[主人公口ほほえみ]
[主人公眉下げ下]
[主人公目伏]
[主人公頬染め]
落ちつきを取り戻したところで、私は、華織様を真っ直ぐ見つめた。[p]
[whosay name="華織" color="olivedrab"]
[四条_隣_憂い]
[四条_隣_汗]
「それで、今更……ですが、[名前]さんの話を聞きたいのです……が……」[p]
#
見つめた先には、話の腰を戻そうと、困っていらっしゃる華織様が目に[r]
入った。[p]
;月ではないよというシーン2
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横目]
[主人公口ほほえみ]
（意外に不器用でいらっしゃる部分もあるのですね）[p]
;感想 素朴でいらっしゃる部分も？
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
（そうだわ。 私が月と思っていた方は、ずっと側にいてくれた方ですもの。[r]
_　たとえ華道に対するお志が高くとも、私が……）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ]
「華織様、私の手を握って下さりませんか？」[p]
[主人公ポーズ通常]
[whosay name="華織" color="olivedrab"]
[四条_隣_通常]
[主人公目伏]
[主人公眉下げ下]
[四条_隣_眉下げ]
[wait time=10]
「……はい」[p]
#
華織様の大きな手が私の両手を包んだ。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
（華織様。どうか私の成長を見守っててください。[r]
[sp]いつか四条家のお役にも立てるよう、もっと華道のお稽古も頑張ります）[p]
[whosay name="華織" color="olivedrab"]
「[名前]さん？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉困り]
（だから、どうか私の側に……）[p]
[whosay name="華織" color="olivedrab"]
[四条_隣_目閉じ]
[四条_隣_口微笑み]
「……どんな時でも[名前]さんと共にいます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目大]
[主人公口開]
「！ 華織様……？」[p]
;=================================================================================_
*seen10
[autosave]
[whosay name="華織" color="olivedrab"]
[四条_隣_通常]
「わかりますよ、それくらいは」[p]
[whosay name="華織" color="olivedrab"]
[主人公口ほほえみ]
[四条_隣_困り微笑み]
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
（華織様は、こんなにも近くにいらっしゃったのね……）[p]
[whosay name="華織" color="olivedrab"]
[主人公目大]
「こんな歳になってしまいましたが、[名前]さんの夫として」[p]
[whosay name="華織" color="olivedrab"]
[四条_隣_眉強気]
[wait time=10]
[四条_隣_目にこ]
[wait time=10]
[四条_隣_口笑顔]
[wait time=10]
「[名前]さんに御心配をおかけしない男となるまで、愛情や[r]
[sp]興味を持って眺めてやって下さい」[p]
#
兄のように冗談をいって悪戯気に笑う華織様。[p]
;気分を変える為に行う文矢の真似なのかも
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ指]
（やっぱり、 華織様は、歳のことを気にしていらっしゃたのですね）[p]
;[四条困り微笑み]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
[主人公目伏]
[主人公眉下げ下]
「いいえ、私も、 そのままの華織さまで充分に」[p]
[whosay name="華織" color="olivedrab"]
[四条_隣_微笑み]
「充分に？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉困り]
[主人公横目]
[主人公口開]
[主人公頬染め]
「今日の華織さまって意地が悪いのですね！ 」[p]
[whosay name="華織" color="olivedrab"]
[主人公口通常]
[主人公ポーズ通常]
[四条_隣_目閉じ]
[四条_隣_眉下げ]
[wait time=10]
[四条_隣_口微笑み]
[wait time=10]
「ええ、今日だけはね……」[p]
[whosay name="華織" color="olivedrab"]
（偶然にも、この場所で[名前]さんと出会えた特別な日ですから）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;照れ怒り
[主人公口ムッ]
「私も、もっと上達するまでは、華織様に花をいけることはしません」[p]
[主人公目閉]
[whosay name="華織" color="olivedrab"]
[四条_隣_微笑み]
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
[主人公通常]
（お父様や磯野に？）[p]
;話カッコでもいい お好きな方で
#
[主人公目閉]
[主人公口通常]
;長いかも
教室の窓から梅に宿るメジロの声が聞こえ、季節に思いを馳せる。[p]
季節は、二月。　結納の日取りまで、あと[ruby text=ひと]一[ruby text=つき]月程であった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（もう少しで、お父様と磯野と暮らしていた日々が終わってしまうのですね）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
「そうですね。　私、お父様達やお世話になった方のことを考えてみます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横伏目]
[主人公眉下げ下]
「今日は、お騒がせしてしまってすみません」[p]
[whosay name="華織" color="olivedrab"]
[主人公目大]
[主人公口通常]
[四条_隣_目にこ]
「いえ、めずらしい[名前]さんが見れて嬉しかったですよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;照れ怒り
[主人公横目]
[主人公眉困り]
[主人公口ムッ]
[主人公頬染め]
「……"華織お兄さま"は、いつも余裕があっていいですわね」[p]
[whosay name="華織" color="olivedrab"]
[四条_隣_通常]
「そうですか？……"[名前]さんが、どうせ他の方と手紙をしてるのだし"と[r]
[sp]思っていた時もありましたが……」[p]
;月ではない3 うーん
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目大]
[主人公口通常]
「え？！」[p]
[whosay name="華織" color="olivedrab"]
[四条_隣_笑顔]
[主人公通常]
「いえいえ、何でもありません。[sp]さぁ、続きをしましょうか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「はい！」[p]
[四条_隣_微笑み]
[四条_隣_目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
;[主人公ふぅ閉]
（今日は、懐かしい気持ちと、新しい気持ちの両方に出会った気がするわ）
[p]
;なんかこの辺でイチャコラすればいいのか？
[whosay name="華織" color="olivedrab"]
[四条_隣_微笑み]
[主人公眉下げ下]
[主人公目大]
[wait time=10]
「[名前]さん。花が綺麗ですね」[p]
;そういえば、先ほどの話は
#
[主人公目伏柔]
[主人公頬染め]
[wait time=10]
華織様が私をみて微笑む。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、一緒に見られて嬉しいですわ」[p]
[whosay name="華織" color="olivedrab"]
[四条_隣_目閉じ]
「これからも美しい花を見られたら、幸せですね」[p]
#
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
[主人公口ほほえみ]
[四条_隣_微笑み]
（誰かを思うって、本当ままならないけれど……）
[p]
;=================================================================================_
*seen11
[autosave]
#
[主人公伏目]
;[主人公目伏柔]
決して真っ直ぐにならない花の姿を大切にしながら、私は大切な誰かの[r]
ために花を生けた[p]
[暗転２]
;[暗転１]
[暗転１]
[wait time=50]
;ｲﾍﾞﾝﾄｼｰﾝ終了時に　誰もいない教室がでるため暗転 messageは表示されない
[主人公退場]
[四条退場]
*seen_end
[eval exp="sf.event_sijyou_2_1 = 1"]
[イベントシーン終了]

[if exp="f.okeiko_gamen == true"]
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
[メッセージウィンドウ上ボタン表示]
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

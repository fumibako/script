;あらすじ　期間　春　イベント発生条件　全てのイベントを見ている場合、または華道のレベルなど差別化で甘さ回避
;華織とたまたま出会う主人公。両家に認められた二人は公然とデートすることとなる、そこで華織に連れられた場所は小さな調香店だった。
;華織と香水をつけあい仲良くしていると 調香店の店主は四条祖母、綾花と祖父、源次郎の若いころの思い出を語る
;源次郎は四条家のひとり息子であったが色々と苦労をしていた。努力家ではあったが、どうも語学にはからっきしダメで、貿易必須の四条家で、源次郎はお父様に怒られていたそうだ
;そんなとき、店の前を通りがかった源次郎は、従妹の綾花と偶然再会し、花で励まされたという
;それ以来、記念日になると源次郎様はこっそりと手紙をもってここにやってくるだとか
;二人は色々と考えながらも、より一層仲を深めたいと思う
;華織は家まで送ると、君がくるためにも、帰ってやることがあるといって別れる
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
; 起 　散策　家が近いのでたまたま出会う。事件もおわって親の許可も得ているので
;場所　いつもの町中
;季節描写　春
はろやかな光が、町に植えられた桜の合間を縫って花びらと共に降り注ぐ[p]
;がやがやSE
;【SE】人々のざわめき（ザワザワ…屋外）
[playse storage=zawa_out.ogg loop=false ]
春の陽気につられてた人々は、それぞれ気に入った商店に向かって賑わっていた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(今日は、人通りが多いみたいだわ）[p]
;がやがやSE
;【SE】人々のざわめき（ザワザワ…屋外）
[playse storage=zawa_out.ogg loop=false ]
[主人公ふぅ閉]
;帰ろうとするが・・・　セリフは適当
[whosay name=&sf.girl_namae color="#cf5a7f"]
（こんなに人通りが多くては、気分転換にならないかも……少ししたら帰りましょう）[p]
人込みを避けて大通りをぬけていこうとしたときだった――[r]
大量の花弁を持ち上げて春の嵐が吹き抜けていく[p]
;春風がふくSE
[主人公驚]
[主人公ポーズ指]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（！　すごい風……）[p]
[主人公ポーズ通常]
;目を閉じずにはいられない
;↓効果：汗 [主人公汗]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
;↓口：通常 [主人公口通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
・・・・・[p]
[主人公横伏目]
[主人公ポーズ片手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ふぅ。　急に強く吹いてくるものだから驚いていまったわ）[p]
うち靡く、黒髪と 春嵐の中、特徴的なすらりとした背中が目に入る[p]
;どきりと期待して驚く主人公
;↓眉：通常 [主人公眉通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
;↓目：横目 [主人公横目]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
;[主人公口開]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あれは……」[p]
その人は、どんな人込みの中でも見間違うことがなかった。[r]
むこうもこちらに気づいて歩み寄る[p]
;喜び全開
[whosay name="華織" color="olivedrab"]
「！　[名前]さん！　奇遇だね　こんなところで会えるなんて。[r]
;困り笑顔
[sp]といっても、家が近いから運命と呼べるには気が早いかな」[p]
;恥ずかしい　戸惑い
[主人公ポーズ通常]
;↓口：控え目な笑顔 [主人公口笑顔小]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そ、そうですね」 [p]
[主人公ふぅ閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どうしましょう…… せっかく会えたのに正式に会う手順を踏んでいないわ）[p]
[主人公困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様……またお会いする時、ご連絡ください」 [p]
;切ない　残念
#
[whosay name="華織" color="olivedrab"]
「待って！[名前]さん」[p]
;[主人公口開]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「で、ですが」[p]
[whosay name="華織" color="olivedrab"]
「もう、気にしなくていいと思うよ。　行こう！」 [p]
;手をつないで　(昔みたいに)
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様！？」[p]
[主人公退場]
#
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
;背景銀座
[chara_mod name="bg" storage="bg/B4nFWraU42/ginza3.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
;磯野に罪悪感　どきどき　楽しい
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=
[whosay name=&sf.girl_namae color="#cf5a7f"]
（はじめて、磯野にも言わずで遠くまで来てしまったわ）[p]
[主人公横目]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そういえば、手だって……）[p]
私は、多くの公衆の面前だというのに自然と華織と手を繋いでいたことに気づいてしまった。[p]
;暫定ト書き
小さな町中では、こっそりと手を繋ぐことができても、こういった男女が多い場所で人目を憚らず繋ぐのは、
はじめてで、意識してしまうと、とても恥ずかしい。[p]
[主人公目伏柔]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(けど、これからは、ずっと繋いで歩けるのでしょうか） [p]
昔、見た恋絵巻を見てるような出来事が、さも普通に訪れていることに驚きを隠せなかった。[p]
[whosay name="華織" color="olivedrab"]
「 これからは、ずっと繋いで歩いて行けたらいいね」 [p]
;にこりと笑って
[主人公ほほえみ]
[whosay name="華織" color="olivedrab"]
「そうだ、今日はいいところに行こうか」[p]
;怪しいところ？とドキドキする
[主人公目大]
;[主人公口開]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいところ……ですか？」[p]
[if exp="f.para_shujinkou_shukujodo < 200"]
;華織、焦って
[whosay name="華織" color="olivedrab"]
「あ、蕎麦は食べないし、 そば屋の２階には行かないから安心して！」[p]
;華織様は手を振って、不思議なことを話しかけた[p]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「え？　」[p]
[whosay name="華織" color="olivedrab"]
「……なんでもないよ」[p]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(蕎麦屋の二階に何があるのでしょう？　後で磯野に聞いてみようかしら？）[p]
;ちなみに調べてはダメだ
[endif]

[主人公退場]
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
;華織、香りつながりで化粧品店、調香店に 行く
[whosay name=&sf.girl_namae color="#cf5a7f"]
(ここは……？）[p]
[whosay name="華織" color="olivedrab"]
「ここは、祖母の知人が営んでいる 調香店だよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「えぇと、香水の専門店でしょうか……？」[p]
;ふたりで香水を選ぶ
[whosay name="華織" color="olivedrab"]
「そうだね。ただ、ここは海外の香水店を見習って調香できる店なんだ。[r]
[sp]入ってみよう」[p]
;場面転換のお知らせなのだけどセリフが不自然かも
[whosay name=&sf.girl_namae color="#cf5a7f"]
「は、はい……」[p]

;背景説明　背景ないので未
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
;説明・四条綾花・・・祖母　散策をみてね
[whosay name="調香店主" color=%mp.color]
「いらっしゃいませ～！[r]
[sp]あらまぁ！ 四条綾花様のところに華織様じゃないですか」[p]
[whosay name="華織" color="olivedrab"]
「いつも　祖母がお世話になっています」 [p]
;店内の花のディスプレイをしてもらっている
[whosay name="調香店主" color=%mp.color]
「いえいえ！　こちらこそ、 お世話になっています」 [p]

[whosay name="調香店主" color=%mp.color]
「なんたって、華道の名士の”四条綾花様”に店内に華を添えて頂いているおかげで、[r]
[sp]こんな偏屈な店でも、閑古鳥が鳴くこともなく、素敵なお客様達が来て頂けるのですから！」[p]
;ふたりを見てお世辞をいう店主　まぁまぁ儲かってはいるようだ
[whosay name="華織" color="olivedrab"]
「ふふ、お元気そうで何よりです。[r]
[sp]今日はお客として来ましたので、選ばせてもらってもいいでしょうか？」 [p]
[whosay name="調香店主" color=%mp.color]
「ええ、もちろん！」[p]
#
調香店の主は、いくつか持ち出してくると、ふたりの前に小瓶を並べる。[r]
その小瓶の中には僅かにだけ、香水が入っており、薄い木の棒が漬けられていた。[p]

;ふたりで選ぶ

[whosay name="華織" color="olivedrab"]
「気になった香り名があったら、これを取り出して、仰いでみて」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（なるほど、こうやって選ぶのですね……）[p]
[whosay name="華織" color="olivedrab"]
「こっちは、優しい香りみたいだね」 [p]

[whosay name=&sf.girl_namae color="#cf5a7f"]

（華織様と一緒にいると、新しい発見ができる気がします……）[p]
;ラブ波に耐えられない
;説明する　カタカナ使ってもいい？
[whosay name="調香店主" color=%mp.color]
「そちらの”ぱるふぁん”は、”ふろーらる”系で、特に"愛に効く香り"として重宝されてますよ」[p]
[whosay name="華織" color="olivedrab"]
「そ、そうなんですか？　」 [p]
[whosay name="調香店主" color=%mp.color]
「あぁ、丁度そちらに合うに会う香水を入荷しましたので、お持ちしますね」[p]
#
調香店の店主は選んだ香水を受け取ると、持ってきた小さな小瓶に混ぜて香りを確かめる。[p]
;マドラー的なものでかき混ぜる音
[whosay name="調香店主" color=%mp.color]
「さぁ、まずは、華織様。　どうぞお試しください」[p]
[whosay name="華織" color="olivedrab"]
「ありがとう」[p]
#
店主が華織様に手渡す小瓶から、微かな香りが流れ、鼻をくすぐる。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（いい香りがするわ……優しい花の香りから、爽やかな香りに変わって[r]
[sp]いくのですね）[p]
[whosay name="調香店主" color=%mp.color]
「よろしければ、華織様に近づいてご確認くださいね。　人がつけると香りも変わりますので……」[p]
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
;低度なダジャレ多発
[link target=*kag]華織様の香りをかぐ[endlink][r]
[r][r][r]
[link target=*not_kag] 小瓶の香りを確かめる[endlink]
[s]

*kag
[resetfont]
;セリフは適当 もっとお上品にしてください
[whosay name=&sf.girl_namae color="#cf5a7f"]
（恥ずかしい……けれど、もう気にしなくても……いいかしら？）[p]
#
華織様に近づいて首筋から温かく溢れる香りを確かめる。 [p]

[whosay name="華織" color="olivedrab"]
（ [名前] さんが……） [p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様が……）[p]
[whosay name=ふたり color="%mp.color"]
((近い)) [p]
;お互いに目があって離れる？

;ラブ波に耐えられない

@jump target=*common
*not_kag
[resetfont]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「わ、私は、こちらの香りで大丈夫です！」 [p]

*common
;共通
;いたずらに笑ってみている店主
[whosay name="調香店主" color=%mp.color]
「奥様もお試しください。　次は、もう少し甘目の香りにしますね」[p]
;マドラー的なものでかき混ぜる
[whosay name="調香店主" color=%mp.color]
「はい、どうぞ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「は、はい！」[p]
[whosay name="華織" color="olivedrab"]
「[名前]さんも、首の後ろにつけてごらん」
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ええと……こうかしら？）[p]
[whosay name="調香店主" color=%mp.color]
「 華織様、そこは、つけて差し上げては如何でしょうか？　」
；選択肢
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]

[link target=*tukete]つけてもらう[endlink][r]
[r][r][r]
[link target=*not_tukete] 自分でつける [endlink]
[s]
*tukete
[resetfont]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様、私、よくわからないので、ぜひお願いします」[p]
[whosay name="華織" color="olivedrab"]
「わかりました、待ってくださいね」[p]
華織様は、小瓶から木箆をとると、余分な香水を落として[名前]の目の前に差し出した[p]
[whosay name="華織" color="olivedrab"]
「[名前]さん、悪いけど髪をあげてくれますか？　」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"
「はい」[p]
[whosay name="華織" color="olivedrab"]
「くすぐったかったらごめんね」[p]
;セリフは適当。お上品にしてください
冷たい香りの露が首筋を撫でる[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（～！　）[p]

@jump target=*common2
;だめだわ、ラブ波に耐えられない

*noto_tukete
[resetfont]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「だ、大丈夫です！　私、自分で出来ますので！」[p]

*common2
[whosay name="調香店主" color=%mp.color]
「いかかでしょうか？」[p]
[whosay name="華織" color="olivedrab"]
「うん、いい香りだね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……）[p]
[whosay name="調香店主" color=%mp.color]
「この香水、お二人が並ぶと調和する香りなんですよ」[p
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そういえば……華織様との香りが混ざっても、いい香りだわ）[p]
;うるさいかも↓
[whosay name="調香店主" color=%mp.color]

「香水というものは、一歩間違えると嫌味な匂いになってしまいますからね[r]
特にまだ海外製品が多いので体にあっているものが少ないんです]
[whosay name="華織" color="olivedrab"]
「ふたりで調和する香りなんだね。　いいね。　これにしようか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい！」 [p]

転
;仲良くしていると 調香店の店主は四条祖母、綾花と祖父、源次郎の若いころの思い出を語る
[whosay name="調香店主" color=%mp.color]
「綾花様が気にされていたとおり、本当に仲がよろしいのですね」 [p]
[whosay name="華織" color="olivedrab"]
「祖母は、なにかとおしゃべりな人で……また何か話していましたか？」[p]
[whosay name="調香店主" color=%mp.color]

「お二人を見ていると、昔の自分たちを思い出すとおっしゃっていましたよ」[p]
;困り笑顔
[whosay name="華織" color="olivedrab"]
「また、その話をしていたのですね……[r]
こちらとしては、嬉しいのですが気恥ずかしくもありますよ」[p]
;主人公照れ
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様のお祖母様の綾花様は、明るい方なのですね……）  [p]
[whosay name="調香店主" color=%mp.color]
「いえ、私もそう思いますよ！　今日お二人にお会いして、しみじみと思いましたよ」[p]

[whosay name="調香店主" color=%mp.color]
「綾花様は、私が店を始めだした時からのお客様でね、[r]
[sp]華道の修業も兼ねてですが、この店の窓際に花を活けてもらっていたんです」[p]
[whosay name="調香店主" color=%mp.color]
「しばらくしたら、浮かない顔をしたお客様が来られて……あ、これは内緒にしてくださいね」[p]
[whosay name="華織" color="olivedrab"]
「 祖母と違っていいませんよ」[p]
[whosay name="調香店主" color=%mp.color]
「その"浮かない顔をした"お客様は、 今でいう、華織様のお祖父様、四条源次郎様でした」
調香店の主は、遠い目をして過去を振り返る[p]
[whosay name="調香店主" color=%mp.color]

「源次郎様は四条家のひとり息子であらされましたが、色々と苦労をされていた様子でしたね。[r]
[sp]ええ、彼は努力家ではありましたが、どうも語学にはからっきしダメなようで、[r]
[sp]貿易必須の鉱山業で、源次郎様は、お父様に怒られていたそうです」[p]
[whosay name="華織" color="olivedrab"]
「 あの厳格な祖父がですか……？」[p]
;セリフは適当↓
[whosay name=&sf.girl_namae color="#cf5a7f"]
（思わず、聞き及んでしまいますね）[p]
[whosay name="調香店主" color=%mp.color]
「ええ、彼は生真面目なんですよ。　苦労していた分にね。　人にも努力を求めてしまう、たまにいる教師みたいな人ですね～」
[whosay name="調香店主" color=%mp.color]
「おっと、話がそれてしまいましたね。　その浮かない源次郎様が、なんだっていいますとね」[p]
;そんなとき、店の前を通りがかった源次郎は、従妹の綾花と偶然再会し、花で励まされたという

[whosay name="調香店主" color=%mp.color]
「　『この花は、君が活けているのか？ 』と真剣に尋ねてくるのですよ。
[sp]あまりに神妙な顔で聞いてくるものだから、私、本当のことを教えてしまって」[p]
[whosay name="調香店主" color=%mp.color]
「どうやら、毎回、ここの花を見て励まされているみたいで、[r]
[sp]店の前で綾花様を一目でも見ようと寒空の下、待っていたんですよ。　そうしたらね……」[p]
[whosay name="調香店主" color=%mp.color]

「そうしたら、なんと！[r]
[sp]綾花様と、お祖父様、四条源次郎様の[ruby text=い]従[ruby text=とこ]妹で、婚約者候補だったってワケですよ」 [p]
[whosay name="調香店主" color=%mp.color]

「驚いちゃいましたよ。　とても素敵な縁を感じましたよ～～」[p]
[whosay name="華織" color="olivedrab"]
「そうですね。　僕もそう思います。　"再会した"ってところにも、とても感慨深い縁を感じますね」[p]
華織様は私の顔をみると微笑んだ。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]

（華織様……）[p]
[whosay name="華織" color="olivedrab"]
「僕たちの幸せは、色々な人の想いによって繋がっているのかもしれないね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですね……華織様のお祖母様とお祖父様が結ばれて、[ruby text=お]義 [ruby text=とう] 父様と [ruby text=お] 義 [ruby text=かぁ] 母様が出会って……華織様に出会えて」[p]
;その中には兄もいるけど省略
[whosay name=&sf.girl_namae color="#cf5a7f"]

「そんな風に考えると、とても素敵で長い年月の縁に思いを馳せてしまいますね」[p]
[whosay name="華織" color="olivedrab"]
「ふふ、結婚ってすごいことだね」[p]
;主人公微笑んでうなづく
[whosay name=&sf.girl_namae color="#cf5a7f"]
「えぇ……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(そういえば、私のお父様とお母様は、どの様にしてお近づきになられたのでしょう？）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]

( お父様が帰ってきたら聞いてみようかしら）[p]
それがもしも、些細な出会いであっても、私は結納の時は、深い感謝の念を抱くと思う[p]
;結
；背景、主人公家の前
[whosay name="華織" color="olivedrab"]
「今日は、急な誘いについて来てくれてありがとう。　おかげで素敵な話を聞くことができたよ」
[whosay name=&sf.girl_namae color="#cf5a7f"]
「こちらこそ。素敵な時間をありがとうございます」[p]
[whosay name="華織" color="olivedrab"]
「その、名前さんが嫌でなければ、ですが……手を出してもらっていいですか？　」
[whosay name=&sf.girl_namae color="#cf5a7f"]
「手ですか？　」
華織様は、 手をとって口づけをする。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]

「指輪は、また次の機会に、」[p]
[whosay name="華織" color="olivedrab"]
「ふふ、[名前]さん、いい香りだね」 [p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;淑女度で変更
[if exp="f.para_shujinkou_shukujodo >= 200"]

「華織様……」 [p]
[else]
「か、華織様こそ！」 [p]
[endif]
[whosay name="華織" color="olivedrab"]

「今度は正式に会いましょう　その時までにこの香りを覚えておくよ」
華織様は、手をとって門前まで送ると、会釈をして帰っていった。[r]
まだ首筋には、ほんのりと香りが残して……[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（このまま帰ったら、勘のいい磯野は、なんていうかしら……？）[p]

;おまけに飛ぶ？
[whosay name="華織" color="olivedrab"]
（帰ったら未来の君がために頑張らないと……）[p]

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

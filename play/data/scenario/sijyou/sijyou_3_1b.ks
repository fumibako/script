*test
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]

[macro name=主人公柔和ほほえみ１]
;主人公柔和ほほえみ
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

[イベントシーン構築]
[if exp=tf.test_sijyou==true]
【！】テストページからはじめます。変数を代入しますか？[p]
[link target=first]【１】代入しない[endlink][r]
[r]
[link target=test_str]【２】淑女度高め(終了後にもどします)[endlink][r][r]
[link target=test_str2]【３】緊急用：淑女度を１(戻しません)[endlink][s]
*test_str
[er]
元パラを一時変数に退避します[p]
[eval exp="tf.shukujodo=f.para_shujinkou_shukujodo"]
元パラは[emb exp="tf.shukujodo"][r]
;一時敵に変数に代入
[eval exp="f.para_shujinkou_shukujodo=200"]
現在の淑女度は[emb exp="f.para_shujinkou_shukujodo"]です[p]
@jump target=first
[s]
*test_str2
こちらは途中で回線がきれた場合の緊急用リセットです。[r]
元パラは[emb exp="f.para_shujinkou_shukujodo"]です[p]
[eval exp="f.para_shujinkou_shukujodo=1"]
現在の淑女度は[emb exp="f.para_shujinkou_shukujodo"]です[p]
[endif]

*first
[er]
;～～～～～～～～～～～～～シーン料亭～～～～～～～～～～～～～～～～～
;【テキスト全画面】黒茶・和紙風背景に白文字
[テキスト全画面白文字]
;華道展を終わらせ(昼過ぎまで)祖父母にまかせた？
;イベント別にしてもいいかも？
その後、華織様が用意された食事の場で、四条家と鷹司家で食事することとなった。[p]
;華道展から食事の流れ思いつかない　終わりまで家族を待たせるわけにもいかないし
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
[イベントシーン構築]
;[料亭]
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
[eval exp="f.haikei_credit='photo　by　usagi_s　http://www.s-hoshino.com/'"]
[主人公ポーズ通常]
[主人公通常]
#
;再度,ご迷惑をおかけしたことを詫びる四条家[p]

[whosay name="四条父" color="#9B608B"]
「どうか[emb exp="sf.father_name"]さん。これからも、華織と娘さんとの[r]
[sp]お付き合いをお願いできないだろうか……」[p]
;お付き合いをお願いできないだろうかきいてくる
[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]、聞くまでもないが、華織くんのことを選んで良かったかね？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;～～～驚きつつ困惑照れ～～～
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓目：[主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
;～～～驚きつつ困惑照れ～～～
「お父様……」[p]
#
私は、自然と華織様と見つめ合った[p]
[fadeoutbgm time=3000]
[主人公照れ目普通]
;ほほえみ？
[whosay name="華織" color="olivedrab"]
（[名前]さん）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「……はい。華織を選んで、良かったと思います」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「娘がこう言うのだ。 嫁ぐ娘を寂しく思ったとしても、[r]
[sp]"勿論"と言わねば、父親として廃る。[r]
[sp]さぁ、未来の夫婦に祝杯を上げようではないか！」[p]
#
[主人公通常]
父の口上を起点に、晴れやかな空気が流れる。[p]
;激しくなる音楽では中盤がだめだし
[if exp="sf.BGM=='ON'"]
;【BGM】みやび（磯野登場シーン：若干コミカルな場面など目立たせたいときに
[playbgm storage="isono_miyabi.ogg" loop=true]
[eval exp="f.bgm_storage='isono_miyabi.ogg'"]
[endif]

私は、もう一度、華織様と見つめ合った。[p]
[whosay name=文矢 color="#538a8a"]
「[名前]、よかったね」[p]
;～～淑女度低い場合～～
[if exp="f.para_shujinkou_shukujodo<200"]
;主人公笑顔
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい！」[p]
[else]
;～～淑女度高い場合～～
;主人公柔微笑み
[主人公柔和ほほえみ１]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]
[endif]
*common1
;「～ね」が続いておかしい
#
[whosay name=文矢 color="#538a8a"]
「[名前]と華織との結納まで、もうすぐなんだね……」[p]
お兄様は、ぼんやりと宴を眺めた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どうかされましたの？」[p]
[whosay name=文矢 color="#538a8a"]
「[名前]が、すっかり大人になって月日というものが早く感じてしまうよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あら、お兄様は、私が、じゃじゃ馬のままでいて欲しかったのですか？」[p]
[whosay name=文矢 color="#538a8a"]
「僕の方が先に出て行ったから、まだいいんだろうけどさ……[r]
[sp]本当のことを言うと、少し寂しくなる」[p]
[主人公驚き]
#
花咲く宴会がはじまる中、お兄様は、さかづきを揺らし、波間を見つめる。[p]
[主人公柔和ほほえみ１]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……お兄様も、お父様と同じことを思うのですね」[p]
[whosay name=文矢 color="#538a8a"]
「当たり前だよ。　僕の後ろをついていた[名前]が、僕の友人に取られちゃうんだから」[p]
;じゃじゃ馬言い過ぎなので訂正
[whosay name=文矢 color="#538a8a"]
「けど、[名前]は、昔から、華織をみると走り寄っていったから、[r]
[sp]当然といえば、そうかもしれないね」[p]
;～～～淑女度低い場合～～～
[if exp="f.para_shujinkou_shukujodo<200"]
;主人公困り照れ
;主人公困り照れ
[主人公眉困り]
[主人公目大]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お兄様。　私、もうその様な子供ではありませんわ」[p]
;主人公照れ怒り
[主人公眉強気]
[主人公目大]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「急にどうかされまして？　お兄様」[p]
[else]
;～～～淑女度高い場合～～～
#
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（今日のお兄様は、どこか寂しそうだわ……）[p]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お兄様、急にどうかされました……？」[p]
[endif]
*commo1
;～～～～～共通～～～～
[whosay name=文矢 color="#538a8a"]
「……今日は、集まったからかな。
[主人公憂い]
だから、本当に[名前]が、華織の家に嫁いでしまうって感じているのかも」[p]
[if exp="f.para_shujinkou_shukujodo<200"]
;～～～淑女度低い場合～～～
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お兄様のことは、尊敬しております。[r]
[sp]華織様と、同じように大事な家族のひとりです」[p]
[whosay name=文矢 color="#538a8a"]
「ありがとう。[名前]」[p]
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「今までお兄様が、私を寂しくさせていた分、お兄様も驚くほどの良妻になってみせますね」
[whosay name=文矢 color="#538a8a"]
「弱ったな、痛いところをつくね」[p]
[else]
;～～～淑女度高い場合～～～
[主人公柔和ほほえみ１]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「安心して下さい。兄妹というものは、切っても切れないものです」[p]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私はお兄様を尊敬しております。[r]
[sp]ですので、切る気も、[ruby text=いっ]一[ruby text=さい]切、ございません」[p]
;ダジャレかな
[whosay name=文矢 color="#538a8a"]
「ありがとう。[名前]」[p]
[主人公ほほえみ]
[endif]
*common2
#
お兄様は、安堵したかのように微笑むと華織様をみつめた。[p]
;～～～～～～選択肢～～～～～～～～～
;背景変更:和紙風 セピア色
[chara_mod name="bg" storage="bg/plane_sepia.jpg" time=100]
[eval exp="f.haikei_credit=''"]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
[link target=*deai]お兄様と華織様の出会いが気になった。[endlink][r]
[r][r][r]
[link target=*not_fumiya]私も華織様を見つめた。[endlink][r]
[resetfont]
[s]

*deai
[cm]

;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
;～～～～～回想イベントへ～～～～～～～～～～
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
#
[主人公通常ポーズ]
お兄様と華織様の出会いが気になった。[p]
;[料亭]
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
[eval exp="f.haikei_credit='photo　by　usagi_s　http://www.s-hoshino.com/'"]
[主人公横目]
[主人公ポーズ片手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そういえば、お兄様は、どのようにして華織様と出会ったのでしょうか？)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(私は、お兄様に連れられて、華織様と出会いましたが……）[p]
;兄、主人公の視線に気づく
[whosay name=文矢 color="#538a8a"]
「なんだい？　[名前]」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、[r]
[sp]そういえば、お兄様は、どのようにして華織様と出会ったのでしょうかと[r]
[sp]疑問に思いまして……」[p]
;兄、華織と出会う話をする
[whosay name=文矢 color="#538a8a"]
「お父様と華織のお父様が知り合いなのは、[名前]も知っているだろう？」[p]
[if exp="f.para_shujinkou_shukujodo<200"]
;～～淑女度低い場合～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、磯野からは、なんとなくですが、聞かされております。[r]
[sp]昔から、華織様のお父様と仲が良く、[r]
[sp]『二人を結婚させたい』とおっしゃっていたそうですが……」[p]
[else]
;～～淑女度高い場合～～
「はい、磯野からは、少しばかり聞かされております。[r]
[sp]昔から、華織様のお父様と仲が良く、[r]
[sp]『二人を結婚させたい』と聞かされておりました」[p]
[emdif]
[whosay name=文矢 color="#538a8a"]
「なんのことはないさ[r]
それでも、知りたいのかい？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(きっと、こういう時でないとお兄様は、ゆっくりと、ご自分のことお話しされないと思う)[p]
#
@jump storage=sijyou_3_1b_fumiya.ks target=first
;四条 華織と文矢
*modoru
[whosay name=文矢 color="#538a8a"]
「以来、僕は、華織のことをほおっておけない大事な友人の一人と思っている」[p]
[whosay name=文矢 color="#538a8a"]
「あぁ、[名前]？  この事は、今忙しくしてる奴には、言わないように」[p]
#
文矢は、忙しく席を整える華織を見つめた。[p]
@jump target=common3
[s]
;～～～～～～シーンスキップ～～～～～～～～～
*not_fumiya
[cm]
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
#
私も華織様を見つめた。[p]
;[料亭]
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
[eval exp="f.haikei_credit='photo　by　usagi_s　http://www.s-hoshino.com/'"]
[whosay name=文矢 color="#538a8a"]
「……[名前]。 この事は、今忙しくしてる奴には、言わないように」[p]
;～～～～～～～～～～共通～～～～～～～～～～～～～
*common3
[whosay name="四条父" color="#9B608B"]
「お前達も、来てくれたか！」[p]
[whosay name="四条一華" color=%mp.color]
「遅くなってすまない」[p]
[whosay name="四条父" color="#9B608B"]
「華織、皆の席を整えてやってくれ」[p]
[whosay name="華織" color="olivedrab"]
「！ はい」[p]
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
[whosay name=文矢 color="#538a8a"]
(まったく君って奴は、主役の1人だっていうのに気を使ってさ)[p]
#
[whosay name="華織" color="olivedrab"]
「あぁ、美華は、こっちの席に！」[p]
;お父さん、すこしやけ酒でもあり
[whosay name=&sf.father_name color="DarkSlateBlue"]
「なんだい 華織くん 、芸姑さんも呼びんでくれたのか。[r]
[sp]華織くんは、気が利くね」[p]
;主人公ふぅ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父様……」[p]
#
功を奏でるように女将達は三味線を鳴らし、宵を迎える。[p]
[fadeoutbgm time=2000]
#
乾杯の音頭も終えたころ、華織が改めて、兄弟を紹介する。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】みちくさ（楽しいお出かけの場面、すこしコミカルな場面などに
[playbgm storage="michikusa.ogg" loop=true]
[eval exp="f.bgm_storage='michikusa.ogg'"]
[endif]
;[料亭]
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
[eval exp="f.haikei_credit='photo　by　usagi_s　http://www.s-hoshino.com/'"]
[whosay name="華織" color="olivedrab"]
「文矢、[名前]さん。[r]
[sp]渡仏(とふつ)やら留学中で紹介できてなかった兄弟を改めて、紹介するね……」[p]
[whosay name=文矢 color="#538a8a"]
「？ 華織、何か疲れてないかい？」[p]
#
華織は、すこしやつれた様子で兄弟達の紹介をはじめた。[p]
;さきほどの四条兄弟との顔合わせで華織はひやひやする
[whosay name="華織" color="olivedrab"]
「こちらが、僕の兄の [ruby text=いち]一[ruby text=か] 華」[p]
[whosay name="四条一華" color=%mp.color]
「長男の四条 [ruby text= いち]一[ruby text=か]華です。
外交官をしており、普段は[ruby text=フ]仏[ruby text=ラン]蘭[ruby text=ス]西にいます。[r]
[sp]それにしても、君のような美しい方が [ruby text=い] 義 [ruby text=もうと] 妹になって嬉しいよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「は、はい、よろしくお願いします」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(一華様は、やはり、ひとつ上の兄だけに華織様によく似ていらっしゃるわ）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(ただ、雰囲気そのものは、華織様の素朴さを抜いたのような……）[p]
[whosay name="華織" color="olivedrab"]
「こう見えて、根は厳しい人だからね……？」[p]
[whosay name=文矢 color="#538a8a"]
(あぁ、この方が華織の言っていた、お兄さんか)[p]
[whosay name="四条一華" color=%mp.color]
「華織。もしかして妬いたかい？」[p]
[whosay name="華織" color="olivedrab"]
「兄さんは、好きなお酒でも飲んでて下さい」[p]
[whosay name="華織" color="olivedrab"]
「ほら、[華衣]も挨拶して」[p]
#
華織様の横で、挨拶を始めたのは、[華衣]さんだった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（[華衣]さん……)[p]
慣れない場と、ばつの悪さで顔を下げていると言った様子であった。[p]
[whosay name="四条 華衣" color=%mp.color]
「こんにちは、また会ったな……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「こんにちは、元気にされてましたか？」[p]
[whosay name="四条 華衣" color=%mp.color]
「まぁ。元気にしてた……[r]
[sp]お前が、義姉になるなら悪くないと思う……よろしく」[p]
#
うなづくように顔を下げると、兄に向き直し、驚くほど丁寧に挨拶を交わす。[p]
[whosay name="四条 華衣" color=%mp.color]
「お義兄さん、華衣と申します。よろしくお願いします。[r]
[sp]先日は[名前]さんにご迷惑おかけして申し訳ありませんでした」[p]
[whosay name=文矢 color="#538a8a"]
「いえいえ。華織、素直で可愛い弟じゃないか」[p]
[whosay name="華織" color="olivedrab"]
「全く、不詳で……自慢の弟だよ」[p]
[whosay name="四条 華衣" color=%mp.color]
「……」[p]
[whosay name="華織" color="olivedrab"]
「そうやって、すぐに顔にでるとこ、とかね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(？　そうなのかしら？)[p]
[whosay name="四条 華衣" color=%mp.color]
「うるさい……」[p]
[whosay name="華織" color="olivedrab"]
「ほら、美華も挨拶なさい」[p]
#
[華衣]さんと、距離をとっていた少女が華織の隣に現れた。[p]
;まつまい・ばつまい　日常会話だと　すえのいもうと　らしい
[whosay name="四条 美華" color=%mp.color]
「こ、こんにちは……[ruby text=すえの]末[ruby text= いもうと] 妹の美華と申します。[r]
[sp]ふ、普段は、聖白百合の寄宿舎にいます……華織お兄様からお手紙で聞いて、[r]
是非、[名前]様にお会いしたかったです」[p]
;学校名は適当ユリっぽくない学校名を　華衣と折り合いが悪いので寄宿舎に入っている（手紙にて）
#
華織様のような、ほんのりとウェーブがかかった長い髪の少女は、[r]
丁重にも、三つ指をついて挨拶をした。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、宜しくお願い致します」[p]
[whosay name="四条 美華" color=%mp.color]
「～～!」[p]
[whosay name="華織" color="olivedrab"]
「美華、緊張するからって、僕の袖を掴まないで」[p]
;プレイヤーに嫌われそう
[whosay name="四条 美華" color=%mp.color]
「こ、今後とも、よろしくお願いします」[p]
[whosay name="華織" color="olivedrab"]
「……箱入り娘で、ごめんね」[p]
;～～淑女度低い場合～～
[if exp="f.para_shujinkou_shukujodo<200"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;主人公汗
「いえ、 可愛らしい 妹様ですね」[p]
[else]
;～～～淑女度高い場合～～～[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;主人公ほほえみ
「いえ、可愛らしい妹様ですね」[p]
[endif]
;文通について尋ねる美華。美華、億劫に思う
;主人公の言葉に立て直す美華。 あくまで盛り上げ役でなければ登場させる意味がない
;いくつになるの繋がりが思いつかない
[whosay name=&sf.girl_namae color="#cf5a7f"]
「それに、お若いのにご挨拶もしっかりしていらっしゃいますにね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(いくつになるのでしょうか？ )[p]
#
華織の柔らかい印象をそのまま引き継いだ少女は、2〜3歳ほど幼い印象を受けた。[p]
[whosay name="華織" color="olivedrab"]
「美華は、今年で14だね」[p]
[whosay name="四条 美華" color=%mp.color]
「は、はい。[名前]様、私、今年で14となります！[r]
[sp]それで、[名前]様に 常々 お聞きしたいことがありました」[p]
#
美華さんは、私と向き直すと、しっかりした口調で尋ねた。[p]
;楽しいシーンから戸惑いへ　BGM難しい　美華の重責感的に五色かな
[fadeoutbgm time=3000]

[whosay name="四条 美華" color=%mp.color]
「[名前]様は、何故、華織お兄様に決められたのでしょうか？」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】五色（重いムードに
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]
[主人公驚き]
;～～淑女度低い場合～～
[if exp="f.para_shujinkou_shukujodo<200"]
;～～～～淑女度低い場合～～～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
(えぇと……[r]
[sp]あの時は、なんとなく……もありましたけれど)[p]
(昔から知っていたのは華織様という理由で選んでしまいました……)[p]
[else]
;～～～淑女度高い場合～～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
(えっ……どうしましょう)[p]
[endif]
#
私は、美華さんの急な質問に戸惑いを隠せなかった。[p]
[whosay name="華織" color="olivedrab"]
「美華、いきなりそんな質問をして失礼でしょう」[p]
[whosay name="四条 美華" color=%mp.color]
「私も、あと二年で勉学を諦め、寄宿舎でて、殿方と手紙のやりとりをしなければなりません」[p]
[whosay name="四条 美華" color=%mp.color]
「たしかに華織お兄様は、どんな殿方よりも、お優しい人かもしれません」[p]
[whosay name="四条 美華" color=%mp.color]
「ですけど、経済界に出でる一華兄様や他の社交界の花形と比べると殿方としての頼り甲斐や魅力があるとは思えません」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そんなことはないですわ[r]
華織様は、お会いする時、いつも私をエスコートしてくれます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「それに、現にこうやって夢を実現し、許しを得る為に私の親に会い、会食の席まで用意してくれました」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「これだけ誠実な人は、私のお兄様以外で見たことがありません」[p]
[whosay name="四条 美華" color=%mp.color]
「私も……私も、そうなのです……他の殿方を信じることができません」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「えっ……？」[p]
[whosay name="四条 美華" color=%mp.color]
「華衣お兄様は粗暴ですし、一華兄様は、猫かぶりで見合いに失敗しております。
私、知らない殿方と文通をするのがとても怖い……」[p]
[whosay name="華織" color="olivedrab"]
「美華」[p]

;BGM切り替え
[fadeoutbgm time=3000]

華織様は、晴れやかな席で私に不安を打ち明ける妹に対して、戸惑った様子で肩を叩いた。[p]
;止めるべきだと思うが悩ましいところ
[whosay name=&sf.girl_namae color="#cf5a7f"]
(美華さんも、昔の私に似ているかもしれない。
お兄様しか知らなかった頃の私に)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私も初めは不安でした」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ですけど、その時は、私の大切なお兄様のお言葉を思い出しました」[p]
[whosay name="四条 美華" color=%mp.color]
「お兄様のお言葉……？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「これからの美華さんの姉として送ります」[p]
;言祝ぎを送るじゃおかしいからこんなんでいいか
[whosay name=&sf.girl_namae color="#cf5a7f"]
「美華さんにも、それに華衣さんにもくるかもしれません。
それぞれのお二人の事を一番大切にしてくれて[r]
お二人も、その方を大切に思える人からの手紙が」[p]
[whosay name="四条 美華" color=%mp.color]
「一番、大切に……」[p]
[主人公目閉じ].
[whosay name=&sf.girl_namae color="#cf5a7f"]
「その時のはじまりは、うまくいかないかもしれません。
ですけど、信じて乗り越えたおかげで、
[主人公ほほえみ]
こんな幸せな出会いがたくさん待っていたのですから！」[p]
[whosay name="華織" color="olivedrab"]
「名前さん」[p]
[whosay name="四条 美華" color=%mp.color]
;お姉様と呼んでいいか？
「[名前]様……！ ありがとうございます。
私、それまでに精一杯、淑女としても研鑽しようと思います」[p]
;学びとうとございます？
[whosay name="華織" color="olivedrab"]
「[名前]さん。ありがとう」[p]
[fadeoutbgm time=3000]

[whosay name="華織" color="olivedrab"]
(やっぱり、文矢には敵わないな)[p]
[whosay name="華織" color="olivedrab"]
「[名前]さん、庭にでてみませんか？」

;疲れた、難しい

;～～～～～～～～～～～シーン料亭・庭～～～～～～～～～～～～～～～～～～～
#
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
華織様に誘われた私は、庭へと赴いた。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]
;【背景】庭園
[chara_mod name="bg" storage="bg/bg_teien_ishidatami.jpg" time=500]
[eval exp="f.haikei_credit=''"]
;結
;食事の後。二人になる　夕方[p]
;個性的な兄弟の話をして、心配する華織。主人公は兄弟を好意的に評する
後ろの室内からは、賑やかな声がする。[p]
[whosay name="華織" color="olivedrab"]
「ふぅ……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お疲れさまです」[p]
[whosay name="華織" color="olivedrab"]
「名前さん、ありがとう。
僕が言うのも、なんだけど、個性的な兄弟で、君も疲れたましたよね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、兄弟が沢山いらっしゃって、驚きました」[p]
[whosay name="華織" color="olivedrab"]
「久しぶりに皆がそろったのは良かったのですが、[r]
[sp]かく次男とは、中間管理職のようなものなのかと考えてしまいましたよ」[p]
;～～～～～～～～淑女度低い～～～～～～～～
[if exp="f.para_shujinkou_shukujodo<200"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「面白い方達ですね」[p]
[whosay name="華織" color="olivedrab"]
「別宅に住むから、そこは安心してください……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ふふ。　ですけど、華やかなお兄様方に囲まれて美華様は、幸せでしょうね」[p]
[else]
;～～～～～～淑女度高め～～～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様が、華織様であらせられることに納得がいきました」[p]
;適当な日本語↑
[whosay name="華織" color="olivedrab"]
「そうですか？ 」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、一華様は、社交界の花形のような華やかさ持っていて、[r]
[sp]華織様はそんなお兄様に惹かれて、優しい華やかさをお持ち[r]
[sp]なられたのでしょう」[p]
[whosay name="華織" color="olivedrab"]
「確かに。僕は、有能な兄の事を尊敬してます。同時に乗り越えたい人でもありますね……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そんな華織様の弟様にあたる、華衣様は、[r]
[sp]華織様の素朴さをそのままに引き継がれたのですね」[p]
[whosay name="華織" color="olivedrab"]
「……華衣は、僕の悪いところを見破っていたのかもしれませんね……」[p]
[whosay name="華織" color="olivedrab"]
「今迄は、必要以上に甘やしすぎてたから、つかず離れず見守っていきたい……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(陰ながら私も応援していますわ)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様のような、華やかで素敵なお兄様方に囲まれて美華様は、幸せでしょうね」[p]
[else]
;～～～～～～～～～～～～～～～～
*common7
[whosay name="華織" color="olivedrab"]
「名前さん。君って人は、[r]
[sp]時々、僕より大人びて見えますね……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そ、そうでしょうか？」[p]
[whosay name="華織" color="olivedrab"]
「えぇ。 美華に文矢の言葉を送る君の姿は、慈愛の女神のような美しさを感じました」[p]
;褒めておかないと割に合わないので褒める
[whosay name="華織" color="olivedrab"]
「[名前]さんと接する度に、僕の心の早鐘を鳴らす素敵な表情を見つけてしまう」[p]
;ドキドキするというのを言い換えるとなんかね
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そんな……」[p]
[whosay name="華織" color="olivedrab"]
「まだ僕が、知り得てない君をもっと知りたい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"][p]
「そんな……私は今のままでも充分に、華織様に知って頂いてますわ[r]
[sp]ですから、華織様のことをもっと私に教えてください」[p]
;しんどい
[whosay name="華織" color="olivedrab"]
「僕のすべては、これからは、いつだって君の前にある」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？ 華織様？」[p]
[whosay name="華織" color="olivedrab"]
「賑やかな家族、まだまだ未熟だけど、目指す道の華道。[名前]さんへの愛。[r]
[sp]それが僕の持っているすべて……」[p]
[whosay name="華織" color="olivedrab"]
「[名前]さん。こんな僕の傍にいてくれてありがとう。[r]
[名前]さんのおかげで、もう一歩先に進めます」[p]
[whosay name="華織" color="olivedrab"]
「これからは、僕の全てをもってして、君に恋を綴ります」[p]
;エピローグの回収↑
;いい感じになって見つめ合う二人。
;沈丁花
[chara_mod name="bg" storage="bg/B4nFWraU42/jincyou_ge.jpg" time=2000 wait=false]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
華織様の言葉とともに[r]
永遠と不滅の花言葉をもつ沈丁花が、風に乗って甘く香る[p]
;華織の香水は沈丁花かもしれない
[whosay name="華織" color="olivedrab"]

「[名前]さん……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様……」[p]
;華妹が華衣と喧嘩しだしたので戻るふたり　爽やか！
[whosay name="四条 美華" color=%mp.color]
「華織お兄様～～！　[華衣]が私のこと、ぶった～～～！！」[p]
[whosay name="ふたり" color=%mp.color]
「「！！」」[p]
[whosay name="四条 華衣" color=%mp.color]
「どんくさいから、ちょっと小突いただけだろ！」[p]
;【背景】庭園
[chara_mod name="bg" storage="bg/bg_teien_ishidatami.jpg" time=500]
;四条困り笑顔
[eval exp="f.haikei_credit=''"]
[whosay name="華織" color="olivedrab"]
「……帰りましょうか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]

;〜〜〜シーン真の兄というもの〜〜
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
[イベントシーン構築枠茶色]
;料亭廊下
;http://sunset77light.rdy.jp/material/index.html
;料亭の廊下
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
[eval exp="f.haikei_credit='photo　by　usagi_s　http://www.s-hoshino.com/'"]
[whosay name="華織" color="olivedrab"]
(まったく、こういう時は気を効かせてほしいな)[p]
[whosay name=文矢 color="#538a8a"]
「お帰り。……そんな顔して、また悩みごとかい？」[p]
#
まるで気を効かせて待っていたかのような態度で、文矢が話しかけてきた。[p]
[whosay name="華織" color="olivedrab"]
「そうだね。 でも、幸せな悩みごとさ」[p]
[whosay name=文矢 color="#538a8a"]
「そうなんだ。 あぁ、言い忘れたけどさ」[p]
#
文也はニコリと笑って腕組みして隠れていた手を取り出す。
[whosay name="華織" color="olivedrab"]
「……なんだい？」[p]
#
僕は、 文矢 の懐の見えない仕草に思わず身構えてしまった。[p]
[whosay name=文矢 color="#538a8a"]
「これからも妹のことをよろしく。もう泣かしたらダメだよ」[p]
#
どこで覚えたのか、文也は、外国的なジェスチャーで『よろしく』と明るく答えた。[p]
[whosay name="華織" color="olivedrab"]
(君って奴は、本当に懐の深い男だよ)[p]
#
敵わない[ruby text=あ]義[ruby=に]兄兼、友人に僕は、深くうなづいた。[p]
[whosay name="華織" color="olivedrab"]
「それなら百も承知だ」[p]
[whosay name="華織" color="olivedrab"]
「なぁ、文也」[p]
[whosay name=文矢 color="#538a8a"]
「なんだい？」[p]
[whosay name="華織" color="olivedrab"]
「[名前]さんに会わせてくれてありがとう、君という友人がいて本当に幸せだ」[p]
[whosay name=文矢 color="#538a8a"]
「そうだろうとも。[r]
[sp]なんたって僕の可愛い妹を君に渡すのだから幸せでなくてはね」[p]
[whosay name="華織" color="olivedrab"]
「あぁ、君には敵わないな」[p]
;幸せな悩み？
[whosay name=文矢 color="#538a8a"]
「さて。これから訪れる、幸せな悩みについて、相談に乗ろうか？」[p]
[whosay name="華織" color="olivedrab"]
「そうだね。けど、まずは、君がまた悩んでいることがあったら僕が助けるよ」[p]
[whosay name=文矢 color="#538a8a"]
「そうだなぁ……」[p]
;子供が何人がいいとか、奥さんのプレゼントとか？
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
新しく訪れる幸せな悩みについて、ふたりの話は、夜も更けていった。[p]
[イベントシーン終了]

[if exp=tf.test_sijyou==true]
;元パラを一時変数からもどす
[eval exp="f.para_shujinkou_shukujodo=tf.shukujodo"] 
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
[current layer="message0"
[freeimage layer = 27]
[wait time=10]
[return]

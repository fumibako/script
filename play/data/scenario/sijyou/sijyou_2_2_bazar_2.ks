*replay_sijyou_2_2
*start
*test
[iscript]
$(".1_fore").empty();
[endscript]
[stopbgm]
;暗転プリロードサブルーチン ！！！！あとでここを変更↓！！！！
[call target=*2_1 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;====================================================
[cm]
[背景_チャリティ会場階段]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;====================================================
*scene3
;場面転換
#
華族会館  [ruby text=チャリ]慈[ruby text=ティー]善バザー会場の玄関ホール[p]
肌寒い初春の日だというのに会場の華やかな雰囲気に熱気を感じる。[r]
緑葉と花で飾られた玄関ホールには多くの華族が夜会服を纏い、[r]
談笑に勤しんでいた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「たくさんの方が来られてますね」[p]
[whosay name="華織" color="olivedrab"]
「そうだね。 [r]
[sp]ご婦人方が社会活動されるチャリティーバザーは[r]
[sp]先進的、と評判の催しだからね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様。　チャリティーバザーとは、どの様な催しでしょうか？」[p]
[whosay name="華織" color="olivedrab"]
「あまり僕は詳しくはないのですが、[r]
[sp]かつて、とある夫人が、この国に女子看護学校を設立するための[r]
[sp]資金集めにバザーを行なったのが始まりだそうです」[p]
[whosay name="華織" color="olivedrab"]
「ちなみに今日のチャリティーバザーの収入金は、[r]
[sp]海外への医学留学に充てがわれるそうですよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうなのですね」[p]
[whosay name="華織" color="olivedrab"]
「僕の家族も知見を得る為に留学していましたし、[r]
[sp]協力できて皆が楽しめるなら良い催しだと思います」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですね」[p]
[whosay name="華織" color="olivedrab"]
「でも、一番は[r]
[sp][名前]さんと一度来て見たかったのが理由ですけどね」[p]
;主人公反応 表情
[whosay name="華織" color="olivedrab"]
「まずはバザーを見て回りましょうか。[r]
[sp]もしかしたら僕の親戚も何か出店しているかも[r]
[sp]しれません」[p]
#
;------------------------------------------------
;場面転換 
[背景_チャリティ会場出店]
[ruby text=チャリ]慈[ruby text=ティー]善バザー売店[p]
;------------------------------------------------
*scene4
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様の手紙で書かれていた通り、色々な手工芸品が並んでるわ)[p]
#
陳列棚には、[r]
靴下袋、手袋、押絵、巾着、人形、扇子、鞠、風車、襟巻き、[r]
などの多種多様な手工芸品が陳列されていた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「こちらの伝統的な蒔絵が描かれた扇子も綺麗ですね」[p]
#
品物を見ていると陳列台の向こう側から貴婦人が話かけてきた。[p]
;慈善バザーの夫人方が率先して出店している感は出したいところ
[whosay name=夫人]
「こちらの扇子の細工も、よくできてますよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「繊細な桜の透し彫りが素敵ですね」[p]
[whosay name=夫人]
「ごゆっくりと、ご覧になってください」[p]
#
街道のお店と違って、のんびりとした様子で[r]
品物を見せる。[p]
;慈善活動なので、そう切迫していない 商売っ気はない
[whosay name="華織" color="olivedrab"]
「慈善活動とのことですし、僕も何か頂きましょうか。[r]
[sp][名前]さんも気に入ったものがあれば……」[p]
;誰に話しかけてるか分かりづらい↓
[whosay name=夫人]
「こんにちは、お嬢さん。 [r]
[sp]よろしければ私の出店品も見てくださいな」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あら、クマの人形とは珍しいです。[r]
[sp]でも、とても可愛いですわ」[p]
[whosay name=夫人]
「なかなか上手くできているでしょう？[r]
[sp]私が海外に留学した際に見たものを作ってみましたの。[r]
[sp]"テディベア"というのよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(どうしましょう、どれも素敵だわ)[p]
#
出かけるまでの胸が締め付けられるような気持ちを[r]
スッカリ忘れ、私は出店品に夢中になってしまった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様も、こちらのクマ、可愛らしいと思いませんか？」[p]
[whosay name="華織" color="olivedrab"]
「ふふ、いつも[名前]さんだね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あ……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(いやだわ。 せっかく今日は大人の女性として華織とデェトに来たのに)[p]
;主人公ふぅ から困り照れ
[whosay name="華織" color="olivedrab"]
「そういった[名前]さんも安心できて好きですよ。[r]
[sp]ああ、こちらのカメオも美しいですね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「本当ですね。 青みがかった白が上品な風合いです」[p]
;醸し出しています
[whosay name=&sf.girl_namae color="#cf5a7f"]
(……そういえば、前にも華織様とお買い物に来ましたね)[p]
#
;セピア
[背景セピア化]
[背景_四条_商店]
ふいに銀座でデェトした、あの時の気持ちが蘇る。[p]
#
私も華織様を喜ばせたい――[p]
[暗転]
[背景セピア化_解除]
[背景_チャリティ会場出店]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(私の願いは叶ったでしょうか？)[p]
#
楽しげに笑う華織様の横顔を私はチラリと伺った。[p]
[whosay name="華織" color="olivedrab"]
「どうかしましたか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、私も華織様にプレゼントを贈りたいと思いまして」[p]
;------------------------------------------------
;好感度が80以上ならスキップ
[if exp="f.para_sijyou_koukando > 80"]
@jump target=good_seen
[endif]
;------------------------------------------------
;バザー 好感度低い場合
;しんみりしすぎでは？ 好感度低い場合
scene4_1
[whosay name="華織" color="olivedrab"]
「ありがとう[名前]さん。[r]
[sp]ですが僕は[名前]さんから、既に沢山の幸せを頂いてますよ」[p]
#
華織様は、悪戯気に微笑んだかと思うと、[r]
会場の騒めきに消されてしまいそうなくらい小さな声色で[r]
華衣様の出来事を呟いた。[p]
[whosay name="華織" color="olivedrab"]
「[名前]さんの手助けがなければ、[r]
[sp]華衣とのことも解決しなかったでしょう……。[r]
[sp]ですから僕は[名前]さんに幸せを与えたいのです」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様……」[p]
#
しんみりとした空気が流れたかと思うと、[r]
華織様はパッと笑って何事もなかったかのようにお顔をあげられた。[p]
[whosay name="華織" color="olivedrab"]
「[名前]さんの気に入ったものがありましたか？」[p]
#
辛いことを隠し、兄のような朗らかな愛情をみせる華織様。[p]

華織様と再会した頃の私は、"この人は憧れの存在であって、[r]
誰しも持っているのような弱いところなんてない"と思ってしまっていた。[p]
;[背景_庭_夜]
そう考えて、憧れから反した事が起きた時、[r]
少しばかり華織様を疑ってしまった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(確かに華織様は、お一人で問題を解決しようするほど[r]
[sp]意思は強いと感じられますが)[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(頼られていないというのは、取り残された気分になってしまうわ)[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(今は少しづつ近づいていると感じていたけれど)[p]
#
時折みせる、華織様の庇護的な愛情が[r]
歳の差という距離を感じずにはいられなかった。[p]
;-------------------------------------------------
[whosay name=&sf.girl_namae color="#cf5a7f"]
(私も華織様に対等な関係として、贈り物をしたい)[p]
#
思い悩んでいると、 [r]
背後から姉妹らしき二人組の会話が私の耳に飛び込んできた。[p]
[whosay name="姉妹 その壱"]
「こちらも素敵ね。 [r]
[sp]ねぇ、お姉様、お父様の贈り物に良いと思わない？」[p]
[whosay name="姉妹 その弐"]
「良いと思いますけれど、[r]
[sp]今回はアナタのお小遣いから出してくれないかしら？」[p]
[whosay name="姉妹 その壱"]
「なら、お互いに……」[p]
#
お互いに……その言葉がパッと私の胸に一筋の光が去来した。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(そうだわ)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様。  もし宜ければお互いに贈り物を選ぶのはどうでしょうか？」[p]
 [whosay name="華織" color="olivedrab"]
「それはとても良い案ですね。[r]
[sp][名前]さんが良ければ、僕は嬉しい試みだと思います」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「勿論です。 華織様が何を選んで下さるか楽しみです」[p]
 [whosay name="華織" color="olivedrab"]
「[名前]さんの期待に添えるように[r]
[sp]素敵な贈り物を選んでみせましょう」[p]

@jump target=*scene5
;------------------------------------------------
*good_seen
;好感度高い場合
[whosay name=&sf.girl_namae color="#cf5a7f"]
「迷惑でしょうか……？」
[whosay name="華織" color="olivedrab"]
「いえ、嬉しいですよ！」[p]
「そうですね……[r]
[sp]もし宜ければ、今日という記念にお互いに贈り物を[r]
[sp]選ぶのはどうでしょうか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！  素敵ですね！  華織様が何を選んで下さるか楽しみです」[p]
 [whosay name="華織" color="olivedrab"]
「では、決まりですね。[r]
[sp]僕も[名前]さんからの贈り物を楽しみにしてます」[p]
;------------------------------------------------
*scene5
[whosay name=&sf.girl_namae color="#cf5a7f"]
(きっと思い出に残る贈り物になるに違いないわ)[p]
#
;------------------------------------------------
;全画面表示
@layopt layer=fix visible=false
[wait time=50]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[image layer=29 x=0 y=0 zindex=0 storage="bg/bg_prologue.jpg" time=50]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
しばしの間、お互いに離れ、[r]
私は付き人についてもらいながらも、華織様への贈り物を探し始めた。[p]
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
[イベントシーン終了]
@jump storage="test_sijyou.ks"
[s]



;------------------------------------------------
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

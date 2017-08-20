*replay_sijyou_2_2
*start
*test
[iscript]
f.para_shujinkou_j_reihou=100;
$(".1_fore").empty();
[endscript]
[stopbgm]
;暗転プリロードサブルーチン ！！！！あとでここを変更↓！！！！
[call target=*2_1 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;====================================================
[cm]
[wait time=50]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[image layer=29 x=0 y=0 zindex=0 storage="bg/bg_prologue.jpg" time=50]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
[プリロード画面消去]
;====================================================
*scene1
春も近づく、ある昼下がりのこと――。[p]
;====================================================
[wait time=10]
;【背景】主人公邸 お稽古部屋
[背景_お稽古部屋]
[wait time=10]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[freeimage layer = 29]
[メッセージウィンドウ上ボタン表示]
;====================================================
[whosay name=磯野]
「お嬢様、四条様からお手紙が届いております」[p]
#
いつもより、硬い表情で磯野が手紙を差し出す。[r]
不思議に思いつつも、私は手紙を手に取った。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(どうしたのかしら？）[p]

[手紙四条 fumi_number=]
[名前]さんへ。
向春の候、お元気でいらしたでしょうか？[r]
[r]
ここ最近は、数日後に開催される、慈善バザーの設営作業に[r]
追われていました。[r]
設営作業といっても、僕の主な仕事は、貴賓を持て成すための国花の[r]
飾り付けです。[r]
菊の花で英字を模って自由に花を生けるなど、普段の華道の仕事とは[r]
違って面白さがありました。[p]

また、僕が作業していた隣では[r]
ご婦人方が揃って、楽し気に鞠や簪、風車などの工芸品を[r]
数多く出品される準備をしていました。[r]
[r]
品揃えもそうですが、ご婦人方の慈善バザーへの意気込みから、[r]
開催日には、多くの人で盛り上がるのではないかと[r]
感じられました。[r]
[r]
ちなみに今年に限り、ダンスパーティも共に行うそうです。[p]
さて、本題ですが……[r]
[r]
もし、[名前]さんがよろしければ、[r]
慈善バザーに御一緒できないでしょうか？[r]
僕の個人のお誘いですので、ご無理にとは言いません。[r]
[r]
お返事お待ちしております。[r]
[sp] 　　　　　　　　　　　　　　　　　　　　　　　四条　華織[p]
[if exp="f.okeiko_gamen == true"]
;[eval exp="f.midoku_list_hairetsu[2][1] = 0;"]
[endif]
[手紙四条読了 fumi_number=]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「慈善バザー、どういった場所かしら？[r]
[sp]楽しみだわ」
[主人公ほほえみ][p]
#
お誘いを受けるつもりで、喜んでいると、[r]
磯野が心配そうな表情で私に尋ねてきた。[p]

[whosay name=磯野]
[主人公通常]
「旦那様もお嬢様がお望みなら……と仰っておりましたが[r]
[sp]如何いたしましょうか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「？[sp]華織様に了承のお手紙を出そうと思います」[p]
[whosay name=磯野]
[主人公目通常]
「いえ、それはよろしいのですが……」[p]
#
四条家使者から連絡を貰ったであろう磯野が、少しだけ曇った表情をみせる。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（お父様も、華織様との仲を認めて下さっていますし……[r]
[sp]何かしら……？）[p]
#
[主人公目伏]
私は手紙をもう一度、読み返し、[r]
[主人公驚]
ようやく夢から覚めるかようにハッと我に返った。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（そうだわ！　私、ダンスなんて
[if exp="f.para_shujinkou_j_reihou > 50"]
;礼法が高い場合
[sp]嗜む程度にしか……）[p]
[else]
できるか自信がないわ……)[p]
[endif]

[if exp="f.para_shujinkou_j_reihou > 50"]
*scene1_1
;礼法が高い場合
[whosay name=磯野]
[主人公目大]
「私は、お嬢様でしたら大丈夫だと思いますよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうでしょうか？」[p]
[whosay name=磯野]
「はい、"少し"……お稽古されればよいかと」[p]
#
;磯野は目皺をよせて、含み気に微笑む。[p]なくてもいい
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り照れ]
「磯野……」[p]
[whosay name=磯野]
「如何いたしましょう」[p]
;手配しましょうか
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「そうですね。[sp]いつかは華織様のお仕事の付き添いで、[r]
[sp]そういった場に出向くかもしれないですし、[r]
[sp]もう少しお稽古をしておくべきかもしれないですね」[p]
[主人公ほほえみ]
[背景_思い出（花)]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
（それに昔、憧れていたことが現実になるのだわ）[p]
;見合いのシーンのあれ 背景、一瞬、花畑へ。
[背景_お稽古部屋]
[主人公通常]
[else]
;--------------------------------------------------
*scene1_2
;礼法が普通の場合？
[whosay name=磯野]
「私は、お嬢様でしたら、大丈夫だと思いますが……[r]
[sp]その日は、ご予定を入れましょうか……？」[p]
;やんわりと断るために　自身の過失にしようとする磯野
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どうしましょう）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
（ですが、昔、憧れていたことが現実になるかもしれない……）[p]
;背景、見合いの回想シーンの花畑
[背景_思い出（花)]
#
;↓眉：下がり眉下位置 (伏目、目閉じ時の柔和な表情に向きます) [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
子供の頃、よく四条家の庭先の花畑で想像していたことを思い出す。[r]
今となっては、叶うはずがないと、どこかで諦めていたこと。[p]
[背景_お稽古部屋]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;考え中
（……）[p]
[whosay name=磯野]
「そういえば、その日は丁度、飛鳥家とのご予定を入れようかと……」[p]
#
[主人公驚]
磯野が私の様子を妙に察し、自身の過失にして去ろうとする。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公真剣]
「大丈夫ですわ、磯野！[r]
;↓効果：汗 [主人公汗]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]
[sp]いつかは華織様のお仕事の付き添いで、そういった場に[r]
[sp]出向くかもしれないです」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ですから、もう少し、お稽古をしておきたいとこでしたの」[p]
[whosay name=磯野]
「……四条家の使いの者から、[r]
[sp]今回はお断りしても構わない、とも聞いておりますが……。[r]
[sp]よろしいのですか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「心配しないでください。[r]
[sp]この前、礼法の先生に『[名前]さん、もう少し頑張れそうですね』と[r]
[sp]褒められたばかりです」[p]
;褒められていません
[whosay name=磯野]
「そうですか。　それでしたら私は先生にご連絡しておきましょう」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ありがとう、磯野」[p]
[if exp="f.para_sijyou_koukanndo < 150"]
[whosay name=磯野]
「旦那様も私も、お嬢様の頑張りを応援しています。[r]
[sp]それでは、失礼いたします」[p]
[else]
[whosay name=磯野]
「旦那様も私も、そして、きっと四条様も ――[r]
[sp]お嬢様の頑張りを応援していらっしゃいますよ。[r]
[sp]それでは、失礼いたします」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
（ふぅ。　立派な淑女になるというのは、大変ですわ）[p]
;礼法が低い場合おわり
[endif]
#
;====================================================
[wait time=50]
@layopt layer=fix visible=false
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[image layer=29 x=0 y=0 zindex=0 storage="bg/bg_prologue.jpg" time=50]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
数日後――。[p]
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[背景_庭"]
;↓眉：強気 [主人公眉強気]
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
;↓目：通常より大きめに開いた状態(驚き、好奇心、意思を見せる場面などに) [主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[freeimage layer = 29]
@layopt layer=fix visible=true
;主人公部屋 昼
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ここ数日でワルツのステップも覚えました……
;↓眉：通常 [主人公眉通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
あとは）[p]
[whosay name=磯野]
[主人公驚]
「お嬢様、四条様がお迎えにいらっしゃいました」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「ありがとう。　すぐ向かいます」[p]

#
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
鏡の前で、ばあやが用意した淡い紅を自らの手でさす。[p]
#
鏡の前に映った自身の表情は、[r]
普段より、大人の艶(つや)やかな印象と変わった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
(これでいいわ)
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[p]
#
部屋の障子をあけ、磯野の前に立つ。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「磯野、どこかおかしいところはないかしら？」[p]

#
磯野からは『もう、気にしなくても良い』と言われたが、今日ばかりは違う。[p]
より大人になる為の一歩。[r]
磯野も、それを感じているのか、しっかりと私を見据えた。[p]
[whosay name=磯野]
「はい。[r]
;↓眉：下がり眉下位置 (伏目、目閉じ時の柔和な表情に向きます) [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
;↓目：柔和な伏目 [主人公目伏柔]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
[sp]今日のお嬢様は、[ruby text=りん]凛となされて、一段とお綺麗でございます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ありがとう磯野。[sp]では、私、行って参ります」[p]

[暗転２]
[wait time=50]
@layopt layer=fix visible=false
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
付き人と共に華織様の元へと急ぐ、[r]
廊下から玄関へのほんの少しの距離。[p]

近いような遠いような不思議な感覚に眩暈を覚える。[p]

騒ぐ胸を押さえ、一歩ずつ前に歩みでた。[p]

[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[暗転]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[freeimage layer = 29]
@layopt layer=fix visible=true
;------------------------------------------------
[whosay name=&sf.girl_namae color="#cf5a7f"]
(大丈夫だわ。努力をした分、自信を持っていきましょう)[p]
#
*scene2
[背景_主人公邸_玄関]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
「お待たせしました、華織様」[p]
#
緊張と、ときめきの満ち汐の中、[r]
礼法の先生に教えて頂いた通り、背筋を自然かつ美しく伸ばし、[r]
華織様に挨拶をした。[p]
[whosay name="華織" color="olivedrab"]
「……」[p]
;驚く
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓目：通常より大きめに開いた状態(驚き、好奇心、意思を見せる場面などに) [主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
「どうかなされましたか？」[p]
;想像していた華織様の反応とは違って、私は戸惑った。[p](なくてもいい
[whosay name="華織" color="olivedrab"]
「失礼しました。[sp]今日の[名前]さんは、[r]
[sp]あまりにも僕が知っている可愛らしい[名前]さんではなくて……」[p]
[whosay name="華織" color="olivedrab"]
「とても美しいと感じます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓目：柔和な伏目 [主人公目伏柔]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
「ありがとうございます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
(努力して良かったわ)[p]
[whosay name="華織" color="olivedrab"]
「今日の[名前]さんを僕は忘れないでしょう。[r]
[sp]さあ、車に乗って下さい」[p]
#
華織様が私の手を取ってエスコートする。[p]

;お見合いのように手を取っても背を向けてない
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓目：柔和な伏目 [主人公目伏柔]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]

#
華織様の熱の篭った眼差しには、 お見合いの時とは違って、[r]
大人の愛情を感じられた。[p]
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

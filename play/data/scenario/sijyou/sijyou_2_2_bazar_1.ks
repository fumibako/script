*replay_sijyou_2_2
*start
*test
[iscript]
$(".1_fore").empty();
[endscript]
[stopbgm]
;暗転プリロードサブルーチン
[call target=*2_2 storage="sijyou/preload_sijyou.ks"]
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
[if exp="sf.BGM=='ON'"]
;【BGM】みやび（磯野登場シーン：若干コミカルな場面など目立たせたいときに
[playbgm storage="isono_miyabi.ogg" loop=true]
[eval exp="f.bgm_storage='isono_miyabi.ogg'"]
[endif]
#
いつもより、硬い表情で磯野が手紙を差し出す。[r]
不思議に思いつつも、私は手紙を手に取った。
[autosave改]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目パチ1回]
(どうしたのかしら？）[p]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
*fumi_toutyaku_sijyou_107
[if exp="f.okeiko_gamen == true"]
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「慈善バザーのお誘い」　四条 華織"; //←仮タイトルです。ご自由に変更してください
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「慈善バザーのお誘い」"; //←仮タイトルです。ご自由に変更してください
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_event_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_event_fumi.ks");
f.fumi_list_all_target.push("*sijyou_bazaar_fumi");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(106);
f.fumi_list_sijyou_location_fumi.push(106);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_bazaar_fumi");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[107]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_sijyou_number=f.fumi_sijyou_number + 1;
f.hensin_list_hairetsu[2][106]=1;//イベント中に届く手紙は基本的に「返信済」とします(返信している前提で物語が進行するため)
f.para_sijyou_koukando = f.para_sijyou_koukando + f.sijyou_koukando_up_event_fumi;
[endscript]
[endif]
[手紙四条 fumi_number=]

*sijyou_bazaar_fumi_1
﻿﻿﻿@clearstack
[cm]
[名前]さんへ。[r]
向春の候、お元気でいらしたでしょうか？[r]
[r]
ここ最近は、数日後に開催される、[ruby text=チャリ]慈[ruby text=ティー]善バザーの設営作業に[r]
追われていました。[r]
設営作業といっても、僕の主な仕事は、貴賓を持て成すための[r]
国花の飾り付けです。[r]
菊の花で英字を模って自由に花を生けるなど、[r]
普段の華道の仕事とは違って面白さがありました。
[glink target=*sijyou_bazaar_fumi_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*sijyou_bazaar_fumi_2
また、僕が作業していた隣では[r]
ご婦人方が揃って、楽し気に鞠や[ruby text=かんざし]簪、風車などの工芸品を[r]
数多く出品される準備をしていました。[r]
[r]
品揃えもそうですが、ご婦人方の[ruby text=チャリ]慈[ruby text=ティー]善バザーへの意気込みから、[r]
開催日には、多くの人で盛り上がるのではないかと[r]
感じられました。[r]
[r]
ちなみに今年に限り、ダンスパーティも共に行うそうです。
[glink target=*sijyou_bazaar_fumi_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[glink target=*sijyou_bazaar_fumi_3 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*sijyou_bazaar_fumi_3
さて、本題ですが……[r]
[r]
もし、[名前]さんがよろしければ、[r]
[ruby text=チャリ]慈[ruby text=ティー]善バザーに御一緒できないでしょうか？[r]
僕の個人のお誘いですので、ご無理にとは言いません。[r]
[r]
お返事お待ちしております。[r]
[sp] 　　　　　　　　　　　　　　　　　　　　　　　四条　華織
[glink target=*sijyou_bazaar_fumi_2 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*sijyou_bazaar_fumi_close" size=5 x=880 y=24 width=50 height=50]
[s]

;//////////////////////////////////////////////////////////////////
*sijyou_bazaar_fumi_close
[cm]
[clearfix]
﻿﻿﻿@clearstack
;◆↓お稽古パート経由時の処理(手紙組み込み用)
[if exp="f.okeiko_gamen == true"]
;未読→既読処理
[eval exp="f.midoku_list_hairetsu[2][106] = 0"]
[endif]
[手紙四条読了 fumi_number=]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「[ruby text=チャリ]慈[ruby text=ティー]善バザー、どういった場所かしら？[r]
[sp]楽しみだわ」
[主人公ほほえみ][p]
#
お誘いを受けるつもりで、喜んでいると、[r]
磯野が心配そうな表情で私に尋ねてきた。[p]
[whosay name=磯野]
[主人公通常]
「旦那様もお嬢様がお望みなら……と仰っておりましたが[r]
[sp]如何いたしましょうか？」
[autosave改]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「？[sp]華織様に了承のお手紙を出そうと思います」[p]
[whosay name=磯野]
[主人公目通常]
「いえ、それはよろしいのですが……」[p]
#
四条家使者から連絡を貰ったであろう磯野が、[r]
少しだけ曇った表情をみせる。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（お父様も、華織様との仲を認めて下さっていますし……。[r]
[sp]何かしら……？）[p]
#
[主人公目伏]
私は手紙をもう一度、読み返し、[r]
[主人公驚]
ようやく夢から覚めるかようにハッと我に返った。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（そうだわ！　私、ダンスなんて
;--------------------------------------------------
[if exp="f.para_shujinkou_j_reihou > 50"]
;礼法が高い場合
[sp]嗜む程度にしか……）[p]
[else]
できるか自信がないわ……)[p]
[endif]
;--------------------------------------------------
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
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[背景_思い出（花)]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
（それに昔、憧れていたことが現実になるのだわ）[p]
;見合いのシーンのあれ 背景、一瞬、花畑へ。
[背景_お稽古部屋]
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「服装はやはりドレスを着ていけば良いのかしら？」[p]
[whosay name=磯野]
「今回の慈善バザーは、さほど公のものでないことと、[r]
[sp]四条様は華道家としての立場でご参加されると[r]
[sp]お聞きしております」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目パチ1回]
「ということは、私は振袖で参加する方が良いのですね……」
[autosave改]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（和装でのダンスは、未だ形式として残っているけれど、[r]
[sp]学んだことはないわ。[r]
[sp]きちんと覚えておいた方が良いですね)[p]
@jump target=seen_next1
;--------------------------------------------------
[else]
*scene1_2
;礼法が普通の場合？
[whosay name=磯野]
「私は、お嬢様でしたら大丈夫だと思いますが……[r]
[sp]その日は、ご予定を入れましょうか……？」
[autosave改]
[p]
;やんわりと断るために　自身の過失にしようとする磯野
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どうしましょう）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
（ですが、昔、憧れていたことが現実になるかもしれない……）[p]
;背景、見合いの回想シーンの花畑
[背景_思い出（花)]
#
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
;華族は仕事とは言わないので？
[sp]いつかは華織様の付き添いで、そういった場に[r]
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
「そうですか……。[r]
[sp]それでしたら私は先生にご連絡しておきましょう」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：通常より大きめに開いた状態(驚き、好奇心、意思を見せる場面などに) [主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
「服装は、やはりドレスを着ていけば良いのかしら？」[p]
[whosay name=磯野]
「今回の慈善バザーは、さほど公のものでないことと、[r]
[sp]四条様は華道家としての立場でご参加されると[r]
[sp]お聞きしております」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目パチ1回]
「ということは、私は振袖で参加する方が良いのですね」[p]
[whosay name=磯野]
「はい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ありがとう、磯野」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
（和装でのダンスは、未だ形式として残っているけれど、[r]
[sp]学んだことはないわ。[sp]私にできるかしら？)[p]
[endif]
;--------------------------------------------------
[if exp="f.para_sijyou_koukando > 150 "]
[whosay name=磯野]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
「旦那様も私も、そして、きっと四条様も[r]
[sp]お嬢様の頑張りを応援していらっしゃいますよ。[r]
[sp]それでは、失礼いたします」
[autosave改]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
（ふぅ。　立派な淑女になるというのは、大変ですわ）[p]
[else]
[whosay name=磯野]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
「旦那様も私も、お嬢様の頑張りを応援しています。[r]
[sp]それでは、失礼いたします」[p]
;礼法が低い場合おわり
[endif]
*seen_next1
;礼法が高い場合ここにスキップされる
[clearstack stack=if]
#
[fadeoutbgm time=3000]
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
;====================================================
数日後――。[p]
;====================================================
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
;====================================================
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
;====================================================
[背景_庭"]
[wait time=10]
;====================================================
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[freeimage layer = 29]
@layopt layer=fix visible=true
;主人公部屋 昼
;====================================================
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ここ数日でワルツのステップも覚えました……
;↓眉：通常 [主人公眉通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
あとは）[p]
;礼法が上がってないのか？といわれるので対策
[if exp="f.event_replay != 'sijyou'"]
[eval exp="f.para_shujinkou_j_reihou = f.para_shujinkou_j_reihou + 4"]
[endif]
[whosay name=磯野]
[主人公驚]
「お嬢様、四条様がお迎えにいらっしゃいました」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「ありがとう。　すぐ向かいます」
[autosave改]
[p]
#
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
鏡の前で、ばあやが用意した淡い紅を自らの手で[ruby text=さ]差す。[p]
;でさす　でひらがな続きで読みにくいが漢字は普段使わないのでルビで中間をとる
#
;↓目：横目 [主人公横目]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
鏡の前に映った自身の表情は、[r]
普段より、大人の[ruby text=つや]艶やかな印象と変わった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
(これでいいわ)
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[p]
#
部屋の障子をあけ、磯野の前に立つ。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「磯野、どこかおかしいところはないかしら？」[p]

#
磯野からは『もう、気にしなくても良い』と言われたが、[r]
今日ばかりは違う。[p]
より大人になる為の一歩。[r]
磯野も、それを感じているのか、しっかりと私を見据えた。[p]
[whosay name=磯野]
「はい。[r]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]

[sp]今日のお嬢様は、[ruby text=りん]凛となされて、一段とお綺麗でございます」
[autosave改]
[p]
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
;↓効果：無し(通常) [主人公効果消]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[freeimage layer = 29]
@layopt layer=fix visible=true
;------------------------------------------------
[whosay name=&sf.girl_namae color="#cf5a7f"]
(大丈夫だわ。努力をした分、自信を持っていきましょう)
[autosave改]
[p]
#
*scene2
[暗転２]
[背景_主人公邸_玄関]
;====================
[四条サイズ通常_羽織]
;[四条眉驚き]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_odoroki.png" time=0]
[wait time=10]
;[四条目大]
[chara_mod name="sijyou_me" storage="sijyou/me_ake.png" time=0]
[wait time=10]
;[四条口通常]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_futuu.png" time=0]
[wait time=10]
;[四条頬染め]
[chara_mod name="sijyou_emo" storage="sijyou/emo_hohosome.png" time=0]
[wait time=10]
[暗転２終了]
;====================
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
「お待たせしました、華織様」[p]
#
緊張と、ときめきの満ち[ruby text=しお]汐の中、[r]
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
;[四条眉下げ]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_sage.png" time=0]
[wait time=10]
「失礼しました。[sp]今日の[名前]さんは、[r]
[sp]あまりにも僕が知っている可愛らしい[名前]さんではなくて……」[p]
[whosay name="華織" color="olivedrab"]
;[四条目伏]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi1.png" time=0]
[wait time=10]
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
;[四条口微笑み]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
;[四条目にこ]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
「今日の[名前]さんを僕は忘れないでしょう。[r]
[sp]さあ、車に乗って下さい」[p]
#
華織様が私の手を取ってエスコートする。
[autosave改]
[p]
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
;[四条目伏]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi1.png" time=0]
[wait time=10]
華織様の熱の篭った眼差しには、 お見合いの時とは違って、[r]
大人の愛情を感じられた。
[autosave改]
[p]
[四条退場準備 storage="bg/bg_genkan.jpg" time=100]
[wait time=50]
[fadeoutbgm time=3000]
[暗転]
[if exp="f.okeiko_gamen == true || f.event_replay == 'sijyou'"]
@jump storage="sijyou/sijyou_2_2_bazar_2.ks" target=*scene3
[else]
#
テストページからプレイしています。次のシナリオに移動しますか？[r]
;選択肢用レイヤーを追加
[position layer=message1 height=200 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]
*jump_ok
[er]

[current layer="message0"]
[resetfont]
[er]
「はい」[r]
移動します。[p]
[cm]
@jump storage="sijyou/sijyou_2_2_bazar_2.ks" target=*scene3
[s]

*jump_no
[er]
[current layer="message0"]
[resetfont]
「いいえ」[r]
テストを終了します。[p]
[cm]
;------------------------------------------------------
[イベントシーン終了]
@jump storage="test_sijyou.ks"
[endif]

[s]

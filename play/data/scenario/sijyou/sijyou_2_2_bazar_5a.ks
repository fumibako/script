;遠慮しておく ビタールート 選択肢 会ったことを話すを選択している
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
[暗転]
;背景をセット予定↑
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;====================================================
*scene1
;------------------------------------
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
「大丈夫です。　ありがとうございます」[p]
[whosay name="給仕"]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
「失礼しました」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
（華織様と御一緒に頂くまで我慢しておきましょう)[p]

#
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
華織様を待っていると、楽団にピアノの奏者が入り、[r]
他のバイオリン奏者達も音を合わせはじめる。[p]
#
ピアノの音によって徐々に纏まりを得たかと思うと、[r]
シンと鳴り止み、[r]
次の瞬間、指揮者の合図で壮麗な円舞曲が再開した。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（ダンスが始まってしまったみたい。[r]
[sp]……華織様は、まだ森永夫人に捕まっているみたいですね)[p]
#
地味な時間を過ごす私とは対照的に[r]
煌びやかな男女達は、そぞろにダンスホールに集まって円舞をはじめる。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
(ふう、私も華織様と早く踊りたいですわ)[p]
#
ダンスホールを恨めしげに見ていると、[r]
華麗なステップを踏む男女が私の目に入った。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（私もあの様に、もっと上手く踊れたら良いのに。[r]
[sp]そうしたら華織様も……)[p]
#
きっと私を放っておいたりしないかもしれない。[r]
そんな事を少し考えてしまった。[p]

[whosay name=男性]
「よい、夜をお過ごしください」[p]
[whosay name=女性]
「有り難う存じます。[sp]貴方も素敵な夜を」[p]
#
華麗なステップを踏む男女はキッチリと会釈し、離れていく。[r]
別れた女性は、優雅な所作でこちらの壁際に戻ってきた。[p]

その女性に私が目を奪われていると、[r]

[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
突然、戻ってきた女性が、ふらりと私の隣の柱にもたれかかった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ooake.png" time=0]
[wait time=10]
「！」[p]
[whosay name=四条幸代]
[主人公ポーズ片手]
「あっ……」[p]
#
見れば、その方は幸代様だった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
「だ、大丈夫ですか？」[p]
#
;↓口：ムッと不満や哀しみ、耐える感じの表情に [主人公口ムッ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
[whosay name=四条幸代]
「あ、ありがとうございます。[r]
[sp]失礼しました、少しお酒を飲みすぎたようです」[p]

#
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
幸代様は、背筋を伸ばすと、軽く身を縮めて会釈を返す。[p]

#
先ほどの訪問着のピシリと着られた売り子姿の幸代様とは打って変わって、[r]
バッスルスタイルの幸代様は、白い肌と[r]
今にも折れそうな華奢な腰が目立ち、弱々しい印象を受けた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「水を頂きましょうか？ ……給仕を呼びますわ」[p]
[whosay name=四条幸代]
「ありがとうございます、大丈夫ですわ。[r][sp]
こちらにあるので……」[p]
#
幸代様は、慣れた足取りで[r]
臨時に設置されたテーブルに向かうと瓶から杯へと水を注いだ。[p]
[whosay name=四条幸代]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
「[名字]様も、どうぞ」[p]
#
ドレスに潰されてしまいそうな儚気な雰囲気を漂わす幸代様に[r]
[ruby text=グラス]杯を手渡され、[r]
圧倒された私は華織様を待たずに思わず杯を手に取ってしまった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
「あ、ありがとうございます。[r]
[sp]こちらには、よく来られるのですか？」[p]
[whosay name=四条幸代]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「はい。 ダンスパーティがある時は」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
「先ほどの殿方とのダンスは素敵でしたわ。[r]
[sp]私も、早くより上手く踊れる様になりたいです」[p]
[whosay name=四条幸代]
「いえ、[名字]様の方が……」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
(私、てっきり幸代様は[華衣]さんの事を[r]
[sp]気にかけているとばかり思ってしまいましたが)[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
「あの方とは親しいのですか？」[p]
[whosay name=四条幸代]
「いえ、お恥ずかしながら、[r]
[sp]私は手紙を交わすには、歳が立ってしまっているので」[p]

「こういった場所に連れられて略式をとって見合い相手を[r]
[sp]探させられているのです」
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「とても、その様には見えませんが……」[p]
[whosay name=四条幸代]
「お気遣いありがとうございます。[r]
[sp]ですから、あの殿方は今夜の私のダンスに付き合って頂いた方に[r]
[sp]すぎないのです」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうでしたのね 」[p]
[whosay name=四条親戚]
「私も、できればお慕いできる方とダンスを踊ってみたいです」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：横の伏目 [主人公横伏目]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi1.png" time=0]
[wait time=10]
(やはり、華衣様のことを……？)[p]

#
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
幸代様は、何か悟ったように微笑むと言葉を続けられた。[p]

;何故、華織、華衣の手紙の相手に含まれていなかったのか？
[whosay name=四条幸代]
;↓眉：下がり眉下位置 (伏目、目閉じ時の柔和な表情に向きます) [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
「四条家は、その昔、高貴な位を維持しようと同じ血の者を[r]
[sp]結婚相手に選んでいました」[p]
[主人公伏目パチ1回]
;↓口：通常 [主人公口通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
「ですが、途中で気づいたのでしょう。[r]
[sp]不健康な者が生まれ、時代の波の中で生きていくには、[r]
[sp]多くの方と付き合うべきだと」[p]

[whosay name=四条幸代]
「ですから、近すぎる血縁者は、滅多に手紙の婚約者候補に[r]
[sp]選ばれにくいのです」[p]

[whosay name=四条幸代]
「ご当主様……華織様のお爺様は親戚同士の結婚ですが、[r]
[sp]それは珍しい縁組みなのですよ」[p]
;手紙のやり取りはしていない

[whosay name=&sf.girl_namae color="#cf5a7f"]

[主人公伏目パチ1回]
(そうなのですね)[p]

[whosay name=四条幸代]
「それに……私自身は思ってもいないことですが、[r]
[sp]私の親は、あまり[華衣]様をよく思われていないので、[r]
[sp]きっと私はあの人に巡り合わないでしょう」[p]

[whosay name=四条幸代]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
「あ、好まない理由については、その……ぞ、存じあげておりません。[r]
[sp]ですが、華衣様はとても気の良い方なので、[名字]様もよしなに」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：下がり眉下位置 (伏目、目閉じ時の柔和な表情に向きます) [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
;↓目：柔和な伏目 [主人公目伏柔]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「存じております。[r]
[sp]私も少し気懸りでしたので……安心しています」[p]
#
幸代様は、一瞬、目を大きくすると安心したように目を細くして微笑まれた。[p]

[whosay name=四条幸代]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
「お見かけした時から、[r]
[sp][名字]様と華織様は、どこか結び付きの深いお二人だと思いましたが」[p]

「今日は、お二人が親しげに踊っている姿をみて、[r]
[sp]本当に好まれる相手と一緒にいられるのは、羨ましいと感じました」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
「幸代様……？」[p]

[whosay name=四条幸代]
「ほんの少し前まで、私は自分が何をすべきか、[r]
[sp]何をしたいのか分かっていましたが」[p]
[主人公伏目パチ1回]
「この場に来てしまうと目の前の課せられたことに目眩がして、[r]
[sp]諦めてしまうのです」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：下がり眉下位置 (伏目、目閉じ時の柔和な表情に向きます) [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
「幸代様、私は[華衣]さんのことを影ながら応援しております。[r]
[sp]それに仰っていましたよね、うまく伝わらなくてもご自身で伝えたいと」[p]
;キツイ言い方ね

[whosay name=四条幸代]
「はい。[r]
[sp]お二人のダンスをされている姿を見て、目が覚めました。[r]
[sp]勇気を出してみます」[p]
#
幸代様は、重たげなスカートを持ち上げると、[r]
風のようにダンスホールを抜け出していった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
（うまく伝わらなくても……ですか。[r]
[sp]そうですね、焦ることはないのだわ)[p]

[whosay name="華織" color="olivedrab"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
「[名前]さん、お待たせして失礼しました。[r]
[sp]幸代さんと何か話されていたのですか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：下がり眉下位置 (伏目、目閉じ時の柔和な表情に向きます) [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
「はい。[sp]……でも今は秘密です」[p]
[whosay name="華織" color="olivedrab"]
「それは弱りましたね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
「時が来たら教えます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
「では、[r][sp]
[名前]さんの秘密が気になってしまう、どうしようもない僕と[r][sp]
もう一度、踊ってくださりませんか？」[p]

[if exp="f.para_sijyou_koukando > 80"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：柔和な伏目 [主人公目伏柔]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
「ええ」[p]
[else]
;好感度低い
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
「ふふ、どうしましょう？」[p]
[whosay name="華織" color="olivedrab"]
「もし宜しければ、次のデェトは、オペラ座に行きませんか？[r][sp]
二人だけの観席を取ります」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「では、踊りましょうか」[p]
[endif]
#
;共通
華織様の側で手を取ると、もう一度ダンスを踊った。[p]

ゆっくりと舞う、円舞の中、[r]
少しずつ心の花が開いていく気がした。[p]

;クリアフラグ
[eval exp="sf.event_sijyou_2_2_bazar = 1"]
[イベントシーン終了]


[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[else]
@jump storage="test_sijyou.ks"
[endif]
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

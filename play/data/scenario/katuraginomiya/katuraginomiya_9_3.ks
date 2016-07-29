;５回目イベント　
;両家顔合わせ
[背景_庭]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[主人公ポーズ通常]
[主人公通常]
[主人公目パチ1回]
;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
[手紙]

[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
謹呈　秋色次第に濃く、貴方には[r]
[sp] 一段とご清祥の由と存じます。[r]
[r]
[sp]誠に申し上げにくいのですが息子は縁談をいくら勧めましても[r]
手紙を書こうとするどころか破談にしてきました。[r]
[r]
[sp] 息子は意思が強くときに激しくすら感じる時があります。[r]
[sp] その息子が気に入った方だから不安に思っていたのですが[r]
まるで淑女の鏡のような方で安心しました。[r]
[r]
[sp] 少々の身分のことは気にされなくても大丈夫です。[r]
[sp] 正直に申し上げるのは気が引けますが[r]
最近では財政難や健康上の理由から縁談を持ち掛けても[r]
辞退される家も少なくないのです。[r]
[r]
[sp] 貴方はもうすでに息子との婚約は内定いたしました。[r]
[sp] 私も貴方のことはお茶事の時から好ましいと思っております。[r]
[r]
[sp] ささやかながら貴方に振袖を仕立てました。[r]
[r]
[sp] この縁談が両家にとってよきものであること願って。[r]

[r]
敬白
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　葛城宮妃　咲子[p]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]


;【立ち絵】主人公　困り
「殿下の事を心配されているのね[r]
[sp] 私も殿下や殿下の母宮様の[r]
[sp] お役にたてられるといいのだけど」[p]

[whosay name=磯野 color="dimgray"]
「きっとお役にたてますよ
[sp] お稽古に加え新聞や[r]
[sp] 洋書にも目を通すようになりましたし」[p]

（仲人邸）
背景洋館

#
[sp] 仲人は時子さんのお父様宗秩寮総裁と親しくしており
顔も広い格上の華族でもある両家の家族を紹介した後
私は葛城宮妃殿下が２人で話があるからと庭園に出た[p]

背景庭園
#葛城宮妃
「振袖がとても似合っておられて[r]
[sp] 仕立てたかいがありましたわ」[p]

;【立ち絵】主人公照れ
「お手紙と振袖、[r]
[sp] とてもうれしく思っております[r]
[sp] 葛城宮妃殿下」[p]

#葛城宮妃
「…… つつましいことは好ましいけれど[r]
[sp] 他人行儀なのは少し寂しいわ」[p]

;【立ち絵】主人公 驚き
「妃殿下」[p]

#葛城宮妃
「少しずつ家族になっていきましょう[r]
[sp] …… ああこの話じゃなく[r]
[sp] 息子の話をしようと思っていたの[r]
[sp] あらもう…… 」[p]

;【立ち絵】主人公　通常
「どうされましたか？」[p]

#葛城宮妃
「もう話す前に息子がそこに」[p]

#
振り向くと軍服姿の殿下がいた[p]

；葛城宮【立ち絵】 通常
「……」

#葛城宮妃
「クスッ
[sp] よほどあの子は貴方のことが大切なのね[r]
[sp] いいわ…… 息子のこと頼みます[r]
[sp] あの子のところに行ってらっしゃい」[p]

;【立ち絵】主人公　通常
「あのでもお話しは……」[p]

#葛城宮妃
「きっとあの子からあなたに話すでしょう」[p]

;【立ち絵】主人公　瞬き
「？　……はい[r]
それでは御前を失礼いたします」[p]

#ナレーション
[sp] 私は葛城宮妃に一礼し[r]
葛城宮の元に歩いた[p]

；【立ち絵】 葛城宮 ため息
「母宮のいいそうなことは想像がつく[r]
[sp] 手に負えない息子である私を頼みますとか[r]
[sp] そんな内容だったのではないか？[r]
[sp] 結婚をして私が丸くなるのを[r]
[sp] 期待してるのだろう」[p]

；【立ち絵】主人公 通常
「何か仰る前に殿下が来られたので[r]
[sp] 分かりませんが[r]
[sp] 多分そのことだと思います」[p]

;【立ち絵】葛城宮通常
「母宮は世話好きでな[r]
[sp] あれこれ余計な事まで手をだそうとする[r]
[sp] 君の負担にならないといいのだが」[p]

;【立ち絵】主人公 微笑み
「いえ負担ではありませんわ[r]
[sp] それにしても私のお父様やお母さまも[r]
[sp] わたしの事を大切に思って下さるのですが[r]
[sp] 離れて暮らしているせいか意思の疎通が[r]
[sp]あまり出来てないので少し羨ましく思います」[p]

;【立ち絵】葛城宮　通常
「……そうか[r]
それより私も君とゆっくり話したかった」[p]

;【立ち絵】主人公　通常
「ええ私もです特に[r]
[sp] 殿下の夢を聞きたいと思っていました。[r]
[sp] 殿下のことをお話ししてくださいませんか？　[r]
[sp] 御身分はとても高いけれど[r]
[sp] 庶民にも分け隔てなく接していますし[r]
[sp] 物の味方や考え方が他の方と違っていて[r]
[sp] もっと知りたいなと思います」[p]

;【立ち絵】葛城宮　驚き
「私の話でいいのか？　」[p]
;【立ち絵】葛城宮　通常
「ああそういえば町であったときに[r]
[sp] 正式に婚約が成ったら[r]
[sp] 話すと約束したな」[p]

;【立ち絵】主人公　通常
「ええ、夢を語ってくださる[r]
[sp] 殿下はとてもキラキラして[r]
[sp] 言葉にも力が宿って[p]
;【立ち絵】主人公　照れ
「その…… 魅力的に感じました」[p]

;【立ち絵】葛城宮　驚き
;【立ち絵】葛城宮　微笑み
「本当に君は私の欲しい言葉をくれる[r]
[sp] 他の華族令嬢達は[r]
[sp] 私の話に興味を示さずに[r]
[sp] 退屈そうにしていたのに」[p]

;【立ち絵】主人公　通常
「人それぞれなので[r]
[sp] 比較はよくありませんわ。」[p]

;【立ち絵】葛城宮　通常
「ああそうだなそれよりなにから話そうか[r]
[sp] 私の侍従の一人に元フランス外交官がいる[r]
[sp] 幼いころから私は彼の話を聞いた[r]
[sp] 目まぐるしく変わったフランス情勢に…… 」[p]

#
[sp] 殿下は１２歳でイギリスに留学し、[r]
イギリス国王から立憲君主について学ばれたこと、[r]
[sp] 民主化が進むヨーロッパの国について[r]
私にもわかるように沢山話してくれた[r]
[sp] 私の知らない世界の事それは私にとっても興味深いものだった。[r]
[sp] 何より殿下が朗らかに楽しそうに話し、[r]
殿下の強い意志を感じられて[r]
とても殿下がまぶしく感じられる私も沢山勉強しようと思った[r]
[sp] 時間が許すまで私は殿下の話を聞いた[p]

夕暮れ

;【立ち絵】葛城宮 微笑み
「今日は楽しかった[r]
[sp] また近いうちに会おう」[p]

;【立ち絵】主人公　微笑み[p]
「ええ楽しみにしておりますわ」[p]
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
@jump storage="test_katuragi.ks"
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

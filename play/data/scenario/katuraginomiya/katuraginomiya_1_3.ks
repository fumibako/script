;8回目イベント
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
;【立ち絵】主人公 真剣
「……」[p]

[whosay name=磯野 color="dimgray"]
「お嬢様そんなんなに[r]
[sp]ラジオの前でじっと待たれてても[r]
[sp]殿下の演説まで[r]
[sp]まだあと１時間もありますよ」[p]

;【立ち絵】主人公　ため息
「ほかの事に手を[r]
[sp]付けられないんですもの」[p]

[whosay name=磯野 color="dimgray"]
「相変わらず[r]
[sp]葛城宮殿下様からお手紙が来ませんが」[p]

;【立ち絵】主人公　困り顔
「ええ」[p]
;【立ち絵】主人公　目閉じ
「でも手紙が来なくても[r]
[sp]殿下の想いが何となくわかります[r]
[sp]以心伝心というのかしら」[p]

[whosay name=磯野 color="dimgray"]
「お嬢様が信じてらっしゃるなら[r]
[sp]私も従うだけです」[p]

;【立ち絵】主人公　微笑み
「ありがとう」[p]


ラジオ放送局
背景放送局
;【立ち絵】葛城宮　通常
「……」[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
[手紙]
[font color=navy size=21]
葛城宮　晴仁様へ[l][r]
[r]
[sp]拝啓　初春の光さやけく折、[r]
どうしても殿下に手紙を出したく筆を取りました。[r]
[r]
[sp]今朝の新聞を読み殿下の[r]
働きが徒労に終わった事を残念に思います。[r]
[r]
[sp]日々新聞に目を通し[r]
沢山の洋書を読みながら[r][r]
私は殿下のことを想っておりました。
[r]
[sp]現首相はデモクラシーという[r]
民主化運動を推進し[r]
普通選挙制度や男女平等、[r]
ストライキ権、自由教育の獲得に着手しようとした[r]
殿下の考えに最も近い思想を持った内閣でもあり[r]
今殿下は深く失望しておられるでしょう。[r]
[r]
[sp]ですが殿下はここで折られる方でもあ[r] りません[r]
[sp]私は殿下を信じております。
[r]
[sp]どうか信じた道を突き進んでください。[r]
[r]
[sp]またどうかお体を大切になさってくださいね[r]
[sp]ひと月前も少しおやつれになっておりました[r]
[r]
[sp]心から殿下のことを祈っております。[r]
 [r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　[名字]　[名前][p]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

#侍従
「何を読まれているんですか？　[r]
[sp]演説用のメモには見えませんが」[p]

;【立ち絵】葛城宮　微笑み
「演説の内容はもう頭に入っている[r]
[sp]これは我が婚約者殿からの手紙だ」[p]

#
[sp]あなたのためなら強くなれる……か[r]
[r]
[sp]薔薇園での彼女を見て[r]
私が守りたいだけの女性[r]
ではないと気付いた。[r]
彼女のためにもっと私も強くなろう。[r]
[r]
[sp]ただ反発を繰り返し[r]
意見を述べるのではなく、[r]
周りに調和しながら指導力を付けたい。[r]

背景セピア町写真
[sp]「ラジオをお聞きの国民の皆様方[r]
此度の海軍高官の不祥事を私は誠に申し訳なく[r]
情けなく思っている

[sp]これは監督が行き届いていなかった[r]
我が党の一人一人の責任である

[sp]同じ海軍である私が発言するのは[r]
不適切と思われる方もいるだろう[r]
[sp]だが同じ海軍出身の議員だからこそ[r]
[sp]私は発言し、国民の一人一人の方に[r]
[sp]この身に変えても二度とこのような事件は[r]
起こさせないそう誓おう[r]
[r]
[sp]我が国は列強諸国に不平等な条約を交わされ[r]
諸外国と対等な関係を築くために[r]
[sp]アジア圏での支配力を強めていった[r]
[sp]だがその結果近隣諸国からの反発は強い[r]
初代内閣総理大臣はその反発から暗殺され[r]
また欧米諸国との関係は悪化の一途をたどっている[r]
[r]
[sp]だが軍事を増強して戦争に勝てばいいなどと[r]
そんな容易い問題ではない[r]
切迫した国際情勢から軍は必要であろう[r]
[sp]しかし戦争を続ければ続けるほど[r]
人の命は消え、勝ち続ければ勝ち続けるほど[r]
孤立を深める結果になるだろう[r]
[sp]ナポレオンの最後をみればわかることだ[r]
[r]
[sp]国を豊かにするためには最大限に[r]
戦争を避け国を発展させるこを第一だと[r]
私は思っている[r]
[r]
[sp]世界は目まぐるしく近代化の道を進み[r]
我が国も例外ではない[r]
[sp]列強の国と対等に交渉するためにも[r]
また国民の皆様方の協力と努力が必要である[r]
[sp]産業を豊かにすること[r]
[sp]食物をいかに良く育てることも[r]
[r]
[sp]そのためにも国民は平等に学び[r]
また男女平等、女性の協力も必要なのである[r]
[sp]我が内閣には成し遂げたいことが多くあった[r]
[r]
[sp]どうか我々に力を貸してほしい」[p]

[背景_庭]
[主人公ポーズ通常]
[主人公通常]
[主人公目パチ1回]
;【立ち絵】主人公 微笑み
「殿下はもうきっと[r]
大丈夫ね」[p]
[whosay name=磯野 color="dimgray"]
「ええ、そうでございますね」[p]
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

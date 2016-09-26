;イベント2回目
;散策イベント2

;背景:町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[イベントシーン構築]


[主人公ポーズ通常]
[主人公通常]
#
行き交う足音、[r]
子供たちの明るく元気な声が響く。[p]
;【SE】子供たち
[playse storage=kodomotachi.ogg loop=false ]

[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[主人公目パチ1回]

;【BGM】筍の訪れ(町
[whosay name="子供たち" color=%mp.color]
「かごめかごめ籠の中の鳥は……」[p]

;【立ち絵】主人公 驚
[主人公ポーズ片手]
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！」[p]
（殿下が子供たちと遊んでいらっしゃるわ！）[p]
[葛城宮ベース私服]
[葛城宮笑顔大]

[主人公目パチ1回]
[主人公通常]
[主人公ポーズ通常]
#
ふと私の視線に気づいたように[r]
殿下の瞳が私を捉える。[p]
[葛城宮横目]
[葛城宮驚き]
;【立ち絵】葛城宮 驚き
[whosay name="葛城宮　晴仁" color=%mp.color]
「鷹司殿！」[p]
[葛城宮微笑み]
;【立ち絵】葛城宮 通常
「皆すまない、私はそろそろ抜けるが、[r]
[sp]みんなで仲良く遊んでるんだぞ！」[p]
;【SE】子供たち
[playse storage=kodomotachi.ogg loop=false ]

[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name="子供たち" color=%mp.color]
「えー！ お兄ちゃんもっと遊んで！」[p]

[主人公目パチ1回]
;【立ち絵】葛城宮 微笑み
[葛城宮笑顔]
[whosay name="葛城宮　晴仁" color=%mp.color]
「申し訳ないが、[r]
[sp]私は用事があるのでな。[r]
[sp]君たちは皆で仲良く遊べるだろう？」[p]
[if exp="sf.BGM=='ON'"]
[fadeoutbgm time=3000]
[endif]

[whosay name="子供たち" color=%mp.color]
「わかった。[r]
[sp]今度また遊びを教えてちょうだいね。」[p]
[葛城宮微笑み]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 驚
[主人公驚]
「殿下は子供たちとお知り合いなのですか？」[p]
[葛城宮微笑み]
[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】「きずな」
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

[主人公通常]
;【立ち絵】葛城宮 通常
[whosay name="葛城宮　晴仁" color=%mp.color]
「子供たちが喧嘩をしているので仲裁をしたら[r]
[sp]遊びに誘われてな……楽しいものだった。[r]
[sp]無邪気な笑顔というのも心が癒される」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 困り顔
[主人公困り]
「心が癒される、ですか。[r]
[sp]何かございましたか？」[p]

[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[葛城宮目伏]
;【立ち絵】葛城宮 ため息
[whosay name="葛城宮　晴仁" color=%mp.color]
「何かというならいつものことだ。[r]
[sp]皆私の為といいながら[r]
[sp]決まり事に私を縛ろうとする」[p]
 
;【立ち絵】主人公 困り顔
[主人公伏目パチ1回]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「殿下……一つお聞きしていいですか？」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[葛城宮真剣]
;【立ち絵】葛城宮 通常
[whosay name="葛城宮　晴仁" color=%mp.color]
「構わない。[r]
[sp]君に対しては誠実でいたい」[p]

;【立ち絵】主人公 真剣
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私に手紙を出していることを[r]
[sp]周囲の方から反対されませんか？」[p]
[主人公目パチ1回]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
（手紙をいただきはじめてから、ずっと気になっていたこと）[p]

;【立ち絵】葛城宮 ため息
[葛城宮目伏]
[whosay name="葛城宮　晴仁" color=%mp.color]
「反対されていないといえば嘘になるな。[r]
[sp]君も知っているかもしれないが、[r]
[sp]『皇族の婚嫁は同族又は勅旨に由りを特に認許せられた華族に限る』[r]
[sp]と決められている」[p]

;【立ち絵】主人公 困り顔
[主人公困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、知っています。[r]
[sp]お手紙をいただいたときより[r]
[sp]法律関係や諸外国について学ぶ[r]
[sp]機会をいただきましたから」[p]

[主人公伏目パチ1回]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[葛城宮微笑み]
;【立ち絵】葛城宮 ため息
[whosay name="葛城宮　晴仁" color=%mp.color]
「そうか。[r]
[sp]まあ私の場合は周囲の者たちも[r]
[sp]いつもの事の一つだと[r]
[sp]さほど気にしていない」[p]

;【立ち絵】葛城宮 通常
[葛城宮真剣]
「だが君の周囲の者こそ[r]
[sp]私との手紙のやり取りについて[r]
[sp]どう思っているのだ？」[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「恐れ多いことだと……」[p]
;【立ち絵】主人公 伏目
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
「けれどお父様も家令も[r]
[sp]私の意思を尊重して[r]
[sp]見守ってくださっています」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[葛城宮微笑み]
;【立ち絵】葛城宮 微笑み
[whosay name="葛城宮　晴仁" color=%mp.color]
「それは何よりだな」[p]

[葛城宮微笑み]
;【立ち絵】葛城宮 真剣
「……君自身は私をどう思っている？」[p]
[主人公伏目パチ1回]

;【立ち絵】主人公 主人公ポーズ両手、驚き、主人公頬染 
[主人公ポーズ両手]
[主人公驚]
[主人公頬染め]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「え！ ……まだわかりませんわ！[l][r]
[主人公ポーズ通常]
[主人公照れ目普通]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]

[sp]ですがお手紙を拝見するたびに[r]
[sp]色々なことを考えておられて[r]
[sp]素晴らしい方だと思っております」[p]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]

[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]

[葛城宮ため息]
;【立ち絵】葛城宮 困り顔
[whosay name="葛城宮　晴仁" color=%mp.color]
「……素晴らしいか。[r]
[sp]だが私はまだ何もできていない。[r]
[sp]自分も国も変えたい、そう思い貴族院に入った。[r]
[sp]この国は四民平等をうたいながら不平等だ」[p]
;【SE】子供たち
[playse storage=kodomotachi_warai.ogg loop=false ]

[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
#
憐れむような眼差しで[r]
殿下は子供たちに視線を向けた。[p]

;【立ち絵】葛城宮 真剣
[whosay name="葛城宮　晴仁" color=%mp.color]
「生まれてくる子供たちは平等ではないのだ。[r]
[sp]……そして軍部が力を持ち始めている。[r]
[sp]このままではいけない」[p]

;【立ち絵】主人公 目閉じ
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、きっと殿下ほどの強い意志の方なら[r]
[sp]きっとやり遂げられるでしょう」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
（やはり殿下は私には遠いお方なのだわ）[p]

[主人公目を開く]
[葛城宮目伏せ照れ]
;【立ち絵】葛城宮 照れ顔
[whosay name="葛城宮　晴仁" color=%mp.color]
「ありがとう。そんな風に言ってくれる女性は君ぐらいだ」[p]

;【立ち絵】主人公 驚き
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私だけ、ですか？」[p]

[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[葛城宮効果消し]
[葛城宮真剣]
;【立ち絵】葛城宮 通常
[whosay name="葛城宮　晴仁" color=%mp.color]
「ああ。私の周りにいる女性は[r]
[sp]身分が高すぎるせいか差別意識が強い」[p]
「周囲の者たちもほとんど私がいうことを青臭い理想だと思っている。[r]
[sp]だが私はこの国を豊かで平等で平和な国に変えたい」[p]

;【立ち絵】主人公 驚き
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「この国をそんな風におっしゃる方は初めてです。[r]
[sp]そのように思われたのはどうしてですか？」[p]

[if exp="sf.BGM=='ON'"]
[fadeoutbgm time=3000]
[endif]

[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[葛城宮微笑み]
;【立ち絵】葛城宮 通常
[whosay name="葛城宮　晴仁" color=%mp.color]
「……それは君の父君を通して正式に交際してから話そう。[r]
[sp]そろそろ戻らないと騒ぎになる」[p]
[葛城宮退場]
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

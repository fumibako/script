;イベント2回目
;散策イベント2

;背景:町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[主人公ポーズ通常]
[主人公通常]

#
行き交う足音、[r]
子供たちの明るく元気声が響く[p]

[stopbgm]

;【BGM】筍の訪れ(町
＃子供たち
「かごめかごめ籠の中の鳥は……」[p]

;【立ち絵】主人公 驚
「！　」
（子供たちと殿下が遊んでいるわ！）[p]
＃
ふと私の視線に気づいたように[r]
殿下が私を捉える[p]

;【立ち絵】葛城宮 驚き
「鷹司殿！」
;【立ち絵】葛城宮 通常
「皆すまない、私はそろそろ抜けるが、[r]
[sp] みんなで仲良く遊んでるんだぞ！」[p]

＃子供たち
「えー！お兄ちゃんもっと遊んで！」[p]

;【立ち絵】葛城宮 微笑み
「申し訳ないが、[r]
私は用事があるのでな[r]
[sp] 君たちは皆で仲良く遊べるだろう？　」[p]

＃子供たち
「わかった、今度また遊びを[r]
[sp] 教えてちょうだいね。」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 驚
「殿下は子供たちと知り合いなのですか？」[p]

;【立ち絵】葛城宮 通常
「子供たちが喧嘩をしているので仲裁をしたら[r]
[sp] 遊びに誘われてな……楽しいものだった[r]
[sp] 無邪気な笑顔というのも心が癒される」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 困り顔
「心が癒される、ですか[r]
[sp] 何かあられたのですか？」

;【立ち絵】葛城宮 ため息
「何かならいつものことだ、[r]
[sp] 皆私の為といいながら[r]
[sp] 決まり事に私を縛ろうとする」[p]
 
;【立ち絵】主人公 困り顔
[whosay name=&sf.girl_namae color="#cf5a7f"]
「殿下……一つお訊きしていいですか？」[p]

;【立ち絵】葛城宮 通常
「構わない
[sp] 君に対してはは誠実でいたい」[p]

;【立ち絵】主人公 真剣
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私に手紙を出していることを[r]
[sp] 周囲の方から反対されませんか？」[p]
（手紙をもらいだしてからずっと気になっていたこと）[p]

;【立ち絵】葛城宮 ため息
「反対されていないといえば嘘になるな、[r]
[sp] 君も知っているかもしれないが、[r]
[sp] 皇族の婚嫁は同族又は勅旨に[r]
[sp] 由りを特に認許せられた華族に限る[r]
[sp] と決められている」[p]

;【立ち絵】主人公 困り顔
「ええ、知っています[r]
[sp] お手紙をいただいたときより[r]
[sp] 法律関係や諸外国について学ぶ[r]
[sp] 機会をいただきましたから」[p]

;【立ち絵】葛城宮 ため息
「そうか。[r]
[sp] まあ私の場合周囲の者たちも[r]
[sp] いつもの事の一つだと[r]
[sp] さほど気にしていない」[p]

;【立ち絵】葛城宮 通常
「だが君の周囲の者こそ[r]
[sp] 私に手紙のやり取りについて[r]
[sp] どう思っているのだ？」[p]

;【立ち絵】主人公 通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
「恐れ多いことだと、[r]
[sp] けれどお父様も家令も[r]
[sp] 私の意思を尊重して[r]
[sp] 見守ってくださっています」[p]

;【立ち絵】葛城宮 微笑み
「それは何よりだな」[p]
;【立ち絵】葛城宮 真剣
「……君自身は私をどう思っている？」[p]

;【立ち絵】主人公 困り顔
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まだわかりませんが、[r]
[sp] お手紙を拝見するたび[r]
[sp] 色々なことを考えられていて[r]
[sp] 素晴らしい方だと思っております」[p]

;【立ち絵】葛城宮 困り顔
「……素晴らしいか[r]
[sp] だが私はまだ何もできていない[r]
[sp] 自分も国も変えたいそう思い貴族院に入った[r]
[sp] この国は四民平等をうたいながら不平等だ」[p]

＃憐れむよう眼差しで[r]
[sp] 殿下は子供たちに視線を向けた。[p]

;【立ち絵】葛城宮 真剣
「生まれてくる子供たちは平等ではなのだ[r]
[sp] ……そして軍部が力を持ち始めている[r]
[sp] このままではいけない」[p]

;【立ち絵】主人公 目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、きっと殿下ほどの強い意志の方なら[r]
[sp] きっとやり遂げられるでしょう」[r]
（やはり殿下は私には遠いお方なのだわ）[p]

;【立ち絵】葛城宮 照れ顔
「ありがとう。そんな風に言ってくれる女性は君ぐらいだ」[p]

;【立ち絵】主人公 驚き
「私だけ？」[p]

;【立ち絵】葛城宮 通常
「ああ私の周りにいる女性は[r]
[sp] 身分が高すぎるせいか差別意識が強い[r]
[sp] 周囲の者たちもほとんど[r]
[sp] 私がいうことを青臭い理想だと思っている[r]
[sp] だが私はこの国を豊かで平等で平和な国に変えたい」[p]

;【立ち絵】主人公 驚き
「この国をそんな風におっしゃる方初めてです[r]
[sp] そのように思ったのはどうしてですか？」[p]

;【立ち絵】葛城宮 通常
「……それは君の父君を通して正式に交際してから話そう[r]
[sp] そろそろ戻らないと騒ぎになる」[p]
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

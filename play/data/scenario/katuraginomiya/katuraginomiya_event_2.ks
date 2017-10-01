;イベント2回目　
;散策イベント2
;=======================お芝居の準備中です==================================
*replay_katuraginomiya_event_2
[stopbgm]
[call target=*event_2 storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[表示準備]
[freeimage layer = 1]
[wait time=10]
;【背景】町並み
[bg method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50 wait=true]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
#
行き交う足音、子供たちの明るく元気な声が響く。[p]
;行き交う足音や、子供たちの明るく元気な声が響く。上にします。
;【SE】子供たち
[playse storage=kodomotachi.ogg loop=false ]

[if exp="tf.test_gamen == true"]
テストページから開始しています。シナリオ終点にjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]


*jump_ok
[current layer="message0"]
[resetfont]
「はい」[r]
jumpします。[p]
[cm]
@jump target=*seen_end1
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
最初からはじめます。[p]
[cm]
[endif]

[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[主人公目パチ1回]

#
[葛城宮ベース私服]
[葛城宮笑顔大]
[表示開始 time=400]

[whosay name="子供たち" color=%mp.color]
「かごめかごめ籠の中の鳥は……」[p]

;【立ち絵】主人公 驚
[主人公ポーズ片手]
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！」[p]
（殿下が子供たちと遊んでいらっしゃるわ！）[p]
#
[主人公目パチ1回]
[主人公通常]
[主人公ポーズ通常]

#
;【立ち絵】葛城宮 驚き
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_odoroki.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_yoko.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_odoroki.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_ake.png" time=0]
[wait time=10]
ふと私の視線に気づいたように殿下の瞳が私を[ruby text=とら]捉える。[p]
;表示まで時間かかるので近づく足音
;【SE】足音（靴
[playse storage=walk_kutsu.ogg loop=false ]
[葛城宮微笑み]
[wait time=10]
[暗転２ storage="bg/bg_machi.jpg"]
[葛城宮サイズ隣に並ぶ]
[葛城宮ベース私服]
[葛城宮微笑み]
[暗転２終了 time=800]

[whosay name="葛城宮　晴仁" color=%mp.color]
「[名字]殿！」[p]

;【立ち絵】葛城宮 通常
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_yoko.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_ake.png" time=0]
[wait time=10]
「皆すまない、[r]
[sp]私は、そろそろ抜けるが、みんなで仲良く遊んでるんだぞ！」
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_hohoemi.png" time=0]
[wait time=10]
[p]

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
「申し訳ないが、私は用事があるのでな。[r]
[sp]君たちは、皆で仲良く遊べるだろう？」[p]
;真ん中で折り返ししてしまうが違和感あるのでこのままに

[if exp="sf.BGM=='ON'"]
[fadeoutbgm time=3000]
[endif]

[whosay name="子供たち" color=%mp.color]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_hohoemi.png" time=0]
[wait time=10]
「わかった。 今度また遊びを教えてちょうだいね」[p]
[葛城宮微笑み]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 驚
[主人公驚]
「殿下は子供たちとお知り合いなのですか？」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]
[主人公通常]
;【立ち絵】葛城宮 通常
[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮微笑み]
「子供たちが喧嘩をしていたので仲裁に入ったら、遊びに誘われてな……」[p]
;ここは思いつかないのでそのまま
;子供たちが喧嘩をしていたので、思わず仲裁に入ったところ、遊びに誘われてな……

[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_toji.png" time=0]
[wait time=10]
「楽しいものだった。 無邪気な笑顔というものは、心が癒される」
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_futuu.png" time=0]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 困り顔
[主人公困り]
「心が癒される、ですか。 何かございましたか？」[p]

[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[葛城宮目伏]
;【立ち絵】葛城宮 ため息
[whosay name="葛城宮　晴仁" color=%mp.color]
「何かというならいつものことだ。[r]
[sp]皆、私の為といいながら、決まり事に私を縛ろうとする」[p]
 
;【立ち絵】主人公 困り顔
[主人公伏目パチ1回]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「殿下…… [ruby text=ひと]一つお聞きしていいですか？」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[葛城宮真剣]
;【立ち絵】葛城宮 通常
[whosay name="葛城宮　晴仁" color=%mp.color]
「構わない。 君に対しては誠実でいたい」[p]

;【立ち絵】主人公 真剣
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私に手紙を出していることを周囲の方から反対されませんか？」[p]
[主人公目パチ1回]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
（お手紙をいただきはじめてから、ずっと気になっていたこと）[p]

;【立ち絵】葛城宮 ため息
[葛城宮目伏]
[whosay name="葛城宮　晴仁" color=%mp.color]
「反対されていないといえば嘘になるな」[p]
[葛城宮伏目パチ1回]
「君も知っているかもしれないが、[r]
[sp]『皇族の婚嫁は同族又は勅旨に由りを特に認許せられた華族に限る』[r]
[sp]と決められている」[p]

;【立ち絵】主人公 困り顔
[主人公困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、知っています。[r]
[sp]お手紙をいただいたときより、法律関係や諸外国について学ぶ機会を[r]
[sp]いただきましたから」[p]

[主人公伏目パチ1回]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[葛城宮微笑み]
;【立ち絵】葛城宮 ため息
[whosay name="葛城宮　晴仁" color=%mp.color]
「そうか。[r]
[sp]まあ私の場合は周囲の者たちも、いつもの事の[ruby text=ひと]一つだと、[r]
[sp]さほど気にしていない」[p]

;【立ち絵】葛城宮 通常
[葛城宮真剣]
「だが君の周囲の者こそ、私との手紙のやり取りについて[r]
[sp]どう思っているのだ？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
「恐れ多いことだと……」[p]
;【立ち絵】主人公 伏目
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
「けれど、お父様も家令も、私の意思を尊重して見守ってくださって[r]
[sp]います」[p]
;周囲の方も見守っ"て"くださっ"て"います。思いつかないのでこのまま
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;【立ち絵】葛城宮 微笑み
[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮微笑み]
「それは、何よりだな」[p]
[葛城宮目パチ1回]
[葛城宮微笑み]
;【立ち絵】葛城宮 真剣
「……君自身は、私をどう思っている？」
[主人公伏目パチ1回][p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 主人公ポーズ両手、驚き、主人公頬染 
[主人公驚]
[主人公ポーズ両手]
「え！
[主人公頬染め]
……まだわかりませんわ！」
[p]
;エモが多いので分割
[主人公ポーズ通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[主人公照れ目普通]
「ですが、お手紙を拝見するたびに色々なことを考えておられて[r]
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
「……素晴らしいか。
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_toji.png" time=0]
[wait time=10]
 だが、私はまだ何もできていない」[p]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi1.png" time=0]
[wait time=10]
「自分も国も変えたい。 そう思い、貴族院に入った。[r]
[sp]この国は、四民平等を[ruby text=うた]謳いながら不平等だ」[p]
;【SE】子供たち
[playse storage=kodomotachi_warai.ogg loop=false ]

[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
#
憐れむような眼差しで、殿下は子供たちに視線を向けた。[p]

;【立ち絵】葛城宮 真剣
[whosay name="葛城宮　晴仁" color=%mp.color]
「生まれてくる子供たちは平等ではないのだ。[r]
[sp]……そして軍部が力を持ち始めている。 このままではいけない」[p]

;【立ち絵】主人公 目閉じ
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、きっと殿下ほどの強い意志の方なら、きっとやり遂げられる[r]
[sp]でしょう」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
（やはり殿下は私には遠いお方なのだわ）[p]
[autosave]
[主人公目を開く]
;【立ち絵】葛城宮 照れ顔
[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮目伏せ照れ]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_hohoemi_age.png" time=0]
[wait time=10]
「ありがとう。そんな風に言ってくれる女性は君ぐらいだ」[p]

;【立ち絵】主人公 驚き
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「私だけ、
[葛城宮効果消]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_futuu.png" time=0]
[wait time=10]
ですか？」

[p]
;真剣に切り替わるまでがきついので合間のエモ

[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[葛城宮真剣]
;【立ち絵】葛城宮 通常
[whosay name="葛城宮　晴仁" color=%mp.color]
「ああ。[r]
[sp]私の周りにいる女性は身分が高すぎるせいか、差別意識が強い」[p]
「周囲の者たちもほとんど私がいうことを青臭い夢だと思っている。[r]
[sp]だが、私はこの国を豊かで平等で平和な国に変えたい」[p]
;豊かで平等で平和な 長いですが思いつかないのでこのまま


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
[autosave]

;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景(暗)に白文字[テキスト全画面白文字暗]裏で画面構成bg_prologue_dark.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue_dark.jpg" time=1000 visible=true]
[wait time=1000]
[主人公退場]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;【背景】執務室（裏で画面構成）
[bg method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/situmu.jpg" time=600 wait=true]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
数刻後[r]
葛城宮家執務室[p]

[if exp="sf.BGM=='ON'"]
;【BGM】五色（重いムードに
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]

偶然彼女に出会えて上機嫌だった私は、[r]
後に悪い知らせを聞くこととなる。[p]
;原文：私は、偶然彼女に出会えて上機嫌だったが、[r]後に悪い知らせを聞くこととなる。[p]

;今日は彼女にまた偶然出会えて私は上機嫌だったが、悪い知らせを聞くことになる。[r]主語がどこ
;ことになるは、推理系/過去モノローグ系です→全画面にしてみる・・・・誰が話しているかわからない

;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
;メッセージレイヤを会話窓用に設定変更　ボタンなしで
[イベントシーン構築ボタン無し版枠茶色]
[葛城宮サイズ通常]
[葛城宮ベース私服]
[葛城宮通常]

[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_toji.png" time=0]
[wait time=10]
[freeimage layer = 29 time=1000]
[wait time=1000]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[メッセージウィンドウ上ボタン表示]
;==========================スクリプト・全画面表示からの復帰準備========================================

#
;情景文
;【SE】鳥たち（複数の鳥の声）
[playse storage=tori_yatyou.ogg loop=false ]
窓辺では小鳥がさえずり、久しぶりの安穏とした時間に身を任せる。[p]
;【SE】ドアノック音(トントン)
[playse storage=door-knock.ogg loop=false ]

[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_futuu.png" time=0]
[wait time=10]
部屋のドアから落ち着いたノック音が耳に入る。[r]
私が、入れ、というと、秘書が姿を現した。[p]
[autosave]

;【SE】ドアが開く
[playse storage=door_open.ogg loop=false ]

[whosay name="秘書" color=%mp.color]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_nayami.png" time=0]
[wait time=10]
「殿下、柏木元大将が今原海相に接触したと、報告がありました」[p]

;【立ち絵】葛城宮 通常

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮ため息]
「柏木元大将は、戦争が自国に益をもたらすと勘違いしている」[p]

「しかも、質の悪い事に退役した今でも彼の支持者は多く、[r]
[sp]富国強兵の考えを持つものは少なくない」[p]

[whosay name="秘書" color=%mp.color]
[葛城宮眉怒り]
[葛城宮目伏]
「今原海相も、このままでは取り込まれるでしょう」[p]


[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮口開]
「柏木元大将は戦争の準備を始めるつもりだろう。[r]
[sp]……火消の対応ばかりに追われても仕方ない。 直接、柏木元大将に[r]
[sp]接触できないだろうか」[p]

[whosay name="秘書" color=%mp.color]
[葛城宮口通常]
「難しいですが、働きかけてみましょう」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮目閉じ]
[葛城宮口ムッ]
「ああ、頼んだ」[p]
*seen_end1
[eval exp="sf.event_katuragi_event_2 = 1"]
[イベントシーン終了]
[イベントシーン終了４]
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
[locate x=580 y=357]
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[locate x=650 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=730 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=810 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=880 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;[メッセージウィンドウ上ボタン表示]
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

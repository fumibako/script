;好感度一定以上 zaizen_11_1_2.ksからの続きです
;=======================お芝居の準備中です==========================================
[stopbgm]
[call target=*11_1_3 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】パーティ会場の控室
[bg wait=true method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/zaizen_paty_hikae.jpg" time=600]
;[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ財前ドレス通常]
[主人公通常]
[財前ベース燕尾服]
[財前通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
これはテストです。実際はつづきからなので、実際との音楽流れ方が違います[p]
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

*seen_1
[er]
;本編ではここ↓に飛んできます。そのためのスクリプト　
;============================================================

#
財前様は私の手を解いて言った。[p]
[if exp="tf.test_gamen == true"]
テストページから開始しています。シナリオ終点にjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=200 top=100 left=380 opacity=0]
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

;【立ち絵】財前：冷ややか
[財前冷ややか]
[whosay name="財前美彬" color="#7a65b2"]
「[名前]さん、私の言いたいことは分ってますか？」
[autosave改]
[wait time=10]
[p]

;【立ち絵】主人公：目伏せ落ち込み
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、 私は貴方との約束を破りました」[p]

（きっと私の事は許してくれないわ）[p]

;【立ち絵】財前：通常
[財前ため息]
[whosay name="財前美彬" color="#7a65b2"]
「分っているなら、 なぜ母を追いかけたのですか？」
[autosave改]
[wait time=10]
[p]

;【立ち絵】主人公：目伏せ落ち込み
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「居ても立っても居られなかったのです」[p]
;【立ち絵】主人公：真剣
[主人公伏目]
[主人公眉下げ下]  
「でも後悔はしていません」[p]

;【立ち絵】財前：ため息
[whosay name="財前美彬" color="#7a65b2"]
[財前不快]
「お人よしですね」
[autosave改]
[wait time=10]
[p]

;【立ち絵】主人公：微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏柔]
[主人公口ほほえみ]
「そうかもしれません、[r]
[sp]けれど財前様がお母様を許せて良かったです」[p]

;【立ち絵】主人公：真剣
[主人公通常]
「私との縁談を破棄しますか？」[p]

[財前通常]
#
財前様は考え込むように暫く黙っていた。[r]
私は黙って財前様を見つめ、次の言葉を待っていた。
[autosave改]
[wait time=10]
[p]

[whosay name="財前美彬" color="#7a65b2"]
;【立ち絵】財前：ため息
[財前ため息]
「まあ今回は大目に見ましょう」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚
[主人公驚]
「……！」[p]

;【立ち絵】財前：微笑み
[whosay name="財前美彬" color="#7a65b2"]
[財前笑み柔和]
「驚く事ですか？　貴方を手放すには惜しいと思います。[r]
[sp][名前]さんは芯も強い。[r]
[sp]祖母と付き合うには貴方ぐらいの方が丁度いい」
[autosave改]
[wait time=10]
[p]
[財前通常]
;【立ち絵】主人公：驚
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公伏目]
[主人公眉下げ下]
[主人公頬染め]
（財前様の柔らかな温かい微笑みを初めて見た）[p]
[財前目パチ1回]
;【立ち絵】主人公：目伏せ頬染
[主人公ほほえみ]
（とても優しい微笑みだわ）
[主人公目通常]
[p]

[whosay name="財前美彬" color="#7a65b2"]
;【立ち絵】財前：通常
[財前通常]
「どうしたんですか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公ほほえみ]
「何でもありませんわ」[p]

[whosay name="財前母"]
「良かった。　[名前]さん、本当にありがとう。[r]
[sp]……貴方達も一曲踊ってはどうかしら？」
[autosave改]
[wait time=10]
[p]

[whosay name="財前美彬" color="#7a65b2"]
;【立ち絵】財前：驚き
[財前驚き]
「またどうしてそんなことを？」[p]

[whosay name="財前母"]
「パーティに華を添えるのもいいでしょう？」[p]

[財前通常]
「こじれるかも知れない原因を作ってしまったんですもの。[r]
[sp]貴方達に、もっと親睦を深めて欲しいの」
[autosave改]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚
[主人公効果消]
[主人公驚]
「私は踊ったことがありません」[p]

[whosay name="財前母"]
「アルベルトのリードは上手よ。[r]
[主人公口通常]
[sp][名前]さんも簡単なステップぐらいなら、すぐ覚えられるでしょう」
[autosave改]
[wait time=10]
[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
[財前目伏]
「……よくご存じで」[p]

[whosay name="財前母"]
[財前通常]
「社交界は広いようで狭いわ。[r]
[主人公眉通常]
[sp]いつも貴方の事を気にかけてました」[p]

[主人公通常]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「私は貴方に対してわだかまりが、完全に消えた訳ではありません」
[autosave改]
[wait time=10]
[p]

[whosay name="財前母"]
「ええ、私はそれだけの事をしてしまったもの。[r]
[sp]私を恨んだままでもいいわ、貴方に幸せになってほしい」[p]

;【立ち絵】財前：目伏せ
[whosay name="財前美彬" color="#7a65b2"]
[財前ため息]
「……もう結構です。[sp][名前]さん、行きましょう」[p]
[財前通常]
#
今度は財前様が私の手を取り、私達は手を繋ぐ。
[autosave改]
[wait time=10]
[p]

;【立ち絵】主人公：目伏せ微笑み頬染め
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（手を繋ぎ、隣に立っているのが、こんなにも嬉しい……）[p]
[fadeoutbgm time=3000]
;手を繋いで
;====================================================================================
[暗転２ storage="bg/test_zaizen_paty1.jpg" time=1500]
;【背景】パーティー会場
[bg wait=true method='crossfade' storage="../fgimage/bg/test_zaizen_paty1.jpg" time=600]
[wait time=600]
;[eval exp="f.haikei_credit=''"]
[暗転２終了]
;====================================================================================
#
階段を下り、パーティ会場に戻る。[r]
まだ余興の時間は、続いていて皆は歓談したり、ダンスを踊っていた。
[autosave改]
[wait time=10]
[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
[財前通常]
「……こんな目立つ場所で、母の話などもう充分です。[r]
[sp]母の言葉に従うのは癪ですが、ダンスを教えましょうか？」[p]



;【立ち絵】主人公： 驚
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ですが！」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
[主人公口通常]
「簡単なステップならすぐに覚えられるでしょう。[r]
[sp]今後の為にもいいでしょうし」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】春の声（ダンスシーン等）
[playbgm storage="waltz_harunokoe50.ogg" loop=true]
[eval exp="f.bgm_storage='waltz_harunokoe50.ogg'"]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公眉下げ下]
[主人公伏目]
[主人公頬染め]
「ええ……ではよろしくお願いします」[p]
;====================================================================================
[暗転２ storage="bg/bg_syanderia.jpg"]
[財前退場]
;【背景】シャンデリア　実際にダンスで動かせないので想像で補ってもらう　仮背景
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_syanderia.jpg" time=50]
[eval exp="f.haikei_credit=''"]
[暗転２終了]
;====================================================================================
#
[whosay name="財前美彬" color="#7a65b2"]
「[名前]さん、そこで右足を前に……。[r]
[sp]そう、上手です。私に合わせて下さい」[p]

;財前様のリードは完璧だった。[r]
;私はぎこちないながらも、足を動かし姿勢を整え、なんとか[r]
;ついていった。
[autosave改]
[wait time=10]
[p]

#
財前様は私のぎこちない動きに歩幅や動きを[r]
合わせながらも優雅な動作をされていた。[p]

#
つられているのか、私はいつの間にか[r]
拙いながらも軽やかなステップを踏んでいた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目伏せ頬染
[主人公憂い]
[主人公頬染め]
（財前様がこんなに近い……。[r]
[sp]高鳴る私の胸の音が聞こえないか心配だわ）[p]

[主人公目閉じ]

[whosay name="パーティ客女性一" color="#807070"]
「まあ！[sp]初々しいこと。財前様も楽し気ではなくて？」[p]

[whosay name="パーティ客女性二" color="#807070"]
「……残念ですわ。私の娘を財前様の婚約者にと考えておりましたのに」[p]

#
いつの間にか、パーティ客に注目されていた。[p]

[主人公目大]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（視線が痛いわ）[p]

「あ！」[p]

[主人公憂い]
#
財前様の足を踏みそうになり、[r]
慌てて体制を立て直そうとしてバランスを崩した。[p]

[whosay name="財前美彬" color="#7a65b2"]
「[名前]さん！」[p]
[主人公驚]
#
転ぶと思った瞬間、私は財前様の腕の中にいた。[r]
驚いて私はさっと離れる。[p]
[主人公ポーズ財前ドレス片手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「申し訳ありませんわ！」[p]


#
そんな私に財前様は柔らかく微笑む。[p]

;【立ち絵】財前：微笑み
[whosay name="財前美彬" color="#7a65b2"]
「そう緊張することはないですよ。 初めてにしては上出来でしたよ」[p]
[autosave改]
[wait time=10]
[p]

[主人公眉下げ下]
[主人公目閉じ]
[主人公口通常]
[whosay name="パーティ客女性一" color="#807070"]
「仲がよろしいことですわね」[p]

[whosay name="パーティ客男性" color="#807070"]
「全くだな」[p]
[主人公ポーズ財前ドレス通常]
[主人公憂い]
#
周囲の方々は優しかったけれど、私はいたたまれなくなった。[p]

;【立ち絵】主人公：目伏せ困り頬染
[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様はこんなことも慣れているのね。　……きっと多くの女性と踊ったのだわ）[p]

;【立ち絵】主人公 : 目閉じ[r]
[主人公目閉じ]
（今度は胸がズキズキする……なぜなの？）[p]
[fadeoutbgm time=3000]

[暗転１]
#
パーティは閉会の時間を迎え、[r]
私は自分の気持ちに戸惑いながら、財前様に送られ家に帰った。[p]

*seen_end1
;====================================================================================
[eval exp="sf.event_zaizen_11_1 = 1"]
[イベントシーン終了]
[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[endif]
@jump storage="test_zaizen.ks"
[s]

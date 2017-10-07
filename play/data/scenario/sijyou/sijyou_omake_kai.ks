;おまけシナリオ　1_3終に発生
*replay_sijyou_omake_kai
[image name="loding_pic" layer=1 storage="bg/bg_kinari_sakura.jpg" time=1000]
[image name="loding_pic" layer=1 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[stopbgm]
;/////////準備/////////
;表示遅れによるエラー修正
[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_rouka.jpg" wait=true]
;[preload storage="data/fgimage/bg/ B4nFWraU42/bg_sijyou_genkan_hole.jpg"]
;[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_kai_room.jpg" time=2000]
[call target=*start storage="macro_tati_sijyou.ks"]
;/////////準備おわり/////////
[iscript]
$('.loding_pic').remove();
[endscript]
;//////////////////
;=================================================================================_
;【背景】四条邸宅玄関ﾎｰﾙ
[freeimage layer = 1]
[wait time=10]
[bg wait=true method="crossfade" storage="../fgimage/bg/B4nFWraU42/bg_sijyou_genkan_hole.jpg" time=600]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[イベントシーン構築ボタン無し版枠茶色]
[メッセージウィンドウ上ボタン表示]
早春、四条家にて――。[p]
;季節はｲﾍﾞﾝﾄに合わせて調整
*seen0
;【SE】物音（ガタン・バタン）
[playse storage=gatanbatan.ogg loop=false ]
[whosay name="四条父" color="%mp.color"]
「今日は、やけに二階が騒がしいな」[p]
[whosay name="四条母" color="#9B608B"]
「聞いてよ！[r]
[sp]華織と[華衣]だけで、部屋の荷物の入れ替えを[r]
[sp]してるみたいなの！」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
[if exp="tf.test_gamen == true"]
テストページからプレイしています。イベント終わりまで移動しますか？[r]

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
移動します。[p]
[cm]
@jump target=*seen_end
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]
[whosay name="四条母" color="#9B608B"]
「ああ、せめて私も手伝ってあげたいのだけど、[r]
[sp]アナタからもちょっと言って！」[p]
[whosay name="四条父" color="%mp.color"]
「[ruby text=メイ]女[ruby text=ド]中にやらせれば、いいじゃないか？」[p]
[whosay name="四条母" color="#9B608B"]
「それが華織にダメって言われてしまったのよ……！」[p]
[whosay name="四条父" color="%mp.color"]
「ほぉ？ またそれは珍しいことを」[p]
[whosay name="四条母" color="#9B608B"]
「珍しいでしょ？　あの子が私達に　ダメ。　なんて！ [r]
[sp]はぁ……」[p]
[whosay name="四条父" color="%mp.color"]
「何でかって聞いてるのかい？」[p]
[whosay name="四条母" color="#9B608B"]
「"大事なものだから、ダメ。"　としか聞いてないのよ」[p]
[whosay name="四条父" color="%mp.color"]
「そうか。まあ、[名字]家のお嬢さんを迎えるにあたって[r]
[sp][華衣]にお古でもあげているのだろうよ」[p]
[whosay name="四条母" color="#9B608B"]
「それなら新しい部屋は用意してあるわよ？」[p]
[whosay name="四条父" color="%mp.color"]
「……華織のおかげで、[華衣]が帰ってきたんだ。[r]
[sp]そっとしておこうじゃ[r]
[sp]ないか」[p]
[whosay name="四条母" color="#9B608B"]
「もう、アナタは新聞の続きが読みたいだけでしょ？」[p]
[whosay name="四条祖母" color="%mp.color"]
「ほおっておきなさい。[r]
[sp]それよりも私達には、他にやることがありますわ」[p]
[whosay name="四条母" color="#9B608B"]
「は、はい……」[p]
[fadeoutbgm time=3000]
[whosay name="四条祖父" color="#888898"]
（騒動の引き金になってしまった、ワシは何も言うまい）[p]
;=================================================================================_
*seen1_a
#
[bg wait=true method="crossfade" storage="toumei.gif" time=1000]
;↓背景透明度を長めの時間かけて変更する際に、なぜかwait=trueを入れていても表示不具合が複数回発生したためtime=50とすこし長めにとっています。◆jsYiJcqRkk
[wait time=50]
#
一方、二階では。[p]
[bg wait=true method="crossfade" storage="../fgimage/bg/B4nFWraU42/bg_sijyou_rouka.jpg" time=2000]
[wait time=50]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[whosay name="四条 華衣" color=%mp.color]
「お、重い！！　なんで俺だけ！？　手伝えよ！！」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】みちくさ（楽しいお出かけの場面、すこしコミカルな場面などに
[playbgm storage="michikusa.ogg" loop=true]
[eval exp="f.bgm_storage='michikusa.ogg'"]
[endif]
;【SE】箱を閉めたり置く(パタン)
[playse storage=box_close_oku.ogg loop=false ]
[whosay name="華織" color="olivedrab"]
「もし、僕が運んで、君の大事なものを[r]
[sp]ウッカリ壊しても文句は言わないのかい？」[p]
#
[華衣]は、華織の部屋に留めておいた"[華衣]の婚約者"の荷物を[r]
運んでいたのだった。[p]

[whosay name="四条 華衣" color=%mp.color]
「それなら、[ruby text=メイ]女[ruby text=ド]中をよこせよっ。[r]
[sp]アイツらならヘマもしないだろ！？」[p]
[whosay name="華織" color="olivedrab"]
「大切な人の荷物も運べずして、何ができる？[r]
[sp]華衣は、いまいち行動に重みがないね」[p]
;高度なダジャレ？
[whosay name="四条 華衣" color=%mp.color]
「！　…… わかったよ！ 運ぶに決まってるだろ？！」[p]
[whosay name="華織" color="olivedrab"]
「その言葉使いは改めた方がいいよ」[p]
[whosay name="四条 華衣" color=%mp.color]
「あー　うるさい！　」[p]
[whosay name="華織" color="olivedrab"]
「僕は[名前]さんと暮らす部屋の確認をするから、[r]
[sp][華衣]は、適当にほしいものを持っていってくれ」[p]
[whosay name="四条 華衣" color=%mp.color]
「へい、へい」[p]
[fadeoutbgm time=3000]
[whosay name="華織" color="olivedrab"]
「返事は一回でいいよ、じゃぁ頑張って下さい」[p]
;=================================================================================_
*seen1
;足音去っていく
;【SE】落ち着いた足音（フェードアウト）
[playse storage=isono_out.ogg loop=false ]
[bg wait=true method="crossfade" storage="../fgimage/bg/B4nFWraU42/bg_sijyou_genkan_hole.jpg" time=600]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[stopse]
[whosay name="華織" color="olivedrab"]
（ふぅ……兄とは、かくも大変なものですね。文矢）[p]
[whosay name="華織" color="olivedrab"]
（これも、本来の兄としての義務をサボっていたツケでしょうか……）[p]
#
[bg wait=true method="crossfade" storage="toumei.gif" time=1000]
[wait time=50]
[bg wait=true method="crossfade" storage="../fgimage/bg/B4nFWraU42/bg_sijyou_kai_room.jpg" time=2000]
[wait time=50]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[whosay name="四条 華衣" color=%mp.color]
「……なんだよ、昔は[r]
[sp]『華衣、忘れ物はないかい？きちんと歯は磨いたかい？』[r]
[sp]って[ruby text=うるさ]煩かったのに」[p]
;ガサゴソSE
[whosay name="四条 華衣" color=%mp.color]
「あ……これ……俺がアイツにあげた壺だ」[p]
;【SE】壺を置く（コトリ）
[playse storage=tya_yunomi_oku.ogg loop=false ]
[whosay name="四条 華衣" color=%mp.color]
「アイツ、いつも金に困ってたから、金を渡そうとしたら怒ってきて……[r]
[sp]それで代わりに出店で見つけた壺を買ってきたんだっけ……」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】海風と沈む太陽（しっとりと想うシーン、回想シーンなどに
[playbgm storage="sittori_umikaze.ogg" loop=true]
[eval exp="f.bgm_storage='sittori_umikaze.ogg'"]
[endif]
[whosay name="四条 華衣" color=%mp.color]
「『売っぱらえよ』って言ったのに、まだ持ってたのか……」[p]
[stopse]
;お約束
[whosay name="四条 華衣" color=%mp.color]
「後で花でも生けておくか」[p]
[whosay name="四条 華衣" color=%mp.color]
「こっちは日誌か。　男子すなるものってやつを[r]
[sp]よくも、こうも書いたものだな」[p]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
[whosay name="四条 華衣" color=%mp.color]
「………音頭寝刀の合言葉だ、ジジイに内緒で会いに行ったな………」[p]
[stopse]
[whosay name="四条 華衣" color=%mp.color]
「…………………」[p]
[whosay name="四条 華衣" color=%mp.color]
「――泣かねぇよ、もう……」[p]
[whosay name="四条 華衣" color=%mp.color]
「幸せが訪れるのを待ってるって言ってたから」[p]
[whosay name="四条 華衣" color=%mp.color]
「なぁ、俺に何ができるかな？ 華道もダメ、勉強もダメ。[r]
[sp]そんな俺に出来ることって何がある？」[p]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
#
[華衣]は、尋ねるように日誌を眺める。[p]
[whosay name="日誌" color="%mp.color"]
『……華族、動じず前をむくべし。趣味はお国のために貢献すべし』[p]
[whosay name="四条 華衣" color=%mp.color]
「国は無理だけど、お前の役に立つことは探さないとな[r]
[sp]……何も出来ないけどさ」[p]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
[whosay name="日誌" color="%mp.color"]
『無は有を産むべきもの。[r]
[sp]自身の定めしもの見つけるべし。[r]
[sp]――決して悲観されがたし。皆、初めは無であった』[p]
[whosay name="四条 華衣" color=%mp.color]
「初めは無……」[p]
[whosay name="四条 華衣" color=%mp.color]
「わかったよ……。[r]
[sp]けど、もう少し、待っててほしい」[p]
[whosay name="四条 華衣" color=%mp.color]
「はぁ。　ちょっと思いついちまったことが、[r]
[sp]俺ひとりじゃ、まだ出来そうになさそうだからさ」[p]
;=================================================================================_
*seen2
#
・・・・・・[p]
[bg wait=true method="crossfade" storage="../fgimage/bg/B4nFWraU42/bg_sijyou_genkan_hole.jpg" time=600]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[whosay name="華織" color="olivedrab"]
（さて、そろそろ手伝おうかな）[p]
[bg wait=true method="crossfade" storage="toumei.gif" time=1000]
[wait time=50]
[whosay name="華織" color="olivedrab"]
「[華衣]、大変だったら……」[p]
[bg wait=true method="crossfade" storage="../fgimage/bg/B4nFWraU42/bg_sijyou_kai_room.jpg" time=2000]
[wait time=50]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[whosay name="華織" color="olivedrab"]
「[華衣]？」[p]
;[whosay name="四条 華衣" color=%mp.color]
;「う……ん……もう少し、待って……ほし……な……」[p]
[whosay name="華織" color="olivedrab"]
（ああ、寝てるじゃないか……）[p]
[whosay name="華織" color="olivedrab"]
「僕が生けた花をそのまま壺に突っ込んじゃって……[r]
[sp]せめて花の向きは揃えて……」[p]
;暗転
[bg wait=true method="crossfade" storage="toumei.gif" time=1000]
[wait time=50]
[whosay name="華織" color="olivedrab"]
（いいや、そのままにしておくべきだ……そっとしておこう）[p]
#
派手な壺に不揃いな花が並ぶ。[r]
時が経てば凛と前を向く花が並ぶのだろうか。[p]
[bg wait=true method="crossfade" storage="../fgimage/bg/B4nFWraU42/nerine_img.jpg" time=2000 wait=false]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
その花は、また誰かに幸せを与え、新しい花を咲かすことを願っている。[p]
;=================================================================================_
*seen3
*seen_end
[eval exp="sf.event_sijyou_1_3 = 1"]
[イベントシーン終了]

[イベントシーン終了４]

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

;=============================================
;イベント１４回目【藤枝の留学辞退】2月3週、
*replay_hujieda_2_3
;=======================お芝居の準備中です=================================
[stopbgm]
[call target=*2_3 storage="hujieda/preload_hujieda.ks"]
[call target=*start storage="macro_tati_hujieda.ks"]
[freeimage layer = 1]
[wait time=10]
[bg wait=true method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/ongakurensyuusitu.jpg" time=30]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
[イベントシーン構築ボタン無し版枠茶色]
#
;【立ち絵】藤枝：ため息
[藤枝ベース私服]
[藤枝困り]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

[whosay name="藤枝 肇" color=%mp.color] 
「この短期間でこの難曲を弾きこなすのは難しいな。[r]
[sp]あと数日後だというのに……」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]


;------------------------------------------------------
[if exp="tf.test_gamen == true"]
テストページからプレイしています。イベント終わりまで移動しますか？[r]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
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
@jump target=*seen_end
[s]

*jump_no
[er]
[current layer="message0"]
[resetfont]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]

[endif]
;------------------------------------------------------


;【立ち絵】藤枝：落ち込み
[藤枝憂い]
（課題曲は、リストの超絶技巧練習曲集第三番「ラ・カンパネッラ」[r]
;[藤枝目閉]
[sp]学校の練習室を早朝に数時間借りて練習し、譜面通り弾ける様に[r]
[sp]なったけど……自分の思う音色にはほど遠い）[p]


;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

[手紙主人公]
藤枝 肇 様へ[l][r]
[r]
[sp]　春の浅けきみぎり藤枝様においては[r]
お忙しく毎日をお過ごしのことと拝察いたしております。[r]
[sp]私は日々藤枝様の事を案じております。[r]
[r]
[sp]ときに私は友人より藤枝様の留学について[r]
三人枠が一人枠となり二月の演奏会により[r]
その留学者が決まると知らせて頂きました。[r]
[r]
[sp][sp]毎日練習時間が取れない中、藤枝様は[r]
[sp][sp]プレッシャーや色々なものとたたかい練習を[r]
[sp][sp]　           頑張っていられるのでしょう。[p]
;アイコンにかかります
[sp]私は以前お手紙でいつか私も藤枝様に[r]
何かを返せるといいと書きました今がそのときかも知れません。[r]
[r]
[sp]私も藤枝様の背中を押します。[r]
[r]
[sp]覚えておられるでしょうか？[r]
私がお[ruby text=こと]箏の練習でくじけそうになったとき、藤枝様は、[r]
[sp]『焦らずとも貴方様は丁寧にお[ruby text=こと]箏を[r]
慈しみ優しく弾けていました。[r]
[sp]必ず上達できる方だと思います。[r]
[sp]初心を忘れずゆっくり上達していきましょう』と[r]
[sp][sp]書いてくださいました。[p]
;アイコンにかかります
[sp]私もその言葉をお返ししましょう。[r]
藤枝様は音楽とピアノを慈しんでおられます。[r]
今の藤枝様に時間はありませんが、[r]
きっと素晴らしいピアノの演奏をされるでしょう。[r]
[r]
[sp]私がもう藤枝様に会うことも[r]
藤枝様のピアノを聴くこともなくても[r]
ずっと私は藤枝様の事を応援し続けます。[p]
[sp]私は、今は藤枝様の夢が叶うことを願っているのです。[r]
[r]
[sp]心から貴方をお慕いし、綺麗な感情だけが残って[r]
います。[r]
;次の段落にも「ただ」はかかるので、「ただ」ははじめだけに。
[sp]この感情をきっと愛と呼ぶのでしょうか。[r]
[r]
[sp]心から貴方の今後が、幸多い事をお祈りしています。[r]
[sp]藤枝様、どうかお元気で。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　[名字][名前][p]
[手紙読了]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

#
この手紙を読み返し励まされながら[r]
わずか一か月の練習時間で、この難曲を諦めずに取り組み、[r]
ここまで弾けるようになった。[p]

[fadeoutbgm time=3000]
;【立ち絵】藤枝：目閉じ
[藤枝真剣]
[whosay name="藤枝 肇" color=%mp.color] 
（僕も最後まで自分の演奏を諦めない……）[p]

;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[wait time=1000]
[藤枝退場]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
数日後。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
#
;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;【背景】主人公邸 庭の見える部屋：昼
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50]
[wait time=10]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[freeimage layer = 29 time=1000]
[wait time=1000]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[メッセージウィンドウ上ボタン表示]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目パチ1回]
「今日は時子さんが来られるの。一緒に外出していいかしら？」[p]


[whosay name=磯野 color="dimgray"]
「まあ、息が詰まるのも分りますが、女中を一人控えさせて[r]
[sp]いただきます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：ため息
[主人公憂い]
「もう藤枝様と、お別れの挨拶をしてから三ヶ月も経ちました。[r]
[sp]それに時子さんとも、お約束をしているのです」[p]

[whosay name=磯野 color="dimgray"]
「どちらに行かれるのですか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公通常]
「さあ、時子さんのお兄様が、とある舞台に連れて行って下さるとか」[p]
[主人公目パチ1回]
（きっと気晴らしになる場所なのだわ）[p]

[whosay name=磯野 color="dimgray"]
「最近、お稽古も熱心に取り組んでおられますし、仕方ないですね」[p]

[主人公憂い]
#
磯野に藤枝様の話は、あれからしていない。[r]
話をするだけで磯野が悲しそうな顔をするからだ。[p]

[whosay name="女中"]
「三宮家の時子様が、いらっしゃいました」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
「出かけて参ります」[p]
[whosay name=磯野 color="dimgray"]
「わかりました。　お嬢様、お気をつけて」[p]

#
;============================================================================================
[主人公目閉]
[暗転１]
;【背景】主人公邸 玄関　
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_genkan.jpg" time=1000]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公ほほえみ]
;============================================================================================
[whosay name="三宮　時子" color="#c25232"]
「さ、[名前]さん。 お車にお乗りになって！」[p]
[主人公ポーズ通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公照れ目普通]
「ええ、お邪魔しますわ。[r]
[sp]ところで、どこに行くのですか？」[p]

[whosay name="三宮　時子" color="#c25232"]
「それは秘密ですわ」[p]
#
;============================================================================================
[暗転２]
[eval exp="f.haikei_credit='photo by ◆I9IhvvVdPo'"]
[bg wait=true method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/ensoukaijyou.jpg" time=1000]
[wait time=10]
[暗転２終了]
[layopt layer=fix visible=true]
;============================================================================================
[主人公目パチ1回]

#
時子さんに連れられて、降りた場所は、大きなロマネスク式の市民会館。[r]
すぐ近くには案内板があり、観劇や講演会の予定が提示されていた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「時子さん。　今日は、どの様な舞台を見られるの？」[p]

#
市民会館の入り口には、多くの人がチケットを手に詰め寄せていた。[p]

[whosay name="三宮　時子" color="#c25232"] 
「藤枝様達の演奏会は一般公開されると聞いて、[r]
[sp]お父様のコネを使いました。[r]
[sp]私達も入れる様に口をきいてもらっています」[p]
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"] 
「！」[p]

[whosay name="三宮　時子" color="#c25232"]
「藤枝様を見に来られた方が多いのかしら？　[r]
[sp]座りづらくなる前に行きましょう」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[主人公口笑顔小]
「ありがとうございます。 時子さん」[p]
[主人公口ほほえみ]
;============================================================================================
[暗転２]
[主人公通常]
;【背景】観客席
[eval exp="f.haikei_credit='　　'"]
[bg wait=true method='crossfade' storage="../fgimage/bg/hujieda_kyakuseki.jpg" time=100]
[wait time=10]
[暗転２終了]
;============================================================================================
;【立ち絵】主人公：真剣
[主人公口通常]
[主人公眉下げ下]
[主人公目大]
[whosay name="三宮　時子" color="#c25232"]
「演奏者は三人、候補を外れた女性の方も演奏されて[r]
[sp]三人は、課題の "ラ・カンパネッラ"[r]
[sp]それから自由曲の二曲を弾くのですって」[p]

「藤枝様の演奏は、最後だそうよ」[p]
[主人公眉通常]
[主人公目閉]
[fadeoutbgm time=3000]

;============================================================================================
[eval exp="f.haikei_credit='　　'"]
;【背景】室内音楽堂（近景）
[暗転２ storage="bg/situnaiongaku.jpg" time=1100]
[bg wait=true method='crossfade' storage="../fgimage/bg/situnaiongaku.jpg" time=100]
[wait time=10]
;藤枝さん用構築かくし↓
[表示準備 storage="bg/situnaiongaku.jpg"]
;【立ち絵】主人公：真剣
[主人公口通常]
[主人公眉下げ下]
[主人公目大]
[暗転２終了]
[call target=*start storage="macro_tati_hujieda.ks"]
;============================================================================================
;静かな緊張感
#
二人の演奏が終わり、舞台の裾から藤枝様が姿を現す。[p]
;==========
;【立ち絵】藤枝：微笑み
[藤枝ベース私服]
[藤枝微笑み]
[表示開始 time=300]
[wait time=10]
;==========

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公眉下げ下]
[主人公目伏柔]
[主人公頬染め]
（一目会えただけで、こんなにも嬉しい）[p]
#
私は、その姿を見ただけで泣きそうになった。[p]

彼は、客席に一礼し、私と視線が合う。[p]

[藤枝驚き]
[whosay name="藤枝 肇" color=%mp.color] 
「！！」[p]

[藤枝微笑み]
[whosay name="藤枝 肇" color=%mp.color] 
（……見守って下さるのですね）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】海風と沈む太陽（しっとりと想うシーン、回想シーンなどに
[playbgm storage="sittori_umikaze.ogg" loop=true]
[eval exp="f.bgm_storage='sittori_umikaze.ogg'"]
[endif]

#
私たちは見つめ合い、お互いの感情を確かめ合った。[p]
[主人公目閉じ]
私が頷くと藤枝様は決意した様子で、ピアノの椅子に座り、[r]
吸い込まれるようにして鍵盤に指を置いた。[p]


;【立ち絵】藤枝：目閉じ
[藤枝目閉じ]
[whosay name="藤枝 肇" color=%mp.color] 
（貴方が来てくれた、それなら僕は何も恐れることはない）[p]
;===================================ピアノを弾くシーンはじまり=================================================
[暗転２ storage="bg/situnaiongaku.jpg" time=1100]
[wait time=10]
[藤枝退場]
;メッセージレイヤを非表示します。
@layopt layer=message0 page=fore visible=false
;準備中の上にのせて
;消えている瞬間を隠す
[主人公退場]
;会話ウィンドウ消去 メッセージあると何の画像かわからない
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
;===================================藤枝を表準備します。=====================================================
;ピアノベース藤枝(目なし)レイヤー１
[image name=piano_base storage="bg/B4nFWraU42/hujieda_piano_base.png" layer=1 time=50 visible=true zindex=1]
[wait time=50]
;ピアノベース藤枝(目のみ通常１)レイヤー１ new
[chara_new name="piano_base_me" storage="bg/B4nFWraU42/hujieda_piano_me_futuu.png" layer=2 top=1]
;ピアノベース藤枝(目のみ通常１)レイヤー１ show
[chara_show name="piano_base_me" layer=2 left=1]
[wait time=10]
;===================================藤枝を表準備完了です。====================================================
;藤枝ピアノベースを表示します。
[freeimage layer=29 time=800]
[wait time=800]
;表情切り替えをします。 一瞬目が消えしまう
;ピアノベース藤枝(目のみ閉じ1)合体表示 レイヤー１
[chara_mod name="piano_base_me" storage="bg/B4nFWraU42/hujieda_piano_me_fusi1.png" time=0 wait=false]
;[wait time=10]
;ピアノベース藤枝(目のみ閉じ2)合体表示 レイヤー１
[chara_mod name="piano_base_me" storage="bg/B4nFWraU42/hujieda_piano_me_fusi2.png" time=20]
;ピアノベース藤枝(目のみ閉じ2)合体表示 レイヤー１
[chara_mod name="piano_base_me" storage="bg/B4nFWraU42/hujieda_piano_me_toji.png" time=100]
[wait time=100]
;===========================再構築中==================================
;ピアノベース他を消去と再構築するために被せます。
[暗転２]
;被せた後にピアノベースを消去します。
[iscript]
$('.piano_base').remove();
$('.piano_base_me').remove();
[endscript]
[wait time=10]
;【変更】背景を暗転の中から表す（遠景）
[bg wait=true method='crossfade' storage="../fgimage/bg/situnaiongaku2.jpg" time=50]
[wait time=10]
;会話ウィンドウを表示します。 
[chara_mod name="message_bg" storage=&f.message_storage time=1]
[wait time=10]
[主人公ポーズ通常]
[主人公通常]
;メッセージレイヤを表示します。
@layopt layer=message0 page=fore visible=true
[暗転２終了]
[wait time=10]
;======================再構築おわります======================================
;============================ピアノを弾くシーンおわり=================================================

[主人公目閉じ]
#
藤枝様の音はミルクホールでも聴いたことがあったけれど[r]
今日は一段と、遠く哀愁のメロデイが響き渡っていた。[p]

;==============================================================================
;【イメージ】キラキラ透過素材 layer=13 ゆっくり消したいので13を使用
[image name="oto" storage="bg/B4nFWraU42/bg_hujieda_kirakira.png" layer=13 time=2000 left=1 visible=true]
[wait time=10]
;==============================================================================
#
鬼気迫る力強い旋律でありながら、[r]
どこまでも繊細で、一点の曇りのない音色に心打たれる。
[wait time=2000]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（こんなにも心に響く音を聴くのは初めてだわ）[p]

;=======================================
;【イメージ】キラキラ透過素材を消去
[freeimage layer=13 time=800]
[wait time=800]
;=======================================
[暗転１]
#
藤枝様の音色にこれほどの力強さは、ミルクホールの演奏になかった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（留学への決意の強さなのかしら……曲が終わっても余韻がすごい）[p]
;SE拍手長め
;【SE】拍手（コンサートホール）
[playse storage=hakushu_concert.ogg loop=false ]
;============================================================================================
[暗転２]
;【背景】観客席　暗転のほうがいいかも
[eval exp="f.haikei_credit='　　'"]
[bg wait=true method='crossfade' storage="../fgimage/bg/hujieda_kyakuseki.jpg" time=100]
[wait time=10]
[暗転２終了]
;============================================================================================
#
[主人公柔和ほほえみ１]
彼の全てを引き出したその音色は、聴取を魅了するには十分だった。[r]
まだ一曲目の課題曲だというのに皆は立ち上がり、盛大な拍手が沸き上る。[p]
;【SE】拍手（コンサートホール）位置は実際にきいて変更
;[playse storage=hakushu_concert.ogg loop=false ]
;============================================================================================
[eval exp="f.haikei_credit='　　'"]
[暗転２ storage="bg/situnaiongaku.jpg" time=1300]
[wait time=10]
[bg wait=true method='crossfade' storage="../fgimage/bg/situnaiongaku.jpg" time=100]
[wait time=10]
;藤枝さん用構築かくし↓
[表示準備 storage="bg/situnaiongaku.jpg"]
[wait time=10]
[暗転２終了]
[wait time=10]
[call target=*start storage="macro_tati_hujieda.ks"]
;============================================================================================

;==========
;【立ち絵】藤枝：微笑み
[藤枝ベース私服]
[藤枝通常]
[表示開始 time=300]
[wait time=10]
;==========
[藤枝目閉じ]
#
観客の歓声に[ruby text=こた]応えて藤枝様は、一礼する。[r]
そして藤枝様は、思いもよらない事を口に出した。[p]

[fadeoutbgm time=3000]
;【立ち絵】藤枝：通常
[藤枝通常]
[藤枝口開]
[whosay name="藤枝 肇" color=%mp.color] 
「演奏を聴いて下さりありがとうございました。[r]
[sp]この場にいられることも僕は誇りに思います」[p]

「ですが、僕は独逸留学を辞退します」[p]



[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公驚]
（え！）[p]

;【SE】人々のざわめき（ザワザワ…コンサート等ホール会場）
[playse storage=zawa_hall.ogg loop=false ]
#
ざわざわと周囲が話し始める。[p]

[whosay name="音楽留学関係者"]
「静粛に！　
[stopse]
藤枝君それはどうしてかね？」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

;【立ち絵】藤枝：真剣
[whosay name="藤枝 肇" color=%mp.color] 
[藤枝真剣]
「僕は今、大切にしたい人がいます」[p]

[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（まさか私の為に夢を諦めてしまうの？）[p]

;【立ち絵】藤枝：目閉じ
[藤枝目閉じ]
「留学は次の機会にします。[r]
[sp]僕は今、留学したら逆に叶わなくなる事があると気付きました。[r]
[sp]だから今は留学できません」[p]

[whosay name="原"]
「まて！　藤枝。 お前は全てを棒に振る気か？」[p]

;【立ち絵】藤枝：目伏せ
[whosay name="藤枝 肇" color=%mp.color] 
[藤枝伏目]
「原……僕はね、ずっと色々なものを諦めてきた。[r]
[sp]家の為だとか、周囲に押し流されてきた」[p]

[主人公眉下げ下]
[主人公目伏]

[whosay name="藤枝 肇" color=%mp.color] 
[藤枝伏目パチ1回]
「努力はしても、いつも諦めてきたんだ」[p]

[whosay name="藤枝 肇" color=%mp.color] 
;【立ち絵】藤枝：真剣
[藤枝真剣]
「でも今、音楽も彼女も諦めるつもりもなくなった」[p]

[whosay name="藤枝 肇" color=%mp.color] 
「僕はもう自分の気持ちを殺そうとは思わない。[r]
[sp]もう一度音楽学校に戻って一からやり直し、留学の機会も[r]
[sp]自分で切り開くつもりだ」[p]

[主人公眉下げ下]
[主人公頬染め]

[whosay name="音楽留学関係者"]
「君はそれで後悔しないのかね？」[p]

;【立ち絵】藤枝：微笑み
[藤枝笑顔大]
[whosay name="藤枝 肇" color=%mp.color] 
「はい！」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公目閉じ]
（藤枝様！）[p]

[whosay name="音楽留学関係者"]
「惜しいがそれでは何も言うまい、[r]
[sp]折角の機会なので最後に自由曲も弾いていくといい」[p]

;【立ち絵】藤枝：微笑み
[藤枝微笑み]
[whosay name="藤枝 肇" color=%mp.color] 
「ありがとうございます。[r]
[sp]僕の自由曲は、ショパンの別れの曲でしたが、[r]
[sp]別の曲に変えていいですか？」[p]

[主人公眉下げ下]
[主人公目伏]

[whosay name="音楽留学関係者"]
「構わない。 どの曲かね？」[p]

;【立ち絵】藤枝：通常
[藤枝目伏せ照れ]
[whosay name="藤枝 肇" color=%mp.color] 
「リストの愛の夢三番、"おお、愛しうる限り愛せ" を」[p]

[whosay name="原"]
「お前、甘い曲は苦手じゃなかったか？」[p]

;【立ち絵】藤枝：微笑み
[藤枝笑顔]
[whosay name="藤枝 肇" color=%mp.color] 
「そうだったけど今、すごく弾きたいから」[p]

[whosay name="音楽留学関係者"]
「[ruby text=ひ]弾くといい。　皆、持ち場に戻りなさい」[p]

;============================================================================================
[暗転２]
;【背景】ピアノホール（遠景）
[bg wait=true method='crossfade' storage="../fgimage/bg/situnaiongaku2.jpg" time=50]
[wait time=10]
[藤枝退場]
[主人公目通常]
[主人公口ほほえみ]
[暗転２終了]
;============================================================================================
#
再び藤枝様はピアノに向かい音を紡いだ。[p]

;==============================================================================
;【イメージ】キラキラ透過素材 layer=13 ゆっくり消したいので13を使用　キラキラも別バージョンがあるといいですね
[image name="oto" storage="bg/B4nFWraU42/bg_hujieda_kirakira.png" layer=13 time=2000 left=1 visible=true]
;==============================================================================

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目閉じ
[主人公目閉じ]
[主人公頬染め]
（ピアノの優しくて甘い旋律が、この場の雰囲気を包んでいる……）
[wait time=2000]
[p]

（本当になんて、綺麗な音なのかしら）[p]
;=======================================
;【イメージ】キラキラ透過素材を消去
[freeimage layer=13 time=800]
[wait time=800]
;==============================================================================
;【背景】室内音楽堂（近景）
[暗転２ storage="bg/situnaiongaku.jpg" time=1100]
[wait time=10]
[bg wait=true method='crossfade' storage="../fgimage/bg/situnaiongaku.jpg" time=100]
[wait time=10]
;藤枝さん用構築かくし↓
[表示準備 storage="bg/situnaiongaku.jpg"]
;【立ち絵】藤枝:真剣
[藤枝ベース私服]
[藤枝通常]
[暗転２終了]
[wait time=10]
;==============================================================================

;==========
;【立ち絵】藤枝：微笑み
[藤枝ベース私服]
[藤枝通常]
[表示開始 time=300]
[wait time=10]
;==========
[藤枝目閉じ]
#
曲が終わると藤枝様は、皆に礼をする。[r]
そして、私の方を向いた。[p]
[autosave]
;【立ち絵】藤枝：真剣
[藤枝真剣]
[whosay name="藤枝 肇" color=%mp.color] 
（……貴方が好きだ、もう諦めない）[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：照れ目普通
[主人公眉下げ下]
[主人公目伏]
（藤枝様は覚悟をみせてくれた。[r]
[sp]今度は私がお父様を説得する番ね。　私も藤枝様を諦めないわ）[p]
[fadeoutbgm time=3000]
#
;============================================================================================
[暗転２]
[藤枝退場]
;【背景】主人公邸 玄関 　主人公退場とメッセージ消すのは構築遅いので、やめよう
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_genkan.jpg" time=1000]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公通常]
[暗転２終了]
;============================================================================================

[whosay name="三宮　時子" color="#c25232"]
「[名前]さん。 説得、頑張ってくださいね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公ほほえみ]
「時子さん、今日は本当にありがとうございました！」[p]
[whosay name="三宮　時子" color="#c25232"]
「ええ、恋が叶うといいですね」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
#
;============================================================================================
[暗転２]
;【背景】主人公邸 庭の見える部屋：昼
 [bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=1000]
[wait time=10]
 [eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
 [主人公通常]
[暗転２終了]
;============================================================================================

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目パチ1回]
「ただいま帰りました」[p]
[autosave]
[whosay name=磯野 color="dimgray"]
「お帰りなさいませ、お嬢様」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目閉じ
[主人公目閉じ]
[主人公口通常]
「お父様にお話があります。[r]
[sp]また時間を空けて欲しいと、お伝えしてください」[p]
;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景に白文字  [テキスト全画面白文字暗]裏で画面構成bg_prologue_dark.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1200 visible=true]
[wait time=1200]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

数刻後。[p]

;============================================================================================
[resetfont]
[主人公通常]
[暗転１]
;一瞬背景切り替えが見える↓防止
[wait time=10]
[freeimage layer=29 time=1000]
[wait time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;機能ボタン表示　
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
;============================================================================================

;【立ち絵】主人公：目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目閉]
[主人公口ほほえみ]
（正直に私の気持ちをお話ししよう）[p]
;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]

;============================================================================================
;【背景】主人公邸 庭の見える部屋：夜
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa_yoru.jpg" time=1000]
[wait time=10]
;============================================================================================

[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]、話があると聞いたが、何のことだろうか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公目通常]
[主人公口開]
「藤枝様の事です。[r]
[sp]……お手紙を交わすお許しを頂けませんか？」[p]
[主人公口通常]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「最近は、再び熱心にお稽古を励んでいると聞いたが[r]
[sp]まだその事を引きずっていたのか」[p]

;【立ち絵】主人公：困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「藤枝様は人格的にも素晴らしく、[r]
[sp]将来も有望な方です。　どうかお願いします！」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「留学する彼の邪魔になると考えられないのか？[r]
[sp]私や家の体面もある、[r]
[sp]どうして諦められないのかね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公目通常]
[主人公口開]
「藤枝様は今回の留学を見送られました。[r]
[sp]今はお手紙を交わすだけでもいいのです」[p]

「お父様が許されるまで、何年でも待ちますから[r]
[sp]どうかお許し下さい」[p]
[主人公口通常]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「留学を見送った！？  お前の為にか？[r] 
[sp]いつの間にそんなに思い合うようになったんだ」[p]
;【立ち絵】主人公：憂い
[主人公憂い]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「だが、恋なんて一時的なものだ。　いい加減にしなさい。[r]
[sp]留学も見送ったなら将来性もあまりないだろう」[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
「藤枝様はまた留学をされます」[p]
;大切な場面ですので、文章を短めに切って経過をわかりやすく調整しています(◆jsYiJcqRkk
「……一時的。[r]
[sp]お父様も、お母様の事をそう思っていらっしゃいますか？」[p]
[主人公口開]
「お手紙で心を通わせ、かけがえのない伴侶となられたのでは[r]
[sp]ありませんか？」[p]
[主人公口通常]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「！」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公目通常]
（お母様の方が、実家の方が家格は上）[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（美人で淑女と評判で降るようにお手紙が来て、家格が下の[r]
[sp]お父様との結婚は反対されたという。[r]
[sp]お母様は必死に両親を説得し、お父様は家を大きくされた）[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目閉じ
[主人公目閉じ]
[主人公口開]
「私は藤枝様が好きです！[r]
[sp]私は藤枝様の為ならどんな努力も惜しみません！」[p]


（せめて私の気持ちは伝わって欲しい）[p]
[主人公口通常]

#
お父様はしばらく沈黙し、思案しているようだった。[r]
私は願うように祈るような気持ちで頭を下げた。[p]

そしてお父様は私に向かって言った。[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「……手紙だけだ、会うことは許さない。[r]
[sp]彼の将来性を考えてそれだけ許そう」[p]

「藤枝君が挫折した時は、手紙も許さない。 今はそれだけだ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公驚]
「！」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公ほほえみ]
「ありがとうございます、お父様！」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「家の体面以前にも[r]
[sp]私たちは第一にお前の幸せを願っている。[r]
[sp]その事は覚えて置きなさい」[p]
[fadeoutbgm time=3000]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：照れ目普通
[主人公目伏柔]
[主人公眉下げ下]
「ええ、感謝しております」[p]

*seen_end
[eval exp="sf.event_hujieda_2_3 = 1"]
[イベントシーン終了]
[イベントシーン終了４]
@jump storage="test_hujieda.ks"
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

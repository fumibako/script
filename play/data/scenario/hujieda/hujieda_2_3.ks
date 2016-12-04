;=============================================
;イベント１４回目【藤枝の留学辞退】2月3週、
;=======================お芝居の準備中です=================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*2_3 storage="hujieda/preload_hujieda.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_hujieda.ks"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/ongakurensyuusitu.jpg" time=30]
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

;【立ち絵】藤枝：落ち込み
[藤枝憂い]
（課題曲は、パガニーニ超絶技巧練習曲集、[r]
[sp]第三番「ラ・カンパネッラ」[r]
;[藤枝目閉]
[sp]学校の練習室を早朝に数時間借りて練習し譜面通り弾ける様に[r]
[sp]なったけど……自分の思う音色にはほど遠い）[p]


;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

[手紙主人公]
藤枝 肇 様へ[l][r]
[r]
[sp]拝啓　春の浅けきみぎり藤枝様においては[r]
お忙しく毎日をお過ごしのことと拝察いたしております。[r]
[sp]私は日々藤枝様の事を案じております。[r]
[r]
[sp]ときに私は友人より藤枝様の留学について[r]
３人枠が１人枠となり２月の演奏会により[r]
その留学者が決まると知らせて頂きました。[r]
[r]
[sp][sp]毎日練習時間が取れない中、藤枝様は[r]
[sp][sp]プレッシャーや色々なものとたたかい練習を[r]
[sp][sp]           頑張っていられるのでしょう。[p]
;アイコンにかかります
[sp]私は以前お手紙でいつか私も藤枝様に[r]
何かを返せるといいと書きました今がそのときかも知れません。[r]
[r]
[sp]私も藤枝様の背中を押します。[r]
[r]
[sp]覚えておられるでしょうか？[r]
私がお[ruby text=こと]箏の練習でくじけそうになったとき、藤枝様は、[r]
[sp]焦らずとも貴方様は無意識で丁寧にお[ruby text=こと]箏を[r]
慈しみ優しく弾けていました。[r]
[sp]必ず上達できる方だと思います。[r]
[sp]『初心を忘れずゆっくり上達していきましょう』と[r]
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
[sp]私は今はただ藤枝様の夢が叶うことを願っているのです。[r]
[r]
[sp]だだ心から貴方をお慕いし、綺麗な感情だけが残って[r]
います。[r]
[sp]この感情をきっと愛と呼ぶのでしょうか。[r]
[r]
[sp]心から貴方の今後が、幸多い事をお祈りしています。[r]
[sp]藤枝様、どうかお元気で。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　敬具[r]
[sp]　　　　　　　　　　　　　　　　　　　　[名字][名前][p]
[手紙読了]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

#
この手紙を読み返し励まされながら[r]
わずか一か月の練習時間で、この難曲を諦めずに取り組み[r]
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
[image layer=29 x=1 y=1 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[wait time=10]
[藤枝退場]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
数日後[p]

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
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[freeimage layer = 29 time=1000]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[メッセージウィンドウ上ボタン表示]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目パチ1回]
「今日は時子さんが来られるの、一緒に外出していいかしら？」[p]


[whosay name=磯野 color="dimgray"]
「まあ、息が詰まるのも分りますが、女中を一人控えさせて[r]
[sp]いただきます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：ため息
[主人公憂い]
「もう藤枝様と、お別れの挨拶をしてから３か月も経ちました。[r]
[sp]それに時子さんとも、約束をしているのです」[p]

[whosay name=磯野 color="dimgray"]
「どちらに行かれるのですか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公通常]
「さあ、時子さんのお兄様が、とある舞台に連れて行って下さるとか」[p]
[主人公目パチ1回]
（きっと気晴らしになる場所なのだわ）[p]

[whosay name=磯野 color="dimgray"]
「最近、お稽古も熱心に取り組んで、おられますし仕方ないですね」[p]

[主人公憂い]
#
磯野に藤枝様の話は、あれからしていない。[r]
話をするだけで磯野は悲しそうな顔をするから[p]

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
[暗転]
;【背景】主人公邸 玄関　
[chara_mod name="bg" storage="bg/bg_genkan.jpg" time=1000]
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
[sp]ところでどこに行くのですか？」[p]

[whosay name="三宮　時子" color="#c25232"]
「それは秘密ですわ」[p]
#
;============================================================================================
[暗転２]
[eval exp="f.haikei_credit='I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/ensoukaijyou.jpg" time=1000]
[暗転２終了]
[layopt layer=fix visible=true]
;============================================================================================
[主人公目パチ1回]
#
大きな建物の前に車が止まり、私達は車を降りた。[r]
丁度、ホールに人が集まる所のようだった。[p]

[whosay name="三宮　時子" color="#c25232"]
「藤枝様達の演奏会は一般公開されると聞いて、[r]
[sp]お父様のコネを使いました[r]
[sp]私達も入れる様に口をきいてもらっています」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公驚]
「！」[p]

[whosay name="三宮　時子" color="#c25232"]
「さあ行きましょう」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[主人公口笑顔小]
「ありがとうございます。時子さん」[p]
[主人公口ほほえみ]
;============================================================================================
[暗転２]
;【背景】観客席
[eval exp="f.haikei_credit='　　'"]
[chara_mod name="bg" storage="bg/hujieda_kyakuseki.jpg" time=100]
[暗転２終了]
;============================================================================================
;【立ち絵】主人公：真剣
[主人公口通常]
[主人公眉下げ下]
[主人公目大]
[whosay name="三宮　時子" color="#c25232"]
「演奏者は３人、候補を外れた女性の方も演奏されて[r]
[sp]３人は課題の「ラ・カンパネッラ」[r]
[sp]それから自自由曲の２曲を弾くのですって[r]
[sp]藤枝さまの演奏は最後だそうよ」[p]
[主人公眉通常]
[主人公目閉]
[fadeoutbgm time=3000]

;============================================================================================
[eval exp="f.haikei_credit='　　'"]
;【背景】室内音楽堂（近景）
[暗転２ storage="bg/I9IhvvVdPo/situnaiongaku.jpg" time=1200]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/situnaiongaku.jpg" time=100]
;藤枝さん用構築かくし↓
[表示準備 storage="bg/I9IhvvVdPo/situnaiongaku.jpg"]
;【立ち絵】主人公：真剣
[主人公口通常]
[主人公眉下げ下]
[主人公目大]

[暗転２終了]
[call target=*start storage="macro_tati_hujieda.ks"]
;============================================================================================
#
２人の演奏が終わり、舞台の裾から藤枝様が姿を現した。[p]

;==========
;【立ち絵】藤枝：微笑み
[藤枝ベース私服]
[藤枝微笑み]
[表示開始 time=300]
;==========

#
[主人公眉下げ下]
[主人公目伏柔]
私は、その姿を見ただけで泣きそうになった。[p]
;なる

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公頬染め]
（一目会えただけで、こんなにも嬉しい）[p]

彼は客席に一礼しながら私と視線が合い驚いた顔になる。[p]

[whosay name="藤枝 肇" color=%mp.color] 
（……見守って下さるのですね）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】海風と沈む太陽（しっとりと想うシーン、回想シーンなどに
[playbgm storage="sittori_umikaze.ogg" loop=true]
[eval exp="f.bgm_storage='sittori_umikaze.ogg'"]
[endif]

#
私たちは視線で会話するように見つめあい、[r]
うなづき藤枝様はピアノの椅子に座る。[p]


;【立ち絵】藤枝：目閉じ
[藤枝目閉じ]
[whosay name="藤枝 肇" color=%mp.color] 
（貴方が来てくれた、[r]
[sp]それなら僕は何も恐れることはない）[p]
;===================================ピアノを弾くシーンはじまり=================================================
[暗転２ storage="bg/I9IhvvVdPo/situnaiongaku.jpg" time=1100]
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
;ピアノベース藤枝(目のみ通常１)レイヤー１ new
[chara_new name="piano_base_me" storage="bg/B4nFWraU42/hujieda_piano_me_futuu.png" layer=2 top=1]
;ピアノベース藤枝(目のみ通常１)レイヤー１ show
[chara_show name="piano_base_me" layer=2 left=1]
[wait time=10]
;===================================藤枝を表準備完了です。====================================================
;藤枝ピアノベースを表示します。
[freeimage layer=29 time=800]
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
;【変更】背景を暗転の中から表す（遠景）
[chara_mod name="bg" storage="bg/I9IhvvVdPo/situnaiongaku2.jpg" time=50]
;会話ウィンドウを表示します。 
[chara_mod name="message_bg" storage=&f.message_storage time=1]
[wait time=10]
[主人公ポーズ通常]
[主人公通常]
;メッセージレイヤを表示します。
@layopt layer=message0 page=fore visible=true
[暗転２終了]
;======================再構築おわります======================================
;============================ピアノを弾くシーンおわり=================================================

[主人公目閉じ]
#
藤枝様の音はミルクホールでも聞いたけれど[r]
今日は一段と、遠く哀愁のメロデイが響き渡っていた。[p]

;==============================================================================
;【イメージ】キラキラ透過素材 layer=13 ゆっくり消したいので13を使用
[image name="oto" storage="bg/B4nFWraU42/bg_hujieda_kirakira.png" layer=13 time=2000 left=1 visible=true]
;==============================================================================

その力強い迫力とその繊細に紡ぎだす透明な音に胸が打たれる。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(こんなにも心に響く音を聴くのは初めてだわ)[p]

;=======================================
;【イメージ】キラキラ透過素材を消去
[freeimage layer=13 time=800]
;=======================================
[暗転]
#
藤枝様の音色にこれほどの力強さは、ミルクホールではなかった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(留学への決意の強さなのかしら……曲が終わっても余韻がすごい）[p]
;SE拍手長め

;============================================================================================
[暗転２]
;【背景】観客席　暗転のほうがいいかも
[eval exp="f.haikei_credit='　　'"]
[chara_mod name="bg" storage="bg/hujieda_kyakuseki.jpg" time=100]
[暗転２終了]
;============================================================================================
#
まだ一曲目の課題曲だというのに皆は立ち上がり、盛大な拍手が沸き上った。[p]

;============================================================================================
[eval exp="f.haikei_credit='　　'"]
[暗転２ storage="bg/I9IhvvVdPo/situnaiongaku.jpg" time=1300]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/situnaiongaku.jpg" time=100]
;藤枝さん用構築かくし↓
[表示準備 storage="bg/I9IhvvVdPo/situnaiongaku.jpg"]
[暗転２終了]
[call target=*start storage="macro_tati_hujieda.ks"]
;============================================================================================

;==========
;【立ち絵】藤枝：微笑み
[藤枝ベース私服]
[藤枝目閉じ]
[表示開始 time=300]
;==========
#
観客の歓声にこたえて藤枝様は一礼する。[p]
;藤枝様は一礼すると（心情）思いもよらない事を～～

;【立ち絵】藤枝：通常
[藤枝通常]
[藤枝口開]
[whosay name="藤枝 肇" color=%mp.color] 
「演奏を聴いて下さりありがとうございました。[r]
[sp]この場にいられることも僕は誇りに思います[r]
[sp]ですが僕は独逸留学を辞退します」[p]
[表示開始 time=300]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公驚]
（え！）[p]

#
ざわざわと周囲が話し始める。[p]

[whosay name="音楽留学関係者"]
「静粛に！藤枝君それはどうしてかね？」[p]

;【立ち絵】藤枝：真剣
[藤枝真剣]
[whosay name="藤枝 肇" color=%mp.color] 
「僕は今大切にしたい人がいます」[p]

[fadeoutbgm time=3000]

;【立ち絵】藤枝：目閉じ
[藤枝目閉じ]
「留学は次の機会にします[r]
[sp]僕は今留学したら逆に叶わなくなる事があると[r]
[sp]気付きました。だから今、留学できません」[p]

[whosay name="原"]
「まて！　藤枝お前は全てを棒に振る気か？」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

;【立ち絵】藤枝：目伏せ
[藤枝伏目]
[藤枝伏目パチ1回]
[whosay name="藤枝 肇" color=%mp.color] 
「原……僕はね、ずっと色々なものを諦めてきた。[r]
[sp]家の為だとか周囲に押し流されてきた[r]
[sp]努力はしてもいつも諦めてきたんだ」[p]

;【立ち絵】藤枝：真剣
[藤枝真剣]
「でも今、音楽も彼女も諦めつつもりもなくなった[r]
[sp]僕はもう自分の気持ちを殺そうとは思わない[r]
[sp]もう一度音楽学校に戻って一からやり直し[r]
[sp]留学の機会も自分で切り開くつもりだ」[p]

[whosay name="音楽留学関係者"]
「君はそれで後悔しないのかね？」[p]

;【立ち絵】藤枝：微笑み
[藤枝笑顔大]
[whosay name="藤枝 肇" color=%mp.color] 
「はい！」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公驚]
（藤枝様！）[p]

[whosay name="音楽留学関係者"]
「惜しいがそれでは何も言うまい、[r]
[sp]折角の機会なので最後に[r]
[sp]自由曲も弾いていくといい」[p]

;【立ち絵】藤枝：微笑み
[藤枝微笑み]
[whosay name="藤枝 肇" color=%mp.color] 
「ありがとうございます。[r]
[sp]僕の自由曲はショパンの別れの曲でしたが、[r]
[sp]別の曲に変えていいですか？」[p]

[whosay name="音楽留学関係者"]
「構わない。どの曲かね？」[p]

;【立ち絵】藤枝：通常
[藤枝目伏せ照れ]
[whosay name="藤枝 肇" color=%mp.color] 
「リストの愛の夢三番、おお、愛しうる限り愛せを」[p]

[whosay name="原"]
「お前、甘い曲は苦手じゃなかったか？」[p]

;【立ち絵】藤枝：微笑み
[藤枝笑顔]
[whosay name="藤枝 肇" color=%mp.color] 
「そうだったけど今、すごく弾きたいから」[p]

[whosay name="音楽留学関係者"]
「弾くといい、皆持ち場に戻りなさい」[p]

#
再び藤枝様はピアノに向かい音を紡いだ[p]
[藤枝目閉じ]
[藤枝効果消]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目閉じ
[主人公目閉じ]
[主人公口ほほえみ]
[主人公頬染め]
（ピアノの優しくて甘い旋律がこの場の雰囲気を[r]
[sp]包んでいる……本当になんて綺麗な音なのかしら）[p]

#
曲が終わると藤枝様は皆に礼をした[r]
そして私の方を向いた[p]

;【立ち絵】藤枝：真剣
[藤枝真剣]
[whosay name="藤枝 肇" color=%mp.color] 
（……貴方が好きだ、もう諦めない）[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：照れ目普通
[主人公目伏]
[主人公眉下げ下]
（藤枝様は覚悟をみせてくれた[r]
[sp]今度は私がお父様を説得する番ね。[r]
[sp]私も藤枝様を諦めないわ）[p]
[fadeoutbgm time=3000]
#
[藤枝退場]
;ふんわり退場→　[藤枝退場準備 storage="bg/I9IhvvVdPo/situnaiongaku.jpg" time=100]
[主人公退場]
;============================================================================================
[layopt layer=fix visible=false]
;【背景】主人公邸 玄関 
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[表示準備 storage="bg/bg_genkan.jpg" layer=29 time=300]
[mtext text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
;場所移動なのでわかります。
[chara_mod name="bg" storage="bg/bg_genkan.jpg" time=1000]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[主人公ポーズ通常]
[freeimage layer=29 time=500]
[メッセージウィンドウ上ボタン表示]
[layopt layer=fix visible=true]
;============================================================================================

[whosay name="三宮　時子" color="#c25232"]
「[名前]さん説得頑張ってくださいね」[p]

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

;【背景】主人公邸 庭の見える部屋：昼
 [chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000]
 [eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築]
[主人公ポーズ通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公目パチ1回]
「ただいま帰りました」[p]

[whosay name=磯野 color="dimgray"]
「お帰りなさいませお嬢様」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目閉じ
[主人公目閉じ]
[主人公口通常]
「お父様にお話があります[r]
[sp]また時間を空けて欲しいと、お伝えしてください」[p]
[主人公退場]
;==============================================
;【テキスト全画面】黒茶・和紙風背景に白文字
 [テキスト全画面白文字]
数刻後[p]
;==============================================
;============================================================================================
;【背景】主人公邸 庭の見える部屋：夜
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[表示準備 storage="bg/room_niwa_yoru.jpg" layer=29]
[mtext text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
;場所移動なのでわかります。
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=1000]

[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[主人公ポーズ通常]
[freeimage layer=29 time=500]
[メッセージウィンドウ上ボタン表示]
;============================================================================================

;【立ち絵】主人公：目閉じ
[主人公眉下げ下]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[主人公口ほほえみ]
（正直に私の気持ちをお話ししよう）[p]

;【SE】襖を開ける（ゆっくり）

[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]、話があると聞いたが[r]
[sp]何のことだろうか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公目通常]
[主人公口開]
「藤枝様の事です[r]
[sp]……お手紙を交わすお許しを頂けませんか？」[p]
[主人公口通常]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「最近は、再び熱心にお稽古を励んでいると聴いたが[r]
[sp]まだその事を引きずっていたのか」[p]

;【立ち絵】主人公：困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「藤枝様は人格的にも素晴らしいです。[r]
[sp]将来も有望な方ですどうかお願いします！」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「留学する彼の邪魔になると考えられないのか？[r]
[sp]私や家の体面もある、[r]
[sp]どうして諦められないのかね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公目通常]
[主人公口開]
「藤枝さまは今回の留学を見送られました[r]
[sp]今はお手紙を交わすだけでもいいのです[r]
[sp]お父様が許されるまで[r]
[sp]何年でも待ちますからどうかお許し下さい」[p]


[whosay name=&sf.father_name color="DarkSlateBlue"]
「留学を見送った！？  お前の為にか？[r] 
[sp]いつの間にそんなに思い合うようになったんだ[r]
[sp]だが恋なんて一時的なものいい加減にしなさい[r]
[sp]留学も見送ったなら将来性もあまりないだろう 」[p]
[主人公口通常]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：憂い
[主人公憂い]
「藤枝様はまた留学をされます。・・・・一時的、[r]
[sp]お父様もお母様の事をそう思っていらっしゃいますか？[r]
[sp]お手紙で心を通わせかけがえのない[r]
[sp]伴侶となったのではありませんか？」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「！」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公目通常]
（お母様の方が実家のほ方か家格は上、[r]
[sp]美人で淑女と評判で降るようにお手紙が来て[r]
[sp]家格が下のお父様との結婚は反対されたという[r]
[sp]お母様は必死に両親を説得しお父様は家を大きくした）[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目閉じ
[主人公目閉じ]
[主人公口開]
「私は藤枝様が好きです！[r]
[sp]私は藤枝様の為ならどんな努力も惜しみません！」[r]
（せめて私の気持ちは伝わって欲しい）[p]
[主人公口通常]

#
お父様はしばらく沈黙し、思案しているようだった。[r]
私は願うように祈るような気持ちで頭を下げた。[r]
そしてお父様は私に向かって言った[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「……手紙だけだ、会うことは許さない[r]
[sp]彼の将来性を考えてそれだけ許そう[r]
[sp]藤枝君が挫折した時は手紙も許さない、今はそれだけだ」[p]

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
[sp]私たちは第一にお前の幸せを願っている[r]
[sp]その事は覚えて置きなさい」[p]
[fadeoutbgm time=3000]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：照れ目普通
[主人公目伏柔]
[主人公眉下げ下]
「ええ、感謝しております」[p]

;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
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

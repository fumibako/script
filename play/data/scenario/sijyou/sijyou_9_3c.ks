;sijyou_9_3b.ks
*start
;///////////////////////////////
[stopbgm]
;暗転プリロードサブルーチン
[call target=*9_3 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[layopt layer=13 visible=true]
;テストから飛んでくるときのレイヤー１消去
[iscript]
$(".1_fore").empty();
[endscript]
[四条イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[四条ベース羽織]
[四条微笑み]
[暗転]
[プリロード画面消去]
;=================================================================================_
*seen5
[autosave]
#
[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）スマホでのフリーズ対策試験的に[p]or[l]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
[主人公目を開く]
;○温室をみてまわる 各国の珍しい草木(サボテンなども有り)を見て回る
;場面転換
[主人公通常]
;【背景】[背景_四条家温室]
[背景_四条家温室]
#
"華織様"と私は思い出を語り合いながら、[ruby text=あたた]暖かな温室へと誘った。[p]
;=================================================================================_
[if exp="tf.test_gamen == true"]
テストページからプレイしています。次のシーンまで移動しますか？[r]
;---------------------------
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]
[link target=*jump_ok1]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no1]い　い　え[endlink][r]
[resetfont]
[s]
*jump_ok1
[current layer="message0"]
[resetfont]
「はい」[r]
移動します。[p]
[cm]
@jump target=*seen8
[s]
*jump_no1
[current layer="message0"]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]
;=================================================================================_
[四条目パチ1回]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「珍しい草木や花々が咲いてますね」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[主人公目パチ1回]
[whosay name="華織" color="olivedrab"]
[四条口開]
「気に入ったものがあったら、また[名前]にあげるよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「ありがとうございます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「あら、この不思議な形をした植物は何でしょうか？」[p]
[主人公通常]
[whosay name="華織" color="olivedrab"]
「それはサボテンの一種で、品種名は、ペヨーテ（[ruby text=う]烏[ruby text=ば]羽[ruby text=たま]玉）と言うんだ。[r]
[sp][名前]は、好きではないかもしれないね」[p]
[四条口微笑み]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「いえ、そんな！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ]
(見た目は、可愛いとは言えませんが……）[p]
;見た目だけで判断する子供らしさが残っているシーン
;なぜ可愛くないの？　どんな見た目？とのこと
#
[ruby text=サ]多[ruby text=ボ]肉[ruby text=テ]植[ruby text=ン]物は、普段、見る花々とは違って[r]
美しい新芽もなく、ボコボコと丸く肉割れしており、[r]
面妖な見た目であった。[p]
[whosay name="華織" color="olivedrab"]
[主人公通常]
「サボテンには、品種別の花言葉は無いけど、[r]
[sp]サボテン自体の花言葉は、素敵だと思うよ。[r]
[sp]『燃える心』『偉大』『暖かい心』『枯れない愛』」[p]
;四条は見た目で判断していない、主人公は見た目で判断している差
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公笑顔]
「暖かい心、枯れない愛……素敵ですね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[主人公目閉じ]
[if exp="f.para_shujinkou_shukujodo > 40"]
（淑女として、見た目だけで判断せずに本質を知るべきですね。[r]
[sp]私も、帰ったら詳しく花言葉について調べてみましょう）[p]
[else]
（私も、帰ったら詳しく花言葉について調べてみましょう）[p]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公笑顔]
「あ、こちらのお花も、とても綺麗ですね！」[p]
[whosay name="華織" color="olivedrab"]
[四条眉下げ]
[四条目伏]
「あ……。　ここにも芽があったんだね……」
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目通常]
（　？　)[p]
[whosay name="華織" color="olivedrab"]
「それは、ネリネという花だよ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[主人公眉下げ下]  
[主人公目伏]
「そうなのですね。[sp]まだ蕾ですが、[r]
[sp]銀糸がまばらに縫いこまれたようにキラキラと輝いていますわ！[r]
[sp]不思議……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「それにしても、色んな種類の花々があるのですね」
[主人公目パチ1回]
[p]
[四条憂い]
[whosay name="華織" color="olivedrab"]
「そうだね。　いざという時の為にね」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[主人公ポーズ指]
[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（？ ……華織様のお祖母様も、華道家でいらしゃいましたから、[r]
[sp]その為でしょうか？）[p]
#
[主人公ポーズ通常]
尋ねようとした時、華織様が私の手を取った。[p]
;……華織様のお祖母様は
;○過去のくだり、家のことも(手紙で追記あり)あってこの時点で主人公はあまり気にせず。 
[whosay name="華織" color="olivedrab"]
[四条微笑み]
「[名前]、
[四条口開]
薔薇園を見に行こうか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目大]
「は、はい」[p]
#
;【退場】四条
[四条退場]
[主人公退場]
;=================================================================================_
*seen6
;場面転換
;【背景】
[背景_四条家庭バラ噴水]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/B4nFWraU42/niwa_rose_funsui.jpg" time=100]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
[主人公ポーズ通常]
[主人公通常]
[iscript]
$('.junbi_girl').remove();
[endscript]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「綺麗……」[p]
#
[autosave]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;綺麗な場所か見せてから登場
;【登場】四条
[四条ベース羽織]
[四条微笑み]
;四条登場
[freeimage layer=13 time=1000]
[wait time=1000]
[layopt layer=13 visible=true]
;四条登場
;華織、華衣と華衣婚約との約束に迷う心を隠す戯ける
[whosay name="華織" color="olivedrab"]
「[名前]の名前をつけた薔薇を育ててみようかな」[p]
[四条口開]
;○狂気 主人公の対応は？
[主人公ポーズ片手]
[四条微笑み]
[主人公驚]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「えぇ?」[p]
[whosay name="華織" color="olivedrab"]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
「ふふ、冗談だよ。[r]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[sp]今日は良い天気だから、バラも綺麗に咲いているね。[r]
[sp][名前]にひとつあげよう」[p]
;手折る・・比喩的に、女を自分のものにする。
#
[四条目閉じ]
華織様は、まだ咲ききれていない純白のばらを一つ[ruby text=た]手[ruby text=お]折ると、[r]
[主人公ポーズ通常]
私の
[if exp="f.para_shujinkou_shukujodo > 30"]
髪飾りへと挿した。[p]
[else]
帯に挿した。[p]
[endif]
[whosay name="華織" color="olivedrab"]
[四条微笑み]
「綺麗だね。 よく似合っているよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ]
「ありがとうございます……」
[主人公伏目パチ1回]
[p]
*seen_siro_bara
;=================================================================================_
;この時の心情 華織 まだ主人公のことを妹のように守るもの、両者が盲目的な恋  対等である関係を知らない
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
「華織様、白い蕾のバラには、どの様な意味があるのでしょう？」[p]
;白いバラのつぼみ「恋をするには若すぎる」「少女時代」
[whosay name="華織" color="olivedrab"]
「[名前]のような可愛らしい、守るべき人のことを示しているんだよ」
[主人公照れ]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「可愛らしい、守るべき人、だなんて……」[p]
;文矢の、友人の妹なので華衣のことで直ぐに断ることもできない。また好意があるので断れない。言うべきか迷う
#
;何か地の文
 [whosay name="華織" color="olivedrab"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_siwa.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi2.png" time=0]
[wait time=10]
「……[名前]、僕には……」[p]
;華織（実は弟がいて……）
;主人公照れていたため気付かず
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
「はい」[p]
;華織、主人公の幸せな表情をみて、自分で解決し、変えようと思う
[whosay name="華織" color="olivedrab"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[wait time=10]
「いや、[r]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
[sp]次に会う時は何処に行こうかなと思ってね」
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
[p]
;華織（全ては僕が解決することだ）
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公笑顔]
「それなら、華織様のお好きなところへ連れて行って下さい」[p]
;華織に任せる恋
[whosay name="華織" color="olivedrab"]
[主人公ほほえみ]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_sage.png" time=0]
[wait time=10]
「僕の好きな場所か……。　　わかったよ、考えておくよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様とのお出掛け……[r]
[sp]きっと素敵な場に連れて行ってくださるに違いないわ。[r]
[sp]楽しみです)[p]
#
[主人公通常]
[chara_mod name="sijyou_me" storage="sijyou/me_ake.png" time=0]
[wait time=10]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_odoroki.png" time=0]
[wait time=10]
私が華織様とのデェトに想像を膨らませていると、[r]
四条家の庭に園遊会の終わりが近いことを告げる鐘が鳴り、[r]
遠くで見守っていた、互いの付き人達がソワソワし始めた。[p]
;2人だけだねのシーンに繋げる
[whosay name="華織" color="olivedrab"]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
「時間が過ぎるのは早いね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
「そうですね……残念です」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
(次も会えるのだから、我慢しなくては)[p]
;========================================================
[whosay name="華織" color="olivedrab"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_sage.png" time=0]
[wait time=10]
「[名前]も歩き回って疲れただろう？
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[sp]近くに池があるんだ。[r]
;遠い場所までいかないよ、という配慮
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
[sp]まだ少し時間もあることだから、[r]
[sp]ボートに乗りながらお茶でもしないかい？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
「はい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様、また気遣ってくれたのですね。[r]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[sp]……もう少しだけ、華織様と御一緒に――)[p]
[autosave]
#
[主人公退場]
;【退場】四条
[四条退場]
;○2人でボートに
;場面転換
;=================================================================================_
*seen7
;【SE】水音
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
;///////////////////////準備///////////////////
[layopt layer=fix visible=false]
[playse storage=mizu_ike.ogg loop=false]
[layopt layer=29 visible=true]
[image layer=29 name="kakusi" x=0 y=0 storage="bg/B4nFWraU42/niwa_large_ike.jpg" time=1000]
[mtext text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
;[四条アップ]は登場してるときしか使ったことないのでここで準備
;【背景】[背景_四条家湖畔1]
[背景_四条家湖畔1]
;[chara_mod name="bg" storage="bg/B4nFWraU42/niwa_large_ike.jpg" time=100]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[playse storage=mizu_ike.ogg loop=false]
[四条_隣_ベース羽織]
[wait time=10]
[四条_隣_通常]
[wait time=10]
[freeimage layer=29 time=1200]
[wait time=1200]
;///////////////////////準備///////////////////
[layopt layer=fix visible=true]
[四条_隣_微笑み]
[wait time=10]
#
湖畔。暖かな日差しが水面を輝かせ、二人を乗せたボートをゆらゆらと[r]
照らす。[p]
;[SE水を跳ねる音]？
[whosay name="華織" color="olivedrab"]
「結構、遠くまで漕いでしまったね」[四条_隣_目閉じ][p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですね」[p]
[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様、
[主人公驚]
意外とお力も強いのですね）[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
（息切れもされていないですし）[p]
[主人公通常]
;【背景】[背景_四条家湖畔2]
[背景_四条家湖畔2]
[whosay name="華織" color="olivedrab"]
[四条_隣_目にこ]
[wait time=10]
「ここまで来ると二人だけだね」[p]
;多分からかっている
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ]
[wait time=50]
[主人公目を開く]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あ、あちらにも、おおきな温室がありますね」[p]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
[chara_mod name="sijyou_tonari_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
「そうだね。でも、僕のものではないから」[p]
[四条_隣_憂い]
#
どうしてか、華織様は、憂いを帯びた表情をみせた。[p]
[autosave]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様、どうしたのでしょうか？）[p]
[stopse]
;なったままだった
#
[fadeoutse time=1000]
私は、理由を聞くこともできす、華織様の漕ぐボートに身を[ruby text=ゆだ]委ねた。[p]
;適当　怠惰にすごしたかんじ
;【退場】四条
[四条退場]
;=================================================================================_

*seen8
[eval exp="sf.event_sijyou_9_3 = 1"]
[イベントシーン終了]
[stopse]
[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[else]
[イベントシーン終了４]
[endif]

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

*replay_event_8_week_asuka
[stopbgm]
;テスト用[eval exp="sf.event_8_week_asuka = 0"]
[call target=*asuka storage="sijyou/preload_sijyou.ks"]
[wait time=50]
[iscript]
$(".1_fore").empty();
[endscript]

[if exp="sf.event_8_week_asuka != 1"]
;【背景】プロローグ
[bg wait=true storage="../fgimage/bg/bg_prologue.jpg" time=0]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[wait time=10]
[else]
;背景変更:和紙風 桜色
[bg wait=true storage="../fgimage/bg/plane_sakura.jpg" time=100]
[eval exp="f.haikei_credit=''"]
[イベントシーン構築ボタン無し版]
[endif]
[プリロード画面消去]
;=====================ここからお芝居の幕引きです==============================
[if exp="sf.event_8_week_asuka != 1 || tf.test_sijyou != true"]
@jump target=*seen_str
[endif]
;ifの入れ子、endifが探せていないので下記をスキップする
;==========================================================
*event_select
八月『怪談・葉月の庭』：既読イベントです。[r]
選択肢まで移動、又はイベントを終了しますか？[r]
;選択肢用レイヤーを追加
[position layer=message1 height=300 top=70 left=300 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=30]
[link target=*jump_ok1]選択肢まで移動する[endlink][r]
[r][r]
[link target=*jump_to_end1]イベントを終了する[endlink][r]
[r][r]
[link target=*jump_no1]最初からイベントを見る[endlink][r]
[resetfont]
[s]
*jump_ok1
[er]
[current layer="message0"]
[resetfont]
[er]
[メッセージウィンドウ上ボタン表示]
「選択肢まで移動する」[r]
移動します。[p]
[if exp="sf.BGM == 'ON'"]
;【BGM】海風と沈む太陽（しっとりと想うシーン、回想シーンなどに
[playbgm storage="sittori_umikaze.ogg" loop=true]
[eval exp="f.bgm_storage='sittori_umikaze.ogg'"]
[endif]
[cm]
[背景_庭_夜]
@jump target=*seen_next2
[s]

*jump_to_end1
[er]
[current layer="message0"]
[resetfont]
[er]
[メッセージウィンドウ上ボタン表示]
「イベントを終了する」[r]
終了します。[p]
[cm]
[背景_庭_夜]
@jump target=*end_Q
[s]
*jump_no1
[er]
[current layer="message0"]
[resetfont]
「最初からイベントを見る」[r]
最初の場面に移動します。[p]
;==========================================================
*seen_str
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[image layer=29 x=0 y=0 zindex=0 storage="bg/bg_prologue.jpg" time=50]
@layopt layer=message0 visible=true
;【背景】広間
[bg wait=true storage="../fgimage/bg/B4nFWraU42/bg_asuka_haduki_hiroma.jpg" time=0]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[wait time=10]
[current layer="message0"]
[font color=white size=27]
*seen1
――夏の半ば。[r]
[名字]家では、親戚一同が集まり、[r]
祖先の霊を祀る行事が行われた。[p]
;==========================================================
[if exp="sf.BGM=='ON'"]
;【BGM】五色（重いムードに
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[freeimage layer=29 time=0]
[メッセージウィンドウ上ボタン表示]
;==========================================================
*seen2
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お疲れ様です」[p]
[whosay name="飛鳥紗代子"]
「[名前]さんもお疲れ様です」[p]
#
祀事が終わり、親戚の飛鳥紗代子さんと挨拶をする。[p]
[autosave]
[whosay name="飛鳥紗代子"]
「無事終わってホッとしましたわ。[r]
[sp]祀り事の最中は、棒立ちか正座しかしないのですから、[r]
[sp]足が[ruby text=い]慰[ruby text=れい]霊[ruby text=ひ]碑になるかと思いました」[p]

[whosay name="飛鳥伯父様"]
「こら、紗代子。[r]
[sp][名前]さんの手本になるように年上としての振る舞いをなさい。[r]
[sp]君は親しい人の前だと、直ぐに気を緩ませる」[p]
;主人公と紗代子さんが親しいことを示唆
[whosay name="飛鳥紗代子"]
「あら、旦那様。[r]
[sp]お休みの時は身体を休ませなくては、[r]
[sp]生きてる人間は疲れてしまいますのよ」[p]
[whosay name="飛鳥伯父様"]
「まったく……。　[名前]さん、すまない」[p]
#
飛鳥伯父様は、愁眉を見せた後、軽く頭を下げた。[r]
陰の深い輪郭は、紗代子さんとは、いくつか歳の差がある印象を受ける。[p]
;受けた？
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「いえ、お構いなく……。[r]
[sp]私は、そのままの紗代子さんが親しみ易いです」[p]

[whosay name="飛鳥紗代子"]
「そうですわ。 [r]
[sp]私、まだ伯母様とは呼ばれたくもありませんし、[r]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
[sp]町でお買い物を楽しみながら、[名前]さんと気軽に話したいの」[p]
;散策で会えることを示唆
[whosay name="飛鳥伯父様"]
「結婚してからそろそろ三年ほど経つ。[r]
[sp]伯母と呼ばれても、いい頃合いだと思うが……」[p]
#
ふいに飛鳥伯父様は、またもや憂気に[ruby text=しわ]皺を寄せ、[r]
紗代子さんを横目で流し見た。[p]
[whosay name="飛鳥紗代子"]
「あら、旦那様。[r]
[sp]そんなお顔して、お怖いですこと。　おほほ」[p]
[whosay name="飛鳥伯父様"]
「はあ……。　この顔は自前みたいなものだ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
（飛鳥伯父様、[r]
[sp]まだ紗代子さんに対して怒っていらっしゃるのかしら？）[p]

[whosay name="磯野" color="dimgray"]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
「失礼します。　客間にお茶を用意しております。[r]
[sp]迎えが来られるまでお使いください」[p]
#
お父様と磯野が現れ、屈伸する親族達を気遣う。[p]
#
私も流れに沿って客間に移動した。[p]
;==========================================================
;背景天井 
[wait time=50]
;メッセージレイヤを全画面用に設定変更
@layopt layer=fix visible=false
[wait time=10]
[image layer=29 x=0 y=0 zindex=0 storage="bg/B4nFWraU42/bg_asuka_haduki_tenjyou.jpg" time=50]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
;==========================================================
*seen3
――客間。[r][r]

年季が入った客間は、天井のシミが黒々と深く[r]
歴史を感じさせる。[p]
[ruby text=ふすま]襖の上には、[名字]家の親族の写真や肖像画が[r]
飾られており、[r]
;この客間の雰囲気と相まって、写真や肖像画に見張られている気もしたが、親戚達は気にせず他愛ない話に興じる。
親戚そろって、思い出などの他愛ない話を[r]
[ruby text=か]交わした。[p]
;==========================================================
[wait time=50]
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[bg wait=true storage="../fgimage/bg/B4nFWraU42/bg_asuka_haduki_tenjyou2.jpg" time=0]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[freeimage layer=29 time=0]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
;==========================================================
#
その中で私は、不安げに目を伏せていた。[p]
*seen4
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ふう。[r]
[sp]このお部屋、行事がない限りは使わないけれど、[r]
[sp]天井のシミがどことなく顔にみえて、近寄りがたいのだったわ）[p]
[autosave]
[whosay name="飛鳥紗代子"]
「どうしましたの、[名前]さん？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
「いえ……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（いけない、せっかく紗代子さん達がいらっしゃるのに）[p]
[autosave]
#
実は子供の頃から、この部屋の雰囲気が苦手だった。[p]
;セリフの方がいいでしょうか？
しかし、[r]
そんな子供染みた事を伝えるわけにもいかず、[r]
私は親族の前でいつも通りに笑ってみせた。[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
;↓目：横目 [主人公横目]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
「よい方を迎えられて、私も嬉しい限りです」[p]
[whosay name="飛鳥伯父様"]
「いやいや、とんだお転婆な娘で困ったこともありますよ」[p]
[whosay name="飛鳥紗代子"]
「よくいいますこと！ [r]
[sp]私も貴方には苦労させられたのよ？」[p]
[whosay name="飛鳥伯父様"]
「そのことは許してくれよ」[p]
;【SE】雷（ゴロゴロ
[playse storage=thunder_gorogoro.ogg loop=false ]
[fadeoutbgm time=3000]
#
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
皆が楽しく会話をしていると[p]
;【SE】落雷
[playse storage=thunder.ogg loop=false ]
;驚き
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
@layopt layer=13 visible=true
[image layer=13 x=0 y=0 zindex=0 storage="bg/white.jpg" time=2000]
[wait time=100]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[bg wait=true storage="../fgimage/bg/B4nFWraU42/bg_asuka_haduki_tenjyou3.jpg" time=0]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[freeimage layer=13 time=500]
[wait time=10]
@layopt layer=13 visible=true
突如、雲を引き裂くような雷がなった後、雨がざんざんと降りはじめた――。[p]
;【SE】雨
[playse storage=rain.ogg loop=false ]
;==========================================================
[wait time=50]
@layopt layer=fix visible=false
@layopt layer=message0 visible=false
[image layer=29 x=0 y=0 zindex=0 storage="bg/bg_asuka_haduki_ame.jpg" time=50]
[eval exp="f.haikei_credit=''"]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
;==========================================================
;ザァー…SE 雨イメージ
*seen5
細やかな雨粒が絶え間なく降り注ぎ、[r]
いつも窓から見える、庭先の木々さえ、[r]
霧の中にあって見えそうにない。[p]
磯野以外の屋敷の従者達は、戸締まりに奔走し始め、[r]
私達は、ぼんやりと雲行きを眺めた。[p]
;==========================================================
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
;表情戻す
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[freeimage layer=29 time=0]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
;==========================================================
*seen6
[whosay name="飛鳥紗代子"]
「この雨ですと、車を出すのも危なさそうですわね」[p]
[autosave]
#
紗代子さんは、のんびりと磯野が出したナスやキュウリの漬物を[r]
食べながら独りごちた。[p]
[whosay name="飛鳥伯父様"]
「こら、紗代子。[sp]はしたないぞ」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
;↓眉：下がり眉[主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「折角、来たのだから、泊まっていってはどうだろうか？」[p]
[whosay name="飛鳥伯父様"]
「宜しいのでしょうか？」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「私も久しぶりに話したい。[sp]妻も喜ぶ。どうだろうか？」[p]
[whosay name="飛鳥伯父様"]
「……ありがとうございます。[sp]お言葉に甘えさせて頂きます」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「磯野、用意してやってくれ」[p]
[whosay name="磯野" color="dimgray"]
「それでは、そのように支度しましょう。[r]
[sp]朝までに、飛鳥御当主様が好きな[ruby text=かい]開[ruby text=ぎょう]堯[ruby text=どう]堂のシウクリームを[r]
[sp]用意しておきましょうか？[p]
;お爺様宛

[whosay name="飛鳥紗代子"]
「それはいいわね。[sp]是非、頼んでおいて頂戴」[p]
[whosay name="飛鳥伯父様"]
「こら、紗代子。[sp]お前が食べるんじゃないぞ」[p]
#
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
私達は、飛鳥家と楽しく団欒をした。[p]
[autosave]
*seen_next
;==========================================================
[wait time=50]
@layopt layer=fix visible=false
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[freeimage layer = 1]
[wait time=10]
[image layer=29 x=0 y=0 zindex=0 storage="bg/B4nFWraU42/bg_asuka_haduki_tokei.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
;==========================================================
――夜、私達が眠りにつく頃。[r]
荒れるような[ruby text=なつ]夏[ruby text=さめ]雨は過ぎ去り、[r]
部屋には湿った生暖かい風がじっとりと篭っていた。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]
;==========================================================
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[背景_庭_夜]
;寝巻きではないので違和感
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公退場]
[freeimage layer=29 time=0]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
;==========================================================
*seen7
[whosay name=&sf.girl_namae color="#cf5a7f"]
（今日に限って、何で、こんなに熱いのかしら？）[p]
;===================================================
[if exp="tf.test_gamen == true"]
テストページからプレイしています。選択肢に移動しますか？[r]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]
[link target=*jump_ok2]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no2]い　い　え[endlink][r]
[resetfont]
[s]

*jump_ok2
[current layer="message0"]
[resetfont]
[stopbgm]
#
「はい」[r]
移動します。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】海風と沈む太陽（しっとりと想うシーン、回想シーンなどに
[playbgm storage="sittori_umikaze.ogg" loop=true]
[eval exp="f.bgm_storage='sittori_umikaze.ogg'"]
[endif]
[cm]
@jump target=*seen_next2
[s]
*jump_no2
[current layer="message0"]
「いいえ」[r]
そのままはじめます。[p]
[cm]
[endif]
;===================================================
[whosay name="飛鳥紗代子"]
「[名前]さん、起きていらっしゃるかしら？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「紗代子さん？」[p]
[whosay name="飛鳥紗代子"]
「起こしてしまったら、ごめんなさいね。[r]
[sp][ruby text=うち]団[ruby text=わ]扇とお茶を持ってきたの。[sp]ご一緒しても宜しいかしら？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ！[sp]どうぞ。 [r]
[sp]丁度、目が冴えて困っていたところでした。[r]
[sp]飛鳥伯父様とお休みになられなくて宜しいのですか？」[p]

[whosay name="飛鳥紗代子"]
「旦那様達は、碁を打ちながら語っておられるわ。[r]
[sp]ああなると、いつも夜が明けるまで続くのよ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうなのですか？」[p]

[whosay name="飛鳥紗代子"]
「ええそうよ。[sp]もし、観客役でもお願いされたら、[r]
[sp]私、うかうか眠れやしないのよ。[r]
[sp]ああ、恐ろしいですこと！」[p]
;怪談をすることを示唆的な

[whosay name=&sf.girl_namae color="#cf5a7f"]
「ふふ、そうなのですね。[r]
[sp]それでしたら、私で宜しければ、御一緒しましょうか」[p]

[whosay name="飛鳥紗代子"]
「ありがとうございます。[sp]恩に着ますわ。[r]
[sp]ふう。　今日は一段と寝苦しい日ですわね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですね……」[p]

[whosay name="飛鳥紗代子"]
「普段着だと、帯の締め方を工夫して対処できますけれど、[r]
[sp]寝巻きだとそうもいかないし……どうしましょう」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「氷を持ってこさせましょうか？」[p]
[whosay name="飛鳥紗代子"]
「いくら[名前]さんの家が裕福だからって、[r]
[sp]そんな貴重なものを使わせるのは悪いわ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、それなら紗代子さんの家の方が……」[p]
#
謙遜する紗代子さんに私が言葉をかけようとした時、[r]
紗代子さんは何か閃いたのか明るい声を上げた。[p]
[whosay name="飛鳥紗代子"]
「そうだわ！[sp]もっといいことがあるわ！[r]
[sp]昔話をしましょう」[p]
[fadeoutbgm time=3000]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「昔話？」[p]
[autosave]
#
紗代子さんは、ニヤリ。と笑うと"昔話"を始めた。[p]

[whosay name="飛鳥紗代子"]
「これは、怪談(作り話)ではないの。[r]
[sp]昔から伝わる話なのよ」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】「深雪白雪」
[playbgm storage="miyuki.ogg" loop=true]
[eval exp="f.bgm_storage='miyuki.ogg'"]
[endif]
#
;==========================================================
[wait time=50]
@layopt layer=fix visible=false
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[freeimage layer = 1]
[wait time=10]
[image layer=29 x=0 y=0 zindex=0 storage="bg/B4nFWraU42/bg_asuka_haduki_kakitubata.jpg" time=50]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
;==========================================================
;全画面 森と池
*seen8
昔々、飛鳥の家に[ruby text=かき]杜[ruby text=つばた]若という美しい腰元がいて、[r]
殿様の寵愛を受けていたの――。[p]

ところが殿様の長男も[ruby text=かき]杜[ruby text=つばた]若を愛するようになり、[r]
やがて[ruby text=かき]杜[ruby text=つばた]若は身籠もる。[p]

何も知らない殿様は大層喜ぶが、[r]
側近達は、口々に[r]
[ruby text=かき]杜[ruby text=つばた]若のお腹の子は若君の子と告げ口する。[p]

怒った殿様は矢の柄えで、[r]
[ruby text=かき]杜[ruby text=つばた]若を叩いて尋問するけれど、[r]
[ruby text=かき]杜[ruby text=つばた]若は泣くばかりで白状はしなかったの。[p]

業を煮やした殿様は[r]
[ruby text=かき]杜[ruby text=つばた]若を荒縄で縛り上げ家来どもに命じて……[p]
;【SE】水音
[playse storage=mizu_ike.ogg loop=false ]
[sp][r][r]
池に放り込んでしまったの。[p]
[sp][r]
このあと、この池の近くをとおった奥方様や側室様は、[r]
釣られるようにして小舟に乗って[r]
思わぬ事故死を繰り返したそうよ……。[p]
;==========================================================
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[freeimage layer=29 time=0]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;==========================================================
*seen9
[whosay name=&sf.girl_namae color="#cf5a7f"] 
「！！」[p]

[whosay name="飛鳥紗代子"]
「どう？ これが飛鳥家に伝わる"昔話"よ。[r]
[sp]ちなみに飛鳥家は、人生のうちで必ず杜若に似た女性を[r]
[sp][ruby text=ひと]一[ruby text=り]人好きになるらしいわ」[p]
#
私は、聞かなければ良いのに[r]
その話が嘘か誠か知っておきたくなってしまった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"] 
;困り汗
「池は、実際にあるのでしょうか？」[p]

[whosay name="飛鳥紗代子"]
「そうみたい……としか言えないわ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"] 
「？」[p]
[whosay name="飛鳥紗代子"]
「ごめんなさい、裏庭を走って行けばあるらしいのだけど、[r]
[sp]周りから近寄ってはダメ！って言われてるから、[r]
[sp]実際のところ、見れてないのよ」[p]
[autosave]
[whosay name="飛鳥紗代子"]
「なぜか無性に見て見たいのですけれどね！」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"] 
;困り 汗 口開
「そんなの、見に行ってはダメですわ……！」[p]

;主人公憂い
#
もしや、飛鳥さんも、その池に呼び寄せられているのでは？ [r]
と思った途端、私の背筋がゾッと寒くなりだした。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（そこまで計算された怪談なのかしら……？）[p]

[whosay name="飛鳥紗代子"]
「[ruby text=みな]皆の噂によると[ruby text=かき]杜[ruby text=つばた]若が見事らしいですわ。[r]
[sp]でも、私、さしてお花に興味がないのに[r]
[sp]何故、行きたくなるのかしらね？　おほほ」[p]
;のほほん。

[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
#
疑心の目で紗代子さんを見たが、[r]
いつも通り、紗代子さんは、表裏のない笑顔で話を進めた。[p]

[whosay name="飛鳥紗代子"]
「[名前]さんの家には、何かあるかしら？[r]
[sp]武家の家なら、[r]
[sp]こんな話より、もっと怖い話があるのでしょう？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「えぇと……覚えがないのよ。[r]
[sp]紗代子さん、ありがとう！[sp]私、充分に涼しくなったわ！」[p]
#
一瞬、あの客間の天井が脳裏に浮かんだが、[r]
布団をバサリと被って口を[ruby text=つぐ]噤んだ。[p]

[whosay name="飛鳥紗代子"]
「そう？[r]
[sp][ruby text=かき]杜[ruby text=つばた]若さんのお話は私にとっては聞き慣れた話だから[r]
[sp]イマイチですけれど……」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"] 
;憂 目閉じ
「……」[p]

[whosay name="飛鳥紗代子"]
「ふう。[sp]わかりましたわ。[sp][名前]さんは、[r]
[sp]もう充分な御様子だから、ここまでにしますわね。[r]
[sp]その代わり、ここに置いてある小説を読ませて頂くわ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"] 
;ニコ汗
「ええ、どうぞ！」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"] 
;困り
（もしかしたら、お父様や磯野なら、[r]
[sp]詳しく知ってるかもしれないわ……）[p]

[whosay name=&sf.girl_namae color="#cf5a7f"] 
;ふぅ
（そういえば、昔、夏の寝苦しい日に寝れないと駄々を[ruby text=こ]捏ねた時、[r]
[sp]お父様が恐ろしい"昔話"をされましたね）[p]

#   
;目閉じ憂
私は、微かに記憶の淵に残る、ご先祖様の話を思い出した。[p]

# 
;モヤモヤのイメージ
紗代子さんが話されたような[r]
愛憎の果てに無残な亡くなり方をされた家臣や、[r]
側室さまのこと、"客間に宿る謎の怨霊"のこと。[p]

;天井背景に全画面？
――その怨霊は、今でも、あの客間で誰かを探してるんだそうだ。[p]

#
思い出したくないのに[r]
気になってしまうと、こうも記憶が蘇ってきてしまう。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（やだわ……もう充分なのに）[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「私、先に寝ますわね！　おやすみなさいませ！」[p]

[whosay name="飛鳥紗代子"]
「？　おやすみなさいませ」[p]
;ＳＥ確認できないのでわからない
;【SE】人々のざわめき（ザワザワ…屋内）
[playse storage=zawa_room.ogg loop=false ]
#？？？
「ザワザワ……」[p]

[whosay name="飛鳥紗代子"]
「そこに誰かいらっしゃるの？」[p]
[autosave]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！……今の音は、きっと風の音ですわ」[p]

[whosay name="飛鳥紗代子"]
「夏なのに夜風がふくのかしら…？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「やめてください……せっかく落ち着こうとしているのに」[p]

[whosay name="飛鳥紗代子"]
「ごめんなさい。[sp]つい」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「紗代子さんは、怖くないのですか？」[p]

[whosay name="飛鳥紗代子"]
「怖いわ……でも、実家でも、そういったことが多いの。[r]
[sp]だから、本当か気になってしまうの」[p]

#
紗代子さんは、まるで本当にいくつか幽霊を見てきたかのように[r]
落ち着きを払っていた。[p]

そんな彼女の振る舞いを見て、私は[r]
本当に得体の知れないものが庭を通り抜けていったような[r]
気がしてしまった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「紗代子さん、[r]
[sp]私、怖くなってきてしまったわ……！」[p]
[fadeoutbgm time=3000]

[whosay name="飛鳥紗代子"]
「ああ、ごめんなさい！[r]
[sp]でも、怖くなった時は、大事な人のことを思い浮かべて寝るのよ。[r]
[sp]そうしたら、生きてる人に勝ることなし！って思えるから」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「生きてる人に勝ることなし？」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】海風と沈む太陽（しっとりと想うシーン、回想シーンなどに
[playbgm storage="sittori_umikaze.ogg" loop=true]
[eval exp="f.bgm_storage='sittori_umikaze.ogg'"]
[endif]

[whosay name="飛鳥紗代子"]
「私の旦那様の元奥方様は、若くして事故で亡くなられたの。[r]
[sp]ですから私は、旦那様にとって二番目の奥さんにあたるのですけど、[r]
[sp]こちらを向いて貰うまで大変苦労しましたのよ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうなのですか？！」[p]

[whosay name="飛鳥紗代子"]
「あら、客間で私達が話をしてるのを聞いてなくて？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「い、いえ、少し気になって！」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（天井のシミが、[r]
[sp]お顔に見えて話を聞いてなかったなんて言えないわ）[p]
;皆は表立っては言いませんからね。 少し分かりにくかったかもしれませんね……[p]

[whosay name="飛鳥紗代子"]
「話は戻しますけれど、[r]
[sp]私は、死んでる方に負けたくありませんでしたから[r]
[sp]旦那様が"旦那様"として、こちらを向いてもらうまで」[p]

「たくさん話しかけたり、苦手なお稽古に励みました」[p]
;お稽古によって見初められた

[whosay name=&sf.girl_namae color="#cf5a7f"]
（紗代子さん……）[p]

[whosay name="飛鳥紗代子"]
「今でこそ、軽口を言い合う仲ですけれど[r]
[sp]結婚当初も、私が他の方から"伯母"や"奥方"と呼ばれるのを[r]
[sp]苦言なされるほど、前の奥様を大切にされていたのよ」[p]
;苦言なされるほど　拒絶されるほど

[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうでしたのね……」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（そういえば、三年ほど前に紗代子さんと出会った時、[r]
[sp]"まだ紗代子伯母さんとは呼ばないでね"……と言われて、[r]
[sp]そのまま、お名前で呼んでますが……）[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（伯父様の悲しげな表情は、そういった理由があるのですね）[p]

[whosay name="飛鳥紗代子"]
「家柄同士のお付き合いだとしても[r]
[sp]共に生きていくなら、どんな困難だって乗り越えて[r]
[sp]その方と素敵な恋を[ruby text=はぐく]育みたいですわ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"] 
;目閉じ照れなし
（恋ですか……）[p]
;藤枝 葛城宮↑
;（共に歩む方との恋……）

[whosay name="飛鳥紗代子"]
「生きて、恋をして、明日も生きていくの。[r]
[sp]そうして、愛されてこそ、女性は美しくなるのよ。[r]
[sp]死んでる方より、何事にも勝ると思わない？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうかも……しれませんね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（紗代子さんは、普段、お話に夢中になる方なのに[r]
[sp]本当は、真面目で落ち着いた方なのね）[p]

[whosay name="飛鳥紗代子"]
「あら、"生きてるものに勝るものなし"……でしたかしら？[r]
[sp]私、細かいことは覚えられないの。[r]
[sp]もし、お調べなられて間違っていたら許して頂戴ね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"] 
;汗
（本当に落ちついていらっしゃるのね……）[p]

[whosay name="猫"]
「にゃーお」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（！！）[p]

[whosay name="飛鳥紗代子"]
「あら、お猫様だったのね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「紗代子さん……取り乱したりして、ごめんなさい」[p]

[whosay name="飛鳥紗代子"]
「いいえ、こちらこそ。[r]
[sp][名前]さんには刺激が強い話だったようでごめんなさい。[r]
[sp]それから、今日は楽しかったわ」[p]

[whosay name="飛鳥紗代子"]
「そうそう、[名前]さん？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"] 
「な、何でしょうか？」[p]

[whosay name="飛鳥紗代子"]
「怖くなった時、[r]
[sp][名前]さんは、どなたと一緒に居たいのか[r]
[sp]思い浮かんだかしら？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"] 
;主人公照れ
「紗代子さん……」[p]
;ピンチになった→怖くなって助けを思ったときの話
[whosay name="飛鳥紗代子"]
「大事なことよ。[sp]扉を開けた瞬間、崖に落ちる瞬間、[r]
[sp]その時に、強く思い浮かべる方がいたら[r]
[sp]その方の事が、好きってことなのよ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"] 
;汗ニコ
（崖に落ちる瞬間……）[p]
[autosave]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;主人公目閉じ
（でも、私は、あの時……彼の人のことを考えたのかもしれない）[p]
#
*seen_next2
;==========================================================
[wait time=50]
;メッセージレイヤを全画面用に設定変更
@layopt layer=fix visible=false
[wait time=10]
[image layer=29 x=0 y=0 zindex=0 storage="bg/B4nFWraU42/bg_asuka_haduki_tuki.jpg" time=50]
;メッセージレイヤを全画面用に設定変更
[wait time=500]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
;==========================================================
#
庭の池に月が浮かび、[r]
青々とした葉が水面を揺らす。[p]
;==========================================================
[resetfont]
;ここは同じ背景でok
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[bg wait=true storage="../fgimage/bg/B4nFWraU42/bg_asuka_haduki_tuki0.jpg" time=0]
[freeimage layer=29 time=0]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
;==========================================================
#
私の心に浮かんだ、彼の人を想えば……。[p]
;========================================================================
[autosave]
;好感度も「1」程、上がるので「29or19」にしています　区切りが悪いと気になられるのでしたら上がり値含めて調整してください
[if exp="f.para_katuraginomiya_koukando >= 19 && (f.katuraginomiya_only == 1 || f.katuraginomiya_fumi_start == 1 || tf.test_sijyou == true)"]
[glink target=*katuragi text="葛城宮　晴仁" fontcolor=gray size=23 width="200" x=500 y=80 color=white]
[endif]
[if exp="(f.event_hujieda[4] == 1 && f.event_hujieda[17] != 1) || tf.test_sijyou == true"]
[glink target=*hujieda text="鳥文の君" fontcolor=gray size=23 width="200" x=500 y=130 color=white]
[endif]
;好感度２９以上で表示
[if exp="f.para_sijyou_koukando >= 29 || tf.test_sijyou == true"]
[glink target=*sijyou text="四条 華織" fontcolor=gray size=23 width="200" x=200 y=80 color=white]
[endif]
[if exp="(f.para_zaizen_koukando >= 29 && f.para_shujinkou_shukujodo >= 18) || tf.test_sijyou == true"]
[glink target=*zaizen text="財前 美彬" fontcolor=gray size=23 width="200" x=200 y=130 color=white]
[endif]
[if exp="f.para_kuroda_koukando >= 29 || tf.test_sijyou == true"]
[glink target=*kuroda text="黒田 将貴" fontcolor=gray size=23 width="200" x=200 y=180 color=white]
[endif]
[s]
;========================================================================
*katuragi
[whosay name=&sf.girl_namae color="#cf5a7f"]
「殿下……」[p]
#
私の心に殿下のお顔が思い浮かんだ。[p]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
[wait time=50]
;メッセージレイヤを全画面用に設定変更
@layopt layer=fix visible=false
[wait time=10]
[image layer=29 x=0 y=0 zindex=0 storage="bg/B4nFWraU42/bg_asuka_haduki_tuki.jpg" time=50]
;メッセージレイヤを全画面用に設定変更
[wait time=10]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=500]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
殿下へ送る、お手紙の内容を考えながら、[r]
目を閉じる。[p]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
;月池と主人公手紙の合体透過画像仮
[image layer=29 name="tukitegami" x=0 y=0 storage="bg/B4nFWraU42/bg_asuka_haduki_tuki1.jpg" time=1000 opasoty=70]
[eval exp="f.haikei_credit='illustration　by　◆I9IhvvVdPo　・　Editing by ＠名無しさん１'"]
[wait time=500]
[font color=white size=20]
[position width=630 height=520 top=80 left=220 page=fore margint="40" opacity=0]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
――暮夏のみぎり[r]
私は、久しく、友人であり伯母である方から、[r]
ゆっくりとお話を伺いました。[r]
[r]
そうして、ふと貴方のことが思い浮かびました。[p]
貴方とご縁があり、こうして手紙を交わしている期間は[r]
あと、どれくらいになるのでしょうか。[r]
もしかしたら、もうあと僅かなのかもしれませんし[r]
もっと続くのかもしれません。[p]
[sp]
[r]
[r]殿下とお出会いし、お手紙を交わすようにり、[r]
いつしか私は、型にはまらない[r]
殿下の意志の強さを尊敬するようになりました。[r][r]
そして殿下の思い描く未来を見てみたいと思ったのですわ。[r]
[r]
殿下と考え方の違う方々はいらっしゃいます。[r]
けれど、私はお力添えしたいと思っておりますわ。[r]
殿下はきっと、これから国をも動かす方となるであり、[r]
私には、遠い方とも感じておりますが……[r]
[p]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[背景_庭_夜]
[freeimage layer=29 time=0]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
（殿下の夢を考えると、私も心が羽ばたくように楽しいわ）[p]
#
浮かんだ内容は、心に押し留めたが、[r]
殿下への御手紙のことを考えると[r]
自然と落ち着いて穏やかな気持ちになっていった。[p]
[if exp="f.okeiko_gamen == true"]
[eval exp="f.para_katuraginomiya_koukando=f.para_katuraginomiya_koukando + 1"]
[endif]
@jump target=comon1
[s]
;======================================================================================
*hujieda
[whosay name=&sf.girl_namae color="#cf5a7f"]
「鳥文の君……」[p]
[eval exp="f.haduki_hujieda=1"]
#
私の心に、鳥文の君のことが思い浮かんだ。[p]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
[wait time=50]
;メッセージレイヤを全画面用に設定変更
@layopt layer=fix visible=false
[wait time=10]
[image layer=29 x=0 y=0 zindex=0 storage="bg/B4nFWraU42/bg_asuka_haduki_tuki.jpg" time=50]
;メッセージレイヤを全画面用に設定変更
[wait time=10]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=500]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
鳥文の君へ送る、お手紙の内容を考えながら、[r]
目を閉じる。[p]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
;月池と主人公手紙の合体透過画像仮
[image layer=29 name="tukitegami" x=0 y=0 storage="bg/B4nFWraU42/bg_asuka_haduki_tuki1.jpg" time=1000 opasoty=70]
[wait time=500]
[eval exp="f.haikei_credit='illustration　by　◆I9IhvvVdPo　・　Editing by ＠名無しさん１'"]
[font color=white size=20]
[position width=630 height=520 top=80 left=220 page=fore margint="40" opacity=0]
[font color=white size=20]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
――暮夏のみぎり[r]
私は、友人であり伯母である方から、[r]
ゆっくりとお話を伺いました。[r]
夏らしく、怪談のような話で怖くなって[r]
しまいました。[r]
[r]
そうして、ふと貴方のことが思い浮かびました。[p]
[sp][r][r]
[sp]貴方様には、お元気に過ごされていますか？[r]
私の[ruby text=こと]箏の音は、届いてるのでしょうか？[r]
貴方に励まされました。[r]
私は[ruby text=こと]箏の音色で感謝を伝えたいと想い、[r]
……そして、貴方に……もう一度……[p]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[背景_庭_夜]
[freeimage layer=29 time=0]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
(お別れの手紙を頂いた。[r] 
[sp]けれど、私の元にまだ鳩さんが来てくれる……) [p]

(鳩さんの姿を見ていると、[r] 
[sp]もう一度、鳥文の君にお手紙をお出ししたいと[r] 
[sp]何度も考えてしまうわ) [p]
#
浮かんだ内容は、心に押し留めて、自戒する。[r]
それでも鳥文の君から頂いたお手紙のことを考えると[r]
自然と落ち着いて穏やかな気持ちになっていった。[p]
[if exp="f.okeiko_gamen == true"]
[eval exp="f.para_hujieda_koukando=f.para_hujieda_koukando + 1"]
[endif]
@jump target=comon1
[s]
;藤枝の選択肢を選んだ場合に明日もお稽古頑張りましょうと表示します
;======================================================================================
*sijyou
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織お兄様……」[p]
#
私の心に華織お兄様が思い浮かんだ。[p]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
[wait time=50]
;メッセージレイヤを全画面用に設定変更
@layopt layer=fix visible=false
[wait time=10]
[image layer=29 x=0 y=0 zindex=0 storage="bg/B4nFWraU42/bg_asuka_haduki_tuki.jpg" time=50]
;メッセージレイヤを全画面用に設定変更
[wait time=10]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=500]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
華織お兄様へ送る、お手紙の内容を考えながら、[r]
目を閉じる。[p]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
;月池と主人公手紙の合体透過画像仮
[image layer=29 name="tukitegami" x=0 y=0 storage="bg/B4nFWraU42/bg_asuka_haduki_tuki1.jpg" time=1000 opasoty=70]
[wait time=500]
[eval exp="f.haikei_credit='illustration　by　◆I9IhvvVdPo　・　Editing by ＠名無しさん１'"]
[font color=white size=20]
[position width=630 height=520 top=80 left=220 page=fore margint="40" opacity=0]
[font color=white size=20]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
――暮夏のみぎり[r]
私は、友人であり伯母である方から、[r]
ゆっくりとお話を伺いました。[r]
夏らしく、怪談のような話で怖くなって[r]
しまいました。[r]
[r]
そうして、ふと華織お兄様のことが[r]
思い浮かびました。[p]
[sp][r][r]
華織お兄様とご縁があり、[r]
;文字数オーバーのため改行
こうして手紙を交わしている期間は[r]
あと、どれくらいになるのでしょうか。[r]
もしかしたら、もうあと僅かなのかもしれませんし[r]
もっと続くのかもしれません。[p]
[if exp=f.event_machi_sijyou[6] == 1]
華織お兄様と、お手紙を交わすようになり、[r]
いつしか私は、華織お兄様への強い憧れを[r]
思い出すようになりました。[r]
寂しい時や不安な時に傍に居てくださった、[r]
華織お兄様。[p]
;怪談に話題につなげる
[sp]あの頃より、私は大人になれたでしょうか？[r]
華織お兄様との淑女となった私との未来を[r]
よく考えてしまいます。[r]
[r]もっと華織お兄様のことが知りたいです。[r]
……そして華織お兄様と……[p]
[else]
華織お兄様とお手紙を交わすようになり、[r]
いつしか私は、華織お兄様のことを[r]
考えるようになりました。[r]
寂しい時や不安な時に傍に居てくださった、[r]
華織お兄様。[r]
;怪談に話題につなげる
今の華織お兄様は、[r]
どの様なお姿をされてるのでしょうか。[r]
私は、もっと華織お兄様のことが知りたいです。 [r]
この様な女性は淑女らしくなく[r]
華織お兄様は好まれないでしょうか？[r]
それでも、いつか淑女となって[r]
……私は……華織お兄様と……[p]
[endif]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[背景_庭_夜]
[freeimage layer=29 time=0]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
（今は恥ずかしくて言えないわ……。[r]
[sp]もっと華織様と親しくなれたなら、お伝えできるでしょうか）[p]
;（もっと素敵な淑女になるように頑張りましょう。[r]
;[sp]濡れても、美しく咲く[ruby text=かき]杜[ruby text=つばた]若のように……）[p]
;（次のお手紙は、どの様にお返事を書きましょうか）[p]
;入れた方がよければいれます　全体の文章量のバランスをみています
#
浮かんだ内容は、心に押し留めたが、[r]
華織お兄様へのお手紙のことを考えると[r]
自然と落ち着いて穏やかな気持ちになっていった。[p]
[if exp="f.okeiko_gamen == true"]
[eval exp="f.para_sijyou_koukando=f.para_sijyou_koukando + 1"]
[endif]
@jump target=comon1
[s]
;========================================================================
*zaizen
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様……」[p]
#
私の心に財前様が思い浮かんだ。[p]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
[wait time=50]
;メッセージレイヤを全画面用に設定変更
@layopt layer=fix visible=false
[wait time=10]
[image layer=29 x=0 y=0 zindex=0 storage="bg/B4nFWraU42/bg_asuka_haduki_tuki.jpg" time=50]
;メッセージレイヤを全画面用に設定変更
[wait time=10]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=500]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
財前様へ送る、お手紙の内容を考えながら、[r]
目を閉じる。[p]
[image layer=29 name="tukitegami" x=0 y=0 storage="bg/B4nFWraU42/bg_asuka_haduki_tuki1.jpg" time=1000 opasoty=70]
[wait time=500]
[eval exp="f.haikei_credit='illustration　by　◆I9IhvvVdPo　・　Editing by ＠名無しさん１'"]
[position width=630 height=520 top=80 left=220 page=fore margint="40" opacity=0]
[font color=white size=20]
――暮夏のみぎり[r]
私は、友人であり伯母である方から、[r]
ゆっくりとお話を伺いました。[r]
夏らしく、怪談のような話で怖くなって[r]
しまいました。[r]
そうして、ふと貴方のことが思い浮かびました。[p]
貴方とご縁があり、こうして手紙を交わしている期間は[r]
あと、どれくらいになるのでしょうか。[r]
もしかしたら、もうあと僅かなのかもしれませんし[r]
もっと続くのかもしれません。[p]
_　お手紙から財前様は、とても現実的で[r]
冷静な印象を持ちました。[r]
私とは違った視点で物事を捉えて[r]
いらっしゃっいます。[r]
けれど、それが私には新鮮で[r]
まるで新しい世界を開けた気持ちになりました。[r]
そして……[p]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[背景_庭_夜]
[freeimage layer=29 time=0]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様の手紙は手厳しいけれど、お返事を考えるのは嫌いではないわ）[p]
（それだけ真剣勝負で試されているから全力で張り合ってしまっている）[p]
#
浮かんだ内容は、心に押し留めたが、[r]
財前様へのお手紙のことを考えると[r]
自然と落ち着いて穏やかな気持ちになっていった。[p]
[if exp="f.okeiko_gamen == true"]
[eval exp="f.para_zaizen_koukando = f.para_zaizen_koukando + 1"]
[endif]
@jump target=comon1
[s]
;========================================================================
*kuroda
[whosay name=&sf.girl_namae color="#cf5a7f"]
「黒田様……」[p]
#
私の心に黒田様が思い浮かんだ。[p]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
[wait time=50]
;メッセージレイヤを全画面用に設定変更
@layopt layer=fix visible=false
[wait time=10]
[image layer=29 x=0 y=0 zindex=0 storage="bg/B4nFWraU42/bg_asuka_haduki_tuki.jpg" time=50]
;メッセージレイヤを全画面用に設定変更
[wait time=10]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=500]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
黒田様へ送る、お手紙の内容を考えながら、[r]
目を閉じる。[p]
[image layer=29 name="tukitegami" x=0 y=0 storage="bg/B4nFWraU42/bg_asuka_haduki_tuki1.jpg" time=1000 opasoty=70]
[wait time=500]
[eval exp="f.haikei_credit='illustration　by　◆I9IhvvVdPo　・　Editing by ＠名無しさん１'"]
[position width=630 height=520 top=80 left=220 page=fore margint="40" opacity=0]
[font color=white size=20]
――暮夏のみぎり[r]
[sp]私は、友人であり伯母である方から、[r]
ゆっくりとお話を伺いました。[r]
夏らしく、怪談のような話で怖くなって[r]
しまいました。[r]
[sp]そうして、ふと黒田様のことが思い浮かびました。[p]
[sp]黒田様とこうして手紙を交わしている期間は[r]
あと、どれくらいになるのでしょうか。[r]
もしかしたら、もうあと僅かなのかもしれませんし[r]
もっと続くのかもしれません。[p]
[sp]このごろは、植物に思いを巡らせることが増えて[r]
まいりました。[r]
[r]
[sp]伯母のお話には[ruby text=かき]杜[ruby text=つばた]若が出てきました。[r]
池の中に咲く[ruby text=かき]杜[ruby text=つばた]若は、その遠さもあって不思議な魅力を[r]
持つように思います。[r]
[r]
[sp]黒田様は池や水辺の植物もお好きでしょうか。[r]
[sp]……[p]
;丁寧に考えてくささって、ありがとうございます。案を一部いただき、この時期の距離感を意識した文章にさせていただきました◆jsYiJcqRkk
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[背景_庭_夜]
[freeimage layer=29 time=0]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
（お手紙を考えると、時を忘れそうになるわ……）[p]
#
浮かんだ内容は、心に押し留めたが、[r]
黒田様へのお手紙のことを考えると[r]
自然と落ち着いて穏やかな気持ちになっていった。[p]
[if exp="f.okeiko_gamen == true"]
[eval exp="f.para_kuroda_koukando = f.para_kuroda_koukando + 1"]
[endif]
@jump target=comon1
[s]
;==========================================================
*comon1

;==========================================================
*comon
;淑女度が低い場合、あげます
[if exp="f.para_shujinkou_shukujodo < 20 && f.okeiko_gamen == true"]
[eval exp="f.para_shujinkou_shukujodo = f.para_shujinkou_shukujodo + 2"]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;藤枝の選択肢を選んだ場合に表示
[if exp="f.haduki_hujieda == 1"]
（明日も、お稽古頑張りましょう）[p]
[else]
（明日も、お手紙を出しましょう）[p]
[endif]

;それでも、淑女度が低い場合、お知らせ。文章は変更してください。なるべく前向きな形かつどのルートでも合うように濁しています
[if exp="f.para_shujinkou_shukujodo < 20"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（それに、もっと淑女らしく……）[p]
[endif]

#
彼の人を想えば、ずいぶんと心軽やかになったのであった。[p]
*end_Q
[whosay name=&sf.girl_namae color="#cf5a7f"]
「落ち着いて眠れそうです。 おやすみなさいませ」[p]

[whosay name="飛鳥紗代子"]
「おやすみなさいませ。[sp]いい夢を」[p]
[fadeoutbgm time=3000]

[whosay name="飛鳥紗代子"]
（ふぅ。猫様にしては、ずいぶんと大きな音でしたわね）[p]
;【SE】軽い足音（フェードアウト）
[playse storage=girl_out_walk.ogg loop=false ]
[暗転２ time=400]
[wait time=100]
[暗転]
;話題追加作業をありがとうございます。↓一旦暗転してから空白のメッセージウィンドウが表示されるのはすこしシュールに感じましたので、ウィンドウを消去します◆jsYiJcqRkk
;会話ウィンドウ消去
[freeimage layer = 14]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[暗転２終了 time=600]
;・・・・・・
;[layopt layer=29 visible=true]
[if exp="f.okeiko_gamen == true"]
;【話題入手】
[話題入手 wadai_txt="『怪談についての話題』を手に入れました"]
[eval exp="f.wadai_list_hairetsu[f.wadai_hairetsu_number].push('怪談についての話題',2,2,2,2,1,'a','','','','')"]
[endif]

[eval exp="sf.event_8_week_asuka = 1"]
[er]
[イベントシーン終了]
[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[else]
@jump storage="test_sijyou.ks"
[endif]
[s]

;------------------------------------------------
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

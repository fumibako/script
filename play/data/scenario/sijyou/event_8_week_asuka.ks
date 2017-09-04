[stopbgm]
[call target=*bonyou storage="sijyou/preload_sijyou.ks"]
[wait time=50]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[freeimage layer = 1]
[wait time=10]
[image layer=29 x=0 y=0 zindex=0 storage="bg/bg_prologue.jpg" time=50]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
[プリロード画面消去]
;=====================ここからお芝居の幕引きです==============================

――夏の半ば。[r]
[名字]家では、親戚一同が集まり、[r]
祖先の霊を祀る行事が行われた。[p]
;==========================================================
[if exp="sf.BGM=='ON'"]
;【BGM】五色（重いムードに
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]
[背景_庭]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[freeimage layer=29 time=0]
[メッセージウィンドウ上ボタン表示]
;==========================================================
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お疲れ様です」[p]
[whosay name="飛鳥紗代子"]
「[名前]さんもお疲れ様です」[p]
#
祀事が終わり、親戚の飛鳥紗代子さんと挨拶をする。[p]

[whosay name="飛鳥紗代子"]
「無事終わってホッとしましたわ。[r]
[sp]祀り事の最中は、棒立ちか正座しかしないのですから、[r]
[sp]足が石になるかと思いました」[p]

[whosay name="飛鳥伯父様"]
「こら、紗代子。[r]
[sp][名前]さんの手本になるように年上としての振る舞いをなさい。[r]
[sp]君は親しい人の前だと、直ぐに気を緩ませる」[p]
;主人公と紗代子さんが親しいことを示唆
[whosay name="飛鳥紗代子"]
「あら、旦那様。[r]
[sp]お休みの時は身体を休まなくては、[r]
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
「(結婚してから)そろそろ三年ほど経つ。[r]
[sp]いい頃合いだと思うが……」[p]
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
[sp]まだ紗代子さんに対して怒っていらっしゃるのかしら？)[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
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
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[freeimage layer = 1]
[wait time=10]
[image layer=29 x=0 y=0 zindex=0 storage="bg/B4nFWraU42/bg_asuka_haduki_tenjyou2.jpg" time=50]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
;==========================================================
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
[bg wait=true storage="../fgimage/bg/B4nFWraU42/bg_asuka_haduki_tenjyou2.jpg" time=0]
[freeimage layer=29 time=0]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
;==========================================================
#
その中で私は、不安げに目を伏せていた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（ふう。[r]
[sp]このお部屋、行事がない限りは使わないけれど、[r]
[sp]天井のシミがどことなく顔にみえて、近寄りがたいのだったわ)[p]
[whosay name="飛鳥紗代子"]
「どうしましたの、[名前]さん？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
「いえ……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(いけない、せっかく紗代子さん達がいらっしゃるのに)[p]

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
[sp]私も貴方には苦労させられたのよ。 良い返事を頂くまで[r]
[sp]とても苦労しましたのよ？」[p]
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
@layopt layer=13 visible=true
[image layer=13 x=0 y=0 zindex=0 storage="bg/white.jpg" time=2000]
[wait time=100]
[bg wait=true storage="../fgimage/bg/B4nFWraU42/bg_asuka_haduki_tenjyou3.jpg" time=0]
[freeimage layer=13 time=500]
[wait time=10]

@layopt layer=13 visible=true

突如、雲を引き裂くような雷がなった後、雨がざんざんと降りはじめた――。[p]
;【SE】雨
[playse storage=rain.ogg loop=false ]
;==========================================================
[wait time=50]
@layopt layer=fix visible=false
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[freeimage layer = 1]
[wait time=10]
[image layer=29 x=0 y=0 zindex=0 storage="bg/bg_asuka_haduki_ame.jpg" time=50]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
;==========================================================
;ザァー…SE 雨イメージ
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
[背景_庭_夜]
[freeimage layer=29 time=0]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
;==========================================================
[whosay name="飛鳥紗代子"]
「この雨ですと、車を出すのも危なさそうですわね」[p]
#
紗代子さんは、のんびりと磯野が出したナスやキュウリの漬物を[r]
食べながら独りごちた。[p]
[whosay name="飛鳥伯父様"]
「こら、紗代子。[sp]はしたないぞ」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
;↓眉：下がり眉[主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
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

;==========================================================
[wait time=50]
@layopt layer=fix visible=false
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[freeimage layer = 1]
[wait time=10]
[image layer=29 x=0 y=0 zindex=0 storage="bg/bg_prologue.jpg" time=50]
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
[主人公退場]
[freeimage layer=29 time=0]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
;==========================================================
[whosay name=&sf.girl_namae color="#cf5a7f"]
(今日に限って、何で、こんなに熱いのかしら？)[p]

[whosay name="飛鳥紗代子"]
「ふう。　今日は一段と寝苦しい日ですわね」[p]

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
[image layer=29 x=0 y=0 zindex=0 storage="bg/bg_prologue.jpg" time=50]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
;==========================================================
;全画面 森と池
昔々、飛鳥の家に[ruby text=かき]杜[ruby text=つばた]若という美しい腰元がいて、[r]
殿様の寵愛を受けていたの――。[p]

ところが殿様の長男も[ruby text=かき]杜[ruby text=つばた]若を愛するようになり、[r]
やがて杜若は身籠もる。[p]

何も知らない殿様は大層喜ぶが、[r]
側近達は、口々に[r]
[ruby text=かき]杜[ruby text=つばた]若のお腹の子は若君の子と告げ口する。[p]

怒った殿様は矢の柄えで、[r]
[ruby text=かき]杜[ruby text=つばた]若を叩いて尋問するけれど、[r]
[ruby text=かき]杜[ruby text=つばた]若は泣くばかりではく白状はしなかったの。[p]

業を煮やした殿様は[r]
[ruby text=かき]杜[ruby text=つばた]若を荒縄で縛り上げ家来どもに命じて……[p]
;【SE】水音
[playse storage=mizu_ike.ogg loop=false ]
[sp][r][r]
池に放り込んでしまったの。[p]

;==========================================================
[resetfont]
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[freeimage layer=29 time=0]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
;==========================================================
[whosay name=&sf.girl_namae color="#cf5a7f"]
「酷いわ……」[p]

[whosay name="飛鳥紗代子"]
「このあと、この池の近くをとおった奥方様や側室様は、[r]
[sp]釣られるようにして小舟に乗って[r]
[sp]思わぬ事故死を繰り返したそうよ……」[p]

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
(そこまで計算された怪談なのかしら……？)[p]

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
[sp]詳しく知ってるかもしれないわ……)[p]

[whosay name=&sf.girl_namae color="#cf5a7f"] 
;ふぅ
（そういえば、昔、夏の寝苦しい日に寝れないと駄々を[ruby text=こ]捏ねた時、[r]
[sp]お父様が恐ろしい"昔話"をされましたね)[p]

#   
;目閉じ憂
私は、微かに記憶の淵に残る、ご先祖様の話を思い出した。[p]

# 
;モヤモヤのイメージ
飛鳥さんが話されたような[r]
愛憎の果てに無残な亡くなり方をされた家臣や、[r]
側室さまのこと、"客間に宿る謎の怨霊"のこと。[p]

;天井背景に全画面？
――その怨霊は、今でも、あの客間で誰かを探してるんだそうだ。[p]

#
思い出したくないのに[r]
気になってしまうと、こうも記憶が蘇ってきてしまう。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(やだわ……もう充分なのに)[p]

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
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そういえば、三年ほど前に紗代子さんと出会った時、[r]
[sp]"まだ紗代子伯母さんとは呼ばないでね"……と言われて、[r]
[sp]そのまま、お名前で呼んでますが……)[p]

[whosay name="飛鳥紗代子"]
「あら、客間で私達が話をしてるのを聞いてなくて？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「い、いえ、少し気になって！」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（天井のシミが、[r]
[sp]お顔に見えて話を聞いてなかったなんて言えないわ)[p]

;皆は表立っては言いませんからね。 少し分かりにくかったかもしれませんね……[p]

[whosay name="飛鳥紗代子"]
「話は戻しますけれど、[r]
[sp]私は、死んでる方に負けたくありませんでしたから、[r]
[sp]旦那様が"旦那様"として、こちらを向いてもらうまで」[p]

「たくさん話しかけたり、苦手なお稽古に励みました。[r]
[sp]今でこそ、軽口を言い合う仲ですけれど、[r]
[sp]当時は苦労したものです」[p]
;お稽古によって見初められた

[whosay name="飛鳥紗代子"]
「家柄同士のお付き合いだとしても[r]
[sp]共に生きていくなら、[r]
[sp]その方と素敵な恋をしてみたいですもの」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"] 
;目閉じ照れなし
（恋ですか……)[p]
;藤枝 葛城宮↑
;(共に歩む方との恋……)

[whosay name="飛鳥紗代子"]
「生きて、恋をして、明日も生きていくの。[r]
[sp]そうして、愛されてこそ、女性は美しくなるのよ。[r]
[sp]死んでる方より、何事にも勝ると思わない？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうかも……しれませんね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（紗代子さんは、普段、お話に夢中になる方なのに[r]
[sp]本当は、真面目で落ち着いた方なのね)[p]

[whosay name="飛鳥紗代子"]
「あら、”生きてるものに勝るものなし”……でしたかしら？[r]
[sp]私、細かいことは覚えられないの。[r]
[sp]もし、お調べなられて間違っていたら許して頂戴ね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"] 
;汗
(本当に落ちついていらっしゃるのね……)[p]

[whosay name="猫"]
「にゃーお」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(！！)[p]

[whosay name="飛鳥紗代子"]
「あら、お猫様だったのね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「紗代子さん……取り乱したりして、ごめんなさい」[p]

[whosay name="飛鳥紗代子"]
「いいえ、こちらこそ。[r]
[sp][名前]さんには刺激が強い話だったようでごめんなさい。[r]
[sp]それから、今日は楽しかったわ」[p]

[whosay name="飛鳥紗代子"]
「で。[sp]どなたを思い浮かべたのかしら？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"] 
;主人公照れ
「紗代子さん……」[p]

[whosay name="飛鳥紗代子"]
「大事なことよ。[sp]扉を開けた瞬間、崖に落ちる瞬間、[r]
[sp]その時に誰かの顔を思い浮かべたら[r]
[sp]その方の事が、好きってことなのよ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"] 
;汗ニコ
(崖に落ちる瞬間……)[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;主人公目閉じ
(でも、私は、あの時……彼の人のことを考えたのかもしれない)[p]
;葛城宮のイベントをしてる時もこのセリフで大丈夫？

;庭の池に葉月が浮かぶは？葉月？？なので修正

#
庭の池に月が浮かび、[r]
青々とした葉が水面を揺らす。[p]

#
私の心に浮かんだ、彼の人を想えば……[p]
;========================================================================
;３回クリアしていなければ@jump target=comonへ　変数名は仮　クリアマクロにいれほしい
[if exp="sf.ending_Number_of_times < 4"]
@jump target=comon
[endif]
[暗転２]
[if exp="f.katuraginomiya_only == 1 || f.katuraginomiya_fumi_start == 1"]
[glink target=*katuragi text="葛城宮　晴仁" fontcolor=gray size=23 width="200" x=200 y=80 color=white]
[endif]
[if exp="f.event_hujieda[4] == 1 && f.event_hujieda[17] != 1"]
[glink target=*hujieda text="鳥文の君" fontcolor=gray size=23 width="200" x=200 y=80 color=white]
[endif]
[glink target=*sijyou text="四条 華織" fontcolor=gray size=23 width="200" x=200 y=80 color=white]
[glink target=*zaizen text="財前 美彬" fontcolor=gray size=23 width="200" x=200 y=130 color=white]
[glink target=*kuroda text="黒田 将貴" fontcolor=gray size=23 width="200" x=200 y=180 color=white]
[endif]
[s]
;========================================================================
*katuragi
[eval exp="f.para_katuraginomiya_koukando=f.para_katuraginomiya_koukando + 1"]
@jump target=comon1
[s]
;========================================================================
*hujieda
[eval exp="f.para_hujieda_koukando=f.para_hujieda_koukando + 1"]
@jump target=comon1
[s]
;========================================================================
*sijyou
[eval exp="f.para_sijyou_koukando=f.para_sijyou_koukando + 1"]
@jump target=comon1
[s]
;========================================================================
*zaizen
[eval exp="f.para_sijyou_zaizen=f.para_zaizen_koukando + 1"]
@jump target=comon1
[s]
;========================================================================
*kuroda
[eval exp="f.para_kuroda_koukando = f.para_kuroda_koukando + 1"]
@jump target=comon1
[s]
;========================================================================
*comon1
[暗転２終了]
*comon
[whosay name=&sf.girl_namae color="#cf5a7f"]
;藤枝の好感度が高い場合、f.event_hujieda[17]進行不可手紙　７月のｲﾍﾞﾝﾄf.event_hujieda[4]
[if exp="(f.katuraginomiya_only == 1 || f.katuraginomiya_fumi_start ==1) || (f.event_hujieda[4] == 1 && f.event_hujieda[17] != 1)"]
(明日も、お稽古頑張りましょう)[p]
[else]
(明日も、手紙を出しましょう)[p]
[endif]
#
彼の人を想えば、ずいぶんと心軽やかになったのであった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「落ち着いて眠れそうです。 おやすみなさいませ」[p]

[whosay name="飛鳥紗代子"]
「おやすみなさいませ。[sp]いい夢を」[p]
[whosay name="飛鳥紗代子"]
（ふぅ。猫様にしては、ずいぶんと大きな音でしたわね）[p]
;【SE】軽い足音（フェードアウト）
[playse storage=girl_out_walk.ogg loop=false ]
[暗転２]
[wait time=1000]
[暗転]
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

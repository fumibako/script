;¥¥¥¥¥¥¥¥イベント2.5お見合い感想手紙¥¥¥¥¥¥¥¥
;☆四条からお見合いについての手紙がやってくる。久しぶりに会って見違えたことなど
;///////////////////////////////
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;=================================================================================_
*seen0
;【背景】ヒロインの部屋
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
;//////////////テスト用ジャンプ　いちからみてられっかー/////////////////
[if exp=tf.test_sijyou==true]
テストフラグで表示されてます。ジャンプしますか？[r]
[link target=test_jmp]【１】シーン変更地点からテスト・ミニバラ[endlink][r]
[link target=*first_seen]【２】はじめからみる[endlink][s]
[endif]
*test_jmp
[clearstack]
[if exp=tf.test_sijyou==true]
[er]
[四条ベース羽織]
[wait time=10]
[四条微笑み]
[wait time=10]
@jump target=mini_bara
[endif]
;///////////////////////////////
*first_seen
[autosave]
[er]
[whosay name="磯野" color="dimgray"]
「お嬢様、四条様からお手紙が届いております」[p]
[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】古都に咲く花（プロローグ等）スマホでのフリーズ対策試験的に[p]or[l]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！　ありがとう 返事を書いたら呼びます。下がって頂戴」[p]
[whosay name="磯野" color="dimgray"]
「はい」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[主人公目閉じ]
#
[手紙四条 fumi_number=51]
[r][r][r]
[名前]へ[r]
[r]
久しぶりに会って見違えたこと驚いたよ。[r]
[名前]は久しぶりに会ってどう思ったかな？[r]
あの花をみる度に[名前]のことを思い出すよ。[r]
[名前]のことをもっと知りたいです。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=51]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(私も四条様のことを知りたいです)[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[主人公目を開く]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(……今後ともいろいろとお教えいただければ幸いです)[p]

#
;○あくまで年上として尊敬する主人公
;¥¥¥¥¥¥¥¥¥¥手紙イベント¥¥¥¥¥¥
;機能ボタン消去
;[layopt layer=fix visivle=false]てつやでつづりおもいだせない
[clearfix]
[eval exp="sf.FButton='OFF'"]

[layopt layer=29 visible=true]
;背景変更:黒茶・和紙風
[image layer=29 x=1 y=1 storage="bg/bg_prologue.jpg" time=500]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;=================================================================================_
*seen1
[autosave]
;○四条邸宅の庭
;【背景】[洋館庭]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyouke.jpg"]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[主人公通常]
;テキスト全画面
[font color=white size=27]
#
――数日後、四条邸宅の庭。[l][r]
[r]
四条家と[名字]家は家柄も近く、[r]
[font color="0xFFFFCC" size=27][名前][resetfont]
[font color=white size=27]の兄の[resetfont]
[font color="0xFFFFCC" size=27]文矢[resetfont]
[font color=white size=27]の付き合いもあり[r]
;不評な『』の代替案を模索

四条家と[名字]家の婚約は[r]
誰もが予想し、望まれていた。[l][r]
[r]
それだけに、親戚ぐるみで園遊会が行われることとなった。[p]
[resetfont]
[freeimage layer = 29 time=500]

;機能ボタン表示
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
;¥¥¥¥¥¥¥¥イベント3¥¥¥¥¥¥¥¥
;=================================================================================_
*seen2
[autosave]
;☆デート1 ミッド・ポイント//////////////////
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[whosay name="四条父" color="darkolivegreen"]
「この国の未来と、四条家と[名字]家との婚約を祝って乾杯」[p]
;【SE】乾杯
[playse storage=tya_katya.ogg loop=false ]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「乾杯」[p]
;○親戚に挨拶をする主人公と四条。
[whosay name="四条祖母" color="#916565"]
「この回遊庭園は、大名屋敷の折に造られたものを活かしており、[r]
[sp]外交の為にも一定の場所から洋風にしているんですの……」[p]
;○主人公真摯に聞いている
[主人公目パチ1回]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうなんですか」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="四条親戚" color="#807070"]
「これは良いご縁。ウチもあやかりたいな」[p]
[whosay name="四条 華織" color="olivedrab"]
「本日はお越しいただきありがとうございます」[p]
;【SE】人々のざわめき（ザワザワ…屋外）
;[playse storage=zawa_out.ogg loop=false ]
[主人公目パチ1回]
[whosay name="四条祖父" color="#888898"]
「あの子の"新しい文通相手"は、[名字]家のような武家がいいのぉ」[p]
[whosay name="四条祖父" color="#888898"]
「手筈は整っておるだろうな？ 」[p]
[whosay name="四条母" color="#9B608B"]
「は、はい。その様に私も計らっております。[r]
[sp]何分、"あの事"があってから部屋からあまり出てこないもので」[p]
[whosay name="四条祖父" color="#888898"]
「それにしても、こういう時くらい、他の兄弟達も帰ってこればいい[r]
[sp]ものを」[p]
[whosay name="四条母" color="#9B608B"]
「申し訳ございません……」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(なんとなく見覚えがあるような方もいらっしゃいますね)[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(これからは、ここの『しきたり』を勉強しなくては！ )[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
;○はりきってる四条祖母 姑？
[whosay name="四条祖母" color="#916565"]
「それからですね……」[p]
;=================================================================================_
*seen3
[主人公目パチ1回]
;○小さな親戚の子は鬼ごっこやかくれんぼをしている ぶつかりそうになると四条がかばってくれる 賑やかな雰囲気
;【登場】四条
;[四条ベース着物]　公式の場なので羽織？
[四条ベース羽織]
[四条微笑み]
[whosay name="四条 華織" color="olivedrab"]
「少し、疲れたかい？」[p]
[whosay name="四条 華織" color="olivedrab"]
「ごめんね。[r]
[sp]どうも、我が家は、家同士の繋がりや[ruby text=し]仕[ruby text=きた]来りが強くて」[p]
;謝るなよーって思うが他にセリフ思いつかない
[四条困り微笑み]
[whosay name="四条 華織" color="olivedrab"]
「けど、みんな、久しぶりに[名前]が来てくれたものだから、[r]
[sp]構いたくて仕方ないんだ」[p]
[if exp="sf.BGM=='ON'"]
[fadeoutbgm time=3000]
[endif]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、とても親切な方ばかりでいらっしゃるので楽しかったです」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[四条微笑み]
[四条口開]
[whosay name="四条 華織" color="olivedrab"]
「むこうで休もうか」[p]
;=================================================================================_
*seen4
[autosave]
;【退場】四条
[四条退場]
;地の文などをいれたため、明るいシーン→暗いシーン（華衣）→戻る明るい
;【背景】[洋館庭]
[chara_mod name="bg" storage="bg/bg_garden_isu.jpg" time=1000]
[eval exp="f.haikei_credit=''"]
;【登場】四条
;[四条ベース着物]　公式の場なので羽織？
[四条ベース羽織]
[四条微笑み]
[whosay name="四条 華織" color="olivedrab"]
「昔は、兄も弟も海外に留学に出掛けていて、僕だけが家の留守を[r]
[sp]任されていたんだ。[r]
[sp]だから文矢と[名前]が遊びにきてくれた時は、とても嬉しかったよ」[p]
[主人公目パチ1回]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(そうなのですね)[p]
[主人公目閉じ]
[四条目パチ1回]
#
――兄によく連れられ訪ねた四条家。[r]
花咲く庭で、いつもひとりで居た四条様と出会って、[r]
いつしか、ここは、私にとっての憧れと夢の場所となった。[p]
;ピュー◎ランド？
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
#
私は、思い出の場所が変わりないかと、庭を眺めた。[p]
[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】「五色」
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]
;がさがさ【SE】茂み (遠くでガサガサッ)
[playse storage=shigemi_gasagasa_s.ogg loop=false ]
;【背景】[洋館庭]
[chara_mod name="bg" storage="bg/bg_garden_isu_dark.jpg" time=1000]
[eval exp="f.haikei_credit=''"]
;○そこはかとなく大人の雰囲気
;○伏線 無くてもどちらでも
#
;ナレーターモノローグ
ふと、気づくと、四条の後ろの木陰の下に人影が見え、その人物は、こちらを見つめている。[p]
[if exp="sf.BGM=='ON'"]
[fadeoutbgm time=3000]
[endif]
[四条目パチ1回]
[whosay name="？？？" color=%mp.color]
「……なんで……だけ」[p]
#
こちらが気づいた途端、それは何も無かったかのように影へと消えていった。[p]
[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】古都に咲く花（プロローグ等）スマホでのフリーズ対策試験的に[p]or[l]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
;【背景】[洋館庭]
[chara_mod name="bg" storage="bg/bg_garden_isu.jpg" time=1000]
[eval exp="f.haikei_credit=''"]
[主人公目パチ1回]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（？）[p]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
;【SE】子供たち(楽しげな笑い声)
[playse storage=kodomotachi_warai.ogg loop=false ]
[whosay name="親戚の子 その壱" color="#807070"]
「どこに隠れたのー！？」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name="親戚の子 その弐" color="#807070"]
「こっちだよー！ 」[p]
;【SE】ザッ(衣擦れ)
[playse storage=za_kinuzure.ogg loop=false ]
[四条驚き]
[quake count=3 time=250 hmax=10 vmax=10]
[主人公ポーズ両手]
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「きゃっ」[p]
[主人公ポーズ片手]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="四条 華織" color="olivedrab"]
「おっと」[p]
;【SE】ザッ(衣擦れ)
[playse storage=za_kinuzure.ogg loop=false ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[主人公ポーズ通常]
[quake count=3 time=250 hmax=10 vmax=10]
[主人公驚]
[whosay name="親戚の子 その弐" color="#807070"]
「あ、ごめんなさーい！」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[四条微笑み]
[whosay name="四条 華織" color="olivedrab"]
「[名前]、大丈夫かい？」[p]
[if exp="sf.BGM=='ON'"]
[fadeoutbgm time=3000]
[endif]
[主人公照れ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]
[主人公ポーズ指]
[主人公目を開く]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(急に腕を引かれて驚いてしまいました)[p]
[四条困り微笑み]
[whosay name="四条 華織" color="olivedrab"]
「ここは走りやすい場所だからね。[r]
[sp][名前]がよければ、また隠れ鬼でもするけど」[p]
[四条微笑み]
[whosay name="四条 華織" color="olivedrab"]
「もう、そんな必要はないようだね」[p]
;まだ妹扱い
[whosay name="四条 華織" color="olivedrab"]
「そうだ。　新しい庭が出来たんだ、一緒に見に行こうか」[p]
[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】「きずな」
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]
[主人公ポーズ通常]
[主人公通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
*mini_bara
[autosave]
[er]
;[暗転]より場面転換でしょうか
;【背景】[洋館庭]
[chara_mod name="bg" storage="bg/B4nFWraU42/rose_shigemi.jpg"]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
;追記分
;◎家族ぐるみの付き合いになってきたので四条のことを名前で呼んでいいかきく
[whosay name="四条 華織" color="olivedrab"]
「ここには、小さな種類の薔薇が植えてあるんだ」[p]
#
四条様は私の隣にたって、薔薇の名について話しながら、[r]
出会った頃のように私の髪を撫でる。[p]
[四条目パチ1回]
[主人公目パチ1回]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(やっぱり、まだ四条様にとって、妹扱いなのでしょうか？)[p]
[四条目パチ1回]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(そうだわ。私、四条様に言わないといけないことがありましたわ)[p]
[四条目パチ1回]
;この部分↓は、あっても無くても。
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(もっと四条様、いえ、華織様と仲を深めたい)[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「四条様」[p]
[四条目パチ1回]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="四条父" color="darkolivegreen"]
「２人はやはり仲が良いな！ 」[p]
[whosay name="四条 華織" color="olivedrab"]
「 ？ 」[p]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[whosay name="四条母" color="#9B608B"]
「アナタ、邪魔をなさらないように」[p]
[主人公横目パチ1回]
[whosay name="四条父" color="darkolivegreen"]
「そうだな！ 」[p]
[主人公ポーズ指]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
;○出だしを折られて[主人公汗]
[主人公ポーズ通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[whosay name="四条 華織" color="olivedrab"]
「なんだい[名前]？ 」
[四条目パチ1回]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「あの……四条様」[p]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[主人公通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ご家族でお付き合いするにあたり[r]
[sp]下のお名前でお呼びしてよろしいでしょうか？ 」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[主人公目パチ1回]
[四条驚き]
[whosay name="四条 華織" color="olivedrab"]
「！[sp]再会したときから気になっていたけど、
[四条笑顔]
そんなことで悩んでいた[r]
[sp]のかい？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お付き合いをするのに……華織お兄様なんて……もう呼べませんわ」
;[主人公怒り]または[主人公照れ]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[p]
[whosay name="四条 華織" color="olivedrab"]
「[名前]は、可愛らしい方ですね。[r]
[四条口微笑み]
[sp]そうですね。 僕も、[名前]をひとりの女性としてお付き合いを[r]
[sp]させていただきましょうか」[p]
;態度を改ましょうか　敬愛
;わかりやすいセリフ
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……本当ですか？」
[wait time=10]
[主人公目パチ1回]
[p]
#
四条様は、私が想像していたことよりも、遥かに快く了承してしまったので[r]
思わず聞き返してしまった。[p]
;もっと簡単な言い方は？
[whosay name="四条 華織" color="olivedrab"]
[四条目閉じ]
「えぇ。[r]
[sp]ただ、昔の[名前]ちゃんが、可愛らしいと記憶しているので、[r]
[sp]少し時間がかかってしまうかもしれません」[p]
[whosay name="四条 華織" color="olivedrab"]
「ですが、少しずつ[名前]との関係を深めていきましょうか」
[四条笑顔]
[p]
;記者会見風回避できたかな
@jump target=*select_2

[autosave]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;[link]タグでの選択肢
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢用レイヤーを追加
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様……)
;背景変更:和紙風 桜色
[chara_mod name="bg" storage="bg/plane_sakura.jpg" time=100]
[eval exp="f.haikei_credit=''"]
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
[link target=*select_1]私は、緊張してしまった。[endlink][r]
[r][r][r]
[link target=*select_2] 私は、ほっとした。[endlink][r]
[resetfont]
[s]
*select_1
;//////////////私は緊張してしまった。////////////////////////////
;違和感ある人はこっちの流れ　好感度上げればいいのかも？
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
;【背景をもどす】[洋館庭]
[chara_mod name="bg" storage="bg/B4nFWraU42/rose_shigemi.jpg"]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[er]
#
私は緊張してしまった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
（どうしてからしら？[r]
[主人公伏目]
_　私が、望んでいたことなのに少し緊張してしまうのは)[p]
（そうだわ。　四条様にお近づきにあたって、私も淑女として[r]
_　成長しないといけないのだわ)[p]
#
これからの未来に身構えていると、四条様は私の手をとって優しい眼差しをむけられた。[p]
;フォロー
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[whosay name="四条 華織" color="olivedrab"]
「これからはどの様に呼んでいただいても構いませんよ」
[四条微笑み][p]
[whosay name="四条 華織" color="olivedrab"]
「なんでしたら、"華織" でもいいですよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「いえ、 "華織様" とお呼びさせてください」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り照れ]
(もしかして、また、気を使われていまったかしら？)[p]
@jump target=common_0


;//////////////胸が高鳴った//////////////
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
;【背景をもどす】[洋館庭]
[chara_mod name="bg" storage="bg/B4nFWraU42/rose_shigemi.jpg"]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
#
私は、ほっとした。[p]
*select_2
[whosay name=&sf.girl_namae color="#cf5a7f"]
(よかった。これからは……)[p]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[whosay name="四条 華織" color="olivedrab"]
「これからはどの様に呼んでいただいても構いませんよ」
[四条微笑み][p]
[whosay name="四条 華織" color="olivedrab"]
「なんでしたら、"華織" でもいいですよ」[p]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、 "華織様" とお呼びさせてください」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[主人公目閉]
(華織様ったら……ですが、ようやく私たちは……)[p]
[主人公伏目パチ1回]
#
――　私と四条様の間に新しい風が吹いていく。[p]
出会いを振り返れば、とても長い月日。[p]
;理由をかいて↑　つまりどうなった？↓
恋仲のように呼び合える。[r]
ただ、それだけのことが、私の胸の奥をほんのりと熱くさせた。[p]
;難しい

*common_0
[autosave]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「[名前]。
[四条口開]
久しぶりに来た、我が家を見て回ろうか」[p]
[if exp="sf.BGM=='ON'"]
[fadeoutbgm time=3000]
[endif]
[whosay name="華織" color="olivedrab"]
「いずれ、君の家になる場所だから、迷子にならないように[r]
[sp]覚えておこうか」[p]
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、華織様」[p]
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

;【背景】[温室]
[chara_mod name="bg" storage="bg/B4nFWraU42/rose_onsitsu.jpg"]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
#
;ナレーター
"華織様"は私に思い出の場を語り合いながら、[ruby text=あたた]暖かな温室へと誘った。[p]
;連れ誘った
[四条目パチ1回]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「珍しい草木や花々が咲いてますね」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[主人公目パチ1回]
[whosay name="華織" color="olivedrab"]
「気に入ったものがあったら、また差し上げますよ」[p]
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「この不思議な形をした植物は何でしょうか？」[p]
[主人公通常]
[whosay name="華織" color="olivedrab"]
「ペヨーテといって、サボテンの一種だよ[r]
[sp][名前]は好きではないかもしれないね」[p]
[四条口微笑み]
[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「色んな種類の花々があるのですね」[p]
[四条憂い]
[whosay name="華織" color="olivedrab"]
「そうだね。いざという時の為にね」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[主人公ポーズ指]
[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(？ ……華織様のお祖母様も、華道家でいらしゃいましたから、[r]
[sp]その為でしょうか？)[p]
;……華織様のお祖母様は
;○過去のくだり、家のことも(手紙で追記あり)あってこの時点で主人公はあまり気にせず。 
[主人公ポーズ通常]
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「[名前]、
[四条口開]
薔薇園を見に行こうか」[p]
;【退場】四条
[四条退場]
;=================================================================================_
*seen6
[autosave]
;○薔薇園で麗しさ表現
;場面転換
;【背景】[薔薇庭]
[chara_mod name="bg" storage="bg/B4nFWraU42/niwa_rose_funsui.jpg"]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「綺麗……」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;綺麗な場所か見せてから登場
;【登場】四条
;[四条ベース着物]　公式の場なので羽織？
[四条ベース羽織]
[四条微笑み]
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
;ここに連れてきたのはなんなの？？　適当に甘いシーン作ってください！！
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
;どんどん軽薄なゲームに・・・
[whosay name="華織" color="olivedrab"]
[四条微笑み]
「綺麗だね。　よく似合っているよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ]
「ありがとうございます……」
[主人公伏目パチ1回]
[p]
[whosay name="華織" color="olivedrab"]
「[名前]も歩き回って疲れただろう？　そろそろ休もうか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「は、はい」[p]
[whosay name="華織" color="olivedrab"]
「近くに池があるんだ。　
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
ボートに乗りながらお茶でもしましょう」[p]
#
[主人公退場]
;【退場】四条
[四条退場]
;○2人でボートに
;場面転換
;=================================================================================_
*seen7
[autosave]
;【SE】水音
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
;///////////////////////準備///////////////////
[layopt layer=fix visible=false]
[playse storage=mizu_ike.ogg loop=false ]
[layopt layer=29 visible=true]
[image layer=29 name="kakusi" x=1 y=1 storage="bg/B4nFWraU42/niwa_large_ike.jpg" time=1000]
[mtext text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
;[四条アップ]は登場いてるときしか使ったことないのでここで準備
;【背景】[湖畔]
[chara_mod name="bg" storage="bg/B4nFWraU42/niwa_large_ike.jpg" time=100]

[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[四条ベース羽織]
[wait time=10]
[四条通常]
[四条微笑み]
[wait time=10]
[四条アップ]
[freeimage layer=29 time=1200]
;///////////////////////準備///////////////////
[layopt layer=fix visible=true]
#
湖畔。暖かな日差しが水面を輝かせ、2人を乗せたボートをゆらゆらと照らす。[p]
;[SE水を跳ねる音]？
[whosay name="華織" color="olivedrab"]
「結構、遠くまで漕いでしまったね」[四条目閉じ][p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですね」[p]
[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様、
[主人公驚]
意外とお力も強いのですね)[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
(息切れもされていないですし)[p]
[主人公通常]
;【背景】[湖畔]
[chara_mod name="bg" storage="bg/B4nFWraU42/niwa_large_ike_long.jpg" time=1500]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[whosay name="華織" color="olivedrab"]
;[四条目にこ]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
「ここまで来ると2人だけだね」[p]
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
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
「そうだね。でも、僕のものではないから」[p]
[四条憂い]
#
どうしてか、華織様は、憂いを帯びた表情をみせた。[p]
[autosave]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様、どうしたのでしょうか？)[p]
[stopse]
#
私は、理由を聞くこともできす、華織様の漕ぐボートに身を[ruby text=ゆだ]委ねた。[p]
;適当　怠惰にすごしたかんじ
;【退場】四条
[四条退場]
[四条サイズ通常]
;=================================================================================_
*seen8
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
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

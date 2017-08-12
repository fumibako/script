;¥¥¥¥¥¥¥¥イベント2.5お見合い感想手紙¥¥¥¥¥¥¥
;☆四条からお見合いについての手紙がやってくる。久しぶりに会って見違えたことなど
*replay_sijyou_9_3
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
;=================================================================================_
*seen0
;【背景】ヒロインの部屋
[freeimage layer = 1]
[wait time=10]
[背景_庭]
[四条イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
;///////////////////////////////
*first_seen
[四条ボタン表示]
[er]
[whosay name="磯野" color="dimgray"]
「お嬢様、四条様からお手紙が届いております」[p]
[if exp="tf.test_gamen == true"]
テストページからプレイしています。手紙まで移動しますか？[r]
園遊会イベント[r]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]

[link target=*jump_ok0]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no0]い　い　え[endlink][r]
[resetfont]
[s]

*jump_ok0
[current layer="message0"]
[resetfont]
「はい」[r]
移動します。[p]
[cm]
@jump target=*seen_sijyou_tegami
[s]

*jump_no0
[current layer="message0"]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]


;磯野は男という再度の説明
#
部屋の障子から、初老の家令の声がした。[p]
[autosave]
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
「！　ありがとう磯野。[r]
[sp]返事を書いたら呼びます。下がって頂戴」[p]
#
私は、毅然を繕いつつも、彼の手にした手紙を素早く受け取った。[p]
[whosay name="磯野" color="dimgray"]
「はい。 それでは失礼します」[p]
#
;最低限の返事にも関わらず、礼節的に部屋から下がる
彼を見送った後、私は頂いた手紙を高鳴る気持ちのまま開く。[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[主人公目閉じ]
*seen_sijyou_tegami
#
*fumi_toutyaku_sijyou_100
[if exp="f.okeiko_gamen == true"]
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「久しぶりに会って」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「久しぶりに会って」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_event_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_event_fumi.ks");
f.fumi_list_all_target.push("*9_3");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(99);
f.fumi_list_sijyou_location_fumi.push(99);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*9_3");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[100]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_sijyou_number=f.fumi_sijyou_number + 1;
f.hensin_list_hairetsu[2][99]=1;//イベント中に届く手紙は基本的に「返信済」とします(返信している前提で物語が進行するため)
f.para_sijyou_koukando = f.para_sijyou_koukando + f.sijyou_koukando_up_event_fumi;
[endscript]
[endif]

[手紙四条 fumi_number=51]
[if exp="tf.test_gamen == true"]
テストモードで表示されています[r]
[link target=*endtegami]手紙をスキップ[endlink][r][r]
[link target=*no_tegami]手紙を読む[endlink][s]
*no_tegami
[er]
[endif]

[r][r][r]
[名前]へ[r]
[r]
久しぶりに会って見違えたこと驚いたよ。[r]
[名前]は久しぶりに会ってどう思ったかな？[r]
あの花をみる度に[名前]のことを思い出すよ。[r]
[名前]のことをもっと知りたいです。[r]
これからは、何気ない季節の話も自分から書いてみようと[r]
思います。　自分のことを語る手紙は苦手ですが、[r]
読んでくれると嬉しいな。[r]
[r]
*endtegami
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[if exp="f.okeiko_gamen == true"]
;未読→既読処理
[eval exp="f.midoku_list_hairetsu[2][99] = 0"]
[endif]
[手紙四条読了 fumi_number=51]

[if exp="tf.test_gamen == true"]
テストページからプレイしています。イベント終わりまで移動しますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r]
[link target=*jump_ok_ev]次のシナリオへ[endlink][r]
[r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]

*jump_ok_ev
[current layer="message0"]
[resetfont]
「はい」[r]
移動します。[p]
[cm]
@jump target=*seen4
[s]

*jump_ok
[current layer="message0"]
[resetfont]
「はい」[r]
移動します。[p]
[cm]
@jump target=*seen8
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（私も、四条様のことを知りたいです）[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[主人公目を開く]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……今後ともいろいろとお教えいただければ幸いです）
[主人公口ほほえみ]
[p]
#
私は、これから始まる恋の予感に夢を含ませた。[p]
;¥¥¥¥¥¥¥¥¥¥手紙イベント¥¥¥¥¥¥
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[layopt layer=29 visible=true]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=500]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;=================================================================================_
*seen1
[autosave]
;○四条邸宅の庭
;【背景】[背景_四条家]
[背景_四条家]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/B4nFWraU42/bg_sijyouke.jpg" time=100]
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
それだけに、親戚ぐるみで園遊会が行われることと[r]
なった。[p]
[resetfont]
[freeimage layer = 29 time=500]
[wait time=500]

;機能ボタン表示
[メッセージウィンドウ上ボタン表示]
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
「そうなのですか」[p]
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
（なんとなく見覚えがあるような方もいらっしゃいますね）[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（これからは、ここの[ruby text=し]仕[ruby text=きた]来りを勉強しなくては！ ）[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
;○はりきってる四条祖母 姑？
[whosay name="四条祖母" color="#916565"]
「それからですね……」[p]
;=================================================================================_
*seen3
#
[主人公目パチ1回]
;○小さな親戚の子は鬼ごっこやかくれんぼをしている ぶつかりそうになると四条がかばってくれる 賑やかな雰囲気
;=======================
;【登場】四条
;[四条ベース着物]　公式の場なので羽織？
[四条ベース羽織]
[四条微笑み]
;四条登場
[freeimage layer=13 time=1000]
[wait time=1000]
[layopt layer=13 visible=true]
;四条登場
;=======================
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
「ありがとう。　そう言ってもらえると助かるよ。[r]
[sp]むこうで休もうか」
[主人公ほほえみ]
[p]
#
;気遣い言葉をスルーしてた　くれると？
[主人公目閉]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/B4nFWraU42/bg_sijyouke.jpg" time=100]
;【退場】四条
[四条退場]
[freeimage layer=13 time=1000]
[wait time=1000]
[layopt layer=13 visible=true]
;=================================================================================_
*seen4
;地の文などをいれたため、明るいシーン→暗いシーン（華衣）→戻る明るい
;【背景】[背景_四条家庭椅子1]
[背景_四条家庭椅子1]
;[chara_mod name="bg" storage="bg/bg_garden_isu.jpg" time=1000]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/bg_garden_isu.jpg" time=100]
[eval exp="f.haikei_credit=''"]
;===================
;【登場】四条
;[四条ベース着物]　公式の場なので羽織？
[四条ベース羽織]
[四条微笑み]
[freeimage layer=13 time=1000]
[wait time=1000]
[layopt layer=13 visible=true]
;===================
[主人公通常]
[whosay name="四条 華織" color="olivedrab"]
「昔は、兄も弟も海外に留学に出掛けていて、僕だけが家の留守を[r]
[sp]任されていたんだ。[r]
[sp]だから文矢と[名前]が遊びにきてくれた時は、とても嬉しかったよ」[p]
[autosave]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目パチ1回]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
「そうなのですね」[p]
[主人公目閉じ]
[四条目パチ1回]
#
――兄によく連れられ訪ねた四条家。[r]
花咲く庭で、いつもひとりで居た四条様と出会って、[r]
いつしか、ここは、私にとっての憧れと夢の場所となった。[p]
;ピュー◎ランド？
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（四条様には、よく、花言葉についても教えて頂いたわ）[p]
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
;=================================================================================_
;【背景】[洋館庭]
[背景_四条家庭椅子2]
;=================================================================================_
;○そこはかとなく大人の雰囲気
;○伏線 無くてもどちらでも
#
;ナレーターモノローグ
ふと、気づくと、四条の後ろの木陰の下に人影が見え、その人物は、[r]
こちらを見つめている。[p]
[if exp="sf.BGM=='ON'"]
[fadeoutbgm time=3000]
[endif]
[四条目パチ1回]
[whosay name="？？？" color=%mp.color]
「……なんで……だけ」[p]
#
こちらが気づいた途端、それは何も無かったかのように影へと消えていった。[p]
;=================================================================================_
[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】古都に咲く花（プロローグ等）スマホでのフリーズ対策試験的に[p]or[l]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
;【背景】[背景_四条家庭椅子1]
[背景_四条家庭椅子1]
;[chara_mod name="bg" storage="bg/bg_garden_isu.jpg" time=1000]
[eval exp="f.haikei_credit=''"]
;=================================================================================_
[主人公目パチ1回]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（今……どなたか、いらっしゃったような？[r]
[sp]気のせいかしら？）[p]
;でしょうか　より短絡的に気軽に　かしら？
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
#
四条様は、私の手を引き、[r]
倒れそうになった私をその胸に引き寄せた。[p]
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
#
気が付くと、[r]
四条様の胸の中にスッポリと抱きしめられていた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「は、はい」[p]
[主人公ポーズ指]
[主人公目を開く]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……）[p]
[whosay name="四条 華織" color="olivedrab"]
[四条困り微笑み]
「ここは走りやすい場所だからね。[r]
[sp][名前]がよければ、また隠れ鬼でもするけど」[p]
[四条微笑み]
[whosay name="四条 華織" color="olivedrab"]
「もう、そんな必要はないようだね」
[主人公ポーズ通常]
[主人公目閉じ]
[p]
#
;まだ妹扱い
四条様は、無邪気な子供の頃の私と今の私の様子を見比べるかのように[r]
意地悪に微笑む。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓口：おちょぼ口 [主人公口ふぅ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_otyobo.png" time=0]
[wait time=10]
（私だって、もう子供のように無邪気ではいられませんわ。[r]
[sp]けど、四条様は、意識されないのですね）[p]
[whosay name="四条 華織" color="olivedrab"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[主人公目を開く]
「そうだ。　新しい庭が出来たんだ、一緒に見に行こうか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]
[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】「きずな」
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]
[主人公ポーズ通常]
[wait time=10]
[主人公目閉]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
#
;旧データ・ラベルロード対策
*mini_bara
*select_2
*select_1
*common_0
*seen5
@jump storage="sijyou/sijyou_9_3b.ks" target=*mini_bara
*seen6
*seen7
[if exp="tf.test_sijyou == true"]
[四条ベース羽織]
[四条微笑み]
[endif]
@jump storage="sijyou/sijyou_9_3b.ks" target=*mini_bara


*seen8
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

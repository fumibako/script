;¥¥¥¥¥¥¥¥イベント2お見合い9月2週¥¥¥¥¥¥¥¥
;☆お見合い。親しい感じで出会う2人 主人公は淑女らしく遠慮がちに 年上の四条に尊敬の意を込める形で//////////////////
;[お見合いの場]
;【背景】料亭風の屋内（昼）
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg" time=500]
[eval exp="f.haikei_credit='photo　by　usagi_s　フリー素材屋Hoshino　http://www.s-hoshino.com/'"]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[イベントシーン構築]

[主人公ポーズ通常]
[主人公通常]

;[四条ベース着物]　公式の場なので羽織？
[四条ベース羽織]
[四条微笑み]
;○四条、主人公の父親を敬う態度で礼容な挨拶を交わす。（四条の公私を分けた態度を表現.主人公には私的な形）
[whosay name="四条父" color="darkolivegreen"]
「『[名字][名前]』嬢と息子の『華織』との縁談をご承諾くださいまして感謝申し上げます」[p]

[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[主人公目パチ1回]

[whosay name="四条母" color="#9B608B"]
「この様なご縁……本人もとても喜んでおります」[p]
[whosay name="四条母" color="#9B608B"]
「さすが[名字]浩文さま、お人柄しのばれますことと[r]
[sp]みなで納得いたしております」[p]

[四条目閉じ]
[whosay name="四条 華織" color="olivedrab"]
「至らぬ点もございますがこれからもどうぞよろしくお願い申し上げます」 [p]
[主人公目パチ1回]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「華織君は将来有望な好青年で、娘は実にいい人と巡り合えたものだと、うれしい限りです」[p]
「こちらこそ至らない点が多いかと思いますが、よろしくお願いします」[p]
[四条微笑み]

[四条目パチ1回]
#
;ナレーターモノローグ
四条家と[名字]家の格式ばった挨拶が[ruby text="つつが"]恙[ruby text="な"]無く執り行われる。[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織お兄さまとお呼びしたいところですが、この様な場所では華織さま…？）[p]

[四条目パチ1回]

[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（いきなり下のお名前でお呼びしたら驚かれてしまうでしょうか）[p]

[主人公目を開く]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
#
;ナレーターモノローグ
お酒も入り、気もほぐれてきた浩文は、四条の変わりないことと、兄のことを話し始めた。[p]

;○父親からは気軽な態度で。
[whosay name=&sf.father_name color="DarkSlateBlue"]
「華織君、私が日本から離れていた間に男らしくなったね [r][sp]健康で何より」[p]
「それに文矢の件では、何かと世話になったそうじゃないか」[p]
[主人公目パチ1回]

[四条目伏]
[whosay name="四条 華織" color="olivedrab"]
「浩文さまもお変わりなく……
[四条口開]
文矢君にはよくしてもらってます」[p]
[四条目通常]
[四条口微笑み]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「華織くんは しっかりしているので頼りにしているよ」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「娘はそそっかしいもので失敗も多いかと思いますが、どうかよろしくお願いいたします」[p]
;○謙遜しつつも2人がうまくやっていけるか父心ながら心配をする 黒田とほぼ同じ文章でもよい。

;お父さんの言葉にとりあえず笑っておく四条
[四条笑顔]

;○主人公 父心には気づかず困った表情をする。
[主人公照れ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父様……」[p]

[主人公目を開く]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]


;○四条、気を利かせて話題をふる
[whosay name="四条 華織" color="olivedrab"]
[四条微笑み]
「久しぶりだね。[名前]ちゃん」[p]

[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「昔、会ったときよりも、随分と
[四条笑顔]
美しくなったね」[p]
[if exp="sf.BGM=='ON'"]
[fadeoutbgm time=3000]
[endif]

[主人公照れ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お褒めにあずかり光栄です。[l][r]

[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[主人公目を開く]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[sp]四条さまのおめがねにかないましたこと、わたくし何よりの誇りでございます」[p]

[四条驚き]
[wait time=30]
[四条微笑み]
[wait time=50]

;回想シーンのため【退場】四条
[四条退場]

[if exp="sf.BGM=='ON'"]
;【BGM】星降る夜に
[stopbgm]
[playbgm storage="yumemiru_hoshi.ogg" loop=true]
[eval exp="f.bgm_storage='yumemiru_hoshi.ogg'"]
[endif]


[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;○主人公、冷静さを装って大人に見られようと頑張る
;○主人公、四条について感想を述べる（四条についての紹介をする）
;○回想シーンはじまり//////////////////
;【背景】思い出（花
[chara_mod name="bg" storage="bg/bg_omoide.jpg" time=500]
[eval exp="f.haikei_credit=''"]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]

#
;ナレーターモノローグ
あの頃を思い出す――[p]
[主人公退場]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（久しぶりに再会した四条さま。[r]
[sp]幼きあの頃も、麗しい佇まいをなさってました）[p]
;イメージ背景 セピア和紙や花和紙
[whosay name="四条 華織" color="olivedrab"]
「[名前]ちゃん、どうしたんだい？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あのお花、とても綺麗ですね……」[p]
[whosay name="四条 華織" color="olivedrab"]
「いいよ、とってあげる」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「でも……」[p]
[fadeoutbgm time=3000]

[whosay name="四条 華織" color="olivedrab"]
「美しい花こそ、次の花を咲かせる為にも[r]
[sp]早めに切ってあげないといけないんだ」[p]

「[名前]ちゃん の綺麗な黒髪によく似合うよ」[p]
[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

;○回想シーンおわり。//////////////////
;○四条、主人公の落ち着いた振る舞いに少し驚く
;△思い浮かばず 追加して頂けると助かります
;[お見合いの場]


[主人公ポーズ通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]

;【背景】料亭風の屋内（昼）
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg" time=500]
[eval exp="f.haikei_credit='photo　by　usagi_s　フリー素材屋Hoshino　http://www.s-hoshino.com/'"]
[主人公目を開く]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
#
四条さまのお声でふと我に返った――[p]

;【登場】四条
;[四条ベース着物]　公式の場なので羽織？
[四条ベース羽織]
[四条微笑み]
[四条口開]
[whosay name="四条 華織" color="olivedrab"]
「僕の後ろをついて回っていた可愛らしい君は、いつの間にか可憐な淑女になってしまわれたようだね」[p]


;○主人公についての説明はキャラ担当
;○謙遜を言葉にすると失礼になるので表情で表す。主人公、四条に大人として認めてほしい感じ

[主人公照れ]
[wait time=500]

[四条微笑み]
;○主人公の父親、煮えきれず。2人で話すよう、それとなくつつく。（しかしながら華族なので遠くでは見守っています）
[whosay name=&sf.father_name color="DarkSlateBlue"]
「お前さん達、こんなところで見合ってても仕方あるまい。家令をつれて庭を見て回ってらっしゃい」[p]

[主人公目を開く]
[主人公通常]

[四条困り微笑み]
[whosay name="四条 華織" color="olivedrab"]
「お父様も、あぁいっていらっしゃることですし、庭園に行ってみようか？」[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]

;【退場】四条
[四条退場]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

;【背景】庭園
[chara_mod name="bg" storage="bg/bg_flower_hagi.jpg" time=500]
[eval exp="f.haikei_credit=''"]
;○主人公、再会した四条の大人の印象に緊張してしまう
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]


;○四条の主人公の緊張をほぐすため共通の会話を探す 主人公との回想を思い出して
[whosay name="四条 華織" color="olivedrab"]
「見てご覧、白萩の花が咲いているね。[r]
[sp]綺麗だね」[p]

;【登場】四条
;[四条ベース着物]　公式の場なので羽織？
[四条ベース羽織]
[四条微笑み]

[主人公伏目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい……」[p]

;勘付く表情をみせてから笑顔へ
[四条通常]
[wait time=20]

;○四条、まだ緊張している主人公を気遣って兄の結婚前の話にかえる
[四条笑顔]
[whosay name="四条 華織" color="olivedrab"]
「[名前]ちゃん、文矢の結婚の件、よかったね」[p]

[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
;○友人ではあるので軽い形で。
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、兄もとても喜んでいました」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[四条微笑み]
[whosay name="四条 華織" color="olivedrab"]
「今の文矢は君に先輩風を吹かしているだろうけど」[p]
「文通の際は昼夜問わずに相談にのってほしいって[r]
[sp]僕のところに尋ねてきたこともあったん
[四条口開]
だよ」[p]

[主人公驚]
[主人公ポーズ片手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そ、そうなんですか ？」[p]
[四条口微笑み]
[四条目パチ1回]

;○主人公 淑女さを忘れて[主人公驚き]の表情
[主人公目パチ1回]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（兄がそんな失礼を……）[p]

[主人公ポーズ通常]
;○主人公。驚いた表情のまま。恥ずかしくもあり。

[四条笑顔]
[whosay name="四条 華織" color="olivedrab"]
「ふふ、いつもの[名前]ちゃんになったね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ]

[whosay name="四条 華織" color="olivedrab"]
「僕のことは文矢のように思ってもらえばいいよ[r]
[sp]次はあちらを見て回ろうか」[p]

;【退場】四条
[四条退場]


;【背景】庭園
[chara_mod name="bg" storage="bg/bg_teien_ishidatami.jpg" time=500]
[eval exp="f.haikei_credit=''"]

[主人公目を開く]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]

;○足元を気遣って手を差し出す四条
#
;ナレーター
四条は袂をよせると花を掬うようにして[名前]に手を差し伸べる。[p]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]

;【登場】四条
;[四条ベース着物]　公式の場なので羽織？
[四条ベース羽織]
[四条微笑み]

[whosay name="四条 華織" color="olivedrab"]
「飛び石に気をつけて」[p]

[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
#
;ナレーター
[名前]はその手をとって導かれていく。[r]
四条は、[名前]をしっかりと支え、気遣いをしてくれているが、その背はどこか遠くに感じる。[p]
;感じざる得ない？

;○四条が気を使っていることに気づく主人公
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（四条さまは、先ほどから気を使っていらっしゃる）[p]
;[主人公困り目閉じ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[主人公目閉じ]
（兄のように。[r]
[sp]それでは四条さまの隣に立つことも出来ない気がする）[p]
;○甘えているばかりではダメだと小さな決意。
;[主人公デフォルト]か[主人公怒り]
[主人公目を開く]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、私はもう（四条さまと共にすると）決めましたから」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]

[四条目パチ1回]
[whosay name="四条 華織" color="olivedrab"]
「？」[p]
;[四条デフォルト]四条まだ気づけず
;○素に戻ってしまう主人公。
[主人公目閉じ]
[主人公ポーズ指]
[主人公照れ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「その……大丈夫ですわ……お気遣いいただきありがとう存じます」[p]
[主人公目を開く]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[主人公ポーズ通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;○主人公の決意

[四条驚き]
[whosay name="四条 華織" color="olivedrab"]
;○四条は気遣いできるくらいに勘は良いかも

[四条憂い]
[whosay name="四条 華織" color="olivedrab"]
「気を使わなくてもいいよ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;[主人公デフォルト]または
[主人公照れ目普通]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「四条さまは、兄にご相談されますのでしょうか？」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[四条驚き]
[whosay name="四条 華織" color="olivedrab"]
「！」[p]
[fadeoutbgm time=3000]
[主人公目パチ1回]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]

[whosay name="四条 華織" color="olivedrab"]
[四条微笑み]
「ふふ、
[四条笑顔]
そうしないよう気をつけるよ」[p]
;○四条、一時的に迷いから解消される

;【退場】四条
[四条退場]
[stopbgm]
;¥¥¥¥¥¥¥¥イベント2ここまで¥¥¥¥¥¥¥¥
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
;主人公の呼び方は、マクロだとモノローグ中の[名前]までちゃん付けになってしまうため、ひとまずセリフ内だけ[名前]ちゃんに置き換えました

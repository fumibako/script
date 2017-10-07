;¥¥¥¥¥¥¥¥イベント2お見合い9月2週¥¥¥¥¥¥¥¥
*replay_sijyou_9_2
*start
;☆お見合い。親しい感じで出会う2人 主人公は淑女らしく遠慮がちに 年上の四条に尊敬の意を込める形で//////////////////
[stopbgm]
;暗転
[call target=*9_2 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;=================================================================================_
*seen0
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=500]
[wait time=50]
[プリロード画面消去]
[wait time=50]
;５０がいいみたい？
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
;【背景】料亭風の屋内（昼）
[freeimage layer = 1]
[wait time=10]
[背景_料亭風の屋内（昼)]
;[chara_mod name="bg" storage="bg/bg_ryoutei.jpg" time=500]
;[eval exp="f.haikei_credit='photo　by　usagi_s　フリー素材屋Hoshino　http://www.s-hoshino.com/'"]
;////////////先に登場させておく////////////
[四条ベース羽織]
[四条微笑み]
;名前欄消去
[whosay name=""]
;全画面テキストから開始時に文字が表示されない場合があるため、↓追記します(◆jsYiJcqRkk
@layopt layer=message0 visible=true
[current layer="message0"]
;テキスト全画面
[font color=white size=27]
――白萩そよぐ、料亭にて。[l][r]
[r]
四条家と[名字]家の見合いが執り行われた。[p]
;【SE】ししおどし（控え目な流水…カコン）
[playse storage=sisiodosi.ogg loop=false ]

[resetfont]
;////////////先に登場させておく////////////
[image layer=29 x=0 y=0 storage="bg/B4nFWraU42/bg_sisiodosi.jpg" time=1000]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[freeimage layer = 29 time=1000]
[wait time=1000]
[layopt layer=fix visible=true]
[メッセージウィンドウ上ボタン表示]
#
;○四条、主人公の父親を敬う態度で礼容な挨拶を交わす。（四条の公私を分けた態度を表現.主人公には私的な形）
[whosay name="四条父" color="darkolivegreen"]
「"[名字][名前]"嬢と、息子の"華織"との縁談をご承諾くださり[r]
_　まして感謝申し上げます」[p]
;[stopbgm]鳴ってないのでコメント化
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

;=====================================================================
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
@jump target=*end_rute
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]
;=====================================================================
[主人公目パチ1回]
[whosay name="四条母" color="#9B608B"]
「この様なご縁……本人もとても喜んでおります」[p]
[四条目パチ1回]
[whosay name="四条母" color="#9B608B"]
「さすが[名字]浩文様、お人柄しのばれますことと[r]
[sp]みなで納得いたしております」[p]
[四条目閉じ]
[whosay name="四条 華織" color="olivedrab"]
「至らぬ点もございますがこれからもどうぞよろしくお願い申し上げます」 [p]
[主人公目パチ1回]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「華織君は将来有望な好青年で、娘は実にいい人と巡り合えたものだと、[r]
_　うれしい限りです」[p]
「こちらこそ至らない点が多いかと思いますが、よろしくお願いします」[p]
[四条微笑み]
[四条目パチ1回]
;=================================================================================_
*seen1
[autosave]
#
;ナレーターモノローグ
四条家と[名字]家の格式ばった挨拶が[ruby text="つつが"]恙[ruby text="な"]無く執り行われる。[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織お兄様とお呼びしたいところですが、この様な場所では[r]
_　華織様…？）[p]
[四条目パチ1回]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（いきなり下のお名前でお呼びしたら驚かれてしまうでしょうか）[p]
[主人公目を開く]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
#
お酒も入り、気もほぐれてきたお父様は、[ruby text=ご]御[ruby text=ゆう]勇[ruby text=けん]健な四条様を[ruby text=よろこ]慶び、[r]
兄のことを話し始めた。[p]
;○父親からは気軽な態度で。ごゆうけんで何より
[whosay name=&sf.father_name color="DarkSlateBlue"]
「華織君、私が日本から離れていた間に男らしくなったね。[r][sp]健康で何より」[p]
[四条目パチ1回]
「それに文矢の件では、何かと世話になったそうじゃないか」[p]
[主人公目パチ1回]
;[四条目伏]
[whosay name="四条 華織" color="olivedrab"]
「浩文様もお変わりなく……
[四条口開]
文矢君にはよくしてもらってます」[p]
[四条目通常]
[四条口微笑み]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「華織くんは しっかりしているので頼りにしているよ」[p]
[四条目パチ1回]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「娘はそそっかしいもので失敗も多いかと思いますが、[r]
_　どうかよろしくお願いいたします」[p]
;○謙遜しつつも2人がうまくやっていけるか父心ながら心配をする 黒田とほぼ同じ文章でもよい。
#
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
#
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
[sp]四条様のおめがねにかないましたこと、わたくし何よりの誇りで[r]
_　ございます」[p]
;[四条眉驚き]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_odoroki.png" time=0]
[wait time=10]
[四条目大]
[wait time=50]
[四条口微笑み]
[wait time=50]
;主人公目閉じ
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
;=================================================================================_
*seen2
[autosave]
#
;ナレーターモノローグ
あの頃を思い出す――[p]
;～～～～～～～～～～～～～～～～～～ここから準備中～～～～～～～～～
;消えている瞬間を隠してみる・・・
[layopt layer=29 visible=true]
;ボタンを非表示
[layopt layer=fix visible=false]
[image layer=29 x=0 y=0 storage="bg/bg_omoide.jpg" time=500]
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
[主人公退場]
;【背景】思い出（花
[背景_思い出（花)]
;[chara_mod name="bg" storage="bg/bg_omoide.jpg" time=500]
[eval exp="f.haikei_credit=''"]
;/////////////////////////////////回想シーンはじまり//////////////////
;～～～～～～～～～～～～～～～～～～ここまで準備中～～～～～～～～～～～～～～～～～～
[freeimage layer = 29 time=500]
[wait time=500]
;ボタンを表示
[layopt layer=fix visible=true]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（久しぶりに再会した華織お兄様。[r]
[sp]幼きあの頃も、麗しい佇まいをなさってました）[p]
;イメージ背景 セピア和紙や花和紙
#
春の色を映した雲が細く棚引く頃。[r]
華織お兄さまの屋敷の周りには、情趣ある花々が咲き乱れ、[r]
夢のような世界に浸ることができる。[p]

しかし。　今日に限って華織お兄さまは、お兄さまばかり[r]
お相手なされて、私とお話になられない。[p]
;ずにいた。
[whosay name="幼い頃の私" color="#cf5a7f"]
（せっかくお兄さまと、華織お兄さまの家に来たのに、[r]
[sp]お二人で将棋をしてばかりで、退屈だわ)[p]
#
幼い頃の私は、はしたなく花畑で寝転び、[r]
新たな愉しみについて探り始めた。[p]
[whosay name="幼い頃の私" color="#cf5a7f"]
（あ、あの花は何かしら？)[p]
#
お兄様に頂いた髪飾りに似た花が、風に揺られている。[p]
[whosay name="幼い頃の私" color="#cf5a7f"]
（近づいてみると大きいわ)[p]
#
私の背よりも、遥か高く咲き誇る花は、[r]
まるで、高貴な美しさを漂わせる大人の女性のようであった。[p]
[whosay name="幼い頃の私" color="#cf5a7f"]
（やっぱり届かない……)[p]
[whosay name="幼い頃の私" color="#cf5a7f"]
（ですけど、やめておきましょう。華織お兄さまの大事な花ですもの)[p]
[whosay name="幼い頃の私" color="#cf5a7f"]
（きっと大人になったら、あの花に届くのでしょうか？)[p]
[whosay name="幼い頃の私" color="#cf5a7f"]
（大人になったら……)[p]
#
私は、届かない花を見ながら、甘い花香の中、夢の世界へと旅立つ。[p]
[whosay name="幼い頃の私" color="#cf5a7f"]
（きっと、素敵な殿方と出逢って、ダンスホールで踊ったり、[r]
[sp]ミルクホールでピアノの音に揺られたり、博識な殿方と[r]
[sp]知的な会話に興じたりして……)[p]

[whosay name="幼い頃の私" color="#cf5a7f"]
（それから、お父さまとお母さまのように、障害を[r]
[sp]乗り越えて浪漫を育むの)[p]

;#齢、9歳の乙女頃。未来への期待において、若干、過大になりがちであった。

[whosay name="華織お兄さま" color="olivedrab"]
「[名前]ちゃん、どうしたんだい？」[p]
[whosay name="幼い頃の私" color="#cf5a7f"]
「華織お兄さま！」[p]
#
私は、淑女を模して花を讃えることにした。[p]
[whosay name="幼い頃の私" color="#cf5a7f"]
「あのお花、とても綺麗ですね……」[p]
[whosay name="華織お兄さま" color="olivedrab"]
「いいよ、とってあげる」[p]
[whosay name="幼い頃の私" color="#cf5a7f"]
「でも……」[p]
[whosay name="華織お兄さま" color="olivedrab"]
「美しい花こそ、次の花を咲かせる為にも早めに切ってあげないと[r]
[sp]いけないんだ」[p]
;#主人公(なぜだか、この花に負けた様な気分だわ)[p]
[whosay name="華織お兄さま" color="olivedrab"]
「[名前]ちゃんの綺麗な黒髪によく似合うよ」[p]
#
麗しい佇まいをなされた華織お兄さまが、私の頭を撫でた途端、[r]
私はより一層、憧れの恋夢が膨らんでいく。[p]
;[whosay name="幼い頃の私" color="#cf5a7f"]
;(私も、いつか華織お兄さまのような素敵な殿方と……)[p]

[whosay name="華織お兄さま" color="olivedrab"]
「ふふ、まるで絵画に描かれる妖精のようだね。[r]
[sp]さぁ、文矢に見せておいでよ」[p]
#
私は、お兄さまの元に駆けて行きながらも、[r]
いつかは、この花と同じような淑女となることを夢に描いたのだった。[p]


[whosay name="四条 華織" color="olivedrab"]
「[名前]ちゃん」[p]
#
[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
;/////////////////////////////////回想シーンおわり。//////////////////
;○四条、主人公の落ち着いた振る舞いに少し驚く
;△思い浮かばず 追加して頂けると助かります
;消えている瞬間を隠してみる・・・
[layopt layer=29 visible=true]
;ボタンを非表示
[layopt layer=fix visible=false]
[image layer=29 x=0 y=0 storage="bg/bg_omoide.jpg" time=500]
[主人公ポーズ通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
;～～～～～～～～～ここから準備中～～～～～～～～～
;その間に登場
;【登場】四条
;[四条ベース着物]　公式の場なので羽織？
[四条ベース羽織]
[四条微笑み]
;【背景】料亭風の屋内（昼）
[背景_料亭風の屋内（昼)]
;[chara_mod name="bg" storage="bg/bg_ryoutei.jpg" time=500]
[eval exp="f.haikei_credit='photo　by　usagi_s　フリー素材屋Hoshino　http://www.s-hoshino.com/'"]
;～～～～～～～～～ここまで準備中～～～～～～～～～
[freeimage layer = 29 time=500]
[wait time=500]
[layopt layer=fix visible=true]
[主人公目を開く]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;=================================================================================_
*seen3
[autosave]
#
四条様のお声でふと我に返った――[p]
[四条口開]
[whosay name="四条 華織" color="olivedrab"]
「僕の後ろをついて回っていた可愛らしい君は、いつの間にか可憐な[r]
[sp]淑女になってしまわれたようだね」[p]
;○主人公についての説明はキャラ担当
;○謙遜を言葉にすると失礼になるので表情で表す。主人公、四条に大人として認めてほしい感じ
[主人公照れ]
[wait time=500]
[四条微笑み]
;○主人公の父親、煮えきれず。2人で話すよう、それとなくつつく。（しかしながら華族なので遠くでは見守っています）
[whosay name=&sf.father_name color="DarkSlateBlue"]
「お前さん達、こんなところで見合ってても仕方あるまい。[r]
[sp]家令をつれて庭を見て回ってらっしゃい」[p]
[主人公目を開く]
[主人公通常]
[四条困り微笑み]
[whosay name="四条 華織" color="olivedrab"]
「お父様も、ああ言っていらっしゃることですし、庭園に行ってみよう[r]
[sp]か？」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]
;【退場】四条
[四条退場]
;///////////////////////シーン庭園＿白萩/////////////////////////////////////////////////
;=================================================================================_
*seen4
[autosave]
;//////////////lay13//ここから準備_キャラmodでもいいかもしれない////////////
[layopt layer=13 visible=true]
[image name="toujyou_mae" layer=13 x=0 y=0 storage="bg/bg_flower_hagi.jpg" time=500]
[wait time=50]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;【背景】背景_白萩
[背景_白萩]
;[chara_mod name="bg" storage="bg/bg_flower_hagi.jpg" time=500]
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
[freeimage layer=13 time=500]
[wait time=500]
;使ったら戻しておく
[layopt layer=13 visible=true]
;///////////////////////ここまで準備////////////////////////////////
[wait time=50]
[主人公伏目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい……」[p]
;勘付く表情をみせてから笑顔へ
[四条通常]
[wait time=20]
[四条口微笑み]
[wait time=20]
;気を使っていることが伝わらない人の為に追加
[whosay name="四条 華織" color="olivedrab"]
「[名前]ちゃん？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私、淑女として、うまく振舞えているかしら……？）[p]
;○四条、まだ緊張している主人公を気遣って兄の結婚前の話にかえる
[四条笑顔]
[whosay name="四条 華織" color="olivedrab"]
「そういえば、[名前]ちゃん。文矢の結婚の件、よかったね」[p]
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
[sp]僕のところに訪ねてきたこともあったん
[四条口開]
だよ」[p]
;半分は冗談という設定というで
[主人公驚]
[主人公ポーズ片手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そ、そうなんですか ？」[p]
[四条口微笑み]
[四条目パチ1回]
;○主人公 淑女さを忘れて[主人公驚き]の表情
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（兄がそんな失礼を……）
[主人公目パチ1回]
[p]
[主人公ポーズ通常]
;○主人公。驚いた表情のまま。恥ずかしくもあり。
[四条笑顔]
[whosay name="四条 華織" color="olivedrab"]
「ふふ、冗談だよ。　いつもの[名前]ちゃんになったね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ]
;気を使っていることが伝わらない人の為に追加
[主人公目閉]
（もしかして、四条様は、私のことをお気遣いされているのでしょう[r]
_　か……？）[p]
[主人公照れ目普通]
[whosay name="四条 華織" color="olivedrab"]
「僕のことは文矢のように思ってもらえばいいよ。[r]
[sp]次はあちらを見て回ろうか」[p]
#
;【退場】四条
[四条退場]
;/////////////////////////シーン庭園/////////////////////////////////////////
;=================================================================================_
*seen5
[autosave]
;//////////////lay13//ここから準備_キャラmodでもいいかもしれない////////////
[layopt layer=13 visible=true]
[image name="toujyou_mae" layer=13 x=0 y=0 storage="bg/bg_teien_ishidatami.jpg" time=500]
[wait time=50]
;【背景】庭園
[背景_庭園(昼)]
;[chara_mod name="bg" storage="bg/bg_teien_ishidatami.jpg" time=500]
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
四条は袂をよせると花を掬うようにして私に手を差し伸べる。[p]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
;【登場】四条
;[四条ベース着物]　公式の場なので羽織？
[四条ベース羽織]
[四条微笑み]
[freeimage layer=13 time=500]
[wait time=500]
;使ったら戻しておく
[layopt layer=13 visible=true]
;///////////////////////ここまで準備////////////////////////////////
[whosay name="四条 華織" color="olivedrab"]
「飛び石に気をつけて」[p]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
#
私はその手をとって導かれていく。[p]
四条様は、私をしっかりと支え、気遣いをしてくれているけれど、その背はどこか遠くに感じた。[p]
;感じざる得ない？
;○四条が気を使っていることに気づく主人公
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（四条様は、先ほどから気を遣っていらっしゃる）[p]
;[主人公困り目閉じ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[主人公目閉じ]
（兄のように。[r]
[sp]それでは四条様の隣に立つことも出来ない気がするわ……）[p]
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
「いえ、私はもう（四条様と共にすると）決めましたから」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[四条目パチ1回]
[whosay name="四条 華織" color="olivedrab"]
「？」[p]
;[四条デフォルト]四条まだ気づけず
;○素に戻ってしまう主人公。
;=================================================================================_
*seen6
[autosave]
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
[四条眉困り]
[whosay name="四条 華織" color="olivedrab"]
「[名前]ちゃん」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ]
（どうしましょう……）[p]
;○四条は気遣いできるくらいに勘は良いかも
[whosay name="四条 華織" color="olivedrab"]
[四条伏目]
「……気を使わなくてもいいよ。 
[主人公目を開く]
それに[ruby text=し]仕[ruby text=きた]来りにしたがって[r]
[sp][名前]ちゃんから、離れたのは、僕だからね」[p]
;気を使うのは今までの行いとか華衣のことで冷たくいしていたこと
;流れを修正
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（四条様……私のせいでお悩みなのでしょうか？[r]
_　何かお声をお掛けして差し上げたい）[p]
（こういう時に四条様のご友人であられた、お兄様でしたら、[r]
_　どの様な御言葉をかけられるでしょうか？）[p]
[主人公目閉]
#
――僕のことは文矢のように思ってもらえばいいよ[p]
[主人公通常]
（……ちがうわ。[r]
_　これからの私は、"華織お兄さま"ではなく、四条様の傍に）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;[主人公デフォルト]または
[主人公照れ目普通]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「兄のようにと、おっしゃっていただきましたが[r]
[sp]四条様は、私とのことを兄に御相談されるのでしょうか？」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
#
私は、兄が四条様に接するように御言葉を返した。[p]
[whosay name="四条 華織" color="olivedrab"]
[四条眉驚き]
[四条目大]
「！」[p]
#
[fadeoutbgm time=3000]
[主人公目パチ1回]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[whosay name="四条 華織" color="olivedrab"]
[四条微笑み]
「ふふ。 ありがとう、[名前]。
[四条笑顔]
そうならないよう気をつけるよ」[p]
;そうしない
;○四条、一時的に迷いから解消される　ここで呼び捨て呼び捨てに？
;そうしないよう気をつけるよ 」[p]
#
[主人公ほほえみ]
;【退場】四条
[四条退場]
;=================================================================================_
*seen7
[autosave]
[暗転１]
[背景_白萩]
;[chara_mod name="bg" storage="bg/bg_flower_hagi.jpg" time=500]
[eval exp="f.haikei_credit=''"]
[主人公目閉]
#
美しい白萩を見ながら、私と四条様は、微笑みあった。[p]
私は、ようやく四条様の隣に近づけたような、そんな気がしたのだった。[p]
;華織様の笑顔をみて、

*end_rute
[if exp="f.event_replay != 'sijyou'"]
[eval exp="f.sijyou_omiai=1"]
[eval exp="sf.event_sijyou_9_2 = 1"]
[endif]
[stopbgm]
;¥¥¥¥¥¥¥¥イベント2ここまで¥¥¥¥¥¥¥¥

[イベントシーン終了]

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
;主人公の呼び方は、マクロだとモノローグ中の[名前]までちゃん付けになってしまうため、ひとまずセリフ内だけ[名前]ちゃんに置き換えました

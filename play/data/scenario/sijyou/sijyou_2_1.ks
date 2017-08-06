;【華道習いイベント】 華道一定値で。 ある程度は淑女度必要そうなイメージ　100あたりは必要かも
;=================================================================================_
*replay_sijyou_2_1
*start
*test
[stopbgm]
;暗転プリロードサブルーチン
[call target=*2_1 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;マクロ作成ありがとうございます(スクリプト担
;macro_etc.ksに[暗転]マクロを移動
;macro_tati_sijyou.ksにkeyframe設定及び[四条アップ][四条サイズ通常]マクロを移動し
;問題無く動作することを確認(WindowsVistaSP2+Chrome 49.0.2623.112 m, iPhone6S+Safari)しました
;(ちなみに古いPCよりスマホの方が動作が軽かったです…動作の軽さはPCかスマホかの違いよりも、性能によるのかもと思いました)
[cm]
;【背景】主人公邸 お稽古部屋
[freeimage layer = 1]
[wait time=10]
[背景_お稽古部屋]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;〜〜〜〜〜〜〜〜シーン イベントのはじまり〜〜〜〜〜〜〜〜〜
;[if exp="tf.test_sijyou == true"]
;@jump target=*sijyou_3
;sijyou_5
;[endif]
;=================================================================================_
*seen0
#
それは、梅の花が小さく芽吹くとき。[r]
華道のお稽古の先生が、ふいに私に話しかけられた。[p]
[whosay name=華道の先生 color=%mp.color]
「[名前]さん。 自由花の造形表現も充分に習得なされたようですね」[p]
[autosave]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
;堂に入ったようですね？
;(照れる主人公)謙遜すると失礼になるかな
[whosay name=&sf.girl_namae color="#cf5a7f"]
;[主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;[主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「ありがとうございます」[p]
;これも先生のおかげです。と言いたいが先生の呼び方が…有名な華道漫画でも読んでサラッと調べてみる
[主人公目閉]
;---------------------------
;------------------------------------------------------
[if exp="tf.test_gamen == true"]
テストページからプレイしています。イベント終わりまで移動しますか？[r]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]

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
@jump target=*seen_end
[s]

*jump_no1
[current layer="message0"]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]
[whosay name=華道の先生 color=%mp.color]
「華道とは、心を磨くもの。[r]
[sp][名前]さんが、上達したのも、きっと、どなたかに捧げたい思いが[r]
[sp]あるのでしょう」[p]
;盛り上げ役。
;(照れる主人公) セリフはなくていいかな
[主人公照れ目普通]
[whosay name=華道の先生 color=%mp.color]
「[名前]さんは、聡明で、乾いた土が水を吸うように覚えが早く、私が教える[r]
[sp]ことが少なくなってきたように感じます」[p]
;華道の先生なんで詩的かな
[主人公通常]
[whosay name=華道の先生 color=%mp.color]
「そこで、新しい学習の場として、私と共に実地演習に出てみま[r]
[sp]せんか？ 丁度、[名前]さんにそういった話が挙がっておりまして」[p]
;(主人公、やや驚く)
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！」
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[p]
;(主人公、身構えて尋ねる)
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……どのようなことをなさるのですか？」[p]
;【３】に決定します。ありがとうございます
[whosay name=華道の先生 color=%mp.color]
「難しいことではありません。[r]
[sp]私と共に近所の華道教室で指導役を務めてほしいのです」[p]
[主人公通常]
[whosay name=華道の先生 color=%mp.color]
「淑女を目指す[ruby text=おと]乙[ruby text=め]女[ruby text=ご]子が集まる教室ですので、[名前]さんも親しみやすい[r]
[sp]かと思います。 [ruby text=い]如[ruby text=かが]何でしょうか？」[p]
;(主人公、了承する)
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[if exp="f.para_shujinkou_shukujodo >= 200"]
「……おそれいります。 でも、今は決めかねますので、[r]
[sp]家の者に相談の上、必ずお返事をさせていただきます」[p]
[else]
「わかりました。 お父様に了承を得た上でお手伝いしようかと思います」[p]
[endif]
[主人公目閉]
;他に良い言い回しは？
;〜〜シーン イベントのはじまりおわり〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜
#
[fadeoutbgm time=3000]
[暗転２]
;夜、主人公部屋　考える
;〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜シーン 庭の見える部屋：夜 楽しみの前の降下〜〜〜〜〜〜〜〜〜〜〜〜〜
;=================================================================================_
*seen1
;【背景】主人公邸 庭の見える部屋：夜
[背景_庭_夜]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[暗転２終了]
#
雲をすり抜ける、月影さやけき夜。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（お父様からも了承を得られましたし、はりきって先生にも連絡してしまい[r]
[sp]ましたが……）[p]
[autosave]
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（当日は著名な先生も来られます と、おっしゃってましたわ。[r]
[if exp="f.para_shujinkou_shukujodo >= 200"]
[sp]私が、その様な方々と御一緒に教鞭を[ruby text=と]執るなど[r]
[sp]出来るのでしょうか？）[p]
[else]
[sp]そんな方と、私が一緒に教えることなんて出来るのでしょうか？）[p]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（こういう時は……やはり、華織様に相談しようかしら？）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
（でも、届くまで時間がかかりますわよね）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（誰かにお願いして、直接渡してもらいましょうか？）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
（ダメですわ。急な手紙で、驚かせてしまうかもしれないわ）[p]
[暗転１]
;月背景
[image name="bg1" layer=1 storage="bg/sijyou_engawa3.jpg" time=1000 top=-304]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[主人公目閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……華織様にお会いしたい）[p]
[layopt layer=fix visible=false]
[anim name="bg1" top="0" time=3000]
[wa]
;anim中セーブ禁止
[layopt layer=fix visible=true]
#
私の心に華織様の笑顔が浮かんだ。[p]
[stopanim name="bg1"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（もし、私が助けてほしいと言ったら……あの方は……）[p]
[主人公真剣]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ダメですわ、しっかりしなくては![r]
[sp]こういう時こそ、華織様の為に淑女として尽力しなければ）[p]
[layopt layer=fix visible=false]
;ラストのそのままで　の逆テーマ↑
;〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜シーン 庭の見える部屋：夜 ここまで〜〜〜〜〜〜〜〜〜〜〜〜〜
#
[iscript]
$('.bg1').remove();
[endscript]
[fadeoutbgm time=3000]
;〜〜〜〜〜〜〜〜シーン急上昇する心情　キャラ紹介〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜
*sijyou_1
;背景　和室　床の間のみ
;=========================================
[wait time=50]
[layopt layer=message0 visible=false]
;メッセージレイヤを全画面用に設定変更
[layopt layer=13 visible=true]
[image layer=29 x=0 y=0 zindex=0 storage="bg/bg_prologue.jpg" time=1000]
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[layopt layer=message0 visible=true]
[font color=white size=27]
――後日。[r]
淑女を目指す[ruby text=おと]乙[ruby text=め]女[ruby text=ご]子達が、母親や[r]
家令達に連れられ華道教室にやってきた。[r]
[r]
そんな中、私は先生とともに淑女を目指す乙女達の[r]
指導を勤めることとなった。
;=================表示準備========================
[背景_四条華道教室_1]
;[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_kyousitu1.jpg"]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/B4nFWraU42/sijyou_kyousitu1.jpg" time=100]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[call target=*start storage="macro_tati_sijyou.ks"]
[p]
[四条イベントシーン構築]
;主人公横目 頬染め
[主人公ポーズ通常]
[主人公通常]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[主人公横目]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[freeimage layer=29 time=0]
[layopt layer=fix visible=true]
[四条ボタン表示]
;=================表示準備おわり========================
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ですが……）
[p]
;緊張と笑い
[if exp="sf.BGM=='ON'"]
;【BGM】冬支度
[playbgm storage="kanasige_koto_fuyujitaku.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_koto_fuyujitaku.ogg'"]
[endif]
[whosay name=華道の先生 color=%mp.color]
「はい、皆さん。今日は、素敵な先生と私の信愛なる教え子を紹介します」[p]
[autosave]

;子供がやがやSE
[主人公目大]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どうしましょう！ 
[主人公目閉]
[主人公口ふぅ]
どうしてこうなったのかしら！？）[p]
;目を閉じて恥ずかしく耐える？
#
私は、自身が大勢の人の前で挨拶をすることよりも、[r]
もっと驚くべき事に出逢ってしまった。[p]
 [四条ベース羽織]
 [四条微笑み]
;~===四条登場=====
[freeimage layer=13 time=1000]
[wait time=1000]
[layopt layer=13 visible=true]
;====四条登場=====
[whosay name="華織" color="olivedrab"]
「四条華織と申します。今日は一緒に楽しく学びましょう」[p]
;[whosay name=華道の先生 color=%mp.color]
;「四条華織様は、華道家の名士、四条綾花様のお孫さまでいらっしゃいられ、
;一番弟子です」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
「[名字]……[名前]と申します。
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
よろしくお願いします！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[主人公目閉じ]
（どういったことでしょうか……）[p]
;=================================================================================_
*seen2
#
お会いする約束もしていないのに私は、華織様の隣に並んでいた。[p]
[autosave]
;主人公混乱
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]
（そういえば、先生は、近所の……とおっしゃってましたし、[r]
[sp]そう考えますと、そうなるのも……？？）[p]
;理由を考える主人公。伏線回収
[whosay name="華織" color="olivedrab"]
「[名字]さん、頑張りましょうね」[p]
;表情調整中です
[主人公目大]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「は、はい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[主人公目閉じ]
（華織様と一緒に……嬉しいわ……。
[主人公横伏目]
でも、こんなところで一緒なんて[r]
[sp]緊張してしまいます）[p]
[whosay name=乙女子達 color=%mp.color]
「あら……先生方、見つめ合って、もしかして、お手紙のお相手同士[r]
[sp]かしら？」[p]
#
[主人公目閉じ]
[主人公口ムッ]
[whosay name=乙女子達 color=%mp.color]
「ふふ、なんてお似合いなのでしょう！」[p]
[whosay name=乙女子達 color=%mp.color]
「あまり社交界にお見えにならないから、気になってました。[r]
[sp]けれど、四条華織様って本当に綺麗な方なのね」[p]
;湖池屋令嬢へのフラグ↑
[whosay name=華道の先生 color=%mp.color]
[主人公目大]
[主人公口通常]
「……皆さん、静粛に」[p]
;咳払い
;（主人公我に返る）
[whosay name=華道の先生 color=%mp.color]
「皆様、華道とは心を磨くものです。[r]
[主人公眉下げ下]
[主人公目伏]
[sp]花の前でこそ、淑女として[ruby text=きん]謹[ruby text=げん]厳な態度でのぞみましょう」[p]
[whosay name=華道の先生 color=%mp.color]
「さて、今日は華道を始めるにあたって……」[p]
;【SE】軽い足音（小走りフェードイン）
[playse storage=girl_in_run.ogg loop=false ]
[主人公通常]
;〜〜〜〜〜〜〜〜シーン 先生と主人公とキャラの立ち位置説明〜〜〜〜〜〜～～～～～～ここまで
#
;=================================================================================_
*seen3
[fadeoutbgm time=3000]
[whosay name=教室のお手伝い color=%mp.color]
[四条通常]
[四条目大]
「先生！ 大変です！！」[p]
[autosave]
[主人公横目]
[主人公眉下げ下]
[主人公ポーズ指]
[whosay name=華道の先生 color=%mp.color]
[四条通常]
[四条目パチ1回]
「なんですか、今はお稽古の時間ですよ」[p]
[主人公ポーズ通常]
#
使い込まれた桃色の[ruby text=かっ]割[ruby text=ぽう]烹[ruby text=ぎ]着をきた壮年の女性が、慌てた様子で[r]
教室の入り口に現れた。[p]
[whosay name=教室のお手伝い color=%mp.color]
「それが、その湖池屋男爵様から……」[p]
;【SE】人々のざわめき（ザワザワ…暗くせわしない感じの効果音含む）
;[playse storage=zawa_dark.ogg loop=false ]
;【SE】人々のざわめき（ザワザワ…屋内）
[playse storage=zawa_room.ogg loop=false ]
#
;[四条眉困り]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
先生は、さざめき立つ生徒達すら気にせず、彼女の側に寄って、内輪話を[r]
始めた。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】五色（重いムードに
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]

[四条目パチ1回]
[whosay name="華道の先生" color=%mp.color]
「……なんですって？ 湖池屋男爵様が？」[p]
;先生用事ができて出ていく。
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（どうしたのかしら……？）[p]
[whosay name="教室のお手伝い" color=%mp.color]
「申し訳ございません。[r]
[sp]今日の湖池屋お嬢様のお稽古の担当は別の方でとお願いしたの[r]
[sp]ですが……」[p]
[whosay name="華道の先生" color=%mp.color]
「わかりました。[r]
[sp]立場上、行かないわけにはいきませんね……」[p]
;今日は一緒に来ていただける方を頼んでおいてよかったわ」[p]
;[四条眉困り]
;[chara_mod name="sijyou_mayu" storage="sijyou/mayu_komari.png" time=0]
;[wait time=10]
[四条口開]
[whosay name="華織" color="olivedrab"]
「どうかされましたか？」[p]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[whosay name="華道の先生" color=%mp.color]
「お二人とも、こちらに来て下さい」[p]
#
先生は、様子を[ruby text=いぶか]訝しむ生徒達に[ruby text=ひと]一[ruby text=こと]言、謝ると私達を廊下に連れ出した。[p]
[暗転２]
[四条通常]
;〜〜シーン廊下 先生の退場と主人公とキャラの立ち位置説明〜〜〜〜〜〜～～～～～～
*sijyou_1_1
[主人公憂い]
[背景_四条華道教室廊下]
[暗転２終了]
;[四条眉下げ]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_sage.png" time=0]
[wait time=10]
[whosay name=華道の先生 color=%mp.color]
「四条様、申し訳ございません。[r]
[sp]私、急な呼び出しで、出ないといけなくなりまして」[p]
[autosave]
[四条困り微笑み]
[whosay name="華織" color="olivedrab"]
「お気になさらないで下さい。 そのような事は、よくある事です」[p]
;華織も苦労してるよっていうさり気ないシーン
[whosay name=華道の先生 color=%mp.color]
「私がお呼び立てしたのに、よろしいのでしょうか」[p]
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「祖母には劣りますが、ご不在の間、誠心誠意、役目を務めてみせま[r]
[sp]しょう」[p]
;言い回し硬いな
[whosay name="華織" color="olivedrab"]
「それに、有能な[名字]様もいらっしゃいますから大丈夫ですよ」[p]
;主人公にウィンク的なものを投げている？
[主人公照れ目普通]
[whosay name="華道の先生" color=%mp.color]
「四条様、優しいお言葉痛み入ります。[r]
[sp]……では、お言葉に甘えさせていただきます」[p]
;さすがに察した先生は、注意しておくか
;細かい理由は知らない先生
[whosay name=華道の先生 color=%mp.color]
「[名前]さん。私は、急な用事ができましたので、四条様の補佐役も[r]
[sp]頼みますよ！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「！」[p]
;さっきまで話をきいてるので驚くのは違和感。具体的な役目を与える
[四条通常]
#
突拍子もないことを口に出すと、先生は私だけに聞こえるように顔を[r]
近づけた。[p]
[主人公憂い]
[whosay name=華道の先生 color=%mp.color]
「くれぐれも四条様のお顔を汚さないようにお願いします」[p]
;「くれぐれも四条様のお顔に泥を塗るような真似をなさらないようにお願いします」
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り]
「は、はい……！」[p]
[whosay name=華道の先生 color=%mp.color]
「今日は四条様とご一緒にできる淑女として、[r]
[sp]いくつかの士女を御提案したところ、ご家族揃って貴方をご指名され[r]
[sp]ました。 それだけに貴方の腕を見込んでいるのでしょう」[p]
[主人公憂い]
「ですので、私が不在の間、きっちり指導役をなさって下さいね」[p]
;主人公への特別感 お約束
;嫌な先生かもかも
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい……」[p]
#
責務を残して、走り去っていく先生を見送りながら、私は頭を[ruby text=かか]抱えてしまった。[p]
;緊張感に苛まれてしまった。
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どうしましょう。きちんとできるでしょうか……）[p]
;華織様の前で、きちんとできるでしょうか……
;華織様が一緒なのに……私、できるでしょうか……
#
淑女として――[r]
好きな人に恥を欠かさないように[ruby text=ふ]振[ruby text=る]舞えるか、不安に苛まれる。[p]
;緊張する主人公 淑女？という敵が現れる前のフラグ
[chara_mod name="sijyou_me" storage="sijyou/me_fusi1.png" time=0]
[wait time=10]
;華織見つめている
[whosay name="華織" color="olivedrab"]
「……」[p]
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
「[名前]さん……迷惑かけてしまったようでごめん」[p]
;フォローできなくなってしまった
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そ、そんなことないです！ お気になさらないで下さい。[r]
[主人公口ほほえみ]
[sp]私も、ご一緒できて嬉しいです」[p]
[whosay name="華織" color="olivedrab"]
「[名前]さん？」[p]
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「皆さんが待っていますわ。 いきましょうか」[p]
[四条退場準備 storage="bg/B4nFWraU42/sijyou_kyousitu_rouka1.jpg" time=100]
[主人公憂い]
;暗転する前のお知らせ↓
#
教室に入っていく華織様の背中を目で送ると、ひとり、[r]
心の中に渦巻く気持ちに思い惑った。[p]
;ひとり思案した　考えあぐねる　苦悶した　瞑想にふけった　思い滞る
[暗転１]
;[chara_mod name="bg" storage="toumei.gif"]
[主人公目閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私、華織様のお仕事のお邪魔にはなりたくないですわ……）[p]
#
――いくつかの士女を提案したところ……[r]
[r]
[sp]先生の言葉が脳裏を掠める。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（でも、もし……私が断った場合は、知らないところで違う方と、[r]
[sp]お仕事をされているのですよね……）[p]
#
ほぼ手紙でしか話せない分、[r]
;ほぼ手紙でしか話すことができない分
華織様の隣で笑っている同い年の淑女を想像した途端、[r]
胸に嫌な気持ちが過ぎてしまった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
（人を好きになるって、自身の気持ちさえも、思い通りにいかなくて[r]
[sp]……大変）[p]
;ラストにつながる言葉　つらい、大変　だと微妙だけど　続きはないと違和感
[主人公目閉]
[主人公口通常]
;この時まだ大変さが軽い
[fadeoutbgm time=3000]
[暗転２]
;〜〜シーン 先生の退場と主人公の立ち位置説明おわり〜〜〜
*sijyou_2
[er]
;〜〜シーン キャラと造作1 (軽度)後に繋ぐもの(テンション↓)〜〜〜
;背景　床の間のみ表示
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[背景_四条華道教室_1]
[主人公通常]
[四条ベース羽織]
[四条通常]
[暗転２終了]
#
生徒達を落ち着かせたところで、私と華織様は、初級者向けの授業を[r]
始めた。[p]
[autosave]
;冬支度と迷う
[if exp="sf.BGM=='ON'"]
;【BGM】みやび（磯野登場シーン：若干コミカルな場面など目立たせたいときに
[playbgm storage="isono_miyabi.ogg" loop=true]
[eval exp="f.bgm_storage='isono_miyabi.ogg'"]
[endif]
[whosay name="華織" color="olivedrab"]
「いけばな とは『師の背中を見て学ぶ』と言われてきました」[p]
[四条目パチ1回]
[whosay name="華織" color="olivedrab"]
「先生のいける花から、形、とり合わせなどを学ぶことは大切です」[p]
[四条目パチ1回]
[whosay name="華織" color="olivedrab"]
「しかしながら、貴方が選んだ花をどんな風に、自身の個性を活かすには[r]
[sp]どの様に いけたいのか心の中で、目標を持つことも大事です」[p]
[whosay name="華織" color="olivedrab"]
;[四条眉下げ]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_sage.png" time=0]
[wait time=10]
「たくさんの花の中から何故、その花を選び、その花をどんな場所に[r]
[sp]いけたいでしょうか？」[p]
;セリフは適当 好きな言葉で↓思いつかない　勉強になるなんて華道のステ的にはないはず
[主人公横目]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様、本当に先生みたいだわ)[p]
[whosay name="華織" color="olivedrab"]
「その花に感じた、どの様な感動を生けたいのでしょうか？[r]
[四条口微笑み]
[sp]……心の中で描く花を見極めて下さい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
（心の中で描く花……）[p]
[whosay name="華織" color="olivedrab"]
[四条微笑み]
「その為にも、ご自身の想いを表現できるよう、今日はしっかりと基礎を[r]
[sp]学びましょう」[p]
[主人公目閉]

[四条退場準備 storage="bg/B4nFWraU42/sijyou_kyousitu1.jpg" time=100]

*sijyou_3
#
[er]
;〜〜シーン キャラの造作1 軽度〜〜〜
[暗転１]
;このシーンの背景は生徒が描かれていないと違和感あるので暗転で。
;教室全体元ファイルアップロダ
;地の文　仮
華織様と共に生徒達をみてまわった。[p]
[autosave]
#
生徒達は、[ruby text=じゅう]十[ruby text=さん]三歳ほどの、あどけなさが残る少女であったが、[r]
皆、教室に通わせるほどの向上思考の高い、良家の子女だけあって[r]
取り組む態度は、真剣そのものであった。[p]
;こんなところに通わせるほど真面目　文が長い！
;[ryby text=きん]謹[ryby text=ちょく]直であった。
・・・・・・[p]
;〜〜シーン キャラの造作2 中度〜〜〜
;背景　床の間のみ表示
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/B4nFWraU42/sijyou_kyousitu1.jpg" time=100]
[背景_四条華道教室_1]
[四条ベース羽織]
[四条通常]
;~===四条登場=====
[freeimage layer=13 time=800]
[wait time=800]
[layopt layer=13 visible=true]
;====四条登場=====
[主人公ポーズ指]
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（皆さん、とても真剣に取り組んでいらっしゃるわ）[p]
[四条目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ片手]
[主人公ふぅ閉]
（ふぅ。 もしかしたら、昔の私よりも淑女らしいかも……）[p]
;年下なのにすごいわ～というもの
[主人公ポーズ通常]
[主人公通常]
[主人公目大]
[whosay name="乙女子 その壱" color=%mp.color]
「ダメですわ！ この枝では、うまくできないですわ！」[p]
#
張り詰めた空気の中、ひとりの生徒が、根をあげるような声を荒げた。[p]
[主人公困り]
[四条目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どうしましょう？[r]
[主人公通常]
[主人公ポーズ通常]
[sp]こういった時は、昔、感じたことを言って差し上げればいいのでしょうか）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;[主人公真剣]
（迷っている場合ではないわ。 [r]
[sp]華織様の役に立てる淑女として指導しなければ！）[p]
[主人公通常]
#
私は、彼女に近づくと声をかけるより先に、指導役として冷静に状況を[r]
把握しようと努めた。[p]
;どうしたの？と声をかけなかった アンチテーゼ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ指]
[主人公目大]
（流石……といったところでしょうか、[r]
[sp]既に基本的な技術は、出来ていらっしゃるようだわ）[p]
[主人公ポーズ通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目通常]
「諦めずに繰り返し、生けることが大事ですわ」[p]
[四条微笑み]
[whosay name="乙女子 その壱" color=%mp.color]
「そう言われましても、頂いた図案よりも、枝自体の流れが少し違うの[r]
[sp]ですもの……。 
[ruby text=た]撓めても、ここの部分なんて少し曲がっていますわ」[p]
;撓 ためる 草木の性質を見極めて曲げること…ため には種類がある
[主人公眉下げ下]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目大]
「そうですね、ひとつひとつ違った個性の花々は教本通りの姿には[r]
[sp]なってませんね」[p]
[whosay name="乙女子 その壱" color=%mp.color]
「なら、どうしたらいいのでしょうか？」[p]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私も、 お花のせいにして面白くないって逃げたくなってしまったことが[r]
[sp]ありました……」[p]
; 昔、思い通りにならなくて投げ出したくなってしまう事がありました……」[p]
;【～～せいにして投げ出す　逃げる】華織、華道展への意気込みフラグへ
[whosay name="華織" color="olivedrab"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
（……）[p]
[主人公眉下げ下]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ですが、粘り強く、花への愛情や興味を持って眺めて下さい……。[r]
[sp]四条様が仰ったように自身の心の中で見極めるのです」[p]
[四条微笑み]
;華織
[whosay name="乙女子 その壱" color=%mp.color]
「粘り強く、花への愛情や興味を……？」[p]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。 根気が大切なのです」[p]
[whosay name="乙女子 その壱" color=%mp.color]
「うぅ〜ん……もう少しで、見えてきそうな気がします……。[r]
[sp]ふぅ、華道って難しいのかしら……」[p]
;同じ流れなので変える
[whosay name=&sf.girl_namae color="#cf5a7f"]
（もっと、他に華道の楽しみを伝えれるようなお言葉があれば……）[p]
;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]
;==================================四条ｱｯﾌﾟ=======================================
#
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/B4nFWraU42/sijyou_kyousitu1.jpg" time=100]
[wait time=2]
[四条退場]
[四条_隣_ベース羽織]
[四条_隣_通常]
;===四条登場=====
[freeimage layer=13 time=700]
[wait time=700]
[layopt layer=13 visible=true]
;====四条登場=====
[whosay name="華織" color="olivedrab"]
[四条_隣_口微笑み]
「丸美屋様。 『上手くなりましたね』と褒められたときを想像なさって[r]
[sp]下さい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様！）[p]
[whosay name="乙女子 その壱" color=%mp.color]
「褒められたとき……」[p]
;子女、想像する
[whosay name="華織" color="olivedrab"]
[四条_隣_目にこ]
「ふふ。 今、丸美屋様は、どなたに褒められましたか？」[p]
[whosay name="乙女子 その壱" color=%mp.color]
「お父様……でしょうか？」[p]
;子女、もじもじ
;他に言い回し
[whosay name="華織" color="olivedrab"]
[四条_隣_微笑み]
「丸美屋様。 帰っていけたら、お父様がお喜びになられるのでしょうね」[p]
[whosay name="乙女子 その壱" color=%mp.color]
「ありがとうございます。[r]
[sp]私、出来そうな気がしてきましたわ」[p]
[whosay name="華織" color="olivedrab"]
「もし、どうしても気になるようでしたら、こちらの枝は、[r]
[sp]この向きで挿してみてはいかがでしょうか？」[p]
[whosay name="乙女子 その壱" color=%mp.color]
「そうですわね……それなら思った通りになりそうですわ！」[p]
;ほっ 目閉じ ため息 または 喜び
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（よかった……）[p]
;主人公微笑み 指 か 主人公横目 口微笑み 指
[主人公目閉]
[fadeoutbgm time=3000]
;戻す
#
[暗転２]
[chara_mod name="sijyou_tonari_mayu" storage="toumei.gif" time=0]
[chara_mod name="sijyou_tonari_me" storage="toumei.gif" time=0]
[chara_mod name="sijyou_tonari_kuti" storage="toumei.gif" time=0]
[chara_mod name="sijyou_tonari_base" storage="toumei.gif" time=0]
[主人公通常]
[暗転２終了]
;～～～～～～～～～～～～～シーン昼休みに～～～～～～～～～～～～～～～～
*sijyou_4
[er]
#
私は、華織様と、なんとか午前中を[ruby text=しの]凌ぎきり、[r]
お昼休みを頂くこととなった。[p]
[autosave]
;しのぎ・・・・乗り切って？
;背景　床の間のみ表示
[背景_四条華道教室_1]
;[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_kyousitu1.jpg"]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/B4nFWraU42/sijyou_kyousitu1.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
;戻す
[四条ベース着物]
[四条困り微笑み]
;===四条登場=====
[freeimage layer=13 time=700]
[wait time=700]
[layopt layer=13 visible=true]
;====四条登場=====
[whosay name="華織" color="olivedrab"]
「……すみません、[名前]さん。 急に出てあんな事を言ってしまって……」[p]
;きずなにしてみる　シーンがころころ変わるから音楽の一貫性がないかんじ
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ！  私も、励ましのお言葉に困っていたので助かりましたわ」[p]
;会話によって華織の行動が明確に
;ここからＢ会話に持っていきたいだけの間
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「僕は、[名前]さんのおかげで励まされましたよ」[p]
#
[四条目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？ そうでしょうか」[p]
;Ｂ会話
[whosay name="華織" color="olivedrab"]
「[名前]さんのおかげ、僕も改めて昔の想いを思い出しました。[r]
[sp] 何かのせいにしていては、弱いままですよね」[p]
;華道展のフラグ回収
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様？」[p]
[四条困り微笑み]
[whosay name="華織" color="olivedrab"]
「いえ！何でもないです！[r]
[sp]……あの子達を見ていたら、昔の[名前]さんを思い出して、[r]
[sp]いてもたってもいられなくなったと言いますか……」[p]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_ake.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「懐かしいですよね！」[p]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_futuu.png" time=0]
[wait time=10]
[主人公目閉]
;過去を思い出すシーンはシーンをまとめないとモヤモヤするので移動
#
ふと、私は、生徒を笑顔で見つめる華織様を思い返した。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
（そういえば、私も昔は、お兄様や華織様に褒められて嬉しかった[r]
[sp]ですわね）[p]
;C会話へ
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（昔の私……）[p]
[主人公目閉]
[四条退場]
[暗転１]
;効果セピア
[背景セピア化]
[wait time=100]
;背景　主人公部屋セピア 無邪気な頃を羨ましくも思う？
;～～～～～～～～回想 困ったら回想シーン C会話～～～～～～～～～
;=================================================================================_
*seen4
#
私は、初めて作った[ruby text=い]生け[ruby text=ばな]花をお兄様と華織お兄様に[r]
見せたこと思い出した。[p]
[autosave]
;【背景】主人公邸 庭の見える部屋：昼
[背景_庭]
[whosay name=幼い頃の私 color=%mp.color]
「華織お兄さま！[r]
[sp]せっかくの華道のはじめてが、こんな葉っぱでは面白くない[r]
[sp]ですわ」[p]
[whosay name="華織お兄さま" color="olivedrab"]
「[名前]ちゃん、このハランの葉をよく見てごらん。[r]
[sp]なびきや色合いが美しいと思わないかい？」[p]
;なびきと形って同じだと思います　
; ハランとは、スズラン亜科ハラン属の常緑多年草で、巨大な葉を地表に立てる植物である。
[whosay name="華織お兄さま" color="olivedrab"]
「青々して、今を精一杯生きようとして、彼なりの個性もあるよ」[p]
[whosay name=幼い頃の私 color=%mp.color]
「個性？  華織お兄さま、面白いこと言うのね」[p]
;小さい頃の主人公の性格が、あまりわからない
[whosay name="華織お兄さま" color="olivedrab"]
「そ、そうかな？」[p]
;（文矢にも、よく言われるけれど……[名前]ちゃんにも言われしまうとは）なくてもいいか
[whosay name=幼い頃の私 color=%mp.color]
「でも、華織お兄さまに言われてみたら、この葉っぱも可愛く[r]
[sp]みえてきたわ！[r]
[sp]それに緑の移り変わりが綺麗！」[p]
[whosay name="華織お兄さま" color="olivedrab"]
「ありがとう。  うまく出来たら、文矢に見せに行こうね」[p]
#
[暗転１]
;[chara_mod name="bg" storage="toumei.gif"]
;～～～～～～～～回想 困ったら回想シーン C会話おわり～～～～～～～～～
;効果セピア消し
[背景セピア化_解除]
[wait time=100]
;背景　床の間のみ表示
[背景_四条華道教室_1]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/B4nFWraU42/sijyou_kyousitu1.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[四条ベース着物]
[四条通常]
[四条目閉じ]
;四条考えてる
;===四条登場=====
[freeimage layer=13 time=800]
[wait time=800]
[layopt layer=13 visible=true]
;====四条登場=====
[主人公ポーズ通常]
[主人公通常]
[主人公眉困り]
;思い出し→恥ずかしい 反省
[whosay name=&sf.girl_namae color="#cf5a7f"]
（あの頃は……）[p]
[四条目大]
[主人公ふぅ閉]
（華織様に対して、少しばかり、無邪気でしたわ）[p]
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「お昼休みが終わったら、こちらの教本の 六頁から始めますね」[p]
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい！」[p]
[主人公ふぅ閉]
[四条困り微笑み]
;冷たいかも
[whosay name="華織" color="olivedrab"]
「すみません、授業に使用する花材が届く時間ですので、[r]
[sp]僕は先に失礼しますが、
[主人公口ほほえみ]
[主人公目大]
[四条微笑み]
[名前]さんは、ゆっくりしていて[r][sp]くださいね」[p]
;「頼んでた花材が届く時間ですので、僕は先に失礼します」[p]
[四条目閉じ]
#
[四条退場]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉困り]
（華織様、お昼休み中でも、授業のことを考えられてるのね。[r]
[主人公真剣]
[sp]私も集中しないと）[p]
;（集中しないと）[p]
;華族が働いている感じるな～
[主人公目閉]
[暗転２]
[主人公眉下げ下]
#
*sijyou_5
[er]
[暗転１]
[暗転２終了]
;〜〜シーン キャラの造作2 中度〜〜〜
;シーン急上昇まで流れ。楽しい時間を得る
;完成に喜ぶ児童達。
[whosay name=乙女子その弐 color=%mp.color]
「できましたわ！」[p]
[autosave]
#
[背景_四条華道教室_1]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/B4nFWraU42/sijyou_kyousitu1.jpg" visible=true time=100]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[主人公通常]
[四条ベース羽織]
[四条通常]
;===四条登場=====
[freeimage layer=13 time=800]
[wait time=800]
[layopt layer=13 visible=true]
;====四条登場=====
[四条微笑み]
[whosay name=乙女子その壱 color=%mp.color]
「……私も出来ましたわ！」[p]
[主人公ほほえみ]
#
少女達は、完成した作品を見合って喜び合う。[p]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「皆様、よく頑張りました。[r]
[sp]帰ったら、おうちの人にも見せてあげて下さいね」[p]
;ワイワイSE
[主人公目伏柔]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
#
小さな少女達を笑顔で見守る華織様。[p]
#
それは、まるであの日みた"華織お兄さま"の優しい表情、[r]
そのままであった。[p]
;四条は考え事をしている主人公に気づく。
[主人公眉困り]
[主人公目閉]
;↓効果：無し(通常) [主人公効果消]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私も昔は、あの様に華織お兄さまに見守られて、いましたね[r]
;[主人公眉下げ下]さま　にしておく　どちらでも
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
[sp]お付き合いして華織様と呼ぶようになりましたが……）[p]
;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]
;全体や続きを読み解かないと何が言いたいの？ってなる
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_ake.png" time=0]
[wait time=10]
;==================================四条ｱｯﾌﾟ=========================================
#
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/B4nFWraU42/sijyou_kyousitu1.jpg" time=100]
[wait time=2]
[四条退場]
[四条_隣_ベース羽織]
[四条_隣_通常]
;===四条登場=====
[freeimage layer=13 time=700]
[wait time=700]
[layopt layer=13 visible=true]
;====四条登場=====
[whosay name="華織" color="olivedrab"]
「[名前]さん？ どうかされましたか？」[p]
;ここも苗字でなくてもいいいかな
#
華織さまは、生徒達に聞こえないようにソッとささやいた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
「華織様が……」[p]
#
私は、そこで口を[ruby text=つぐ]噤んだ。[p]
;心配そうにみている
[四条_隣_眉下げ]
[四条_隣_伏目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（華織様のことを、いまさら昔の"華織お兄さま"のようにみえたなんて[r]
[sp]言ったら、なんて思われるのでしょう……）[p]
#
想い人を 今更、"華織お兄さま"と呼ぶには、少し、[ruby text=とま]躊[ruby text=どう]躇う、[r]
年頃と立ち位置になってしまっていた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（今は、ひとりの淑女として、もっとしっかりしないと）[p]
#
自身では、名状しがたい感情を笑って押し隠すと、別の話題へと[r]
すり替えた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ]
「その、私も昔のことを思い出したのです」[p]
;その代わりに別の気持ちを打ち明ける
;主人公の話をきく四条。
[whosay name="華織" color="olivedrab"]
[四条_隣_眉下げ]
[四条_隣_目大]
[wait time=10]
「そうなんですね。 懐かしいですよね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;[主人公横伏目]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi1.png" time=0]
[wait time=10]
（嘘ではないわ）[p]
;お互いにいろいろ考えている
;四条は、様子がおかしい主人公に 生け花をしようと誘う。
[whosay name="華織" color="olivedrab"]
[四条_隣_目にこ]
[wait time=10]
[主人公通常]
「そうだ。 [名前]さん」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[主人公目大]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[四条_隣_微笑み]
「？ 」[p]
[whosay name="華織" color="olivedrab"]
「教室が終わりましたら、また一緒にいけてみませんか？」[p]
;終わったら一緒にいけることを約束する
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公笑顔]
「はい！」[p]
[主人公目閉]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[暗転２]
[chara_mod name="sijyou_tonari_mayu" storage="toumei.gif" time=0]
[chara_mod name="sijyou_tonari_me" storage="toumei.gif" time=0]
[chara_mod name="sijyou_tonari_kuti" storage="toumei.gif" time=0]
[chara_mod name="sijyou_tonari_base" storage="toumei.gif" time=0]
;=============================================================================_
*kyousitu_zentai
[er]
;【背景】　和室広め　赤っぽく
[背景_四条華道教室全体(夕)]
[暗転２終了]
;〜〜〜 〜〜〜 シーン急上昇(期待値高め)〜〜〜 〜〜〜
;～～～～シーン片付ける～～～～～
;楽しく片付ける2人 主人公が絶好調になる
#
生徒たちが笑顔で帰ったあと、私たちは、教室の後片付けを始めた。[p]
; 生徒たちが笑顔で帰ったあと、私たちは、約束の前に教室の後片付けを始めた。[p]
[主人公ポーズ通常]
[主人公通常]
[autosave]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「結構、さばいた後のお花がでましたね」[p]
;さばく。花・葉・枝がつきすぎていて見た目がすっきりしない場合に、全体を見ながら適当に省略し、いけたい草木を強調し、美しい姿にします。
;さばくの説明↓に適当な情景を加える
#
花の姿を整える際に[ruby text=はさみ]鋏で切り落とされた花を集めてみると、手一杯に[r]
なりそうな量であった。[p]
;貧乏くさいと思う人もいそうなので回避
[whosay name="華織" color="olivedrab"]
「そうですね。　片付けが終わりましたら、この花達に新しい居場所を[r]
[sp]作りましょうか」[p]
;さばいた花は他のところに場所をあたえて生かしてみましょう　教本より
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
「はい」[p]
;～～～～～～～～とりあえず　ここまで背景あったら描写書くかも～～～～～～～～～～～～～～～～～～～
#
*sijyou_6
;背景　床の間のみ表示　夕方バージョン
[背景_四条華道教室(夕)]
[layopt layer=13 visible=true]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/B4nFWraU42/sijyou_kyousitu1_yuu.jpg" time=100]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[主人公横目]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
#
茜色をさす教室の中、華織様のうつろいゆく影を目で追う。[p]
;↓目：柔和な伏目 [主人公目伏柔]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
#
花を丁寧に扱う、その様は……[r]
やはり"憧れの人"といった印象、そのままであった。[p]
[autosave]
;花を丁寧に扱う、その様は、憧れの人の印象、そのままであった。[p]
;自身だけ、釣り合っていない取り残された感
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（今日、一日、一緒にお手伝いさせて頂きましたが[r]
[sp]……華織様は、ご自分の家業に対して、責任を持って挑んで[r]
[sp]いらっしゃるのね）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
（ふぅ。　今日の私、華織様のお役に立てたでしょうか）[p]
#
[四条ベース羽織]
[四条通常]
[四条目大]
;===四条登場=====
[freeimage layer=13 time=800]
[wait time=800]
[layopt layer=13 visible=true]
;====四条登場=====
[whosay name="華織" color="olivedrab"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
「[名前]さん、大変だったらそっちも手伝おうか？[r]
[sp]僕は片付けも終わりましたから」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ]
「！　い、いえ、こちらも、終わりそうですから大丈夫ですわ」[p]
;ようやくいけることに
;気持ちを教えてくれない主人公に悩んでいる？
[四条困り微笑み]
[whosay name="華織" color="olivedrab"]
「そうですか。[r]
[四条微笑み]
[sp]では、こちらの花と、僕が見本で持ってきた[ruby text=ぼ]牡[ruby text=たん]丹[ruby text=かご]籠で、いけて[r]
[sp]みましょうか」[p]
;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]
;==============================四条ｱｯﾌﾟ=============================
#
[wait time=2]
[layopt layer=13 visible=true]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/B4nFWraU42/sijyou_kyousitu1_yuu.jpg" time=100]
[四条退場]
[四条_隣_ベース羽織]
[四条_隣_微笑み]
;===四条登場=====
[freeimage layer=13 time=700]
[wait time=700]
[layopt layer=13 visible=true]
;====四条登場=====
;近づいて驚く
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[四条_隣_目閉じ]
[主人公通常]
華織様は、藤でできた壺状の籠を手にすると、短くなってしまった花々を[r]
細く長い指で丁寧にしごく。[p]
;しごく　華道用語です
#
切り捨てられていた花々は、みるみるうちに自然の中に生える美しい姿へと変わっていく。[p]
;華織様の手によって
;柔和ほほえみ（見とれる・夢見がち）　または　驚き小ほほえみ（感心）心配
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
（……生き生きと風情のある姿になっていくわ）[p]
#
[主人公通常]
その手をよく見ると、[ruby text=つき]突[ruby text=ぬき]抜[ruby text=にん]忍[ruby text=どう]冬ののような、赤いかすり傷が[r]
咲いていた。[p]
;わかりにくいから、スイカズラ？ 春の花がいいでしょうってことで
;感情　嬉しさor寂しさ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
（……華織様、[華衣]さんの[ruby text=こ]心[ruby text=と]配もなくなって、練習に励んで[r]
_　いらっしゃるのでしょうか？）[p]
;華織に質問される主人公
;四条柔和ほほえみ
[whosay name="華織" color="olivedrab"]
「[名前]さんは、どんな人のために花をいけていますか?」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公ポーズ指]
「それは……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ片手]
[主人公ふぅ閉]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
（華織様の為になんて……言えないわ）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ]
[主人公ポーズ通常]
「華織様は、誰かの為にいけているのですか？」[p]
;～～～ほほえみ小～～～～
;眉下げ
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
#
私は、少し期待しながらも、華織様に尋ねた。[p]
[whosay name="華織" color="olivedrab"]
「そうですね。  
[四条_隣_目閉じ]
やはり僕は、見に来て頂いた皆さんに喜んで[r]
[sp]もらうように いけてます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困りほほえみ]
「そうなのですね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
（さすが華織様だわ。  少し期待してしまった私が恥ずかしい）[p]
#
私は、華織様の[ruby text=きん]謹[ruby text=げん]厳なる、お言葉に身を縮こませてしまった。[p]
;私は、華織様の四条家の由緒ある伝統を背負ったお言葉に身を縮こませてしまった。[p]
[主人公憂い]
[whosay name="華織" color="olivedrab"]
「でも、なかなか皆さんを喜ばすことは難しいですね……。[r]
[sp]感動を与えるということは、心に余裕をもって伝えなければ、[r]
[四条_隣_困り微笑み]
[sp]見に来る人には、簡単に見透かされしまいます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
（華織様……）[p]
;セリフ思いつかない↑
[whosay name="華織" color="olivedrab"]
[四条_隣_微笑み]
「でも、さっきの[名前]さんの言葉で、決意も改めることもできましたし、[r]
[sp]諦めず、もう一度、頑張ってみようと思います」[p]
;[名前]さんのおかげ、僕も改めて昔の想いを思い出しました。 何かのせいにしていては弱いままですよね
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「？　そうですか？」[p]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;（私、なにか言いましたかしら？）なくていいかも
[whosay name="華織" color="olivedrab"]
「きちんと 、自分の目標が達成されたら、[r]
[sp]一人前の華道家として[名前]さんの為に花をいけますね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（私のためにいけてほしい。  なんて考えてしまいますが）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
（華織様の花に対する思いは、[r]
[sp][ruby text=なみ]並[ruby text=たい]大[ruby text=てい]抵のものではない想いを持っていらっしゃるのですね）[p]
;キャラ説明

[主人公目閉]
（花を扱っていらっしゃる華織様は、とても輝いていらっしゃる……[r]
[sp]そんな華織様のことが私は、憧れで、好きなのに）[p]
[主人公憂い]
;微妙
（なのに何故でしょうか。 とても近い場所にいるのに……届かない気がして……）[p]
[autosave]
#
私は、あの晩に見た、届かない月に如く[r]
清らかなる華織様の御心に対して[p]
切なさと畏敬の念を同時に[ruby text=いだい]抱いてしまった。[p]
;澄んだ月のような清らかな心をもった華織様の御心に[r]
;私は、畏敬の念を[ruby text=いだい]抱いた。[p]
;雲心月性 opに回帰　僅かに臆してしまった。　
;なんかいい言葉で。
*seen_end
;引用元：～～はじめての　池坊いけばな入門～～
@jump storage="sijyou/sijyou_2_1b.ks"
;続編に飛ぶ
[if exp="tf.test_sijyou == true"]
[四条退場]
[暗転１]
;↓ifで飛んでるのでセーブデータの肥大化防止
[clearstack]
[fadeoutbgm time=3000]
[endif]
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

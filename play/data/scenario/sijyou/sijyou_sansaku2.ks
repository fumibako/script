;◎四条のことを知るイベントがなく説得力にかける
;平均的に何でもこなすが特出したものがない。というイベントがない。
;主人公・・・子供の頃から知り合いのお兄さんなので、他の攻略対象に比べると、あまり淑女度はないかも
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
;表情も適当。優雅さに欠けていたら直してください
[主人公口ほほえみ]
#
残暑も和らぎ、爽秋の風が吹く町。[r]
人々は、冬支度に悩みながらも心地よい陽気に足取りも軽くなる。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
#
[主人公目パチ1回]
#町の女性
「その花、一束お願い」[p]
#
ふと、その声で私は、花屋の前で足をとめた。[p]
#
町の片隅には花の卸売り店があり、女中がお稽古ごとの花を購入している。[r]
桶に並んだ花達をみて、私は華織様のことを思い返した。[p]

;【主人公】思いふける？　ほほえみ？　恋絵巻とか言われる表情とは？
[主人公ほほえみ]
[wait time=10]

[whosay name="三宮　時子" color="#c25232"]
「ごきげんよう 名前さん」[p]

;【主人公】急に呼ばれて驚く？
[主人公驚]
[wait time=30]

;【主人公】すこし、ほほえみ　この表情だと取り繕っている感じかも？
[主人公口ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ごきげんよう 時子さん。お久しぶりですね」[p]

[whosay name="三宮　時子" color="#c25232"]
「[名前]さん何か良いことでもありましたの？」[p]

;【主人公】驚きと照れ
[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私、そんな風に見えましたか？」[p]
[主人公目パチ1回]

[whosay name="三宮　時子" color="#c25232"]
「えぇ。まるで素敵な殿方と再会したような、少女のお顔をなされていま[r]
[sp]したわ」[p]
;時子さんは、一体何者なんだ

;【主人公】照れ？　とりあえす通常
[主人公照れ目普通]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうでしょうか？」[p]

;値は適当です
[if exp="f.para_shujinkou_shukujodo >= 100"]
[whosay name="三宮　時子" color="#c25232"]
「えぇ、淑女らしかぬ浮き足だった表情をされてましたわよ」[p]
[else]
[whosay name="三宮　時子" color="#c25232"]
「えぇ。花屋の前で、恋絵巻に出てもおかしくない表情をされてましたわ」[p]
[endif]

;【主人公】恥ずかしい
[主人公照れ目普通]
[wait time=10]
[主人公ポーズ片手]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(私ったら……)[p]

[whosay name="三宮　時子" color="#c25232"]
「もしかして、お手紙のお相手に四条家の華織様をお選びになられたの[r]
[sp]かしら？　」[p]

;【主人公】おどろき　通常？
[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！[sp]えぇ。時子さんは四条華織様をご存知でいらっしゃるの？」[p]

[whosay name="三宮　時子" color="#c25232"]
「父に華道展覧会に連れられたときに 『[ruby text=し]四[ruby text=じょう]条[ruby text=あや]綾[ruby text=か]花』様と、[r]
[sp]ご一緒にお会いしましたわ」[p]
;プレイヤーより先に出会っているってどうなのでしょう
#
;【主人公】プレイヤーと同調して
[主人公ポーズ通常]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「四条綾花様？」[p]
;織り→機織り→綾+花から命名。　華衣も織ggr→衣服から命名。

[whosay name="三宮　時子" color="#c25232"]
「あぁ、綾花様は、『四条華織』様のお祖母様ですわ。[r]
[sp]華道会では、そこそこ有名な方ですの」[p]
;70上くらいの世話焼きさん？
#
[主人公ポーズ指]
[wait time=10]
;【主人公】プレイヤーと同調して
[whosay name=&sf.girl_namae color="#cf5a7f"]
(そうなのですね)[p]
;そうだったわ　の方が物語的にも違和感ない？　実際,女慣れしてるのか？？という疑問。
[whosay name="三宮　時子" color="#c25232"]
「女慣れしているという噂もありますし、あの歳でおもてになるのに[r]
[主人公眉下げ下]
[sp]まだ結婚していないのは、引っかかっていましたけれど、[r]
[名前]さんとの家付き合いが深い方でいらしたのね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「えぇ」[p]
;昔から父と兄が四条様とお付き合いがありまして[p]
[whosay name="三宮　時子" color="#c25232"]
「それにしても……四条様が[ruby text=は]二[ruby text=た]十[ruby text=ち]歳を過ぎても、見合いひとつお受けされなかったというのは、[r]
[sp]余程、[名前]さんとの婚姻を待ち望んでいたってことなのかしらね？」[p]
#
[ruby text=とき]時[ruby text=こ]子さんの言葉に胸の早鐘がひとつ鳴る。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
(そういえば、兄は見合いをなさったのに、華織様は……)[p]
[主人公ポーズ片手]
[主人公困り]
[主人公頬染め]
#
いくら武家同士の繋がりを深めたいとはいえ、[名字]家でなくても、[r]
お相手を申し出る家はあったかもしれない。[p]
;一個整合性合わせしたらここまで影響が
[whosay name="三宮　時子" color="#c25232"]
「いずれにせよ。　噂にされるような悪い様な方には、見受けられませんでしたし、[r]
[sp]穏やかな四条華織様とは、[名前]さんは、温かい家庭を築けそうな気が[r]
[sp]するわ」[p]
[主人公ポーズ通常]
;【主人公】ほほえみ　プレイヤーと同調してセリフは想像して？
;礼をいう？
[主人公ほほえみ]
[wait time=20]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;時子さん、[p]
;お気遣いありがとうございます
#
友人に恋仲を褒められ、嬉しい反面、恥ずかしくもなる。[p]
;思いつきません
[whosay name="三宮　時子" color="#c25232"]
「そうだわ！[r]
[sp]私、ちょうど華道連盟の冊子を持っていたのですわ」[p]

;３ページ待機　間がもたない
[主人公通常]
[wait time=10]

#
時子さんは、『華道連盟 〜花ノ道〜』とは書かれた冊子を取り出した。[p]
;書道連盟の冊子みたいなものです。
[主人公目パチ1回]
[wait time=10]
[主人公ポーズ指]
[wait time=10]
#
その冊子には、華道のお稽古の道具から、最近の華道関係でご活躍した方についてのことが、
詳細に連載されていた。[p]
;言い回しが硬い！
;もしかしたら磯野が持ってるかもしれない冊子。
[主人公目パチ1回]
[wait time=10]
[whosay name="三宮　時子" color="#c25232"]
「[名前]さんに差し上げます」[p]
;【主人公】とまどい　おどろき？
[主人公驚]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「よろしいのでしょうか？」[p]
[whosay name="三宮　時子" color="#c25232"]
「父から見合い相手の話の種になるように渡されましたけれど、[r]
[sp]私、このような物を 見なくても[ruby text=はなし]話の種には[ruby text=こと]事[ruby text=か]欠きませんから」[p]
;父に?
;性格わからず私見です　渡す理由があればok
;スマホからみると改行がこれくらい
;【主人公】あはは 汗といった感じ？
[主人公困りほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
[whosay name="三宮　時子" color="#c25232"]
「それに、先日に行われた華道競合大会に華織様のことも、載っていまして[r]
[sp]よ」[p]
;【主人公】期待をして笑顔　素直に知りたいから？
[主人公通常]
[主人公口笑顔小]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうなのですか！」[p]
;【主人公】わくわく？
[主人公口ほほえみ]
[wait time=10]
#
私は、思わず、時子さんと一緒になって冊子の中の名前欄を探ってしまった[p]
[主人公目パチ1回]
[wait time=10]
;淑女度低め？
[whosay name="三宮　時子" color="#c25232"]
「華織様は……惜しくも大賞を逃して準賞のようですわね」[p]
;準優勝って言い回しがおかしいので変更
#
大きく写真が載った四条綾花の隣に、中くらいの四条華織様の写真が[r]
作品と共に掲載されていた。[p]
[whosay name="三宮　時子" color="#c25232"]
「さすが、四条流の跡継ぎ候補だけあって、素敵に活けてある作品が多いです[r]
[sp]わね」[p]
;プレイヤーへの紹介　言い回しはなんか変
[主人公目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
#
しかし、批評所見欄には、こう書かれていた。[r]
『他の方には、引けは取らないのですが、イマイチ勢いにかける作品』[p]
#
『秘められた才能を感じますが、あと少し足りない』[p]
#
写真に写った四条様の表情は、穏やかな笑みをしていたけれど、どこか[r]
寂しげな表情であった[p]
;時期によって呼び方がちがうのでどうしたものか
;【主人公】憂うほどではない感じ？
[whosay name=&sf.girl_namae color="#cf5a7f"]
(……)[p]


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


[機能ボタン表示]


;【背景】[背景_庭]
;[chara_mod name="bg" storage="bg/room_niwa.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
;[主人公ポーズ通常]


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

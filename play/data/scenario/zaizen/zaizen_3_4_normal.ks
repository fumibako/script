;=============================================
;イベント10回目【財前母の誕生日パーティ】3月4週、
;=============================================
;【背景】[背景_庭]
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]

[主人公ほほえみ]
;【立ち絵】主人公：微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様の手紙の描き方が柔らかくなったわ）[p]

;【SE】紙に触れる（カサ）

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]


[手紙財前 fumi_number=]
[名字]　[名前]様へ[l][r]
[sp]拝啓　春草萌えいづる季節を迎え[r]
貴方にはいかがお過ごしですか？[r]
[r]
[sp] さて、暫く手紙を書けなかったことをまずは[r]
お詫びしましょうか。[r]
[sp] 手紙を出せずにいる間も貴方から手紙を頂き[r]
貴方温かく感じられるようになりました。[r]
[sp]自分でも不思議な気分です。[r]
[r]
[sp]ところで３月２５日ですが母から誕生日パーティの[r]
招待を受けました。[r]
[sp]仕事もひと段落つきましたし出席しようかと思います。[r]
そして母から貴方も連れて出席して欲しいと書かれてありました。[r]
いかがしましょうか？[r]
[r]
[sp]それでは返信をお待ちしております。[r]
[sp] 浅春の折、穏やかにお過ごし下さい[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　敬具[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　財前　美彬[p]
[resetfont]
[手紙財前読了 fumi_number=]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;[背景_庭]
;[chara_mod name="bg" storage="bg/room_niwa.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[whosay name="磯野" color="dimgray"]
「お嬢様、入ってもよろしいでしょうか？」[p]

;【立ち絵】主人公：通常
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、準備は出来ています」[p]

;【SE】襖を開ける（ゆっくり）

[whosay name="磯野" color="dimgray"]
「お嬢様はすっかり麗しい淑女となられて[r]
[sp] わたしめも鼻が高いです」[p]

#
磯野は感嘆したようにため息をつく[r]
自分自身でも立ち振る舞いが変わり、[r]
淑やかで流麗な動作が自然に[r]
出来るようになったと感じるようになった[p]

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう。[r]
[sp] これからも精進しますわ[r]
[sp] ところで財前様はまだかしら？」[p]

[主人公通常]

[whosay name="磯野" color="dimgray"]
「はい、今お着きになられましたので[r]
[sp] お知らせにきました」[p]

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ……ではいってまいります」[p]

[主人公退場]

;背景玄関
[chara_mod name="bg" storage="bg/bg_genkan.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公ポーズ通常]
[主人公通常]

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様。お待たせしました」[p]

#
そういってお辞儀をする[r]
親しき中にも礼儀ありだわ[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「いや、そんなに待っていない、[r]
[sp] それにしても女性というのは[r]
[sp] 瞬く間に変わっていくものですね」[p]

#
ほうと感嘆するように私を見つめる[r]
嬉しさに心が跳ねる[p]

;【立ち絵】主人公：目伏せ微笑み頬染
[主人公頬染め]
[主人公目伏]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お恥ずかしゅうございます」[r]
（誇らしいけどやはり[r]
[sp] まだ少し恥ずかしいわ）[p]

;【立ち絵】財前：微笑み
[whosay name="財前美彬" color="#7a65b2"]
「さあ、車にのって下さい」[p]

;【立ち絵】主人公：微笑み
;[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ」[p]

[主人公退場]

;背景洋館パーティ会場
[chara_mod name="bg" storage="bg/test_zaizen_paty1.jpg" time=50]
[主人公ポーズ通常]
[主人公通常]

[whosay name="財前母"]
「まあ！[r]
[sp] アルベルト、[名前]さん[r]
[sp] よく来てくれたわ」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「招待を感謝します独逸大使夫人[r]
[sp] いえ、意地になるのは止めます[r]
[sp] ……母上」[p]

[whosay name="財前母"]
「……ありがとうアルベルト[r]
[sp] 今日は内輪だけのパーティに[r]
[sp] してあるので。[名前]さんも[r]
[sp] ゆっくりたのしんでいって下さいね」[p]

;【立ち絵】主人公：微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、私もお招き頂いて光栄です[p]
;【立ち絵】主人公：真剣
[主人公真剣]
……少し相談したい事がありますが[r]
[sp] いいでしょうか？」[p]

[whosay name="財前母"]
「ええ、構いません。[r]
どんなことですか？」[p]

;【立ち絵】主人公：真剣
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「後で二人で話してもいいでしょうか？」[p]

[whosay name="財前母"]
「よろしいですよ」[p]

;【立ち絵】財前： 通常
[whosay name="財前美彬" color="#7a65b2"]
「一体何の話ですか？」[p]

;【立ち絵】主人公：目伏せ頬染
[主人公照れ目普通]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「秘密です」[p]

;【立ち絵】財前：ため息
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですか……[r]
[sp] まあ構いません[r]
[sp] 母上は今お手すきのようだし[r]
[sp] 話してくるといい」[p]

;[主人公通常]

[whosay name="財前母"]
「ええ、[r]
こちらにこちらに[名前]さん」[p]

#
私はパーティ会場から少し離れた[r]
応接室に通された[p]

[主人公退場]

; 背景洋館応接室
[chara_mod name="bg" storage="bg/zaizen_ousetu.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公ポーズ通常]
[主人公通常]

[whosay name="財前母"]
「[名前]さん が私に相談なんて嬉しいわ！[r]
[sp] どんな相談なのかしら？」[p]

;【立ち絵】主人公：真剣
[主人公真剣]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……恋とはどんなものですか？[r]
[sp] 私財前様に鬱陶しがられるのは嫌なのですが[r]
[sp] 嫉妬したり苦しくなったり[r]
[sp] 自分が分らないんです！」[p]

[whosay name="財前母"]
「貴方はアルベルトに恋している[r]
[sp] ……恋は気づいたら落ちているものよ[r]
[sp] アルベルトは恋愛を望まなかったと聞くわ[r]
[sp] ……私の所為ね」[p]

[whosay name="財前母"]
「でもね。今はでも貴方だけには[r]
[sp] 優しい一面を見せるようになったのではなくて？[r]
[sp] あの子が貴方にだけは優しい目をする」[p]

;【立ち絵】主人公：真剣 [主人公真剣]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「それはただ単に[r]
[sp] 心を許してくれただけではないのですか？」[p]

[whosay name="財前母"]
「それだけではないと思うわ」[p]

;【立ち絵】主人公：真剣 [主人公真剣]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいえ、財前様は最初に[r]
[sp] 恋愛を期待しないでほしいと[r]
[sp] でも私は財前様に私だけを[r]
[sp] 見て欲しいと思ってしまうのです。」[p]
;【立ち絵】主人公：目伏せ悲しみ
[主人公憂い]
「胸が苦しいぐらいに……」[p]

[whosay name="財前母"]
「それなら伝えてみたらどうかしら？[r]
[sp] アルベルトも貴方に心を許している[r]
[sp] それは貴方も分っている」[p]

;【立ち絵】主人公：目伏せ悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「でも拒絶されるのが怖いのです[r]
[sp] 苦しくてもうどうしていいか分りません。」[p]

[whosay name="財前母"]
「でもその気持ちから逃げないで[r]
[sp] 怖くても自分に正直になって[r]
[sp] [名前]さん勇気をだしていってごらんなさい[r]
[sp] 今のままでは貴方も苦しいでしょう？」[p]

;【立ち絵】主人公：目閉じ
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……ええ」[r]
（拒絶されるのが怖いけれど[r]
[sp] このままでいるのが苦しくて辛い[r]
[sp] それなら告白べきなのだわ）[p]

[whosay name="財前母"]
「頑張ってね」[p]

[主人公退場]

#
そしてパーティ会場に戻りました[p]

;背景洋館パーティ会場
[chara_mod name="bg" storage="bg/test_zaizen_paty1.jpg"]
[主人公ポーズ通常]
[主人公通常]

;【立ち絵】主人公：驚
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あれは！」[p]

#
財前様は美しい女性とダンスを踊っていた[r]
二人ともダンスがすごく上手な事がわかる[r]
周囲の人たちから噂が聞こえてきた[p]

[whosay name="パーティ客男性"]
「ほう……お似合いですなあ[r]
[sp] 外務大臣の御令嬢澄玲子様と[r]
[sp] 此度の恐慌で活躍した財前美彬殿か」[p]

[whosay name="パーティ客女性"]
「本当にお似合いですわね[r]
[sp] ２人ともまだ独身じゃなかったかしら[r]
[sp] これは……もしかしたら」[p]

[主人公退場]

;白い花の咲く雪柳の下?
[chara_mod name="bg" storage="bg/zaizen_yukiyanagi.jpg"]
#
私は思わず逃げたしていた[r]
広い庭でこっそり[r]
白い花の咲く雪柳の下で[r]
うずくまっていた[p]

[主人公ポーズ通常]
[主人公通常]
;【立ち絵】主人公：片手を口にやり目伏せ悲しみ
[主人公憂い]
[主人公ポーズ片手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ああなんて胸が苦しいの[r]
[sp] ただ財前様が女性と踊っていただけなのに）[p]

;【立ち絵】財前：ため息
[whosay name="財前美彬" color="#7a65b2"]
「やっと見つけましたよ[r]
[sp] 一体どうしたというのです」[p]

[chara_mod name="bg" storage="bg/zaizen_paty_niwa.jpg"]

;【立ち絵】主人公：目伏せ悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「近づかないで下さい！[r]
[sp] 今私はひどい顔をしています[r]
[sp] もう少ししったら落ち着きますから[r]
[sp] 大丈夫ですからそっとしてください！」[p]

#
自分でもわかるほど[r]
みっともないほど声が震えていた[r]
今にも泣きそうなほどだ[p]

;【立ち絵】財前：驚
[whosay name="財前美彬" color="#7a65b2"]
「……どうしたといういのですか？」[p]

#
財前様のお母様の声が[r]
胸をよぎる[r]
ー勇気をだしてごらんなさい[r]
私は意を決して立ち上がっていった[p]

[fadeoutbgm time=3000]

[if exp="sf.BGM=='ON'"]
;【BGM】はなごよみ〜さくら〜（normal/goodED用
[playbgm storage="ending_hanagoyomi_sakura.ogg" loop=true]
[eval exp="f.bgm_storage='ending_hanagoyomi_sakura.ogg'"]
[endif]

;【立ち絵】主人公：悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私、貴方が他の誰かと踊ってるだけで[r]
[sp] 胸がこんなにも痛くなりますの[r]
[sp] 私貴方に恋をしてしまったようです」[p]

;【立ち絵】主人公：目閉じ
[主人公目閉じ]
「私は財前様が好きです[r]
[sp] 財前様は私の気持ちを[r]
[sp] 受け止めてくれますか？」[p]

#
精一杯の勇気を振り絞って言った[r]
声も震えている[r]
財前様は私に近づく[p]
[chara_mod name="bg" storage="bg/zaizen_CGnomal.jpg"]
額にキスCG（財前目閉じ主人公驚き）[p]

[主人公驚]
#
私は驚いて目を見開いた[r]
一瞬だったかもしれないけれど[r]
長く感じられた[r]
言葉のでない私に財前様は言った[p]

[主人公照れ目普通]
#
本当に貴方はかわいらしい方ですね[r]
いや、それだけではない[r]
私を惑わす悪い方です[r]
そう耳に囁かれて私は真っ赤になった[p]

;CG終わり
;normalここまで



;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
@jump storage="test_zaizen.ks"
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

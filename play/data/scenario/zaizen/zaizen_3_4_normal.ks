;=============================================
;イベント10回目【財前母の誕生日パーティ】3月4週、
;=======================お芝居の準備中です==========================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*3_4_normal storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

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
[sp]自分でも不思議な気分です。[p]
;自動改ページされるので区切ります
[sp][r]
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

[whosay name="磯野" color="dimgray"]
「お嬢様、入ってもよろしいでしょうか？」[p]

;【立ち絵】主人公：通常
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、準備は出来ています」[p]

;【SE】襖を開ける（ゆっくり）

[whosay name="磯野" color="dimgray"]
「お嬢様は、すっかり麗しい淑女となられて、私めも鼻が高いです」[p]

#
磯野は感嘆したようにため息をつく。[p]

自分自身でも立ち振る舞いが変わり、淑やかで流麗な動作が自然に出来る[r]
ようになったと感じる。[p]

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう。 これからも精進しますわ。[r]
[sp]ところで、財前様は、まだかしら？」[p]

;急に真顔なのでゆっくりと変えます
[主人公目通常]

[whosay name="磯野" color="dimgray"]
「はい。　今、お着きになられましたので、お知らせにきました」[p]

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ……ではいってまいります」[p]

;====================================================================================
;再構築に時間がかかるで退場しない
;明るいシーンになっていくので暗転ではなく背景で
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[暗転２ storage="bg/bg_genkan.jpg" clegit=true]
;背景玄関
[chara_mod name="bg" storage="bg/bg_genkan.jpg" time=100]
;既に待っていた状態なので先に出しておくパーティ会場なので燕尾服
[財前ベース燕尾服]
[財前通常]
[暗転２終了]
;====================================================================================

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様。 お待たせしました」[p]

#
そういって、私は、お辞儀をした。[r]
親しき中にも礼儀ありだわ[p]

;[whosay name=&sf.girl_namae color="#cf5a7f"]
;(親しき中にも礼儀ありだわ)[p]心情ではない

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「いや、そんなに待っていない、[r]
[sp]それにしても女性というのは、瞬く間に変わっていくものですね」[p]

#
財前様は、ほう。と、感嘆するように私を見つめた。[r]
その途端、嬉しさに心が跳ねる。[p]
;はねる、　はねた？

;【立ち絵】主人公：目伏せ微笑み頬染
[主人公頬染め]
[主人公目伏]
[主人公眉下げ下]  
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お恥ずかしゅうございます」[p]

（誇らしいけど、やっぱりまだ少し恥ずかしいわ）[p]
;やっぱり←やはり　しかし平仮名つづき　なので暫定

;【立ち絵】財前：微笑み
[財前微笑み]
[whosay name="財前美彬" color="#7a65b2"]
「さあ、車にのって下さい」[p]

;【立ち絵】主人公：微笑み ひとまずコメントアウトのままに
;[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ」[p]

;====================================================================================
;再構築に時間がかかるで退場しない
;明るいシーンになっていくので暗転ではなく背景で
[eval exp="f.haikei_credit='photo　by　名無しさん１＠'"]
;[暗転２ storage="bg/test_zaizen_paty1.jpg" clegit=true]
[暗転２ storage="bg/zaizen_doitutaisikan.jpg" clegit=true]
;【背景】洋館パーティ会場
;[chara_mod name="bg" storage="bg/test_zaizen_paty1.jpg" time=50]
;【背景】独逸大使館パーティ会場
[chara_mod name="bg" storage="bg/zaizen_doitutaisikan.jpg"]
[暗転２終了]
;====================================================================================


[主人公ポーズ通常]
[主人公目伏柔]
[主人公眉下げ下]
[主人公口ほほえみ]
[whosay name="財前母"]
「まあ！[r]
[sp]アルベルト、[名前]さん、よく来てくれたわ」[p]

;【立ち絵】財前：通常
[財前通常]
[whosay name="財前美彬" color="#7a65b2"]
「招待を感謝します独逸大使夫人。[r]
[sp]いえ、意地になるのは止めます……母上」
[財前微笑み]
[p]
[whosay name="財前母"]
「……ありがとうアルベルト。[r]
[sp]今日は内輪だけのパーティにしてあるので、[r]
[sp][名前]さんも、ゆっくり楽しんでいって下さいね」[p]

;【立ち絵】主人公：微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、私もお招き頂いて光栄です」[p]

;【立ち絵】主人公：真剣
[主人公憂い]
「あの……少し相談したい事がありますが、いいでしょうか？」[p]

[whosay name="財前母"]
「ええ、構いません。 どんなことですか？」[p]

;【立ち絵】主人公：真剣
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「後で、二人で話しても良いでしょうか？」[p]

[whosay name="財前母"]
「よろしいですよ」[p]

;【立ち絵】財前： 通常
[whosay name="財前美彬" color="#7a65b2"]
[財前通常]
「一体何の話ですか？」[p]

;【立ち絵】主人公：目伏せ頬染
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
[主人公眉下げ下]
[主人公頬染め]
「秘密です」[p]

;【立ち絵】財前：ため息
[whosay name="財前美彬" color="#7a65b2"]
[財前ため息]
「そうですか……まあ構いません[r]
[sp]母上は今お手すきのようだし、話してくるといい」[p]

;[財前退場] 案内される前に消えていくパターン１

;[主人公通常]
[whosay name="財前母"]
「ええ、　こちらに[名前]さん」[p]
[fadeoutbgm time=3000]
;====================================================================================
;再構築に時間がかかるで退場しない　財前さんだけ退場
;明るいシーンになっていくので暗転ではなく背景で
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[暗転２ storage="bg/zaizen_paty_ousetu.jpg" clegit=true]
[財前退場] 
;案内される姿を見守ったパターン２　こちらにします。
[chara_mod name="bg" storage="bg/zaizen_paty_ousetu.jpg"]
[暗転２終了]
;====================================================================================
#
私はパーティ会場から少し離れた、応接室に通された。[p]

[whosay name="財前母"]
「[名前]さん が私に相談なんて嬉しいわ！[r]
[sp] どんな相談なのかしら？」[p]

;【立ち絵】主人公：真剣
[主人公目閉じ]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……恋とはどんなものですか？[r]
[sp]私、財前様に鬱陶しがられるのは嫌なのですが[r]
[sp]嫉妬したり苦しくなったり、自分が分らないんです！」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

[whosay name="財前母"]
「貴方はアルベルトに恋している[r]
[sp]……恋は気づいたら落ちているものよ」[p]

[主人公目伏]
「アルベルトは、恋愛を望まなかったと聞くわ。[r]
[sp] ……私の所為ね」[p]

[whosay name="財前母"]
「でもね。今は、貴方だけには優しい一面を見せるように[r]
[sp]なったのではなくて？[r]
[sp]あの子は、貴方にだけに優しい目をしているわ」[p]

;【立ち絵】主人公：真剣 
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「それはただ単に[r]
[sp]心を許してくれただけではないのですか？」[p]

[whosay name="財前母"]
「それだけではないと思うわ」[p]

;【立ち絵】主人公：真剣 
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいえ、[r]
[sp]財前様は最初に"恋愛を期待しないでほしい"と[ruby text=おっしゃ]仰っていました」[p]

[主人公目伏]
「でも、私は財前様に 私だけを見て欲しい と[r]
[sp]思ってしまうのです」[p]

;【立ち絵】主人公：目伏せ悲しみ
[主人公憂い]
「胸が苦しいぐらいに……」[p]

[whosay name="財前母"]
「それなら伝えてみたらどうかしら？[r]
[sp]アルベルトも貴方に心を許している。[r]
[sp]それは、貴方も分っている」[p]

;【立ち絵】主人公：目伏せ悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「でも拒絶されるのが怖いのです。[r]
[sp]苦しくて、もうどうしていいか分りません」[p]

[whosay name="財前母"]
「でも、その気持ちから逃げないで。[r]
[sp]怖くても自分に正直になって」[p]

;四行なので分けます

「[名前]さん勇気をだしていってごらんなさい。[r]
[sp] 今のままでは貴方も苦しいでしょう？」[p]

;【立ち絵】主人公：目閉じ
[主人公目閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……ええ」[p]

（拒絶されるのが怖いけれど、このままでいるのが[r]
[sp]苦しくて辛い）[p]

[主人公目伏]
（それなら告白べきなのだわ）[p]

[whosay name="財前母"]
「頑張ってね」[p]

#
そしてパーティ会場に戻りました[p]
;私は、(心情)な気持ちでパーティ会場に戻った。
;(財前母　呼称)に勇気づけられた私は、(心情)な気持ちでパーティ会場に戻った。
;(財前母　呼称)に勇気づけられた私は、(心情)な気持ちで財前様が待つパーティ会場へと向かった。

;====================================================================================
;再構築に時間がかかるで退場しない
;明るいシーンになっていくので暗転ではなく背景で
[eval exp="f.haikei_credit='photo　by　名無しさん１＠'"]
;[暗転２ storage="bg/test_zaizen_paty1.jpg" clegit=true]
[暗転２ storage="bg/zaizen_doitutaisikan.jpg" clegit=true]
;【背景】洋館パーティ会場
;[chara_mod name="bg" storage="bg/test_zaizen_paty1.jpg" time=50]
;【背景】独逸大使館パーティ会場
[chara_mod name="bg" storage="bg/zaizen_doitutaisikan.jpg"]
;[主人公通常]
;心情の表情設定↑　その後驚きで
[暗転２終了]
;====================================================================================

;【立ち絵】主人公：驚
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あれは！」[p]
#
財前様は、美しい女性とダンスを踊っていた。[r]
二人ともダンスがすごく上手な事がわかる。[p]

;目を向けた先には、財前様と美しい女性が軽やかに(表現)ダンスを踊っていた。

[主人公憂い]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;（二人ともダンスがすごく上手だわ）


周囲の人たちから噂話が聞こえてきた。[p]

[whosay name="パーティ客男性"]
「ほう……お似合いですなあ。[r]
[sp]外務大臣の御令嬢、[ruby text=すみ]澄 玲子様と、[ruby text=こ]此[ruby text=たび]度の恐慌で活躍した、[r]
[sp]財前美彬殿か」[p]

[whosay name="パーティ客女性"]
「本当にお似合いですわね。 ２人ともまだ独身じゃなかったかしら[r]
[sp]これは……もしかしたら」[p]

;[whosay name=&sf.girl_namae color="#cf5a7f"]
;（心情セリフ）

;====================================================================================
;再構築に時間がかかるで退場しない　　
;一時的に暗いシーンなので暗転から
[暗転２]
;【背景】雪柳
[eval exp="f.haikei_credit='　'"]
[chara_mod name="bg" storage="bg/zaizen_yukiyanagi.jpg"]
[表示準備 storage="bg/zaizen_yukiyanagi.jpg"]
[暗転２終了]
;====================================================================================
#
私は思わず逃げだしていた。[p]
広い庭でこっそり、白い花の咲く雪柳の下で、うずくまっていた。[p]
;広い庭でこっそり、白い花の咲く雪柳の下で、うずくまると　胸を押さえた。[p]

;【立ち絵】主人公：片手を口にやり目伏せ悲しみ
[主人公憂い]
[主人公涙]
[主人公ポーズ片手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ああなんて胸が苦しいの。[r]
[sp]ただ、財前様が女性と踊っていただけなのに）[p]
#
;====================
;【立ち絵】財前：驚
[財前ベース燕尾服]
[財前驚き]
[表示開始 time=300]
;====================

;【立ち絵】財前：ため息
[whosay name="財前美彬" color="#7a65b2"]
「やっと見つけましたよ。[r]
[sp]一体どうしたというのです」[p]
;====================================================================================　
;一瞬、裏背景（黒）がみえるのがいやですが。スクリプト担当２
;【背景】パーティ会場庭
[chara_mod name="bg" storage="bg/zaizen_paty_niwa.jpg" time=1000]
;====================================================================================　
;【立ち絵】主人公：目伏せ悲しみ
[主人公目閉じ]
[主人公涙_目閉用]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「近づかないで下さい！ 今、私はひどい顔をしています、[r]
[sp]もう少ししたら落ち着きますから、[r]
[sp]大丈夫ですから、そっとしてください！」[p]

#
自分でもわかるほど、みっともないほど声が震えて、[r]
今にも泣きそうなほどだ。[p]

いえ、涙はにじんでいた。[p]

;【立ち絵】財前：驚
[whosay name="財前美彬" color="#7a65b2"]
「……どうしたというのですか？」[p]
[財前口通常]
[fadeoutbgm time=3000]
[主人公効果消]
[主人公ポーズ通常]
#
財前様のお母様の声が、胸をよぎる。[p]

―― 勇気をだしてごらんなさい。[p]
[主人公憂い]
私は、意を決して立ち上がって言った[p]

;====================================================================================
;【背景】雪柳
[chara_mod name="bg" storage="bg/zaizen_yukiyanagi.jpg"]
;====================================================================================
;【立ち絵】主人公：悲しみ
[主人公頬染め]
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「貴方が他の誰かと踊ってるだけで、胸がこんなにも痛くなりますの[r]
[主人公口通常]
[sp]私、貴方に恋をしてしまったようです」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】はなごよみ〜さくら〜（normal/goodED用
[playbgm storage="ending_hanagoyomi_sakura.ogg" loop=true]
[eval exp="f.bgm_storage='ending_hanagoyomi_sakura.ogg'"]
[endif]


;【立ち絵】主人公：目閉じ
[主人公目閉]
「私は、財前様が好きです。[r]
[sp]財前様は私の気持ちを受け止めてくれますか？」[p]
[主人公口通常]
#
私は、精一杯の勇気を振り絞って言った。[r]
声も震えている。[p]
[財前目伏]
財前様は私に近づく。[p]
[財前目閉じ]
;====================================================================================
[eval exp="f.haikei_credit=''"]
[暗転２ storage="bg/zaizen_CGnomal.jpg" clegit=true]
[財前退場]
;【背景】ノーマルエンドCG
[chara_mod name="bg" storage="bg/zaizen_CGnomal.jpg"]
[暗転２終了]
額にキスCG（財前目閉じ主人公驚き）[p]
;====================================================================================

[主人公驚]
#
私は驚いて目を見開いた。[r]
一瞬だったかもしれないけれど、長く感じられた。[p]

言葉のでない私に財前様は言った。[p]

[主人公頬染め]
[主人公口通常]
[主人公眉下げ下]
[主人公目伏]
#
本当に貴方はかわいらしい方ですね。[r]
いや、それだけではない。　私を惑わす悪い方です。[p]

そう、耳に囁かれて私は真っ赤になった。[p]
;CG終わり
;normalここまで
;====================================================================================
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=1 y=1 storage="bg/bg_prologue.jpg" time=1000 visible=true]
;一瞬裏がみえるの防止背景
[chara_mod name="bg" storage="bg/bg_prologue.jpg" time=50]
;===============================================================
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position name="kan" left=350 width=300 height=300 top=200 page=fore margint="50"]
;テキスト全画面
[font color=white size=35]
[iscript]
$("kan").css('margin','auto');
[endscript]
;===============================================================
;画面中央に「完」の文字
[sp]　  完[p]
;===============================================================
[主人公退場]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]

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

;=============================================
;イベント４回目【薔薇園でのデート】10月3週、
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

;【立ち絵】主人公：真剣
[whosay name=&sf.girl_namae color="#cf5a7f"]
（今日は財前様と[r]
[sp] ゆっくりお話しできるわ……[r]
[sp] 先日お手紙を頂いたけれど[r]
[sp] やはり忙しいかたね）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

;【SE】紙に触れる（スッ）
[playse storage=paper_open.ogg loop=false ]

;[テキスト全画面白文字]
;#
[手紙財前 fumi_number=]
;[手紙]
[名字]　[名前]様へ[l][r]
[sp]拝啓　秋麗の候、貴方様には一段とご清栄の由と存じます。[r]
[r]
[sp] さて、この度[名前] さんと薔薇園の散策をしたく手紙を[r]
出しました。[p]

[sp]やはり私も形式にのっとって貴方と何度かお出かけした後に[r]
成婚という形が望ましいと思います。[r]
[r]
[sp] 申し訳ないですが私は忙しく貴方に都合を合わせて頂きたいと[r]
思っています。[r]
１０月３週の日曜日が、私の予定が空いておりますのですがどうでしょうか？[p]
[sp]返信お待ちしております[r]
[r]
[sp]それでは用件のみですが失礼いたします[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　敬具[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　財前　美彬[p]
[resetfont]
[手紙財前読了 fumi_number=]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;[背景_庭]
;【立ち絵】主人公：真剣
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そろそろ時間ね）[p]

[whosay name="磯野" color="dimgray"]
「お嬢様、財前様がお見えになりました」[p]

;【立ち絵】主人公：真剣
[主人公通常]
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、今行きます！」[p]
 [主人公口通常]

;【背景】薔薇園
[chara_mod name="bg" storage="bg/zaizen_bara.jpg" time=50]
[主人公ポーズ通常]
[主人公通常]
;[whosay name=&sf.girl_namae color="#cf5a7f"]

#
薔薇の花々は咲き誇り[r]
色とりどりの美しさをみせていた[r]
私たちはゆっくりと歩き[r]
財前様は私に気を遣うように話しかける[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「今日は少し風が冷たい[r]
[sp] 寒くありませんか？」[p]

;【立ち絵】主人公：目閉じ思案
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいえ、[r]
[sp] ……それよりお話しがあります」[p]

[fadeoutbgm time=3000]

;【立ち絵】財前：眉ひそめ
「一体何の話でしょうか？」[p]

;【立ち絵】主人公：真剣
[主人公通常]
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私は言葉の駆け引きは苦手なので[r]
[sp] はっきり言いますわ[r]
[sp] どうして恋愛をわずらわしいと[r]
[sp] 思っていらっしゃるのですか？」[p]

;【立ち絵】財前：冷ややか
[whosay name="財前美彬" color="#7a65b2"]
「貴方が知らなくてもいい事ですよ」[p]

;【立ち絵】主人公：真剣
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私が知りたいのです[r]
[sp] 家族になるんですもの[r]
[sp] 貴方のお母様に[r]
[sp] 関係あることなのですか？」[p]
[主人公口通常]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

;【立ち絵】財前：驚き
[whosay name="財前美彬" color="#7a65b2"]
「……お父上から何かお聞きになりましたか？」[p]

;【立ち絵】主人公：真剣
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、[r]
[sp] お父様からではありません[r]
[sp] 少し噂を聞いた程度です[r]
[sp] ですが貴方の口からききたいのです」[p]

;【立ち絵】財前：目伏せ
[whosay name="財前美彬" color="#7a65b2"]
「母は父と恋愛し私を産んだにも関わらず[r]
[sp] 結局は独逸に帰る事を望み[r]
[sp] 私と父を捨てて故国に帰った……それだけです[r]
[sp] 私は恋の絆などなんの意味もないと知っている」[p]

;【立ち絵】財前：冷ややか
[whosay name="財前美彬" color="#7a65b2"]
「貴方が恋愛を望むなら[r]
[sp] 私との縁談を今から断っても構わない[r]
[sp] 今なら体面を傷つける事もなく[r]
[sp] 無効にできます」[p]

;【立ち絵】主人公：悲しみ
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……どうしてそのような事を[r]
[sp] 簡単に言えるのですか？」[p]

;【立ち絵】財前：目伏せ
[whosay name="財前美彬" color="#7a65b2"]
「さあ？　私を冷たいと感じますか？　[r]
[sp] 私は感情的に走る事を好みません[r]
[sp] 感情的になると人は余裕がなくなり、[r]
[sp] とても見苦しい」[p]

;【立ち絵】主人公：悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様……」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「ああ、生い立ちについての[r]
[sp] 同情は不要です[r]
[sp] 母の事は恥ですが[r]
[sp] 今は何とも思っていないですから」[p]

;【立ち絵】主人公：悲しみ
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（あくまで冷静な様子から何も[r]
[sp] 伺えないけど財前様は[r]
[sp] 沢山傷ついてきた[r]
[sp] のではないのかしら？）[p]

;【立ち絵】財前：ため息
[whosay name="財前美彬" color="#7a65b2"]
「同情は不要だといっているでしょう[r]
[sp] [名前] さんは顔に出やすい人ですね、[r]
[sp] ですが素直で物怖じしない所は気に入ています[r]
[sp] 将来化けるかもしれませんのでね」[p]

;【立ち絵】主人公：目伏せ思案
[主人公目伏]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（なんとか財前様と[r]
[sp] 分かり合えないのかしら？）[p]

;【立ち絵】財前：ため息
[whosay name="財前美彬" color="#7a65b2"]
「全く、人の弱みに付け込む気ですか？[r] 　
[sp] 私は人を愛する気が全くありません[r]
[sp] 母の事を話すのは今日限り……[r]
[sp] 今後その話題を出すようなら婚約を破棄します」[p]

;【立ち絵】主人公：目伏せ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、[r]
[sp] 今後この話題には触れませんわ[r]
[sp] お約束します」[r]
（財前様の一番触れてはいけない部分なのだわ）[p]

;【立ち絵】財前：冷ややかな微笑み
[whosay name="財前美彬" color="#7a65b2"]
「賢明な回答です」[p]


;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「ああ、ところで急ですが[r]
[sp] １１月の初めの日曜日ですが予定を[r]
[sp] 開けてくれませんか？」[p]


;【立ち絵】主人公：通常
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、何かありますの？」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「懇意にしている財閥の総帥の[r]
[sp] 会社の祝賀パーティがあります[r]
[sp] 貴方のお父上からそういった機会に[r]
[sp] 同伴する約束をしたので出席して頂きます」[p]

;【立ち絵】主人公：驚き
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！」[r]
（まさかこんな早くに[r]
[sp] パーティの機会があるなんて）[p]

;【立ち絵】財前：冷ややか
[whosay name="財前美彬" color="#7a65b2"]
「不安ですか？　[r]
[sp] まあ今まで箱入りの[r]
[sp] 御令嬢でしたしね」[p]
[主人公口通常]

;【立ち絵】主人公：真剣
[主人公目伏]
[主人公眉通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいえ、出席いたします、[r]
[sp] 私は貴方のお役に立ちたいと思います」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「貴方には表面上[r]
[sp] 私の理想の妻になってもらいます[r]
[sp]ただそれだけですよ」[p]

;【立ち絵】主人公：目伏せ微笑み
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「今はそれでもいいです[r]
[sp] 私もまだ貴方に恋をしていません」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「貴方もいずれ現実を知るでしょう[r]
[sp] 今は私も今の貴方で満足する事にします[r]
[sp] 今日は風が冷たいのでそろそ帰りましょう」[p]

;【立ち絵】主人公：目伏せ微笑み
[主人公憂い]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ」[p]
[主人公通常]
#
お見合いでは財前様の後ろを歩いたけれど[r]
今は隣を歩いている[r]
財前様をチラッと見ても[r]
その表情からは何も読み取れない[p]

;【立ち絵】主人公：目伏せ悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[主人公眉困り]
（財前様はいつも歩幅を合わせてくれる[r]
[sp] きっと、女性のエスコートに慣れてるのね[r]
[sp] そう思ったら胸がちくちくした[r]
[sp] ……この気持ちは何？）[p]

#
風が吹いて薔薇の花びらが舞う[r]
美しいけど愛おしく切ない風景だわ[r]
こんな風に感じるのは[r]
なぜなのかしら……[p]

;薔薇園デート編終了

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

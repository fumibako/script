;6.5もあり
;¥¥¥¥¥¥¥¥イベント6 兄につれてこられた四条と会うから事件解決のネリネの庭まで 11月1週〜日付調整11月3週？¥¥¥¥¥¥¥
;スクリプトの作業しやすさの関係から2ファイルに分けていますが、実際は連続再生される予定です
;☆主人公の行動
;[料亭]
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
[eval exp="f.haikei_credit='photo　by　usagi_s　http://www.s-hoshino.com/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[イベントシーン構築]


兄のはからいで料亭にやってきた[名前]は、会うべき[r]
"とある人物"を待っていた。[p]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[whosay name="華織" color="olivedrab"]
「文矢、相談したいことってなんだい？」[p]
[whosay name=文矢 color="#538a8a"]
「うん。けど、ちょっと……僕は席を外すよ」[p]

;【SE】衣擦れ（スッ）文矢が障子の影にかくれるイメージ
[playse storage=kinuzure.ogg loop=false ]

[whosay name="華織" color="olivedrab"]
「まったく君って奴は急にやって来て引っ張り出すものだから……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織さま」[p]

;【登場】四条
;[四条ベース着物]
[四条ベース羽織]
[四条真剣]
[四条口驚き]
;ここでは、男らしい感じで驚いてほしい
[whosay name="華織" color="olivedrab"]
！[p]
;ザッってすると引かれているかんじかも
;【SE】衣擦れ（ザッ）
;[playse storage=za_kinuzure.ogg loop=false ]
[四条困り]
;二回も名前を呼ぶと、次のセリフがよくわからないのでナシに。
[whosay name="華織" color="olivedrab"]
「……[名前]、」[p]
;華織。謝りたいが言葉が出ず、気を遣って先に主人公が話す
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織さま、私は怒ってはいません」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「とても心配しました」[p]
[whosay name="華織" color="olivedrab"]
「[名前]、心配かけて
[四条目閉じ]
ごめん」[p]
[主人公口ほほえみ]
[wait time=10]
[主人公頬染め]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お気になさらずに私は華織さまと共に歩もうと、あの時に決めたのですから」[p]
;このままだと主人公が強気になってしまうので、やや微笑んで自身の言葉に照れる感じ

[四条真剣]
[四条口驚き]
[whosay name="華織" color="olivedrab"]
「[名前]？」[p]
;△↑セリフが思いつきません いいのかな
[四条口通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「何度かお出かけする内、何気ないたくさんの御文」[p]
;目を閉じて回想する主人公
[主人公目閉じ]
[四条目通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織さまの優しさが感じとられ、私も華織さまの優しさになりたいと思いました」[p]

[四条目パチ1回]

;主人公優しい表情
[主人公目を開く]
;[主人公目通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どうか1人で考えこまないで下さい」[p]
;主人公笑うか通常で。あまり強気な性格ではない。
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私と華織さまは夫[ruby text="め"]婦[ruby text="おと"]となる方です」
;口は閉じたほほえみ
[主人公ほほえみ]
[wait time=10]
[p]

[四条驚き]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「あらためて再会して気づきました。幸せって身近なところにあったのですね」[p]
;どっちかが言わないと最後に違和感

;☆キャラの気づき 四条が主人公が頑張っていることに気づく
;主人公通常の表情
[四条真剣]
[whosay name="華織" color="olivedrab"]
「[名前]、
[主人公通常]
[wait time=10]
;名前を呼ばれてから変更した方がいいかも？
[四条口開]
貴方は本当に僕が思っている以上のお人のようだ」[p]

[四条困り]
[四条口微笑み]
[whosay name="華織" color="olivedrab"]
「僕の話を聞いてくれますか？」[p]
;賢い感じの笑顔
[主人公頬染め]
[wait time=10]
[主人公口笑顔]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]
[四条退場]
;[暗転]
[主人公通常]
[chara_mod name="bg" storage="toumei.gif"]
[主人公目閉じ]
#
・・・・・・[p]

;[料亭]
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
[eval exp="f.haikei_credit='photo　by　usagi_s　http://www.s-hoshino.com/'"]

;[四条ベース着物]
[四条ベース羽織]
[四条通常]
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「それで、[華衣]さまは
まだ帰って来られてないのですね」[p]

[四条困り]
[whosay name="華織" color="olivedrab"]
「そうなんだ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「[華衣]さまの
ご婚約さまは何か残していらっしゃらないでしょうか？」[p]
[whosay name="華織" color="olivedrab"]
「その人に頼まれて世話をしてる花なら」[p]
[四条憂い]
[whosay name="華織" color="olivedrab"]
「けど[華衣]は話も聞こうともしないし信じようともしない」[p]
[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうでしたか……もっと他に何かないでしょうか」[p]
[四条通常]
[whosay name="華織" color="olivedrab"]
「……もっと他に」[p]
[四条真剣]
[whosay name="華織" color="olivedrab"]
「……の家に行ってみるべきか」[p]
[whosay name="華織" color="olivedrab"]
「遠い場所だけど一緒に付いてきて
[四条口開]
くれるかい？」[p]
[主人公頬染め]
[wait time=10]
[主人公口笑顔]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。どこまでもご一緒に」[p]
[四条口微笑み]
;△以下の文は、つけてたほうが自然？ i息兼ねてつけてみます。
[主人公通常]
[wait time=10]
[whosay name=文矢 color="#538a8a"] 
「[名前]はウチに来たことにしておくよ。
[四条驚き]
それでウチの家令をつけておく」[p]
「それからキミ(華織)と僕が頼んだ料理は食べておくね」[p]
[四条笑顔]
;一度はプレイヤーの驚きと同調して困った表情をする主人公（あはは……；）といった感じ？
[主人公困りほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"] (お兄さま……)[p]
;けど兄妹なので言いたいことはわかっている。素直に真摯に笑顔になる主人公
[主人公ほほえみ]
;立ち絵がつくと結構笑える・・ほほえましいシーンになりますね
[四条微笑み]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(ありがとうございます)[p]


;【退場】四条
[四条退場]

[fadeoutbgm time=3000]

;適当につけましたので変えてもよいです。遠いぞーってことがわかればよし
[テキスト全画面白文字]
[名前]と華織達は、杳々たる山深き『[華衣]の婚約者』の[r]
生家へと足を運んだ。[p]

;○急いで！のイメージ
;☆キャラの決意 四条の決意
;○京の端町、質素な邸宅がある
;[質素な邸宅]和の家
[イベントシーン構築]
[wait time=10]

『[華衣]の婚約者の生家前』[p]
[chara_mod name="bg" storage="bg/test_mon.jpg"]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
#
;ここで二十に名前が表示されるようなので消したりウェイトしてみる
#質屋
「その刀は世襲財産ですね。差し押さえできないので他のものを回収します」[p]
;【SE】茶器に触れる、又は乾杯（大きめにカチャッ）　茶器とか回収？
[playse storage=tya_katya.ogg loop=false ]

;【登場】四条
;[四条ベース着物]
[四条ベース羽織]
[四条通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あれは何をなさっているのでしょうか？」[p]
[四条真剣]
[whosay name="華織" color="olivedrab"]
「資産の差し押さえだね [r]
[華衣]の婚約者は小さな公家の出なんだ」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
[四条汗]
[四条口開]
[whosay name="華織" color="olivedrab"]
「！まずいな 早くここの主人と話をしないと！」[p]
[主人公真剣]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「行きましょう」[p]
[四条効果消]
;【退場】四条
[四条退場]

;[暗点]
[chara_mod name="bg" storage="bg/test_konyaku_jikka2.jpg"]
;【登場】四条
;[四条ベース着物]
[四条ベース羽織]
[四条通常]
[主人公通常]
[wait time=10]
[四条口開]
[whosay name="華織" color="olivedrab"]
「ごめん下さい」[p]
[whosay name="華衣の婚約者の母"]
「！ あら……アナタは四条家の！？」[p]
[四条口通常]
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
「急に尋ねてしまい申し訳ありません」[p]
[四条目パチ1回]
[whosay name="華織" color="olivedrab"]
「[華衣]はこちらに来てませんでしたか？」[p]
;○↓片田舎の京の人というイメージ
[whosay name="華衣の婚約者の母"]
「いえ、とんと。手紙を送ってこられますがねぇ」[p]
[四条困り]
[whosay name="華衣の婚約者の母"]
「ここは、来るには少々荒けた場所ですのでねぇ」[p]
[主人公憂い]
[wait time=10]
[四条真剣]
[whosay name="華織" color="olivedrab"]
「そうでしたか[r]
[四条口開]
お父さまは、いらしゃられますか？」[p]
[whosay name="華衣の婚約者の母"]
「父はもう年ゆえに他界してまして」[p]
[四条困り]
[whosay name="質屋"]
「すみませーん、こちらも持っていきますよー」[p]
;遠いところからよびかけ↑

[主人公通常]
[wait time=10]
[whosay name="華衣の婚約者の母"]
「あらぁ、ごめんなさぇ……今、ちょっと立て込んでましてねぇ」[p]
;○体面的にとても恥ずかしいので見られたくない？
[四条真剣]
[whosay name="華織" color="olivedrab"]
「つかぬお願いをしたいのですが、[r]
[四条口開]
表に出してあった日用品もろもろを買い取りできないでしょうか？」[p]
[四条口通常]
[主人公困りほほえみ]
[wait time=10]
;仮↑プレイヤーの驚きの表情なのか、彼のやることを信頼しているからの表情なのかテストちゅう
[whosay name="華衣の婚約者の母"]
「えぇっ？」[p]
[主人公通常]

;[四条通常]
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「気に入ったものもありましたので、」[p]
;○体面を気にしてると思うので理由付けしている

[fadeoutbgm time=3000]
[whosay name="華衣の婚約者の母"]
「四条とは縁が切れたもの、その様なお慰めは止して下さぇ」[p]
[四条真剣]
[主人公真剣]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「ちがうのです。必要なのです」[p]
[主人公通常]
[wait time=10]
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「私達と、[華衣]の為にも」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[whosay name="華衣の婚約者の母"]
「……なにかご入用のものがありまして？」[p]
[主人公ほほえみ]
[wait time=10]
[四条口開]
[whosay name="華織" color="olivedrab"]
「はい、」[p]

;【退場】四条
[四条退場]

;[暗点]
;[土蔵]
[chara_mod name="bg" storage="bg/test_sijyou_dozou.jpg"]

;【登場】四条
;[四条ベース着物]
[四条ベース羽織]
;[四条通常]
[四条真剣]

[主人公通常]
[wait time=10]
[whosay name="華衣の婚約者の母"]
「息子の物はここにある書物と壺くらいです」[p]
[whosay name="華衣の婚約者の母"]
「とくに[華衣]さまに喜んでもらえるものがあるとは……」[p]

[四条口開]
[whosay name="華織" color="olivedrab"]
「少し見させてもらっていいですか？ 」[p]
[whosay name="華衣の婚約者の母"]
「人を待たせてるので早めにお願いしますね」[p]
[主人公真剣]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お手伝いします」[p]
;場面転換
;[暗点]
;[寂れた邸宅]
[chara_mod name="bg" storage="bg/test_mon.jpg"]
[主人公通常]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「少ないですが受け取って下さい」[p]
[主人公憂い]
[wait time=10]
;通常でもよい
[whosay name="華衣の婚約者の母"]
「いえ、そんなお情けは……」[p]
[whosay name="華織" color="olivedrab"]
「勝手に来て、物色までしたのです。[r]
それくらいはさせてください」[p]
[whosay name="華衣の婚約者の母"]
「そこまで仰るなら」[p]
[whosay name="華織" color="olivedrab"]
「ご迷惑おかけしました」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「失礼しました」[p]
[whosay name="華衣の婚約者の母"]
「華織さま」[p]
[主人公通常]
[wait time=10]
;○後ろから呼びかけて
[whosay name="華織" color="olivedrab"]
[whosay name="華衣の婚約者の母"]
「[華衣]さまに、お伝え下さいぇ[r]
もうしばらくしたら、この地を離れますと」[p]

[fadeoutbgm time=3000]

[主人公憂い]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「わかりました……お元気で」[p]
;夕空
[chara_mod name="bg" storage="bg/bg_yuuyake.jpg"]
#
;ナレーター
荒れ果てた地の槇の葉に、霧が立ちのぼっていく。[p]
秋すぎさる夕日に物悲しさを感じ、[r]
華織と[名前]は、手を繋ぎながら来た道を帰っていった。[p]

;場面転換
;[暗点][料亭]
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
[eval exp="f.haikei_credit='photo　by　usagi_s　http://www.s-hoshino.com/'"]


[主人公通常]
[wait time=10]
;華織が説明してるので地の文があまり思いつかない
#
『料亭』に戻ってきた私達[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[wait time=10]
;○ 道具をひろげて確認 弟はまだ見つかってないか確認

;【登場】四条　疲れて羽織を脱ぐはず？
[四条ベース着物]
[四条困り]
[whosay name="華織" color="olivedrab"]
「家に電話をしてみたけど、まだ帰ってきてないみたいだ」[p]

[主人公憂い]
[wait time=10]

;○まずは道具の確認　何をするのかプレイヤーに説明
[四条真剣]
[whosay name="華織" color="olivedrab"]
「[華衣]を見つけて説得する為にも、
まずは、頂いたものを確認しよう」[p]

[主人公通常]
[wait time=10]
[主人公ポーズ指]
[wait time=10]
;ワトソンくんも考えてますよ!というポーズ

;やや真剣な顔　思考中
[四条通常]
[四条口ムッ]
[whosay name="華織" color="olivedrab"]
「あの方がいってらしゃったように、書物と壺 があるね」[p]

[主人公目パチ1回]

;○まずは壺を確認
[whosay name="華織" color="olivedrab"]
「壺には富士と波が描かれている普通の壺」[p]
[四条口驚き]
「しいていうなら、この壺は、花を生けるにはむいていない絵図柄だね。」[p]
;荘厳派手すぎてむいてない　赤に金の唐風の壷？
[主人公ポーズ通常]

;【SE】湯のみを置く（コトリ）　壷おいておく音
[playse storage=tya_yunomi_oku.ogg loop=false ]

[四条口通常]
[whosay name="華織" color="olivedrab"]
「関係性は無さそうだね。
[四条眉下げ]
少し気が引けますが、やはり書物を拝見しようか……」[p]

;【退場】四条
[四条退場]

;○そして書物を確認
#
;ナレーター
数十冊の書物には、華族としての趣味や生き方、社会的な研究が記されている。[p]
[whosay name="華織" color="olivedrab"]
「これを、全部読むのは時間がかかりそうだな」[p]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「表紙から見て分類整理をいたしましょうか？」[p]
[whosay name="華織" color="olivedrab"]
「そうだね。
明らかに関係性のないものは優先順位を下げておこう」[p]

#
数分後……[p]
;○主人公が可愛い織柄の表紙の手記を見つける
[主人公目パチ1回]
[wait time=10]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(？ この書物だけ可愛らしい織柄)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(このような装飾なら日記も楽しくなりそうですね……もしかしたら？)[p]

;【登場】四条
[四条ベース着物]
[四条通常]

[四条眉下げ]
[whosay name="華織" color="olivedrab"]
「何か見つけたのかい？」[p]
;有効なものかわからず、やや自信なさげな表情でもあり。急に呼ばれて驚いて。
[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「は、はい」[p]
[主人公通常]

[四条口微笑み]
[whosay name="華織" color="olivedrab"]
「ずいぶんと可愛らしい装飾の書物ですね」[p]
;○書物から暗号を発見答え『音頭恋寝刃』
[四条口ムッ]
#
『手記』には不思議な言葉が記されていた。[r]
ーー 頭は恋をし寝る。波の音を聞きながら刀を探す。[r]
ーーその壺には恋を詰めておく。[p]

[whosay name="華織" color="olivedrab"]
『頭は恋をし寝る。波の音を聞きながら刀を探す。[r]
[四条目閉じ]
……その壺には恋を詰めておく。』・・・？[p]
[四条目パチ1回]

;完全思考中顔1　顎に手ポーズのイメージ
[四条横伏目]
[四条眉強気]
[四条口驚き]
[whosay name="華織" color="olivedrab"]
「何かの暗号っぽいね」[p]

[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですね」[p]
[四条目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(1ページ目にわざわざかいてあるようですし……)[p]

[fadeoutbgm time=3000]

;【SE】紙に触れる（パラリ）　紙がおちる
[playse storage=paper_open.ogg loop=false ]

;○その書物には手紙が挟まっていて発見する
[主人公ポーズ片手]
[wait time=10]
[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あっ！」[p]
#
;ナレーター
『手記』を開いた途端、四角く折られた緋色の紙が落ちた。[p]
;控えめに驚き
[四条通常]
[四条口驚き]
[whosay name="華織" color="olivedrab"]
「なにか落ちたようだ」[p]
;○主人公または華織は これは絶対渡さないと思う 中身はまだ語られない
[四条真剣]
[whosay name="華織" color="olivedrab"]
「これは……」[p]
[四条口驚き]
[if exp="sf.BGM=='ON'"]
;【BGM】一閃（緊迫シーンに
[playbgm storage="kinpaku_issen.ogg" loop=true]
[eval exp="f.bgm_storage='kinpaku_issen.ogg'"]
[endif]
[主人公ポーズ通常]
[wait time=10]
[主人公真剣]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織さま。[r]
これは絶対、[華衣]さまにお渡ししないといけませんね」[p]

[四条真剣]
[whosay name="華織" color="olivedrab"]
「あぁ、そうだね」[p]
[四条口ムッ]
#
『手記』の中に挟まっていた青紫の紙に書かれていた内容をみた私達は[r]
決意を改めた。[p]

[主人公通常]

;思考中顔2　顎に手ポーズのイメージ
[四条横伏目]
;[四条眉強気]
[whosay name="華織" color="olivedrab"]
「問題は、[華衣]が放蕩する場所だな」[p]
[四条憂い]
[whosay name="華織" color="olivedrab"]
「我が弟ながら、その様な場所を皆目検討つかないなんて、[r]
[四条口微笑み]
文矢を見習わないとね」[p]
;兄弟→弟に
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織さま……)[p]
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織さま、きっと大丈夫です」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私たち２人なら、信じて乗り越えられます」[p]
[四条通常]
[whosay name="華織" color="olivedrab"]
「[名前]……」[p]
;○華織、主人公に惚れ直し
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「きっと、この中に手がかり(ヒント)があります」[p]
[四条目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
『頭は恋をし寝る。波の音を聞きながら刀を探す。』[p]
『……その壺には恋を詰めておく。』[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そのまま、読むと 『お頭さんが恋をして眠る』
なんて想像してしまいますが」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「頭、 恋、 寝る、波、音、刀の単語を組み合わせるもの
ではないでしょうか」[p]

;思考中顔2　顎に手ポーズのイメージ
[四条横伏目]
[四条眉強気]
[四条口ムッ]
;○華織 顎に指をあて考える
[whosay name="華織" color="olivedrab"]
(……既視感を覚える単語だな)[p]

[四条目パチ1回]
[四条口驚き]
[whosay name="華織" color="olivedrab"]
「頭恋寝……刀を探して？」[p]
;主人公笑う？
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
;ひらめき顔
[四条口開]
[四条目大]
[whosay name="華織" color="olivedrab"]
「 ! 『音頭恋寝刃』 」[p]
;○事件解決に向かって走り出す[BGM一閃]？
[四条口微笑み]
[四条口開]
[whosay name="華織" color="olivedrab"]
「歌舞伎の演目名だ」[p]
[四条口微笑み]
[whosay name="華織" color="olivedrab"]
「[華衣]もあの人も『展覧芝居』を一緒になって
見ていた！」[p]
[四条口開]
[chara_mod name="girl_kuti" storage="girl/S/kuti_otyobo.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「その壺には恋を詰めておく……というのは」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

;思考中顔2　顎に手ポーズのイメージ
[四条横伏目]
[四条眉強気]
[四条口ムッ]
#
私達は、『富士と波が描かれた壷』をジッと見つめた。[p]
[四条真剣]
[whosay name="華織" color="olivedrab"]
「……！」[p]
[四条口驚き]
[whosay name="華織" color="olivedrab"]
「富士と波……『波ヶ浦』かもしれない！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いってみましょう！」[p]
[四条口通常]

;【退場】四条
[四条退場]

;△ ○壺の柄と暗号を照らし合わせ、妹の場所を発見する
;↓実装時は後半へ飛ぶ
;@jump storage="sijyou/sijyou_11_1b.ks"

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

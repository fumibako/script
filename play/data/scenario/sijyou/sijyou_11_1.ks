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
[イベントシーン構築]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]

[whosay name="華織" color="olivedrab"]
「文矢、相談したいことってなんだい？」[p]
[whosay name=文矢 color="#538a8a"]
「うん。けど、ちょっと……僕は席を外すよ」[p]
[whosay name="華織" color="olivedrab"]
「まったく君って奴は急にやって来て引っ張り出すものだから……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織さま」[p]
[whosay name="華織" color="olivedrab"]
！[p]
;二回も名前を呼ぶと、次のセリフがよくわからないのでナシに。
[whosay name="華織" color="olivedrab"]
「……[名前]、」[p]
;華織。謝りたいが言葉が出ず、気を遣って先に主人公が話す
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織さま、私は怒ってはいません」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「とても心配しました」[p]
[whosay name="華織" color="olivedrab"]
「[名前]、心配かけてごめん」[p]
[主人公口ほほえみ]
[wait time=10]
[主人公頬染め]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お気になさらずに私は華織さまと共に歩もうと、あの時に決めたのですから」[p]
;このままだと主人公が強気になってしまうので、やや微笑んで自身の言葉に照れる感じ
;表情変更タイミングが掴めてない
[whosay name="華織" color="olivedrab"]
「[名前]？」[p]
;△↑セリフが思いつきません いいのかな
[whosay name=&sf.girl_namae color="#cf5a7f"]
「何度かお出かけする内、何気ないたくさんの御文」[p]
;目を閉じて回想する主人公
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織さまの優しさが感じとられ、私も華織さまの優しさになりたいと思いました」[p]
;主人公優しい表情
[主人公目を開く]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どうか1人で考えこまないで下さい」[p]
;主人公笑うか通常で。あまり強気な性格ではない。
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私と華織さまは夫[ruby text="め"]婦[ruby text="おと"]となる方です」
;口は閉じたほほえみ
[主人公ほほえみ]
[wait time=10]
[p]
;☆キャラの気づき 四条が主人公が頑張っていることに気づく
;主人公通常の表情
[whosay name="華織" color="olivedrab"]
「[名前]、
[主人公通常]
[wait time=10]
;名前を呼ばれてから変更した方がいいかも？
貴方は本当に僕が思っている以上のお人のようだ」[p]
[whosay name="華織" color="olivedrab"]
「僕の話を聞いてくれますか？」[p]
;賢い感じの笑顔
[主人公頬染め]
[wait time=10]
[主人公口笑顔]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]
;[暗転]→[料亭]
#
・・・[p]
;仮でつけてます↑
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「それで、華衣さまは
まだ帰って来られてないのですね」[p]
[whosay name="華織" color="olivedrab"]
「そうなんだ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華衣さまの
ご婚約さまは何か残していらっしゃらないでしょうか？」[p]
[whosay name="華織" color="olivedrab"]
「その人に頼まれて世話をしてる花なら」「[p]
[whosay name="華織" color="olivedrab"]
「けど華衣は話も聞こうともしないし信じようともしない」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうでしたか……もっと他に何かないでしょうか」[p]
[whosay name="華織" color="olivedrab"]
「……もっと他に」[p]
[whosay name="華織" color="olivedrab"]
「……の家に行ってみるべきか」[p]
[whosay name="華織" color="olivedrab"]
「遠い場所だけど一緒に付いてきてくれるかい？」[p]
[主人公頬染め]
[wait time=10]
[主人公口笑顔]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。どこまでもご一緒に」[p]
;△以下の文は、つけてたほうが自然？ i息抜きを兼ねてつけてみます。
[whosay name=文矢 color="#538a8a"] 
「[名前]はウチに来たことにしておくよ。それでウチの家令をつけておく」[p]
「それからキミ(華織)と僕が頼んだ料理は食べておくね」
;一度はプレイヤーの驚きと同調して困った表情をする主人公（あはは……；）といった感じ？
[主人公困りほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"] (お兄さま……)[p]
;けど兄妹なので言いたいことはわかっている。素直に真摯に笑顔になる主人公
[主人公眉通常]
[wait time=10]
[主人公ほほえみ]
[wait time=10]
;[whosay name=&sf.girl_namae color="#cf5a7f"](ありがとうございます)[p]

;○急いで！のイメージ
;☆キャラの決意 四条の決意

;○京の端町、質素な邸宅がある
;[質素な邸宅]和の家
#質屋
「その刀は世襲財産ですね。差し押さえできないので他のものを回収します」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あれは何をなさっているのでしょうか？」[p]
[whosay name="華織" color="olivedrab"]
「資産の差し押さえだね [r]
華衣の婚約者は小さな公家の出なんだ」[p]
[whosay name="華織" color="olivedrab"]
「！まずいな 早くここの主人と話をしないと！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「行きましょう」[p]
;[暗点]
[whosay name="華織" color="olivedrab"]
「ごめん下さい」[p]
#華衣の婚約者の母
「！ あら……アナタは四条家の！？」[p]
[whosay name="華織" color="olivedrab"]
「急に尋ねてしまい申し訳ありません」[p]
[whosay name="華織" color="olivedrab"]
「華衣はこちらに来てませんでしたか？」[p]
;○↓片田舎の京の人というイメージ
#華衣の婚約者の母
「いえ、とんと。手紙を送ってこられますがねぇ」[p]
#華衣の婚約者の母
「ここは、来るには少々荒けた場所ですえ」[r]
[whosay name="華織" color="olivedrab"]
「そうでしたか[r]
お父さまは、いらしゃられますか？」[p]
#華衣の婚約者の母
「父はもう年ゆえに他界してまして」[p]
#質屋
「すみませーん、こちらも持っていきますよー」[p]
#華衣の婚約者の母
「あらぁ、ごめんなさいぇ……今、ちょっと立て込んでましてねぇ」[p]
;○体面的にとても恥ずかしいので見られたくない？
[whosay name="華織" color="olivedrab"]
「つかぬお願いをしたいのですが、[p]
表に出してあった日用品もろもろを買い取りできないでしょうか？」[p]
#華衣の婚約者の母
「えぇっ？」[p]
[whosay name="華織" color="olivedrab"]
「気に入ったものもありましたので、」[p]
;○体面を気にしてると思うので理由付けしている
#華衣の婚約者の母
「四条とは縁が切れたもの、その様なお慰めは止して下さいぇ」[p]
[whosay name="華織" color="olivedrab"]
「ちがうのです。必要なのです」[p]
×修正点 華衣にした
[whosay name="華織" color="olivedrab"]
「私達と、華衣の為にも」[p]
#華衣の婚約者の母
「……なにかご入用のものがありまして？」[p]
[whosay name="華織" color="olivedrab"]
「はい、」[p]
;[暗点]
;[土蔵]
#華衣の婚約者の母
「息子の物はここにある書物と壺くらいです」[p]
#華衣の婚約者の母
「とくに華衣さまに喜んでもらえるものがあるとは……」[p]
[whosay name="華織" color="olivedrab"]
「少し見させてもらっていいですか？ 」[p]
#華衣の婚約者の母
「人を待たせてるので早めにお願いしますね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お手伝いします」[p]
;場面転換
;[暗点]
;[寂れた邸宅]
[whosay name="華織" color="olivedrab"]
「少ないですが受け取って下さい」[p]
#華衣の婚約者の母
「いえ、そんなお情けは……」[p]
[whosay name="華織" color="olivedrab"]
「勝手に来て、物色までしたのです。[r]
それくらいはさせてください」[p]
#華衣の婚約者の母
「そこまで仰るなら」[p]
[whosay name="華織" color="olivedrab"]
「ご迷惑おかけしました」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「失礼しました」[p]
#華衣の婚約者の母
「華織さま」[p]
;○後ろから呼びかけて
[whosay name="華織" color="olivedrab"]
？
#華衣の婚約者の母
「華衣さまに、お伝え下さいぇ[r]
もうしばらくしたら、この地を離れますと」[p]
[whosay name="華織" color="olivedrab"]
「わかりました……お元気で」[p]
;#;ナレーター
;荒れ果てた地の槇の葉に、霧が立ちのぼっていく。
;秋すぎさる夕日に物悲しさを感じ、
;華織と[名前]は、手を繋ぎながら来た道を帰っていった。

;場面転換
;[暗点][料亭]
;○ 道具をひろげて確認 妹はまだ見つかってないか確認
[whosay name="華織" color="olivedrab"]
家に電話をしてみたけど、まだ帰ってきてないみたいだ[p]
;○まずは道具の確認
[whosay name="華織" color="olivedrab"]
「華衣を見つけて説得する為にも、
まずは、頂いたものを確認しよう」[p]
[whosay name="華織" color="olivedrab"]
「あの方がいってらしゃったように、書物と壺 があるね」[p]
;○まずは壺を確認
[whosay name="華織" color="olivedrab"]
「壺には富士と波が描かれている普通の壺」[p]
「しいていうなら、この壺は、花を生けるにはむいていない絵図柄だね。」[p]
[whosay name="華織" color="olivedrab"]
「関係性は無さそうだから、少し気が引けますが、
やはり書物を拝見しようか……」[p]
;○そして書物を確認
#;ナレーター
;数十冊の書物には、華族としての趣味や生き方や、社会的な研究が記されている。[p]
[whosay name="華織" color="olivedrab"]
「これを、全部読むのは時間がかかりそうだな」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「表紙から見て分類整理をいたしましょうか？」[p]
[whosay name="華織" color="olivedrab"]
「そうだね。
明らかに関係性のないものは優先順位を下げておこう」[p]
;数分後……
;○主人公が可愛い織柄の表紙の手記を見つける
[whosay name=&sf.girl_namae color="#cf5a7f"]
(？ この書物だけ可愛らしい織柄)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(このような装飾なら日記も楽しくなりそうですね……もしかしたら？)[p]
[whosay name="華織" color="olivedrab"]
「何か見つけたのかい？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「は、はい」[p]
[whosay name="華織" color="olivedrab"]
「ずいぶんと可愛らしい装飾の書物ですね」[p]
;○書物から暗号を発見答え『音頭恋寝刃』
[whosay name="華織" color="olivedrab"]
『頭は恋をし寝る。波の音を聞きながら刀を探す。
……その壺には恋を詰めておく。』[p]
[whosay name="華織" color="olivedrab"]
「何かの暗号っぽいね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(1ページ目にわざわざかいてあるようですし……)[p]
;○その書物には手紙が挟まっていて発見する
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あっ！」[p]
#;ナレーター
;手記を開いた途端、四角く折られた青紫紙が落ちた。
[whosay name="華織" color="olivedrab"]
「なにか落ちたようだ」[p]
;○主人公または華織は これは絶対渡さないと思う 中身はまだ語られない
[whosay name="華織" color="olivedrab"]
「これは……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織さま。
これは絶対、華衣さまにお渡ししないといけませんね」[p]
[whosay name="華織" color="olivedrab"]
「あぁ、そうだね」[p]
[whosay name="華織" color="olivedrab"]
「問題は、華衣が放蕩する場所だな」[p]
;[四条憂い]
[whosay name="華織" color="olivedrab"]
「我が兄妹ながら、その様な場所を
皆目検討つかないなんて、文矢を見習わないとね」
;△文のつながりがおかしいが分からず
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織さま……)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織さま、きっと大丈夫です」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私たち２人なら、信じて乗り越えられます」[p]
[whosay name="華織" color="olivedrab"]
「[名前]……」[p]
;○華織、主人公に惚れ直し
[whosay name=&sf.girl_namae color="#cf5a7f"]
「きっと、この中に手がかり(ヒント)があります[」p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
『頭は恋をし寝る。波の音を聞きながら刀を探す。
……その壺には恋を詰めておく。』[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そのまま、読むと 『お頭さんが恋をして眠る』
なんて想像してしまいますが」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「頭、 恋、 寝る、波、音、刀の単語を組み合わせるもの
ではないでしょうか」[p]
;○華織 顎に指をあて考える
[whosay name="華織" color="olivedrab"]
(……既視感を覚える単語だな)[p]
;[華織憂い]
[whosay name="華織" color="olivedrab"]
「頭恋寝……刀を探して？」[p]
[whosay name="華織" color="olivedrab"]
! 『音頭恋寝刃』[p]
;○事件解決に向かって走り出す[BGM一閃]？
[whosay name="華織" color="olivedrab"]
「歌舞伎の演目名だ」[p]
[whosay name="華織" color="olivedrab"]
「華衣もあの人も『展覧芝居』を一緒になって
見ていた！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「その壺には恋を詰めておく……というのは」[p]
[whosay name="華織" color="olivedrab"]
「富士と波……『波ヶ浦』かもしれない！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いってみましょう！」[p]
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

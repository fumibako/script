;藤枝町編
;=============================================
;藤枝ルート２月３週から３月４週の間にイベント
;=============================================
;背景:町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_hujieda.ks"]
[イベントシーン構築]

[主人公ポーズ通常]
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
#
行きかう人々は、今日も賑やかに活気が溢れている。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

#
前を歩いていた風呂敷を抱えた女性からがま口のお財布が[r]
落ちて私は財布を拾い、彼女に声を掛けた。[p]

;【立ち絵】主人公ほほえみ
[主人公目伏柔]
[主人公眉下げ下]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あの！[r]
[sp] お財布、落とされましたよ」[p]

#
彼女は振り向き一礼する[r]
綺麗なまだ目にあどけさが残る年頃の女性だった[p]

[whosay name="年頃の女性"]
「あ！……ありがとうございます！」[p]

;【立ち絵】主人公目伏
[主人公目伏]
[主人公眉下げ下]
[主人公口通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どういたしまして[r]
[sp] ……あの私どこかで貴方とお会いしましたか？」[p]
（顔立ちと柔らかい雰囲気に見覚えがあるような気がするわ）[p]

#
彼女は首をかしげていった。[p]

[whosay name="年頃の女性"]
「いえ、ないと思いますわ」[p]

;【立ち絵】主人公驚
[主人公驚]
[主人公ポーズ片手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（藤枝様に似ているのだわ！）[r]
[主人公ポーズ通常]
[主人公ほほえみ]
「失礼しました。 知り合いに似ていたものですから……。[r]
[sp]お名前を伺ってもいいですか？」[p]

[whosay name="藤枝晶子"]
「ええ、藤枝晶子と申しますわ」[p]

;【立ち絵】主人公驚
[主人公目大]
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（もしかして！）[p]
;表情変更
[主人公ほほえみ]
「あの、私は[名字][名前]と申します。[r]
[sp] もしかして弟君がいらっしゃいませんか？」[p]

[whosay name="藤枝晶子"]
「まあ、[名字][名前]様!?[r]
[sp]まさか肇のお手紙のお相手をなされている方なの?」[p]

#
彼女は驚いたように目を見開き、[r]
そして、しげしげと私を見た。[p]

[whosay name="藤枝晶子"]
「ねえ、少し貴方とお話しがしたいわ。[r]
[sp]今、いいかしら？」[p]

;【立ち絵】主人公ほほえみ
[主人公照れ目普通]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ」[p]

#
近くの茶屋の縁台に座り茶を注文し、[r]
茶屋の人に「ごゆっくりどうぞと」とお茶を渡された[p]
[主人公眉下げ下]
[主人公目伏]
#
少し緊張する私に対して、彼女は茶目っ気たっぷりに[r]
くすくすと微笑んでいった。[p]

[whosay name="藤枝晶子"]
「全く肇も隅に置けないわね。[r]
[sp] 貴方のような淑女らしい方、今では中々いないわ」[p]
;表情変更
[主人公頬染め]
「肇は音楽にしか興味のない子だと思っていたのに[r]
[sp] いつの間にそんな甲斐性つけたのかしら」[p]



;【立ち絵】主人公 困りほほえみ
[主人公目伏]
[主人公眉下げ下]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、そんな、[r]
[sp]かわいい鳩が運んできてくれた、縁だったのかも[r]
[sp]しれません」[p]

[whosay name="藤枝晶子"]
「ふふ、そうね！元々あの鳩は、お箏の音が好きなのか、[r]
[sp]母が、お箏を弾くたび寄ってきて飼う事にしたのです。[r]
[sp]……けれど鳩を可愛がっていた母が亡くなり鳩も元気を無くしたの」[p]

#
そういうと彼女は悲しげな表情になったが、[r]
振り切るように微笑んだ。[p]

[whosay name="藤枝晶子"]
「それで肇が配達中に琴が聴こえるお宅があるから、[r]
[sp] 琴の音を聴いて鳩が元気になればと思いついて連れて行ったの[r]
[sp] もう母の琴は借金を返すために売ってしまっていたし」[p]

;【立ち絵】主人公憂い
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうだったの……ですか」[p]

（そういえば鳩は琴にいつも執着していたわ[r]
[sp] そんな事情があったのね）[p]

[whosay name="藤枝晶子"]
「ええ、勿論肇も貴方の音色が気に入ったから[r]
[sp]手紙まで括り付けたたのだけれどね。[r]
[sp]鳩が元気になってくれたのも貴方のおかげだし」[p]

;【立ち絵】主人公通常
[主人公目パチ1回]
[主人公照れ目普通]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私もあの鳩に[r]
[sp]感謝しないといけませんね」[r]
（鳩のおかげで藤枝様と出会えた）[p]

[whosay name="藤枝晶子"]
「ところで貴方は大事なお手紙の最中[r]
[sp] だったのではないかしら？[r]
[sp] 肇を選んでよかったの？」[p]

;【立ち絵】主人公驚き
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「勿論藤枝さまを選んだことに後悔ありません！[r]
[sp]けれどどうしてそれをご存じなのですか？」[p]

[whosay name="藤枝晶子"]
「肇が留学を辞退した理由を詳しく問いただしたのよ。[r]
[sp]肇は 数人の男性の差出人の手紙があなた宛てで[r]
[sp]来てたのでピンと来てたそうよ」[p]

;【立ち絵】主人公困り
[主人公困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、確かに大事なお手紙の最中でした。[r]
[sp]……でも藤枝様の事が気になって、[r]
[sp]縁談をお断りしましたの」[p]

「藤枝様に励まされて幸せでお稽古も一生懸命になれました。[r]
[sp]あの時は多分興味と憧れでしたけれど、今はお慕いしています」[p]

[whosay name="藤枝晶子"]
「ふふ、貴方も真面目な方なのね！[r]
肇はきっと貴方とお手紙を交わせる相手に[r]
少し嫉妬していたんじゃないかしら」[p]

#
そういって彼女はまた茶目っ気たっぷりに笑い[r]
そして真剣な顔になった。[p]

[whosay name="藤枝晶子"]
「手紙を交わすうちに気づいたら[r]
[sp] 貴方も肇も恋に落ちていたのね[r]
[sp] 何であれあの子恋をして変わったわ」[p]

;【立ち絵】主人公驚
[主人公驚]
「どのように変わったのですか？」[p]

[whosay name="藤枝晶子"]
「ええ、明るく前向きになったわ[r]
[sp]謙虚で優しい子だけに諦める事に[r]
[sp]慣れていたけれど、意思が強くなったというか」[p]

;【立ち絵】主人公ほほえみ
[主人公ほほえみ]
「それなら嬉しいです」[p]

[whosay name="藤枝晶子"]
「ええ、今のあの子は強いわ[r]
[sp]きっと誰にも負けないぐらいに[r]
[sp]あの子の事よろしくお願いします」[p]

;【立ち絵】主人公ほほえみ
[主人公ほほえみ]
「ええ」[p]

[whosay name="藤枝晶子"]
「それでは名残惜しいけれど[r]
[sp]家事があるのでそろそろ失礼しますわ。[r]
[sp]また機会があればお話ししましょうね[r]
[sp]ごきげんよう」[p]

;【立ち絵】主人公目閉じ
[主人公目閉じ]
「ええ、またお話ししましょう！[r]
[sp] ごきげんよう」[p]

（上品ながら、はきはきして明るい方だったわ[r]
[sp] きっと藤枝様は温かい家庭で育ったのね）[p]

;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
@jump storage="test_hujieda.ks"
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

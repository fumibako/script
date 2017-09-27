;藤枝町編
;=============================================
;藤枝ルート２月３週から３月４週の間にイベント
;=============================================
*sansaku
[stopbgm]
[call target=*sansaku storage="hujieda/preload_hujieda.ks]
[call target=*start storage="macro_tati_hujieda.ks"]
[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

#
行きかう人々は、今日も賑やかに活気が溢れている。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

#
前を歩いていた風呂敷を抱えた女性から、がま口のお財布が[r]
落ちて、私は財布を拾い、彼女に声を掛けた。[p]

;【立ち絵】主人公ほほえみ
[主人公目伏柔]
[主人公眉下げ下]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あの！　お財布、落とされましたよ」[p]

#
彼女は振り向き、一礼する。[r]
まだ目にあどけさが残る、年頃の綺麗な女性だった。[p]

[whosay name="年頃の女性"]
「あ！……ありがとうございます！」[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公目伏
[主人公口通常]
[主人公目伏]
[主人公眉下げ下]
「どういたしまして。[r]
[sp]……あの私どこかで貴方とお会いしましたか？」[p]
（顔立ちと柔らかい雰囲気に見覚えがあるような気がするわ）[p]

#
彼女は首をかしげて言った。[p]

[whosay name="年頃の女性"]
「いえ、ないと思いますわ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公驚
[主人公驚]
[主人公ポーズ片手]
（藤枝様に似ているのだわ！）[p]

[主人公ポーズ通常]
[主人公ほほえみ]
「失礼しました。 知り合いに似ていたものですから……。[r]
[sp]お名前を伺ってもいいですか？」[p]

[whosay name="藤枝晶子"]
[主人公目大]
「ええ、藤枝晶子と申しますわ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公驚
[主人公目大]
[主人公口開]
（もしかして！）[p]
;表情変更
[主人公ほほえみ]
「あの、私は[名字][名前]と申します。[r]
[sp]もしかして弟君がいらっしゃいませんか？」[p]

[whosay name="藤枝晶子"]
「まあ、[名字][名前]様!?[r]
[sp]まさか肇のお手紙のお相手をなされている方なの?」[p]

#
彼女は驚いたように目を見開き、そして、しげしげと私を見た。[p]

[whosay name="藤枝晶子"]
「ねえ、少し貴方とお話しがしたいわ。[r]
[sp]今、いいかしら？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公ほほえみ
[主人公照れ目普通]
「ええ」[p]

#
近くの茶屋の縁台に座り茶を注文し、[r]
茶屋の人に「ごゆっくり、どうぞと」とお茶を渡された。[p]

[主人公眉下げ下]
[主人公目伏]
#
少し緊張する私に対して、彼女は茶目っ気たっぷりに[r]
くすくすと微笑んで言った。[p]

[whosay name="藤枝晶子"]
「全く、肇も[ruby text=すみ]隅に置けないわね。[r]
[sp]貴方のような淑女らしい方、今では中々いないわ」[p]
;表情変更
[主人公頬染め]
「肇は音楽にしか興味のない子だと思っていたのに[r]
[sp]いつの間にそんな甲斐性つけたのかしら」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 困りほほえみ
[主人公目伏]
[主人公眉下げ下]
[主人公口ほほえみ]
「いえ、そんな、[r]
[sp]かわいい鳩さんが運んできてくれた、縁だったのかもしれません」[p]

[whosay name="藤枝晶子"]
「ふふ、そうね！[r]
[sp]元々あの鳩は、お箏の音が好きなのか、母が、お[ruby text=こと]箏を弾くたび[r]
[sp]寄ってきて飼う事にしたのです」[p]

「……けれど鳩を可愛がっていた母が亡くなり鳩も元気を無くしたの」[p]

#
そう言うと彼女は悲しげな表情になったが、振り切るように[r]
微笑んだ。[p]

[whosay name="藤枝晶子"]
「それで肇が、配達中に[ruby text=こと]箏が聴こえるお宅があるから、[r]
[sp][ruby text=こと]箏の音を聴いて鳩が元気になればと思いついて連れて行ったの。[r]
[sp]もう母の[ruby text=こと]箏は、借金を返すために売ってしまっていたし」[p]

;【立ち絵】主人公憂い
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうだったの……ですか」[p]

（そういえば、鳩さんはお[ruby text=こと]箏にいつも執着していたわ。[r]
[sp]そんな事情があったのね）[p]

[whosay name="藤枝晶子"]
「ええ、勿論肇も貴方の音色が気に入ったから[r]
[sp]手紙まで括り付けたたのだけれどね。[r]
[sp]鳩が元気になってくれたのも貴方のおかげだし」[p]

;【立ち絵】主人公通常
[主人公目パチ1回]
[主人公照れ目普通]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私もあの鳩さんに感謝しないといけませんね」[p]

（鳩さんのおかげで藤枝様と出会えた）[p]

[whosay name="藤枝晶子"]
「ところで貴方は、大事なお手紙の最中だったのではないかしら？[r]
[sp]肇を選んでよかったの？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公驚き
[主人公驚]
「勿論、藤枝さまを選んだことに後悔ありません！[r]
[sp]けれど、どうしてそれをご存じなのですか？」[p]

[whosay name="藤枝晶子"]
「肇が留学を辞退した理由を詳しく問いただしたのよ。[r]
[sp]肇は 数人の男性の差出人の手紙が、あなた宛てで来てたので[r]
[sp]ピンと来てたそうよ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公困り
[主人公困り]
「ええ、確かに大事なお手紙の最中でした。[r]
[sp]……でも藤枝様の事が気になって、縁談をお断りしましたの」[p]

「藤枝様に励まされて幸せでお稽古も一生懸命になれました。[r]
[sp]あの時は多分、興味と憧れでしたけれど、[r]
[sp]今はお慕いしています」[p]

[whosay name="藤枝晶子"]
「ふふ、貴方も真面目な方なのね！[r]
[sp]肇は、きっと貴方とお手紙を交わせる相手に少し嫉妬して[r]
[sp]いたんじゃないかしら」[p]

#
そういって彼女はまた茶目っ気たっぷりに笑った後、[r]
真剣な表情になった。[p]

[whosay name="藤枝晶子"]
「手紙を交わすうちに気づいたら、貴方も肇も恋に落ちていたのね。[r]
[sp]何であれ、あの子恋をして変わったわ」[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公驚
[主人公驚]
「どのように変わったのですか？」[p]

[whosay name="藤枝晶子"]
「ええ、明るく前向きになったわ。[r]
[sp]謙虚で優しい子だけに諦める事に慣れていたけれど、[r]
[sp]意思が強くなったというか」[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公ほほえみ
[主人公ほほえみ]
「それなら嬉しいです」[p]

[whosay name="藤枝晶子"]
「ええ、今のあの子は強いわ。 きっと誰にも負けないぐらいに。[r]
[sp]あの子の事よろしくお願いします」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公ほほえみ
[主人公ほほえみ]
「ええ」[p]

[whosay name="藤枝晶子"]
「それでは名残惜しいけれど、家事があるので、[r]
[sp]そろそろ失礼しますわ。[r]
[sp]また機会があればお話ししましょうね。　ごきげんよう」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公目閉じ
[主人公目閉じ]
「ええ、またお話ししましょう！　ごきげんよう」[p]

（上品ながら、ハキハキして明るい方だったわ。[r]
[sp]きっと藤枝様は、温かい家庭で育ったのね）[p]

;@jump storage="event.ks" target=*event_owari
[eval exp="sf.event_hujieda_sansaku = 1"]
[イベントシーン終了]
[イベントシーン終了２]
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

[locate x=580 y=357]
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[locate x=650 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=730 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=810 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=880 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;[メッセージウィンドウ上ボタン表示]

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

;=============================================
;イベント１２回目【時子さん訪問】１２月3週、
;=============================================
[背景_庭]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[主人公ポーズ通常]
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
[主人公目パチ1回]
「……」[p]

[whosay name=磯野 color="dimgray"]
「お嬢様、いつまでもふさぎ込んでいても仕方ありません」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目伏せ
[主人公目閉じ]
「わかっています、それでも今は何も手に着かないのです」[p]

;【立ち絵】主人公：悲しみ
[主人公憂い]
（お琴だけはまだ続けているけど何にも気力がわかない[r]
[sp]色鮮やかな世界から白黒の世界に閉じ込められたみたいだわ[r]
[sp]藤枝様が独逸に行かれたらもうお会いすることもない……）[p]

#女中
「お嬢様、磯野様、お客様です」

[whosay name=磯野 color="dimgray"]
「どちらさまでしょうか？」[p]

#女中
「三宮家の時子様です
[sp]お嬢様にお会いしたいという事でしたが[r]
[sp]いかがしましょうか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公目大]
[主人公口通常]
「お会いします[r]
[sp]時子さんをお通ししてください」[r]
[sp]（そうだわ！　時子さんになら相談できる）[p]

[whosay name=磯野 color="dimgray"]
「藤枝様の事は内密に……」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣
[主人公目閉じ]
[主人公口開]
「時子さんは信用できる方ですわ[r]
[sp]女同士ゆっくりお話ししたいのです[r]
[sp]磯野も皆も下がっていてください！」[p]
[主人公口通常]

[whosay name=磯野 color="dimgray"]
「わかりました……[r]
[sp]その代わりいつものお嬢様に戻ってください」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公憂い]
[主人公口ほほえみ]
「ありがとう磯野[r]
[sp]心配かけてしまって悪いと思っています」[p]

#
磯野と女中が下がっていく[r]
ここ最近藤枝様がいなくなるという寂しさと[r]
見張りをつけられては気が休まらなかった[p]

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]

[whosay name="三宮　時子" color="#c25232"]
「[名前]さん入っていいかしら？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：憂い顔
[主人公憂い]
[主人公口開]
「ええ、入ってきてください」[p]
[主人公口通常]

;【SE】襖を開ける（ゆっくり）

#
……やはり親友という存在は特別なのかしら[r]
今のやりきれない悲しみでがこらえきれなくなる[p]

[whosay name="三宮　時子" color="#c25232"]
「……泣きたいときは構わずに泣くとよろしいのよ[r]
[sp]涙を止めては痛みも取れません」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：悲しみ
[主人公目閉じ]
「時子さん！」[p]

#
優しく言われてわたしの涙腺は一気に緩む[r]
涙がぽたぽたとこぼれていく[r]
時子さんはハンカチを渡してくれていった[p]

[whosay name="三宮　時子" color="#c25232"]
「一人で抱え込むことが出来ない時は[r]
[sp]抱え込まないでいいのよ」[p]

#
それからしばらく私は今までの、[r]
悲しみを吐き出すかのうように[r]
泣いていたそしてやっとほっとした[p]

;選択肢
時子さんに藤枝の事を話す
話さない→bad



;時子さんに藤枝の事を話す

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：悲しみ
[主人公憂い]
「藤枝様がここから居なくなってしまうの[r]
[sp]私はそれがたまらなく悲しかったのです」[p]

[whosay name="三宮　時子" color="#c25232"]
「[名前]さん恋をされたのですね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：悲しみ
[主人公目閉じ]
「ええ、いつの間にか好きになってしまいました[r]
[sp]でも私の想いは藤枝さまにとっても[r]
[sp]お父様や磯野達にとっても良くないものです」[p]

[whosay name="三宮　時子" color="#c25232"]
「そうかしら？　良くないものかなんてわからないものよ」　[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公目大]
[主人公口通常]
「それはどういう意味ですか？」[p]

[whosay name="三宮　時子" color="#c25232"]
「貴方の想いは悪い方へ働くなんて限らないわ[r]
[sp]それに藤枝様は将来有望な殿方です[r]
[sp]いつまでも[名前]さんのお父様や家令が[r]
[sp]お手紙を許されない地位にいるとは思いません」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公驚]
「それは！」[p]

[whosay name="三宮　時子" color="#c25232"]
「何か解決策があるかもしれません。[r]
[sp]私も藤枝様に関して調べておきますわ[r]
[sp]まずは情報からです　」[p]

#
時子さんは私を元気づけるように微笑み[r]
私はうなずいた[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：ほほえみ
[主人公困りほほえみ]
「そうですね、[r]
[sp]悲しんでいても仕方ありません[r]
[sp]私も少しもがいていてみます。」[p]

[whosay name="三宮　時子" color="#c25232"]
「少し元気になったようでよかったわ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目閉じ
[主人公目閉じ]
[主人公口ほほえみ]
「それは時子さんのおかげです[r]
[sp]後は私も何かできないか頑張ります！」[p]


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

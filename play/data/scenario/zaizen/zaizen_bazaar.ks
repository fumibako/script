;=================================================================================
;◆チャリティーバザー◆２月１週から３月４週まで礼法が高い　財前ルート：散策イベント
;=======================お芝居の準備中です==========================================
[stopbgm]
[call target=*bazar storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】町並み
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
暖かな日差しの中、風に乗ってほんのりと花の匂いが吹き抜けていく。
[autosave]
[wait time=10]
[p]

[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]


[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公口ほほえみ]
「これは梅の香りだわ」[p]

[if exp="tf.test_gamen == true"]
テストページから開始しています。シナリオ終点にjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]


*jump_ok
[current layer="message0"]
[resetfont]
「はい」[r]
jumpします。[p]
[cm]
@jump target=*seen_end1
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
最初からはじめます。[p]
[cm]
[endif]

[whosay name=財前母]
「[名前]さん。　こんにちは」[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「財前様のお母様！」[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
[主人公眉下げ下]
[主人公目閉じ]
「お久しぶりです」[p]

[主人公目伏]
#
私はお辞儀をして微笑む。[p]

[whosay name=財前母]
「まあ。相変わらず礼儀正しいこと[r]
[sp]貴方ならきっと財前のお義母様も気に入るでしょう」[p]

#
優しく、どこか悲し気に財前のお母様は微笑む。
[autosave]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉困り]
「……まだお会いしてないのですが、気に入って頂けるように[r][sp]いたします」[p]

[whosay name=財前母]
「貴方ならきっと大丈夫ですよ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
「ありがとうございます。 ところでどうして町に？」[p]

[whosay name=財前母]
「[名前]さんの姿が車から見えたので、止めてもらったのです。 [r]
[sp]アルベルトの事、感謝しているのよ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ええ」[p]

[whosay name=財前母]
「ああ。 そうだわ！ 今お暇かしら？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「ええ……時間はありますわ」[p]

[whosay name=財前母]
「これからチャリティーバザーに出かけるの。[r]
[sp]ご一緒しませんか？」
[autosave]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
[主人公ポーズ片手]
「チャリティバザー！」[p]

（チャリティーと呼ばれる慈善活動は、皇室や財閥を中心に[r]
[sp]行っているというわ）[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口通常]
[主人公ポーズ通常]
[主人公眉下げ下]
[主人公目伏]
「私がいってもいいのでしょうか？」[p]

（財前様もチャリティー活動を行っているのかしら）[p]

[whosay name=財前母]
「勿論よ、貴方にとって今後の為にもいいと思います」[p]
#
;財前様のお母様と[ruby text=チャリ]慈[ruby text=ティー]善会場へと向かった。[p]
;=================================================================
[cm]
[暗転２]
;背景バザー出店描けるといいんですが（汗
;【背景】背景バザー出店（入り口）
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_cyarity3.jpg" time=50]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[表示準備 storage="bg/B4nFWraU42/bg_cyarity3.jpg"]
[暗転２終了]
;=================================================================
[wait time=100]

――バザー出店会場。
[autosave]
[wait time=10]
[p]
#
チャリティーバザー会場は多くの人で賑わっていた。[p]
;【SE】人々のざわめき（ザワザワ…屋内）
[playse storage=zawa_room.ogg loop=false ]

[whosay name=財前母]
「今年は経済的にも色々あって開催を危ぶまれたけれど[r]
[sp]お祭りはやはり皆の楽しみですものね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
「皆、楽しそうですね」[p]

[whosay name=財前母]
「ええ。 盛況なようで良かったわ。[r]
[sp]アルベルトも開催に尽力したとか」
[autosave]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「……そうですか。 財前様も参加されているのですね」[p]

#
[主人公目通常]
ふと見知った姿を見かけて、驚いて立ち止まってしまった。[p]

;================
[財前ベーススーツ]
;[財前ベース燕尾服]
[財前通常]
[表示開始 time=300]
;================
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「財前様！」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前驚き]
「[名前]さん、それに貴方まで……」
[autosave]
[wait time=10]
[p]

[whosay name=財前母]
「ふふ。 噂をすればなんとやらかしら」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前通常]
「あなたが[名前]さんを連れてきたのですか？[r]
[sp]仕事中に迷惑です」[p]

[whosay name=財前母]
[主人公通常]
「そうかしら？[r]
[sp][名前]さんは貴方と結婚するのでしょう？[r]
[sp]いい勉強になるのではないかしら？」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前眉ひそめ]
「……あの時から随分と、馴れ馴れしい物言いですね。[r]
[sp]貴方への怒りは完全に消えてません」[p]

[whosay name=財前母]
「アルベルト、　でも私は、もう貴方に変に気を使ったりするのを[r]
[sp]止める事にしたのです。[r]
[sp]だって貴方は私の大切な息子です」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前目閉じ]
「過去を蒸し返す気はありません。[r]
[sp]私も貴方を許すと決めましたが、まだ気安く話されると虫唾が走ります」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「財前様！」[p]

[whosay name=財前母]
「ええ。　でも、できるだけ気長に努力するつもりです。[r]
[sp]それより[名前]さんと見回ったらいいわ」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前通常]
「……まあいいでしょう。 [名前]さんこちらに」
[autosave]
[wait time=10]
[p]

[whosay name=財前母]
「帰りは三時に玄関で待ち合わせましょう。[r]
[sp]いってらっしゃい」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「え……ええ」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前通常]
「[名前]さん行きましょう」[p]
;=================================================================
[暗転２]
;背景変更　移動　どのような背景でしょうか
;【背景】背景バザー出店（遠景）
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_cyarity.jpg" time=50]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[wait time=10]
[暗転２終了]
[wait time=100]
;=================================================================
#
私は財前様と歩き出した。[r]
暫く無言で歩くけど、怒っている感じはしなかった。
[autosave]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
「あの！　財前様も、このバザーに尽力したとお聞きしました。[r]
[sp]その……すごいですわ！」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前通常]
「私だけの力ではありません。[r]
[sp]チャリティーバザーは、もともと政府高官の奥方達が[r]
[sp]慈善活動の為に始められたものです」
[autosave]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
[主人公効果消]
「そうですの。[r]
[sp]よければお話ししてくださいませんか？」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前目閉じ]
「ええ。構いません。[r]
[sp]我が国で、チャリティーバザーが始められたのは高名な伯爵夫人です」[p]

[whosay name="財前 美彬" color=%mp.color]
「彼女は病院を見学して病人の世話をするのが、[r]
[sp]数人の雑用係の男性な事に衝撃を受け、[r]
[sp]そして伯爵夫人は看護学校の必要性を説いたそうです」
[autosave]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口通常]
「政府の援助はなかったのですか？」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前通常]
「当時政府は財政難で援助は難しかったのですよ。[r]
[sp]伯爵夫人は政府高官の奥方達と陣頭指揮をとって[r]
[sp]バザーを開催し、その資金で看護学校を創設しています」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
「立派ですわね」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前目閉じ]
「そうですね。[r]
[sp]以来財閥や皇室なども、慈善活動に力をいれているのです」
[autosave]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
「……私もそんな風になりたいですわ」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前通常]
「勿論そうなっていただこうと思っていますよ。[r]
[sp]よく学んで下さい」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
[主人公頬染め]
「ええ。 精進いたします」[p]

（財前様は私の事を認めて下さっているのね）[p]

[whosay name="財前 美彬" color=%mp.color]
[財前口微笑み]
「[名前]さん、何か買いたい品物はありますか？[r]
[sp]今日限定で職人の方々にお願いした特注の品物などは[r]
[sp]早く買わないと売り切れてしまいますよ」
[autosave]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公効果消]
[主人公憂い]
「初めてなのでよくわかりませんの。[r]
[sp]まずは財前様のお役に立てるように、何か出来ませんか？」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前驚き]
「[名前]さんは変わった方ですね」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前微笑み]
「では、主催者の婦人方に[名前]さんを紹介しましょうか、[r]
[sp]人手が足りない所も出ているかもしれません」
[autosave]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「私、このままの服装でいいかしら？」[p]

（主催者とは政財界の奥方様達ね。[r]
[sp]華族はもちろんの事、皇族の方も参加しているかも知れないわ）[p]

[whosay name="財前 美彬" color=%mp.color]
[財前通常]
「むしろ目立つ服装でないことの方が、この場では好ましいでしょう。[r]
[sp]気にしなくとも[名前]さんの所作見れば、名家の御令嬢ということは[r]
[sp]分りますよ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
「ええ」[p]

;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景に白文字[テキスト全画面白文字]
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[wait time=1000]
[財前退場]
;【背景】バザー会場　売店　売り子場面　近景とは別枠にしないとおかしい
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_cyarity4.jpg" time=50]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[表示準備 storage="bg/B4nFWraU42/bg_cyarity4.jpg"]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
[wait time=100]
;==========================スクリプトここまで=========================================================

数時間後。
[autosave]
[wait time=10]
[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
[freeimage layer = 29 time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ありがとうございました」[p]

[whosay name=某伯爵夫人]
「やっとお客様が途切れましたわ。　[名字]様もお疲れ様です」[p]

「丁寧に品物を包んで下さって、お客様にも喜こばれていましたわ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏柔]
「ええ、感謝されると私まで嬉しくなります」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
「いずれ私も皆様のように、このような機会を作れるように[r]
[sp]なりたいと思いますわ」[p]

[whosay name=某伯爵夫人]
「貴方も色々と勉強なさるといいわ。[r]
[sp]私達も貴方のような方がチャリティー活動に加わって頂けるなら[r]
[sp]歓迎しますよ」
[autosave]
[wait time=10]
[p]

「ところで、[名字]様は財前様の婚約者なのですって？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
「ええ」[p]

[whosay name=某伯爵夫人]
「ここだけの話、財前様はよく気が付く方だけど、[r]
[sp]あの方、近寄りがたい感じがしませんこと？」[p]

[主人公困り]
「いえ、そんな事はありませんわ」[p]

[whosay name=某伯爵夫人]
「正直にいっていいですのよ？[r]
[sp]お噂を聞いていますわ。 礼節を重んじる方だけれど[r]
[sp]独逸大使夫人の庶子で、亀蔵財閥総帥の腰巾着とか」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り]
[主人公口開]
「噂など当てになりませんわ。 財前様は素晴らしい方です！[r]
[sp]私はお慕いしております！」[p]

#
;ずっと口が開いているので戻します
[主人公口ムッ]
そういうと伯爵夫人はクスッと笑った。[p]

[whosay name=某伯爵夫人]
「そうなのですって財前様」[p]

;================
[財前ベーススーツ]
;[財前ベース燕尾服]
[財前通常]
[表示開始 time=300]
;================
#
伯爵夫人が私の後ろに視線を向けていって、私は後ろに振り向くと[r]財前様が立っていた。
[autosave]
[wait time=10]
[p]

[主人公驚]
[whosay name="財前 美彬" color=%mp.color]
[財前ため息]
「私が見えていてわざといいましたね……余計なお世話です。[r]
[sp]それで、彼女はどうでしたか？」[p]

[whosay name=某伯爵夫人]
;ずっと口が開いているので戻します
[主人公口通常]
「私は気に入りましたわ。[r]
[sp]社交界でも財前様の良妻と評判の方になると思います」[p]

「[名字]様、財前様と行ってよろしいわ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
「え、ええ。 では失礼します」[p]
;=================================================================
[暗転２]
[主人公通常]
;背景変更　移動　どのような背景でしょうか
;【背景】背景バザー出店（遠景）
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_cyarity.jpg" time=50]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[wait time=10]
[暗転２終了]
[wait time=100]
;=================================================================

[whosay name="財前 美彬" color=%mp.color]
[財前目閉じ]
「あの伯爵夫人は、よくあんな風に人を試すことがあるんです。[r]
[sp]まあ人を見た目だけで判断しないという事は[r]
[sp]いい事なのかもしれませんけどね」
[autosave]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「親切に作業を教えてくださいましたわ」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前微笑み]
「そうですか。[r]
[sp][名前]さんもお手伝いばかりでお疲れでしょう。[r]
[sp]何か買って差し上げますよ」
[autosave]
[wait time=10]
[p]
	
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
「ありがとうございます。[r]
[sp]見回りをしたついでに私も、財前様にと買った物がありますわ」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前通常]
「それは、またどんなものを？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[主人公頬染め]
「名刺入れです」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（喜んでくださるかしら）[p]

#
私は藍染に植物の刺繍の入った、名刺入れを差し出し、[r]
財前様は受け取った。
[autosave]
[wait time=10]
[p]

[whosay name="財前 美彬" color=%mp.color]
[財前微笑み]
「ありがとうございます。 小物もあると便利な時がありますね。[r]
[sp]この植物は見たことありませんが」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「フウセンカズラという植物なんですって。[r]
[sp]涼し気でいいかと思ったのです。 ……気に入りませんでしたか？」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前目閉じ]
「いえ、そんな事はありませんよ。[r]
[sp]家の奥にしまったままになる贈り物だと困りますから[r]
[sp]安心しました」
[autosave]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ええ、使って下さい」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前微笑み]
「ええ、[r]
[sp]ところで[名前]さん、何を買いましょうか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
「財前様のお勧めの品物はないですか？」[p]

（財前様が贈って下さるなら何でも嬉しいわ）[p]

[whosay name="財前 美彬" color=%mp.color]
[財前通常]
「そうですね。　その京扇子などどうですか？」
[autosave]
[wait time=10]
[p]

#
財前様の視線の先を見ると、流水が描かれ金箔の桜を散らした、[r]
見事な京扇子が置かれていた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「財前様、二十円もしますわ！　そんな高価なもの頂けません」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前口微笑み]
「そうですか？[r]
[sp]気品があって所作の美しい貴方によく似合うと思いますが」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り]
「いえ、あの私、あちらで見かけたリボンがいいですわ。[r]
[sp]不思議と既製品よりかわいいものが多かったのです」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（そして既製品より安かったわ）[p]

[whosay name="財前 美彬" color=%mp.color]
[財前通常]
「ああ、あれは呉服屋に前々から、女学生や[r]
[sp]貴婦方から特に好まれそうな生地の切れ端を安く買い取って[r]
[sp]針妙に加工してもらったのです」
[autosave]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「いろいろと工夫しているんですね」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前目閉じ]
「いえ、祖父が呉服屋をしていたので、[r]
[sp]女学生のリボンは、そういった自作がほとんどだと聞いたものですから[r]
[sp]お手本にさせて頂いただけです」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
「ええ、リボンを見に行きましょう」[p]

;=================================================================
#
[暗転２]
;【背景】背景バザー出店（近景）
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_cyarity2.jpg" time=50]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[wait time=100]
[主人公憂い]
[暗転２終了]
[wait time=100]

;=================================================================

#
リボンを見に行くと、すでにかなりのリボンが売り切れていた。[p]

[whosay name="財前 美彬" color=%mp.color]
[財前ため息]
「残りはこの三個ですか、やや地味ですね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
「でも残り物には福があるといいますわ。[r]
[sp]どれがいいかしら？」[p]

#
残りの三つのリボンも十分綺麗で可愛らしい。[r]
どれもリボンの結び目にはつまみ細工の花があつらえてあった。[p]

[whosay name="財前 美彬" color=%mp.color]
[財前通常]
「……その赤市松に赤い生地を組み合わせた、牡丹の細工の[r]
[sp]リボンなど、どうですか？[r]
[sp][名前]さんの雰囲気と着物に合っていますよ」
[autosave]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
「ええ！それがいいですわね」[p]

（財前様が見立ててくださったわ）[p]

;=================================================================
[cm]
[暗転２]
;背景バザー出店描けるといいんですが（汗
;【背景】背景バザー出店（入り口）
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_cyarity51.jpg" time=50]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[暗転２終了]
[wait time=100]
;=================================================================

#
リボンを包んでもらい、財前様と再び一緒に歩く。
[autosave]
[wait time=10]
[p]


[whosay name="財前 美彬" color=%mp.color]
[財前微笑み]
「他愛ないことですごく嬉しそうにするんですね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
[主人公頬染め]
（また財前様の優しい笑顔がみれたわ）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（でも嬉しいはずだけど胸が痛い……[r]
[sp]財前様は恋愛がお嫌いだから、私の恋愛感情は要らない）
[autosave]
[wait time=10]
[p]

[whosay name="財前 美彬" color=%mp.color]
[財前驚き]
「突然悲しそうに。 どうしましたか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
「なんでもありません。 今日はとても勉強になりましたわ。 [r]
[sp]私、財前様のお役にたてるようにいたします」[p]

[whosay name="財前 美彬" color=%mp.color]
[財前通常]
「何を……[名前]さんは[名前]らしくしていれば良いのです。[r]
[sp]私は貴方を気に入っているのです」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口通常]
「初めてお会いした時に、[r]
[sp]地位がある事と貞淑であることと器量がある事しか[r]
[sp]望んでいないと……」
[autosave]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(心を開いてくれても、それ以上を望んでしまう)[p]

[whosay name="財前 美彬" color=%mp.color]
[財前ため息]
「ええ……でもそれ以上に……いえ、なんでもありません」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
（恋をしているから苦しい。[r]
[sp]けど財前様は恋をしない……こんな感情が煩わしいから）[p]

（それでも優しくされると期待してしまう）[p]

#
いつかはきっと――[p]
*seen_end1
[暗転２]
;イベント終了
[暗転１]
[イベントシーン終了]
[stopbgm]
;暗く全体消えていく演出
[freeimage layer=29]
[layopt layer=fix visible=true]
[eval exp="sf.event_zaizen_sansaku_bazar = 1"]
;↓散策イベントとして実装する際に、気力回復無しの終了方法とします(シリアスな物語内容のため、回復することや主人公セリフが合わないため)
[if exp="f.okeiko_gamen == true"]
@jump storage="sansaku.ks" target=*sansaku_owari
[endif]

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


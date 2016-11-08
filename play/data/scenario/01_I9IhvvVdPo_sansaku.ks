﻿*sansaku_machi_common_I9IhvvVdPo_01
;=======================================================================================
;◆町_共通イベント 01
;『スポーツおの話題』
;イベント発生条件：8月3週～8月4週、期間中に町へ行くと1度だけ発生
;=======================================================================================
;背景:町並み
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

#
今日の町は一層賑わい、[r]
人々は楽しそうだ[p]
[stopbgm]

;【BGM】筍の訪れ(町
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[whosay name=新聞社員" ]
「号外！　号外！　今日の全国野球大会の結果の速報だよ！ 」[p]

[whosay name=町人男性 " ]
「何回か野球の試合を見に行ったが、[r]
[sp] ワクワクするものがあったなあ。」[p]

[whosay name=町人女性 " ]
「慶徳は優勝したかしら？[r]
[sp] 知人の息子が慶徳の野球選手で……」[p]

#
人々が新聞を受け取っていく。

[whosay name=新聞社員" ]
「君もどうぞ！　無料だよ。」[p]

[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、ありがとうございます。」[p]


;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
[テキスト全画面白文字無背景]
;[新聞]
[chara_mod name="bg" storage="bg/test_bg_sinbun.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
『全国野球大会　慶徳中学校優勝！！』
[r]
[sp] 今年二度目を迎える全国野球は勝ち抜き戦で行われ、[r]
慶徳中学校が優勝！！[r]
[sp]決勝戦は手に汗握る接戦で観客は大いに盛り上がり、[r]
慶徳中学校野球部生徒は満面の笑みをたたえて、校歌を斉唱し、[r]
厳しい練習の努力が実ったことをたたえ合った。[r]
[r]
[sp]二度目を迎える今回の大会は初大会をの数をはるかにこえる中学校[r]
が参加し、多くの試合が開催され、大いに賑わいをみせている。[r]
[r]
[sp]また冬には最長の駅伝リレーが行われることとなった。[r]
[r]
[sp]我が国のスポーツは盛んになっていくだろう。[p]
[resetfont]
[playse storage=paper_open.ogg loop=false ]

;【SE】紙を折る（丁寧）
[playse storage=paper_oru.ogg loop=false ]

[主人公照れ目普通]
[主人公ポーズ指]
「あの方はスポーツがお好きかしら？」[p]


[イベントシーン終了]
@jump storage="01_I9IhvvVdPo_test.ks"
[s]

*sansaku_machi_common_I9IhvvVdPo_02
;=======================================================================================
;◆町_共通イベント 02
;『食事の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
;背景:町並み
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
#
町は賑やかな活気を見せる中[r]
一人の人がビラを配っている[p]
[stopbgm]

;【BGM】筍の訪れ(町
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[whosay name=大衆食堂店員" ]
「すぐそこの角に大衆食堂が開店！！[r]
[sp] お品書きはこちらだよ。」[p]

[whosay name=町人男性 " ]
「ついにここにも大衆食堂ができたか。[r]
[sp] コロッケはあるんだろうな？」[p]

[whosay name=町人女性 " ]
「大衆食堂も増えたものね……[r]
[sp] ビフテキもあるかしら」[p]

#
人々が広告を受け取っていく。[p]

[whosay name=大衆食堂店員" ]
「お嬢さんもどうだい？」[p]

[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「え！　ええ。」[p]

[主人公ポーズ指]
#
思わずお品書きを受けとってお品書き読んでみる。[r]
コロッケ、エビフライ、アイスクリーム、パン、チキンライス、ビフテキ、[r]
コーヒー、ラムネ、紅茶、サイダー、ビール、キャラメル、チョコレート。[p]

[whosay name=三宮時子" ]
「あら、[名前]さん何を見ていらっしゃるの？」[p]

[主人公ポーズ通常]
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「大衆食堂のお品書きだそうです。」[p]

[whosay name=三宮時子" ]
「あら、そうですの。[r]
[sp] この辺りも賑わってきましたね。」[p]

[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「新しいお店が出来たり、新装開店したりしていますね。[r]
[sp] 時子さんは洋食を食べたことはありますか？」[p]

[whosay name=三宮時子" ]
「お兄様がカフェーに何度か[r]
連れて下さったときにありますわ」[p]

[主人公眉通常]
[主人公目大]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どんな味でしたか？」[r]
（洋食は食べたことないわ）[p]

[whosay name=三宮時子" ]
「そうですわね。[r]
温かい料理を初めていただきましたわ。[r]
『家では離れた台所から運ぶうちに冷めっているんだよ』[r]
と兄から聞きました。」[p]

[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「料理が温かいのですね！」[p]

[whosay name=三宮時子" ]
「私も驚いたのですが[r]
[sp] 温かい料理は食べやすく美味しく感じましたわ。[p]

[主人公照れ目普通]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうなのでですか。」[p]

[whosay name=三宮時子" ]
「[名前]さん、お手紙を交わしている殿方に食事について[r]
[sp] 話題にしてみてはどうかしら？[r]
[sp] 食習慣が合うかどうかというのも大切ですから。」[p]

[主人公ほほえみ]
「ええ、書いてみますわ」[p]


[イベントシーン終了]
@jump storage="01_I9IhvvVdPo_test.ks"
[s]

*sansaku_machi_common_I9IhvvVdPo_03
;=======================================================================================
;◆町_共通イベント 03
;『観劇の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
;背景:町並み
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
#
行きかう町の人々は賑やかだ。[r]
数人の人がビラを配っている[p]
[stopbgm]

;【BGM】筍の訪れ(町
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[whosay name=劇団団員" ]
「劇場の建設が終わり今年〇月に[r]
[sp] 劇団虹の公演が始まるよ。[r]
[sp] 初公演は『ロミオとジュリエット』！！」[p]

[主人公ポーズ指]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（観劇というの聞いたことありますが[r]
[sp] 行ってみたことはありません）[p]

[whosay name=劇団団員子供" ]
「お姉さんも来て下さいね。はい！」[p]

[主人公ポーズ通常]

#
ビラを差し出され思わず私は受け取った。[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
[テキスト全画面白文字無背景]
『劇団虹　初公演！！』[r]
[r]
ドイツに演劇を学んだ小倉和正が駅近くに[r]
観客５００人収容する劇場が完成。[r]
世界初の照明室を備え、劇団を創設した。[r]
[r]
初公演となる〇月△日の演劇目は、[r]
『ロミオとジュリエット』、『桜の園』、『リア王』[r]
[r]
皆さまどうぞ足を御運び下さい！！[p]
[resetfont]
[playse storage=paper_open.ogg loop=false ]

;【SE】紙を折る（丁寧）
[playse storage=paper_oru.ogg loop=false ]


[whosay name=町人男性" ]
「嫁さんといってみようか[r]
[sp]たまにはいいよな。」[p]

[whosay name=町人女性 " ]
「歌舞伎とはまた違ったものなのかしら？」[p]

[主人公横目]
[主人公ポーズ指]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私もいってみたいわ[r]
[sp] やはりデエトでしょうか？」[p]

[主人公照れ目普通]
（お手紙で観劇について尋ねてみましょう）[p]


[イベントシーン終了]
@jump storage="01_I9IhvvVdPo_test.ks"
[s]

*sansaku_machi_common_I9IhvvVdPo_04
;=======================================================================================
;◆町_共通イベント 04
;『読書の話題』
;イベント発生条件：6月2週～7月3週、期間中に町へ行くと1度だけ発生　語学お稽古２回以上
;=======================================================================================
;背景:町並み
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
#
町は賑やかな活気を見せる中[r]
私は書店に足を向けた。[p]
[stopbgm]

;【BGM】筍の訪れ(町
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[whosay name=書店店員" ]
「いらっしゃいませ[r]
[sp] どんな御本をお探しでしょうか？」[p]

[主人公ほほえみみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「詩集を探しているのですが。
どなたの詩集が良いでしょうか？」
(語学を学んでいくうちに詩に興味を惹かれたわ)[p]

[whosay name=書店店員" ]
「それなら今流行りの石垣菊乃の[r]
初夏の詩集なんてどうですか？[p]

[主人公ポーズ通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「少し読まして頂いてもいいかしら？」[p]

[whosay name=書店店員" ]
「こちらです。」[p]
#
差し出された和綴じの本には花菖蒲の表紙で
私はパラパラとめくる。

[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「情緒ある美しくも優しい詩ですね[r]
[sp] この本に致します。」[p]

[whosay name=書店店員" ]
「お買い上げありがとございます！」

[主人公通常]
［主人公ポーズ指］
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あの方は[r]
[sp]どんなな御本を読まれるのかしか？」[p]

[イベントシーン終了]
@jump storage="01_I9IhvvVdPo_test.ks"
[s]

*sansaku_machi_common_I9IhvvVdPo_05
;=======================================================================================
;◆町_共通イベント 05
;『写真の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生　淑女度２０以上
;=======================================================================================
;背景:町並み
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
#
町は活気に包まれ、賑やかだ。[r]
視線を感じ振り向くと男性が近づいてきた。[p]
[stopbgm]

;【BGM】筍の訪れ(町
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[whosay name=？？？" ]
「お嬢さん、僕は浪漫写真倶楽部、[r]
川島潤といいます。」[p]

[主人公驚]
[主人公ポーズ片手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ！！」[r]
（浪漫写真倶楽部……聞いたことがあるわ[r]
[sp]昨年浪漫展という写真の展覧会が盛況だったとか[r]
[sp]今は写真が流行ね）[p]

[whosay name=川島潤" ]
「お嬢さんのように[r]
[sp]品のあるお嬢さんを探していたんです！[r]
[sp]写真のモデルになって頂けないでしょうか？」[p]

[主人公ポーズ通常]
[主人公憂い]
「申し訳ありませんがお断りします」[r]
（お写真のモデル……家の体面が傷つくわ）[p]

[whosay name=川島潤" ]
「そうか……残念です！[r]
女性誌の表紙になる女性を探していたんですよ。[r]
……気が変わったらここに連絡してください」[p]

#
彼は名刺を私に渡すと、[r]
また道に通っている女性をキョロキョロし始めた。[p]

[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（お写真はお兄様の結婚式の記念以来かしら）[p]

[主人公照れ目普通]
［主人公ポーズ指］
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私もいつか[r]
[sp]お手紙の方と写真を撮るのかしら」[p]

散策イベント◆I9IhvvVdPoさんご担当その5です。[p]

[イベントシーン終了]
@jump storage="01_I9IhvvVdPo_test.ks"
[s]

*sansaku_machi_common_I9IhvvVdPo_06
;=======================================================================================
;◆町_共通イベント 06
;『の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
;背景:町並み
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
#
散策イベント◆I9IhvvVdPoさんご担当その6です。[p]

[イベントシーン終了]
@jump storage="01_I9IhvvVdPo_test.ks"
[s]


*sansaku_machi_common_I9IhvvVdPo_07
;=======================================================================================
;◆町_共通イベント 07
;『の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
;背景:町並み
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
#
散策イベント◆I9IhvvVdPoさんご担当その7です。[p]

[イベントシーン終了]
@jump storage="01_I9IhvvVdPo_test.ks"
[s]


;=======================================================================================
;以下はメッセージウィンドウを閉じた時のクレジット表記スクリプトです
;=======================================================================================
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

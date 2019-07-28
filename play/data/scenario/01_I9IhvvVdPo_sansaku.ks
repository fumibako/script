﻿﻿*sansaku_machi_common_I9IhvvVdPo_01
;=======================================================================================
;◆町_共通イベント 01
;『スポーツの話題』
;イベント発生条件：8月3週～8月4週、期間中に町へ行くと1度だけ発生
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]

#
今日の町は一層賑わい、人々は楽しそうだ。[p]
[stopbgm]

;【BGM】筍の訪れ(町
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[whosay name=新聞社員" ]
「号外！　号外！　今日の全国野球大会の結果の速報だよ！」[p]

[whosay name=町人男性 " ]
「何回か野球の試合を見に行ったが、ワクワクするものが[r]
[sp]あったなあ」[p]

[whosay name=町人女性 " ]
「慶徳は優勝したかしら？[r]
[sp]知人の息子が慶徳の野球選手で……」[p]

#
人々が新聞を受け取っていく。[p]

[whosay name=新聞社員" ]
「君もどうぞ！　無料だよ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ええ、ありがとうございます」[p]


;【SE】紙に触れる（スッ）
[stopse]
[if exp="sf.SE=='ON'"]
[playse storage=paper_su.ogg loop=false ]
[endif]
;名前欄消去
[whosay name=""]
[cm]
;主人公顔グラ消去
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
;攻略対象立ち絵消去
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 13]
;会話ウィンドウ消去
[freeimage layer = 14]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;背景変更:新聞
[bg method='crossfade' storage="../fgimage/bg/test_bg_sinbun_yakyuu.jpg" time=600]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=150 width=720 height=600 top=30 page=fore margint="0"]

;テキスト全画面
[font color=white size=26]
;#
『全国野球大会　慶徳中学校優勝！！』[r]
[r]
[sp]今年二度目を迎える全国野球は勝ち抜き戦で行われ、[r]
慶徳中学校が優勝！！[r]
[sp]決勝戦は手に汗握る接戦で観客は大いに盛り上がり、[r]
慶徳中学校野球部生徒は満面の笑みをたたえて、校歌を[r]
斉唱し、厳しい練習の努力が実ったことをたたえ合った。[r]
[r]
[sp]二度目を迎える今回の大会は初大会の数をはるかに[r]
こえる中学校が参加し、多くの試合が開催され、大いに[r]
賑わいをみせている。[r]
[r]
[sp]また冬には最長の駅伝リレーが行われることとなった。[r]
[r]
[sp]我が国のスポーツは盛んになっていくだろう。[p]
[resetfont]
[stopse]
[if exp="sf.SE=='ON'"]
[playse storage=paper_open.ogg loop=false ]
[endif]

;【SE】紙を折る（丁寧）
[stopse]
[if exp="sf.SE=='ON'"]
[playse storage=paper_oru.ogg loop=false ]
[endif]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築]
;主人公復帰表情　ポーズ通常
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_futuu_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=300]
[主人公ポーズ通常]
[主人公通常]
[iscript]
$('.junbi_girl').remove();
[endscript]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[wait time=10]
[主人公照れ目普通]
[主人公ポーズ指]
「あの方はスポーツがお好きかしら？」[p]

[layopt layer=29 visible=true]
;【話題入手】
[話題入手 wadai_txt="『スポーツの話題』を手に入れました"]
[eval exp="f.wadai_list_hairetsu[f.wadai_hairetsu_number].push('スポーツの話題',0,0,0,1,0,'a','','','','')"]
[イベントシーン終了]
[イベントシーン終了２]
@jump storage="01_I9IhvvVdPo_test.ks"
[s]

*sansaku_machi_common_I9IhvvVdPo_02
;=======================================================================================
;◆町_共通イベント 02
;『食事の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]

[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]

#
町は賑やかな活気を見せる中、一人の人がビラを配っている。[p]
[stopbgm]

;【BGM】筍の訪れ(町
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[whosay name=大衆食堂店員" ]
「すぐそこの角に大衆食堂が開店！！　お品書きはこちらだよ」[p]

[whosay name=町人男性 " ]
「ついにここにも大衆食堂ができたか。[r]
[sp]コロッケはあるんだろうな？」[p]

[whosay name=町人女性 " ]
「大衆食堂も増えたものね……。 ビフテキもあるかしら」[p]

#
人々が広告を受け取っていく。[p]

[whosay name=大衆食堂店員" ]
「お嬢さんもどうだい？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「え！　ええ」[p]

[主人公ポーズ指]
#
思わず、お品書きを受けとってお品書き読んでみる。[r]
”コロッケ、エビフライ、アイスクリーム、パン、チキンライス、ビフテキ、[r]
[sp]コーヒー、ラムネ、紅茶、サイダー、ビール、キャラメル、チョコレート”[p]

[whosay name=三宮時子" ]
「あら、[名前]さん何を見ていらっしゃるの？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公ポーズ通常]
「大衆食堂のお品書きだそうです」[p]

[whosay name=三宮時子" ]
「あら、そうですの。　この辺りも賑わってきましたね」[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「新しいお店が出来たり、新装開店したりしていますね。[r]
[sp]時子さんは洋食を食べたことはありますか？」[p]

[whosay name=三宮時子" ]
「お兄様がカフヱに何度か[r]
;カフヱに統一させていただきました(◆jsYiJcqRkk
[sp]連れて行って下さったときにありますわ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉通常]
[主人公目大]
「どんな味でしたか？」[p]
（洋食は食べたことがないわ）[p]

[whosay name=三宮時子" ]
「そうですわね。[r]
[sp]温かい料理を初めていただきましたわ」[p]

「『家では離れた台所から運ぶうちに冷めているんだよ』[r]
[sp]と兄から聞きました」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「料理が温かいのですね！」[p]

[whosay name=三宮時子" ]
「私も驚いたのですが[r]
[sp]温かい料理は食べやすく、美味しく感じましたわ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
「そうなのですか」[p]

[whosay name=三宮時子" ]
「[名前]さん、お手紙を交わしている殿方に食事について[r]
[sp]話題にしてみてはどうかしら？[r]
[sp]食習慣が合うかどうかというのも大切ですから」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ええ、書いてみますわ」[p]

[layopt layer=29 visible=true]
;【話題入手】
[話題入手 wadai_txt="『食事の話題』を手に入れました"]
[eval exp="f.wadai_list_hairetsu[f.wadai_hairetsu_number].push('食事の話題',0,0,0,1,0,'a','','','','')"]
[イベントシーン終了]
[イベントシーン終了２]
@jump storage="01_I9IhvvVdPo_test.ks"
[s]

;=======================================================================================
;読込不良防止目的で、散策イベントファイルを分割し、03～05を01_I9IhvvVdPo_sansaku2.ksに移動しました
;=======================================================================================
*sansaku_machi_common_I9IhvvVdPo_03
;=======================================================================================
;◆町_共通イベント 03
;『観劇の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
@jump storage="01_I9IhvvVdPo_sansaku2.ks" target="*sansaku_machi_common_I9IhvvVdPo_03"

*sansaku_machi_common_I9IhvvVdPo_04
;=======================================================================================
;◆町_共通イベント 04
;『読書の話題』
;イベント発生条件：6月2週～7月3週、期間中に町へ行くと1度だけ発生　語学お稽古２回以上
;=======================================================================================
@jump storage="01_I9IhvvVdPo_sansaku2.ks" target="*sansaku_machi_common_I9IhvvVdPo_04"

*sansaku_machi_common_I9IhvvVdPo_05
;=======================================================================================
;◆町_共通イベント 05
;『写真の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生　淑女度２０以上
;=======================================================================================
@jump storage="01_I9IhvvVdPo_sansaku2.ks" target="*sansaku_machi_common_I9IhvvVdPo_05"



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

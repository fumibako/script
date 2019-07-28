;=======================================================================================
;読込不良防止目的で、散策イベントファイルを分割しました
;=======================================================================================
*sansaku_machi_common_I9IhvvVdPo_03
;=======================================================================================
;◆町_共通イベント 03
;『観劇の話題』
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
行きかう町の人々は賑やかだ。　数人の人がビラを配っている。[p]
[stopbgm]

;【BGM】筍の訪れ(町
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[whosay name=劇団団員" ]
「劇場の建設が終わり今年〇月に劇団虹の公演が始まるよ。[r]
[sp]初公演は『ロミオとジュリエット』！！」[p]

[主人公ポーズ指]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（観劇というものは、聞いたことはありますが[r]
[sp]行ってみたことはありません）[p]

[whosay name=劇団団員子供" ]
「お姉さんも来て下さいね。はい！」[p]

[主人公ポーズ通常]

#
ビラを差し出され、思わず私は受け取った。[p]

;【SE】紙に触れる（スッ）
[stopse]
[if exp="sf.SE=='ON'"]
[playse storage=paper_su.ogg loop=false ]
[endif]
[チラシ]
『劇団虹　初公演！！』[r]
[r]
[ruby text=ド]独[ruby text=イツ]逸に演劇を学んだ小倉和正が駅近くに[r]
世界初の照明室を備え、劇団を創設した。[r]
観客[ruby text=ご]五[ruby text=ひゃく]百[ruby text=にん]人収容する劇場が完成。[r]
;↑◆I9IhvvVdPoさん、ご返信をありがとうございます。いただいたご意見の通りに変更しました。
[r]
初公演となる〇月△日の演劇目は、[r]
『ロミオとジュリエット』、『桜の園』、『リア王』[r]
[r]
皆さま、どうぞ足を御運び下さい！！[p]
[resetfont]
[stopse]
[if exp="sf.SE=='ON'"]
[playse storage=paper_open.ogg loop=false ]
[endif]
[cm]
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

[whosay name=町人男性" ]
「嫁さんと行ってみようか。　たまにはいいよな」[p]

[whosay name=町人女性" ]
「歌舞伎とはまた違ったものなのかしら？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横目]
[主人公ポーズ指]
「私も行ってみたいわ。　やはりデエトでしょうか？」[p]

[主人公照れ目普通]
（お手紙で観劇について尋ねてみましょう）[p]

[layopt layer=29 visible=true]
;【話題入手】
[話題入手 wadai_txt="『観劇の話題』を手に入れました"]
[eval exp="f.wadai_list_hairetsu[f.wadai_hairetsu_number].push('観劇の話題',0,-1,0,-2,1,'a','','','','')"]
[イベントシーン終了]
[イベントシーン終了２]
@jump storage="01_I9IhvvVdPo_test.ks"
[s]

*sansaku_machi_common_I9IhvvVdPo_04
;=======================================================================================
;◆町_共通イベント 04
;『読書の話題』
;イベント発生条件：6月2週～7月3週、期間中に町へ行くと1度だけ発生　語学お稽古２回以上
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
町は賑やかな活気を見せる中、私は書店に足を向けた。[p]
[stopbgm]

;【BGM】筍の訪れ(町
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[whosay name=書店店員" ]
「いらっしゃいませ。　どんな御本をお探しでしょうか？」[p]

[主人公眉下げ下]
[主人公目伏柔]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「詩集を探しているのですが。[r]
[sp]どなたの詩集が良いでしょうか？」[p]

[主人公目閉じ]
[主人公口ほほえみ]
(語学を学んでいくうちに詩に興味を惹かれたわ)[p]

[whosay name=書店店員" ]
「それなら、今流行りの石垣菊乃の初夏の詩集なんてどうですか？」[p]

[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「少し読ませて頂いてもいいかしら？」[p]

[whosay name=書店店員" ]
「こちらです」[p]

[主人公通常]
#
差し出された和綴じの本は[ruby text="はな"]花[ruby text="しょう"]菖[ruby text="ぶ"]蒲の表紙で、私はパラパラとめくる。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「情緒ある美しくも優しい詩ですね。[r]
[sp]この本に致します」[p]

[whosay name=書店店員" ]
「お買い上げありがとうございます！」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「あの方は、どの様な御本を読まれるのかしら？」[p]

[layopt layer=29 visible=true]
;【話題入手】
[話題入手 wadai_txt="『読書の話題』を手に入れました"]
[eval exp="f.wadai_list_hairetsu[f.wadai_hairetsu_number].push('読書の話題',0,0,0,1,2,'a','','','','')"]
[イベントシーン終了]
[イベントシーン終了２]
@jump storage="01_I9IhvvVdPo_test.ks"
[s]

*sansaku_machi_common_I9IhvvVdPo_05
;=======================================================================================
;◆町_共通イベント 05
;『写真の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生　淑女度２０以上
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
町は活気に包まれ、賑やかだ。[r]
視線を感じ振り向くと、男性が近づいてきた。[p]
[stopbgm]

;【BGM】筍の訪れ(町
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[whosay name=？？？" ]
「お嬢さん。 僕は[ruby text=ロ]浪[ruby text=マン]漫写真倶楽部、川島潤といいます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
[主人公ポーズ片手]
「ええ！！」[p]

（浪漫写真倶楽部……聞いたことがあるわ。[r]
[sp]昨年『[ruby text=ロ]浪[ruby text=マン]漫展』という写真の展覧会が盛況だったとか）[p]
（今は写真が流行ね）[p]

[whosay name=川島潤" ]
「お嬢さんのように、品のあるお嬢さんを探していたんです！[r]
[sp]写真のモデルになって頂けないでしょうか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
[主人公憂い]
「申し訳ありませんが、お断りします」[p]
（お写真のモデル……家の体面が傷つくわ）[p]

[whosay name=川島潤" ]
「そうか……残念です！」[p]
「女性誌の表紙になる女性を探していたんですよ。[r]
[sp]……気が変わったらここに連絡してください」[p]

#
彼は名刺を私に渡すと、また道を行く女性に視線を向けて、[r]
キョロキョロとし始めた。[p]
;↑元）また道に通っている女性をキョロキョロし始めた。[p]から変更させていただきました(◆jsYiJcqRkk

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
（お写真はお兄様の結婚式の記念以来かしら）[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
「私もいつか、あの方と写真を撮るのかしら」[p]
#
;「あの方」に統一させていただきます(◆jsYiJcqRkk
;散策イベント◆I9IhvvVdPoさんご担当その5です。[p]

[layopt layer=29 visible=true]
;【話題入手】
[話題入手 wadai_txt="『写真の話題』を手に入れました"]
[eval exp="f.wadai_list_hairetsu[f.wadai_hairetsu_number].push('写真の話題',0,1,0,1,2,'a','','','','')"]
[イベントシーン終了]
[イベントシーン終了２]
;↑イベント終了後にテストメニューに飛んでしまう件、写真の話題で経験した旨を思い出しました。sansaku.ksのファイル分割で安定化対応しました。仮に入れていた処理については不要になった＆テストしづらいため消去します。◆jsYiJcqRkk
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

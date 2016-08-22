;=============================================
;イベント7回目【財前の交渉】１２月４週
;=============================================
; 背景会議室
;【背景】背景会議室
;変更してください
[chara_mod name="bg" storage="toumei.gif" time=500]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
;[主人公ポーズ通常][主人公通常]いりません
;メッセージを男性モノローグに変更します　途中からだとおかしかった・・
[イベントシーン構築枠茶色]

;【立ち絵】財前：真剣
[whosay name="財前美彬" color="#7a65b2"]
「今更、前大蔵大臣の[r]
[sp] 失言に言及する気はございません[r]
[sp] ただ早急に対応して頂きたいと存じます！」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】一閃（緊迫シーンに
[playbgm storage="kinpaku_issen.ogg" loop=true]
[eval exp="f.bgm_storage='kinpaku_issen.ogg'"]
[endif]

;【立ち絵】財前：真剣
[whosay name="財前美彬" color="#7a65b2"]
「日銀が緊急に動いて貸し付けを[r]
[sp] 行っているが間に合わず[r]
[sp] 日銀の紙幣も底を尽きると聞きました」[p]

[whosay name="新大蔵大臣"]
「だが君たちの案は書面で読んだが[r]
[sp] 少し強引すぎるのではないかね？」[p]

;【立ち絵】財前：真剣
[whosay name="財前美彬" color="#7a65b2"]
「国民感情をなだめるためには[r]
[sp] 大きなパフォーマンスが必要です[r]
[sp] 臨時の紙幣を発行させ、今回のような[r]
[sp] 緊急時の対処の法の整備をお願いします」[p]

[whosay name="新大蔵大臣"]
「君は亀蔵財閥総帥の[r]
[sp] 腰巾着……いや失礼[r]
[sp] 懐刀だったな」[p]

#
亀蔵財閥総帥から気に入られ、[r]
時に相談役を負い、[r]
それを良くも、悪くも捉える者がいて[r]
懐刀とも腰巾着とも呼ばれるようになった[p]

#
今回の件の発案にも関わり、[r]
私がまとめ、交渉役に選ばれた[p]


;【立ち絵】財前：真剣
[whosay name="財前美彬" color="#7a65b2"]
「今回の件は亀蔵財閥を含めた5大財閥[r]
[sp] 総帥の同意も得ております」[p]


#
新大蔵大臣は私をジロジロ見る[r]
異国の血が入っている事で[r]
よくこんな風に見られ[r]
その度母の事を恨んだものだった[p]

#
だが今は平然と受け取ることが出来る[r]
父譲りの交渉術と話術。[r]
必ず成功させよう[p]



;【立ち絵】財前：真剣
[whosay name="財前美彬" color="#7a65b2"]
「米騒動の時のように[r]
[sp] 国民が暴徒化するのは時間の問題でしょう、[r]
[sp] その前に手は打つべきかと存じます」[p]

[whosay name="新大蔵大臣"]
「確かにあれはひどい騒ぎだったな[r]
[sp] 書面の案では３週間の全ての[r]
[sp] 銀行を休業させ、その間に臨時の紙幣を発行し[r]
[sp] 全ての銀行に行き渡るようにする」[p]

;【立ち絵】財前：真剣
[whosay name="財前美彬" color="#7a65b2"]
「ええ、取り付け騒ぎの混乱を収めた後、[r]
[sp] 紙幣も回収し日銀に貸付金を返す[r]
[sp] 倒産する会社もあるでしょうが猶予のある[r]
[sp] 銀行が吸収合併し、負債も引き継ぐ形にする」[p]

[whosay name="新大蔵大臣"]
「それでは問題は起きないのか？[r]
[sp] ３週間で急造した紙幣が回るとは[r]
[sp] それに紙幣の印刷は片面でいいとは……」[p]

;【立ち絵】財前：真剣
[whosay name="財前美彬" color="#7a65b2"]
「ええ、紙幣を発行するだけでも[r]
[sp] 大変ですし時間を抑えるための策ですが[r]
[sp] 国家の威信にも関わりますこの件が終わった後は[r]
[sp] 急造した紙幣はすぐに回収した方がいい」[p]

;【立ち絵】財前：真剣
[whosay name="財前美彬" color="#7a65b2"]
「閣下、問題はすでに起こっています[r]
[sp] 全ては国民感情を落ち着かせる為です[r]
[sp] この状態を金融恐慌と呼んでいますが[r]
[sp] 国民感情の方が恐慌状態です」[p]

[whosay name="新大蔵大臣"]
「なるほど……私も力を貸そう」[p]

;【立ち絵】財前：目閉じ
[whosay name="財前美彬" color="#7a65b2"]
「閣下の協力感謝いたします」[p]

#
;一礼する

[whosay name="新大蔵大臣"]
「それでは私は失礼する」[p]

#
大蔵大臣は席をたち会議室を出ていく[p]

[fadeoutbgm time=3000]

;【立ち絵】財前：ため息
[whosay name="財前美彬" color="#7a65b2"]
（さすがに疲れたか……後は[r]
[sp] 財閥出身の議員は賛同するように[r]
[sp] 各財閥総帥が動いている[r]
[sp] それからー枢密院に働きかける）[p]

;【立ち絵】財前：通常
（それにしても……）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
;最大６-７行
[手紙主人公 fumi_number=]
財前美彬様へ[l][r]
[sp]拝啓　初霜のみぎり貴方様におかれましては[r]
大変忙しくされているとお察しいたしております。[r]
[r]
[sp]先日は、事情をお聞かせくださって[r]
ありがとうございました。 [r]
私もこの度の騒動は大変な事件だと実感しています。[p]

[sp] また暴動にまで発展し、私も胸が痛む想いです。[r]
[sp] この難局を乗り越えるに[r]
は人の心を落ち着かせるのが第一だと[r]
私は思いますわ。[r]
町人たちも皆不安がっていました。[p]

[sp]今、新聞社や政府の働きかけと[r]
対策を話し合われていると存じます[r]
なにか大きく人の心を落ち着かせるような対策が[r]
取られ、また、一日も早く[r]
皆か安心して過ごせるように祈っています。[p]

[sp]木枯しが吹きすさぶこの季節、[r]
忙しい中ですが財前様もどうかご自愛ください。[r]
貴方の事を心から想っています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　敬具 [r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　[名字][名前] [p]
[resetfont]
[手紙読了]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[イベントシーン構築枠茶色]
;【立ち絵】財前：微笑み
（この手紙一つで心が[r]
[sp] 癒されると感じている[r]
[sp] ……自分が不思議だな）[p]

[fadeoutbgm time=3000]

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

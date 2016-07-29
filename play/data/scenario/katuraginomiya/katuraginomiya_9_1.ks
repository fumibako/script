;4回目イベント　葛城宮の好感度が一番高い、一定の淑女度　
[背景_庭]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[主人公ポーズ通常]
[主人公通常]
[主人公目パチ1回]
;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
[手紙]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
[r]
[sp]拝呈　初秋の候　[名前]殿は変わらず元気でいるだろうか？[r]
[r]
[sp] 先日のお茶事からそうたってないが[r]
君が正式に皇室で認められたことで周囲の者たちが[r]
色めき立ち正式な婚約者を決めようという事になった[r]
[r]
[sp]私は君と正式に婚約したいと思っている[r]
[sp]だが君はどうだろうか？　[r]
[r]
[sp]勿論私は君に無理意地はしたくない[r]
[sp]重要な事なので君も周囲の者たちとよく話し合ってきめてくれるとよい[r]
[r]
謹言
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;【立ち絵】主人公 通常　
選択肢　葛城宮と　婚約する意思を固める
　　　　　　　　　婚約しない

;【立ち絵】主人公 通常
「磯野、お父様に[r]
[sp] 今日時間があるときにお話しがしたいと伝えて」[p]

[whosay name=磯野 color="dimgray"]
「かしこまりました[r]
[sp] お話しとはやはり葛城宮殿下の事で[r]
[sp] ございますか？」[p]

;【立ち絵】主人公 真剣
「ええ」[p]

[whosay name=磯野 color="dimgray"]
「お嬢様が決められたことなら[r]
[sp] 私は反対いたしません[r]
[sp] 苦労されることをご承知の上ですね？　」[p]

;【立ち絵】主人公 真剣
「ええ、身分が高くなるのは[r]
[sp] それだけ自由がなくなる事も[r]
[sp] 承知の上ですましてや殿下は[r]
[sp] 周囲の反対を押し切って[r]
[sp] 新しいことをされようとしているわ[r]
[sp] うまくいかないときのほうが多いでしょう[r]
[sp] けれど殿下をお支えしたいのです」[p]

[whosay name=磯野 color="dimgray"]
「いつのまにか[r]
[sp] お嬢様も一人前になりましたね。[r]
[sp] それでは旦那様にお伝えしに参ります」[p]

数刻後
#浩文
「話があると聞いた[r]
[sp] 話してごらんなさい。」[p]

;【立ち絵】主人公 真剣
「お父様、私は葛城宮殿下と[r]
[sp] 正式に婚約したく思っています[r]
[sp] お許し頂けますか？」

#浩文
「お前は我が家の誉だ[r]
[sp] 恐れ多くも親王様の婚約者候補に[r]
[sp] なれるとは思っていなかった。」[p]

;【立ち絵】主人公 瞬く
「お父さまそれでは！　」[p]

#浩文
「だが葛城宮殿下の身分は[r]
[sp] 高く身分の違いは[r]
[sp] お前を不幸にするかもしれない[r]
[sp] 我が家にも気軽に帰れることはないだろう」[p]

;【立ち絵】主人公 真剣
「ええ、けれど自由がなくなることも[r]
[sp] 生まれ育ったこの家に[r]
[sp] 帰れなくなることも承知の上です。[r]
[sp] 殿下のもとに嫁ぐともう心に決めました」[p]

#主人公父
「そうか……それでは反対すまい[r]
[sp] 葛城宮殿下は同じく貴族院に入っている[r]
[sp] 叔父宮と度々衝突していると聞く[r]
[sp] 心しておきなさい」[p]

;【立ち絵】主人公 微笑み
「お父さま！　[r]
[sp] ありがとうございます[r]
[sp] 忠告も心に留めておきます」[p]

#
お父様はただ優しく笑ってくれた[p]
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
@jump storage="test_katuragi.ks"
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

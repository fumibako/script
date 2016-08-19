;7回目イベント
[chara_mod name="bg" storage="bg / I9IhvvVdPo / baraen.jpg"]

[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

;【立ち絵】葛城宮　通常
[whosay name="葛城宮　晴仁" color=%mp.color]
「待たせたかな？」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】五色
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]

[主人公ポーズ通常]
[主人公困り]
;【立ち絵】主人公　心配そう
[whosay name=&sf.girl_namae color="#cf5a7f"]
（葛城宮さま少しおやつれになった？）[r]
「いいえ、さほどまっておりませんわ」[p]

;【立ち絵】葛城宮　通常
[whosay name="葛城宮　晴仁" color=%mp.color]
「そこの君[r]
[sp][名前]殿と二人で話したい」[p]

[whosay name=磯野 color="dimgray"]
「はい、御前を失礼いたします」[p]

[fadeoutbgm time=3000] 

;【立ち絵】葛城宮　通常
[whosay name="葛城宮　晴仁" color=%mp.color]
「君にこんな無様な姿を[r]
[sp]見せたくなかった[r]
[sp]私もけじめをつけようと思う[r]
[sp]君との婚約を解消する」[p]

;【立ち絵】主人公 驚き
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！？[r]

;【立ち絵】主人公 悲しみ
[主人公憂い]
[主人公口開]
「私では苦しいときを[r]
[sp]分かち合えないのですか？」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】哀しげな曲
[playbgm storage="kanasige_yukisugara.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukisugara.ogg'"]
[endif]

;【立ち絵】葛城宮 目閉じ
[whosay name="葛城宮　晴仁" color=%mp.color]
「ああ、そうだ」[p]

選択肢　・問う
　　　　・泣く→バットエンド

;【立ち絵】主人公 悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「なぜですか？」[p]

;【立ち絵】葛城宮 真剣
[whosay name="葛城宮　晴仁" color=%mp.color]
「……今回の件で気づいたのだ[r]
[sp]私は夢の為に多くの事を犠牲にして叶えるだろう[r]
[sp]私と道を共にする事は君にとって茨の道で、[r]
[sp]君に窮屈な生活を強いるだけではないのだ」[p]

;【立ち絵】葛城宮 目閉じ
[whosay name="葛城宮　晴仁" color=%mp.color]
「最初は君の楚々とした佇まいを[r]
[sp]見て好意を持った[r]
[sp]手紙を交わし、いつのまにか[r]
[sp]私にとってなくてはならない人となった[p]
[fadeoutbgm time=3000] 
;【立ち絵】葛城宮 真剣
[whosay name="葛城宮　晴仁" color=%mp.color]
君には幸せになって欲しい[r]
[sp]私は君を訳もなく[r]
[sp]幸せにできると思っていた……[r]
[sp]恐れ知らずなただの子供だな」[p]

;【立ち絵】主人公 悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「私の幸せの為にと[r]
[sp]おっしゃるのですか？」[p]

;【立ち絵】主人公 目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[主人公眉困り]
私はあなたの夢の為なら[r]
[sp]私も犠牲を払います[r]
[sp]それが私の自由であろうと[r]
[sp]心であろうと構いませんわ」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

;【立ち絵】葛城宮 真剣
[whosay name="葛城宮　晴仁" color=%mp.color]
「そのような事、[r]
[sp]軽々しくいってはいけない[r]
[sp]君は政界の闇も[r]
[sp]宮中の厳しさも知らない」[p]

;【立ち絵】主人公 通常口開け
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公口開]
「私は、軽々しくいっておりません[r]
;【立ち絵】主人公目閉じ
[主人公目閉じ]
[sp]殿下がいれば私は心が強くなれます[r]
[sp]殿下の夢を聞いて私は沢山の事を[r]
[sp]知る機会を得ました」[p]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公伏目]
「私は貴方の想っているほど[r]
弱くはないのです[r]
私を認めてください！」[p]


;【立ち絵】葛城宮　驚き
[whosay name="葛城宮　晴仁" color=%mp.color]
「……私は君が泣くと思っていた[r]
[sp]君を誤解していたようだ[r]
[sp]君は芯が強のだな」[p]

;【立ち絵】主人公　伏せ目口開け
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公口開]
「ええ！　[r]
[sp]私は貴方のように[r]
[sp]強くなりたいと思いました[r]
[sp]だから泣いてられません」[p]

[whosay name="侍従"]
「お取込みのところ[r]
[sp]申し訳ございません[r]
[sp]殿下、そろそろ時間でございます」[p]

;【立ち絵】葛城宮　通常
[whosay name="葛城宮　晴仁" color=%mp.color]
「[名前]殿すまないな[r]
[sp]今は少し忙しくしている[r]
[sp]今は時間が取れないが[r]
[sp]また手紙を送るのでそれまで待ってほしい」[p]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[主人公口通常]
「ええ、信じております[r]
[sp]何があっても殿下の手紙を[r]
[sp]お待ちしておりますわ」[p]
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

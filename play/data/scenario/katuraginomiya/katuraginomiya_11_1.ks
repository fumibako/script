;7回目イベント
;薔薇園
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

;【立ち絵】葛城宮　通常
「待たせたかな？」[p]

（葛城宮さま少しおやつれになった？）
;【立ち絵】主人公　心配そう
「いいえ、さほどまっておりませんわ」[p]

;【立ち絵】葛城宮　通常
「そこの君[r]
[sp]文菜殿と二人で話したい」[p]

[whosay name=磯野 color="dimgray"]
「はい、御前を失礼いたします」[p]

;【立ち絵】葛城宮　通常
「君にこんな無様な姿を[r]
[sp] 見せたくなかった[r]
[sp] 私もけじめをつけようと思う[r]
[sp] 君との婚約を解消する」[p]

;【立ち絵】主人公 驚き
「！？」

;【立ち絵】主人公 悲しみ
「私では苦しいときを[r]
[sp] 分かち合えないのですか？」[p]

;【立ち絵】葛城宮 目閉じ
「ああ、そうだ」[p]

選択肢　・問う
　　　　・泣く→バットエンド

;【立ち絵】主人公 悲しみ
「なぜですか？」[p]

;【立ち絵】葛城宮 真剣
「……[r]
今回の一件で気づいたのだ[r]
[sp] 私は夢の為に多くのことを[r]
[sp] 犠牲にして叶えるだろう[r]
[sp] 私と道をともにするということは[r]
[sp] 君にとって茨の道だと、[r]
[sp] 私に嫁ぐということは[r]
[sp] 君にとって窮屈な生活を[r]
[sp] 強いるだけではないのだ」[p]

;【立ち絵】葛城宮 目閉じ
「最初は君の楚々とした佇まいを[r]
[sp] 見て好意を持った[r]
[sp] 手紙を交わし、いつのまにか[r]
[sp] 私にとってなくてはならない人となった[p]

;【立ち絵】葛城宮 真剣
君には幸せになって欲しい[r]
[sp] 私は君を訳もなく[r]
[sp] 幸せにできると思っていた……[r]
[sp] 恐れ知らずなただの子供だな」[p]

;【立ち絵】主人公 悲しみ
「私の幸せの為にと[r]
[sp] おっしゃるのですか？」[p]

;【立ち絵】主人公 真剣
私はあなたの夢の為なら[r]
[sp] 私も犠牲を払います[r]
[sp] それが私の自由であろうと[r]
[sp] 心であろうと構いませんわ」[p]

;【立ち絵】葛城宮 真剣
「そのような事、[r]
[sp] 軽々しくいってはいけない[r]
[sp] 君は政界の闇も[r]
[sp] 宮中の厳しさも知らない」[p]

;【立ち絵】主人公 目閉じ
「軽々しくいっておりません[r]
[sp] 殿下がいれば私は心が強くなれます[r]
[sp] 殿下の夢を聞いて私は沢山の事を[r]
[sp] 知る機会を得ました私を認めてください」[p]

;【立ち絵】葛城宮　驚き
「……私は[r]
[sp] 君を誤解していたようだ[r]
[sp] 君は芯が強人なのだな」[p]

;【立ち絵】主人公　微笑み
「ええ！　[r]
[sp] 私は貴方のように[r]
[sp] 強くなりたいと思いました[r]
[sp] だから泣いてられません」[p]

＃侍従
「お取込みのところ[r]
[sp] 申し訳ございません[r]
[sp] 殿下、そろそろ時間でございます」[p]

;【立ち絵】葛城宮　通常
「文菜殿すまないな[r]
[sp] 今は少し忙しくしている[r]
[sp] 今は時間が取れないが[r]
[sp] また手紙を送るのでそれまで待ってほしい」[p]

;【立ち絵】主人公 微笑み
「ええ、信じております[r]
[sp] 何があっても殿下の手紙を[r]
[sp] お待ちしておりますわ」[p]
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

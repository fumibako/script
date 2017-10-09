;7回目イベント　
;=======================お芝居の準備中です==================================
*replay_katuraginomiya_11_1
[stopbgm]
[call target=*11_1 storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】バラ園
[eval exp="f.haikei_credit='I9IhvvVdPo'"]
[bg method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/baraen.jpg" time=600 wait=true]
[イベントシーン構築ボタン無し版]
;登場人物の設定
[主人公ポーズ通常]
[主人公通常]
[主人公目閉]
[葛城宮ベース私服]
;【立ち絵】葛城宮　通常
[葛城宮通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
*seen0
;[葛城宮ベース私服]　幕間で設定
;【立ち絵】葛城宮　通常　
[葛城宮通常]
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
「いいえ、さほどまっておりませんわ」[p]

（殿下、少しおやつれになった？）[p]

;【立ち絵】葛城宮　通常
[whosay name="葛城宮　晴仁" color=%mp.color]
「そこの君、[名前]殿と二人で話したい」[p]
#
殿下は深刻な表情を見せると、私の後ろに控えていた磯野を下がらせた。[p]

[whosay name=磯野 color="dimgray"]
「はい。御前を失礼いたします」[p]

[fadeoutbgm time=3000] 

;【立ち絵】葛城宮　通常
[葛城宮微笑み]
[whosay name="葛城宮　晴仁" color=%mp.color]
「無事な顔を見られて嬉しい」[p]

[葛城宮真剣]
「あの従妹宮の事件以来、ずっと心配していた。[r]
[sp]今後あのような事件に二度と巻き込みたくない。 [r]
[sp]社会の情勢も悪くなっている」[p]

;【立ち絵】葛城宮　通常
[葛城宮目を閉じる]
[whosay name="葛城宮　晴仁" color=%mp.color]
「君にこんな無様な姿を見せたくなかった。[r]
[sp]……私も、けじめをつけようと思う」[p]

「君との婚約を解消する」[p]

;【立ち絵】主人公 驚き
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「！？」[p]

#
頭が真っ白になって言葉に詰まる。[p]
[主人公口通常]
言葉を理解し、拒絶されたとわかるまで、数秒かかった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 悲しみ
[主人公憂い]
[主人公口開]
「私はこんな時こそ殿下をお支えしたいと思っていました。[r]
[sp]けれど私では、苦しいときを分かち合えないのですか？」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】哀しげな曲
[playbgm storage="kanasige_yukisugara.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukisugara.ogg'"]
[endif]

;【立ち絵】葛城宮 目閉じ
[葛城宮憂い]
[whosay name="葛城宮　晴仁" color=%mp.color]
「ああ、そうだ」[p]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;シナリオテスト時、リプレイ時　かつ　バッドをみている場合は選択肢へ
[if exp="(tf.test_katuraginomiya == true && f.okeiko_gamen != true) || (f.okeiko_gamen != true && f.event_replay == 'katuraginomiya' && sf.ED_katuraginomiya_bad == 1)"]
[葛城宮退場]
@jump target=seen1
;シナリオテスト時、リプレイ時　かつ　バッドをみていない場合は次のシーンへ
[elsif exp="(tf.test_katuraginomiya == true && f.okeiko_gamen != true) || (f.okeiko_gamen != true && f.event_replay == 'katuraginomiya' && sf.ED_katuraginomiya_bad != 1)"]
#
胸がズキズキと痛んだ。[r]
私は……葛城宮殿下を問うことにした。[p]
[葛城宮真剣]
@jump target=*replay_yes
[endif]

[if exp="f.para_katuraginomiya_koukando < 40"]
;バッドシナリオここから
#
私は、思わず泣いてしまった。[p]
@jump storage="katuraginomiya/katuraginomiya_11_1badED.ks" target=no_end
;バッドシナリオここまで
[endif]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢のための退場
[葛城宮退場]
*seen1
#
胸がズキズキと痛んだ。[r]
私は……
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢用の背景：(和紙風桜色はオープニングで使用) 
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;背景変更:和紙風 セピア色　こちらがよければコメントアウトを外して使用
;[bg method='crossfade' storage="../fgimage/bg/plane_sepia.jpg" time=100]
;[eval exp="f.haikei_credit=''"]
;背景変更:和紙風 水色　上がよければコメントアウトをしてください
[bg method='crossfade' storage="../fgimage/bg/plane_mizuiro.jpg" time=100 wait=true]
[eval exp="f.haikei_credit=''"]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;[link]タグでの選択肢
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
[link target=*yes]問う。[endlink][r]
[r][r][r]
[link target=*no] 泣く。[endlink][r]
;バットエンド
[resetfont]
[s]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*no
;画面を戻した後バットエンドに
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
;【背景】バラ園
[bg method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/baraen.jpg" time=600 wait=true]
[eval exp="f.haikei_credit='photo by ◆I9IhvvVdPo'"]
[表示準備 storage="bg/I9IhvvVdPo/baraen.jpg" layer=13]
;＝＝＝システムメッセージ。変更してください＝＝＝＝＝
#
泣いてしまった。[p]
;＝＝＝システムメッセージ。変更してください＝＝＝＝＝

;【立ち絵】葛城宮　
[葛城宮ベース私服]
[葛城宮憂い]
[表示開始 time=300]

;no_endに飛びます
@jump storage="katuraginomiya/katuraginomiya_11_1badED.ks" target=no_end
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*yes
;画面を戻した後下のシナリオ
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
;【背景】バラ園
[bg method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/baraen.jpg" time=600 wait=true]
[eval exp="f.haikei_credit='photo by ◆I9IhvvVdPo'"]
[表示準備 storage="bg/I9IhvvVdPo/baraen.jpg" layer=13]
;＝＝＝システムメッセージ。変更してください・・・＝＝＝＝＝
#
葛城宮殿下を問うことにした。[p]
;＝＝＝システムメッセージ。変更してください＝＝＝＝＝
;【立ち絵】葛城宮　
[葛城宮ベース私服]
[葛城宮真剣]
[表示開始 time=300]
*replay_yes
;シームレスにリプレイ
;＝＝;=====================================================================
[if exp="tf.test_gamen == true"]
テストページからプレイしています。イベント終わりまで移動しますか？[r]

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
移動します。[p]
[cm]
@jump target=*end_rute
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]
;=====================================================================＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－

;【立ち絵】主人公 悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「なぜですか？」[p]

;【立ち絵】葛城宮 真剣
[葛城宮真剣]
[whosay name="葛城宮　晴仁" color=%mp.color]
「……今回の件で気づいたのだ。　私が政界に関わるのは好ましくない」[p]
[葛城宮伏目パチ1回]
「成し遂げたいことはあったが、民衆自身が成し遂げるべきことでもある。[r]
[sp]私の役目はそれを後押しするだけだ」[p]

;【立ち絵】葛城宮 目閉じ
[葛城宮目閉じ]
[whosay name="葛城宮　晴仁" color=%mp.color]
「最初は君の楚々とした佇まいを見て好意を持った」[p]
[葛城宮眉下げ]
「手紙を交わし、いつのまにか私にとってなくてはならない人となった」[p]
[fadeoutbgm time=3000] 
;【立ち絵】葛城宮 真剣
[葛城宮憂い]
[whosay name="葛城宮　晴仁" color=%mp.color]
「君には幸せになって欲しい。[r]
[sp]私は君を訳もなく、幸せにできると思っていた……。[r]
[sp]恐れ知らずな、ただの子供だな」[p]

;【立ち絵】主人公 悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「婚約の解消は、私の為にとおっしゃるのですか？」[p]

（殿下は私が嫌いになったのではなく、やはり自信を失っているのだわ）[p]

;【立ち絵】主人公 目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[主人公眉困り]
「あなたの夢の為なら、私も犠牲を払います。[r]
[sp]殿下と苦しみを分かち合いたいのです」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[主人公目伏]
[主人公口開]
「私も強くなります！ ですから！」
[主人公口ムッ]
[p]
[主人公目閉じ]


;【立ち絵】葛城宮 真剣
[葛城宮目閉じ]
[whosay name="葛城宮　晴仁" color=%mp.color]
「そのような事、軽々しくいってはいけない。 君は政界の闇も、[r]
[sp]宮中の厳しさも知らない」[p]

;【立ち絵】主人公 通常口開け
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公口開]
「私は、軽々しくいっておりません」[p]
;【立ち絵】主人公目閉じ
[主人公目閉じ]
「殿下がいれば私は心が強くなれるのです」[p]
[主人公口通常]

「殿下の夢を聞いて私は沢山の事を知る機会を得ました。[r]
[sp]姫宮様の一件でも強くなろうと心に誓いました」[p]

[葛城宮目大]
;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公伏目]
[主人公眉下げ下]
[主人公口ほほえみ]
「今の私は殿下が想っているほど、弱くもありません。[r]
[sp]……私が殿下をお慕いする気持ちはもう変わりませんわ」[p]

[主人公目閉じ]
「そして殿下の夢は殿下だけのものです。[r]
[sp]きっと殿下にしか叶えられませんわ」[p]

;【立ち絵】葛城宮　驚き
[葛城宮驚き]
[whosay name="葛城宮　晴仁" color=%mp.color]
「……私は君が泣くと思っていた。 君を誤解していたようだ」[p]
[葛城宮口開]
「君は芯が強いのだな。[sp]逆に励まされるとは」[p]
#
[葛城宮微笑み]

;【立ち絵】主人公　伏せ目口開け
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏柔]
[主人公口ほほえみ]
「ええ！　[r]
[sp]私は貴方のように強くなりたいと思いました。[r]
[sp]だから泣いてられませんわ」[p]

[whosay name="侍従"]
「お取込みのところ、申し訳ございません。[r]
[sp]殿下、そろそろ時間でございます」[p]

;【立ち絵】葛城宮　通常
[葛城宮ため息]
[whosay name="葛城宮　晴仁" color=%mp.color]
「[名前]殿すまないな。　今は少し忙しくしている」[p]

[葛城宮真剣]
「今は、時間が取れないが、また手紙を送るのでそれまで待ってほしい」[p]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[主人公眉下げ下]
[主人公口ほほえみ]
「ええ、何があっても殿下のお手紙をお待ちしておりますわ」[p]

（どんなにお手紙が遅くなっても[r]
[sp]家族から反対されても、きっと私は殿下を信じている）[p]

#
薔薇の花は美しく、凛と咲き誇る。[r]
――まるで殿下のようだわ。[p]
*seen3
*end_rute
;＝＝＝＝＝＝＝＝＝＝;いいシーンなのにパッパッと順番にきえるのを防止＝＝＝＝＝＝＝＝＝
#
[layopt layer=fix visible=false]
[image layer=29 x=0 y=0 storage="bg/B4nFWraU42/bara_image.jpg" time=1500 visible=true]
[wait time=1500]
[葛城宮退場]
[wait time=10]
[主人公退場]
[wait time=10]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]

;一瞬、裏背景がみえるの防止
[bg storage="../fgimage/bg/B4nFWraU42/bara_image.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]

[freeimage layer=29 time=600]
[wait time=600]
[eval exp="sf.event_katuragi_11_1 = 1"]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝スクリプト担当＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
[イベントシーン終了]

[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[endif]

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

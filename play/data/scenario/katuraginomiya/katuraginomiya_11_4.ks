;11月4週イベント 
=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*12_1 storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;【背景】ﾌﾟﾛﾛーｸﾞ
[chara_mod name="bg" storage="bg/bg_prologue_dark.jpg"]
[eval exp="f.haikei_credit=' '"]
[プリロード画面消去]
;=====================ここからお芝居の幕引きです===============================

;ｸﾘｯｸなしですとｽﾏﾎでならないので、何か対策を。
;【SE】時計（広間カチコチ）
[playse storage=tokei_hiroma.ogg loop=false ]

;==========================スクリプト・全画面表示の間に設定===============================
;【テキスト全画面】黒茶・和紙風背景(暗)に白文字 ;[新聞] 裏で画面構成 test_bg_sinbun.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風_暗
[image layer=29 x=1 y=1 storage="bg/bg_prologue_dark.jpg" time=1000 visible=true]
[wait time=10]
;【背景】;背景ttps://www.flickr.com/photos/28752865@N08/5741972861/
[chara_mod name="bg" storage="bg/katuraginomiya_kaigi2.jpg" time=50]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

汚職事件を起こした今原中将やその関係者への軍法会議での判決は懲役刑、[r]
事態を重く見て臨時の軍上層部での会議を行う事になった[r]
私は上司である大将の左官、また議事進行係を買って出た。[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
;メッセージレイヤを会話窓用に設定変更
;[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;機能ボタン表示
[layopt layer=fix visible=true]
[イベントシーン構築ボタン無し版]
;【背景】ttps://www.flickr.com/photos/28752865@N08/5741972861/
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[葛城宮ベース軍服]
[葛城宮真剣]
[葛城宮口開]
[freeimage layer = 29 time=1000]
[eval exp="sf.FButton='ON'"]
[cm]
[メッセージウィンドウ上ボタン表示]
;==========================スクリプト・全画面表示からの復帰準備========================================


「定刻となりましたので臨時の会議を始めます！[r]
[sp] 今から行われるこの会議は軍の兵達の指標となり、[r]
[sp] 政治おける軍の立場を決める重要なものであります」[p]

[葛城宮口閉]
[葛城宮目閉じ]
#
私の目的はこの会議での議論を通し[r]
上層部の意見を一致させることだ。[p]

[葛城宮真剣]
（軍部が政治的権力をもっては危険すぎる）

[whosay name="大将１" color=%mp.color]
「汚職事件に関わったものの懲役刑は妥当だろう[r]
[sp] だが人の思想は自由なものだ[r]
[sp] 取り締まる事はできないものだ」[p]

[whosay name="中将" color=%mp.color]
「いや、思想は厄介だ。[r]
[sp] 極端な思想に走り、クーデターを起こそうとした者が[r]
[sp] 現れたことも過去にあった」[p]

[whosay name="大将２" color=%mp.color]
「やはり、軍の教育を[r]
[sp] 徹底していくべきではないですかな？」[p]

[whosay name="中将２" color=%mp.color]
「どのようにですか？[r]
[sp]……」[p]

#
調査し、だれがどのような意見を持っているか下調べはしていた。[r]
それを討論しながら、それぞれの意見の相違を埋めていく[p]

[whosay name="議長" color=%mp.color]
「個人の野心は捨て、法を順守し、[r]
[sp]秩序ある軍隊を目指すべきだ。[r]
[sp我々は国を守る為にあるり、国の方針に従う」[p]

[葛城宮真剣]
[葛城宮口開]
「賛同する者起立」

#
出席した全員が起立し、[r]
これで政治不干渉の方針が決定した。[r]
……これから形骸化した軍律をまた制定しよう。[p]


#
そして会議の後に、上官の大将と[r]
また、交流のある親しい中将に、[r]
とある人物について相談を行った。[p]


;【テキスト全画面】黒茶・和紙風背景(暗)に白文字
[テキスト全画面白文字暗]
ーー数日後[p]

;背景ttps://www.flickr.com/photos/28752865@N08/5741972861/

[葛城宮ベース軍服]
[葛城宮真剣]


[if exp="sf.BGM=='ON'"]
;【BGM】冬支度
[playbgm storage="kanasige_koto_fuyujitaku.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_koto_fuyujitaku.ogg'"]
[endif]

;【SE】ドアノック音(トントン)
[playse storage=door-knock.ogg loop=false ]

[葛城宮目パチ１回]
「どうぞお入り下さい」[p]

[whosay name="？？？" color=%mp.color]
「圧力をかけて内々に呼び出し、[r]
お揃いで私に何の御用でしょうか」[p]

#
今原中将以下、懲役刑となったものから、[r]
自分は唆されたのだと、彼の名を出した者もいる。[r]
彼は追い詰められていた[p]

[葛城宮真剣]
「柏木元大将、戦争の準備を始める貴方に、[r]
[sp]自首を進めようと思いました。[r]
[sp] 貴方が使用としいることは法に触れることです」[p]

#
彼は無表情で言った。[p]

[whosay name="柏木元大将" color=%mp.color]
「ほう？[sp]なんのことですかな？」[r]
[sp]どんな証拠を以って私が法を犯したと？[p]


[葛城宮眉怒り]
「収賄の証拠は挙がっています[r]
[sp] 国を守るといいながら貴方は不正が多です」[p]

[whosay name="柏木元大将" color=%mp.color]
「それで？[sp] でも私は正しい事をしているのですよ[r]
[sp] 国を守る為に第二第三の私が出るでしょう。[r]
[sp] 失礼ながら貴方が思っているより我が国の情勢は悪い」[p]

[葛城宮怒り]
「ですが武力を以って、[r]
[sp] 他国を押さえつけ、[r]
[sp] 民族の誇りを踏みにじっていい理由になりません！」[p]

[whosay name="柏木元大将" color=%mp.color]
「強い国家を作る為です。[r]
[sp] なにも非道な支配をしようとはしていない。[r]
[sp]属国には学校を創設し、植林も植え洪水も少なくなるでしょうな」[p]

[葛城宮目閉]
「善政を敷けばいいという問題でもありません！[r]
[sp]どれほど反発を生むかおわかりでしょうか？」[p]

[whosay name="柏木元大将" color=%mp.color]
「もちろん理解を得るつもりですよ」[p]

[葛城宮憂い]
「……戦争を正当化するための教育か、[r]
[sp]貴方の計画の全貌を知って[r]
[sp] 恐ろしい気持ちになった」[p]

[whosay name="柏木元大将" color=%mp.color]
「それなら話は早い、[r]
[sp] 属国を従え、国を豊かにする[r]
[sp] 素晴らしいと思いませんか？」[p]

#
民族から宗教、言語、姓名を[r]
我が国と同化させ、臣民教育を徹底する。[r]
それはどれだけの屈辱になるだろうか。[p]

[葛城宮怒り]
「思いません。[r]
[sp] 今上帝まで利用して軍事国家を作り上る気ですか？」[p]

[whosay name="柏木元大将" color=%mp.color]
「殿下とは気が合わないようだ[r]
[sp] 帰らせてもらいます」[p]

[葛城宮真剣]
「今、貴方の自宅に警察が入ってます[r]
[sp] 証拠も見つかるでしょう。[r]
[sp] そして証言もあります。入りなさい！」[p]


#
隣室から現れたのは一人の初老の男性だ。[r]
柏木元大将の家令にあたる[p]

[whosay name="柏木元大将" color=%mp.color]
「どうしてここにお前が！」

[whosay name="柏木家家令" color=%mp.color]
「旦那様が蟷螂団とも組み、[r]
[sp]反軍国主義の首相を暗殺する計画まで立てていることを 、[r]
[sp] 黙ってみている訳にはまいりません」[p]


#
その場に居た者は表情を凍りつかせ柏木元大将を凝視した。[r]
しばしの間をおいて、場にざわめきが広がっていく……。 [p]

#
蟷螂団は以前にも事件を起こしている。[r]
軍将校に働きかけクーデターを起こし、[r]
帝政を復活させようとした右翼団体だ。[p]

[whosay name="将校" color=%mp.color]
「……蟷螂団！ 」[p]

[whosay name="上官大将" color=%mp.color]
「なんと首相を暗殺！」[p]

[whosay name="中将" color=%mp.color]
「まさか、そんなことを現実にしようとは…」[p]


[葛城宮目閉]
「お静かに！[sp] 貴方は危険すぎる思想を持ち[r]
[sp] ある程度の権力をお持ちだ[r]
[sp] 見過せません！」[p]

[whosay name="柏木元大将" color=%mp.color]
「お前に裏切られるとは思わなかった」[p]

#
茫然と柏木元大将が呟く。[p]

#
国体を変革することを目的として結社を組織したる者又は
結社の役員其の他指導者たる任務に従事したる者は
死刑又は無期もしくは五年以上の禁固刑。
;（治安維持法より）


[葛城宮怒り]
「帝政化と軍事化で国が栄えるなどと[r]
愚かな考えを持ったものだ[r]
柏木元大将を捕らえろ！」[p]

[whosay name="将校" color=%mp.color]
「は！」

#
将校が柏木元大将を連行し、[r]
代わりに秘書が入ってきた。[p]

[葛城通常]
「何かあったのか？」[p]

[whosay name="秘書" color=%mp.color]
「先ほど、国会で大蔵大臣が[r]
[sp] 大きな失言をしました！[r]
[sp] 首都を中心に大きな騒ぎと発展するやもしれません！」[p]

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

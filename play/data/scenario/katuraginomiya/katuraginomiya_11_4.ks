;11月4週イベント 
=======================お芝居の準備中です==================================
*replay_katuraginomiya_11_4
[stopbgm]
[call target=*11_4 storage="katuraginomiya/preload_katuraginomiya.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】ﾌﾟﾛﾛーｸﾞ
[bg method='crossfade' storage="../fgimage/bg/bg_prologue_dark.jpg" time=600 wait=true]
[eval exp="f.haikei_credit=' '"]
[プリロード画面消去]
;=====================ここからお芝居の幕引きです===============================
;==========================スクリプト・全画面表示の間に設定===============================
;【テキスト全画面】黒茶・和紙風背景(暗)に白文字 ;[新聞] 裏で画面構成 test_bg_sinbun.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風_暗
[image layer=29 x=0 y=0 storage="bg/bg_prologue_dark.jpg" time=1000 visible=true]
[wait time=1000]
;【背景】;背景ttps://www.flickr.com/photos/28752865@N08/5741972861/
[bg method='crossfade' storage="../fgimage/bg/katuraginomiya_kaigi2.jpg" time=50 wait=true]
[wait time=10]
[eval exp="f.haikei_credit=''"]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
*seen0
――海軍省会議室[p]
人のざわめきは時間が近づくにつれて静まり、[r]
時計の針は会議の開始時間を指す。[p]
;【SE】時計（広間カチコチ）
[playse storage=tokei_hiroma.ogg loop=false ]


汚職事件を起こした今原中将やその関係者への[r]
軍法会議での判決は懲役刑、[r]
事態を重く見て臨時の軍上層部での会議を行う事に[r]
なった。[p]
;た　の完了形と同じ、かつ、情勢の地の文と心情の地の文を分ける。ｽﾏﾎ改行修正

私は、上司である大将の左官、また議事進行係を[r]
買って出た。[p]


;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
;メッセージレイヤを会話窓用に設定変更
;[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;機能ボタン表示
[layopt layer=fix visible=true]
[イベントシーン構築ボタン無し版枠茶色]
;【背景】ttps://www.flickr.com/photos/28752865@N08/5741972861/
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[葛城宮ベース軍服]
[葛城宮真剣]
[葛城宮口開]
[freeimage layer = 29 time=1000]
[wait time=1000]
[eval exp="sf.FButton='ON'"]
[cm]
[メッセージウィンドウ上ボタン表示]
;==========================スクリプト・全画面表示からの復帰準備========================================
*seen1
[whosay name="葛城宮　晴仁" color=%mp.color]
「定刻となりましたので臨時の会議を始めます！」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】五色（重いムードに
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]
;------------------------------------------------------
[if exp="tf.test_gamen == true"]
テストページからプレイしています。イベント終わりまで移動しますか？[r]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]
*jump_ok
[er]

[current layer="message0"]
[resetfont]
[er]
「はい」[r]
移動します。[p]
[cm]
@jump target=*seen_end
[s]

*jump_no
[er]
[current layer="message0"]
[resetfont]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]
;------------------------------------------------
[whosay name="葛城宮　晴仁" color=%mp.color]
「今から行われるこの会議は軍の兵達の指標となり、政治おける軍の立場を[r]
[sp]決める重要なものであります」
[葛城宮口通常]
[p]

[葛城宮目閉じ]
#
私の目的はこの会議での議論を通し、上層部の意見を一致させることだ。[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮真剣]
（軍部が、政治的権力をもっては危険すぎる）[p]

[whosay name="大将１" color=%mp.color]
「汚職事件に関わったものの懲役刑は妥当だろう」[p]

「だが、人の思想は自由なもの。 取り締まる事はできないものだ」[p]

[whosay name="中将" color=%mp.color]
「いや、思想は厄介だ。[r]
[sp]極端な思想に走り、クーデターを起こそうとした者が現れたことも[r]
[sp]過去にあった」[p]

[whosay name="大将２" color=%mp.color]
「やはり、軍の教育を徹底していくべきではない[r]
[sp]ですかな？」[p]

[whosay name="中将２" color=%mp.color]
「どのようにですか？ ……」[p]

#
調査し、だれがどのような意見を持っているか下調べはしていた。[p]
#
それを討論しながら、それぞれの意見の相違を埋めていく。[p]

[whosay name="議長" color=%mp.color]
「個人の野心は捨て、法を順守し、秩序ある軍隊を目指すべきだ。[r]
[sp]我々は国を守る為にあるり、国の方針に従う」[p]

[葛城宮真剣]
[葛城宮口開]
「賛同する者起立」[p]
[葛城宮口通常]

;【SE】椅子を引く（ガタッ）
[playse storage=isu_gata.ogg loop=false ]
#
出席した全員が起立し、これで政治不干渉の方針が決定した。[p]
……これから形骸化した軍律をまた制定しよう。[p]
[葛城宮退場準備 storage="g/katuraginomiya_kaigi2.jpg" time=300]
[暗転]
#
そして会議の後に、上官の大将と交流のある親しい中将に"とある人物"に[r]
ついて相談を行った。[p]

[fadeoutbgm time=3000]
*seen2
;==========================スクリプト・全画面表示の間に設定===============================
;【テキスト全画面】黒茶・和紙風背景(暗)に白文字 ;[新聞] 裏で画面構成 test_bg_sinbun.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風_暗
[image layer=29 x=0 y=0 storage="bg/bg_prologue_dark.jpg" time=1000 visible=true]
[wait time=1000]
;【背景】;背景ttps://www.flickr.com/photos/28752865@N08/5741972861/
[bg method='crossfade' storage="../fgimage/bg/katuraginomiya_kaigi2.jpg" time=50 wait=true]
[wait time=10]
[eval exp="f.haikei_credit=''"]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
*seen3
――数日後。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】冬支度
[playbgm storage="kanasige_koto_fuyujitaku.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_koto_fuyujitaku.ogg'"]
[endif]

;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
;メッセージレイヤを会話窓用に設定変更
;[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[イベントシーン構築ボタン無し版枠茶色]
;【背景】ttps://www.flickr.com/photos/28752865@N08/5741972861/
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[葛城宮ベース軍服]
[葛城宮真剣]
[freeimage layer = 29 time=1000]
[wait time=1000]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[cm]
[メッセージウィンドウ上ボタン表示]
;==========================スクリプト・全画面表示からの復帰準備========================================
*seen4
;【SE】ドアノック音(トントン)
[playse storage=door-knock.ogg loop=false ]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮伏目パチ1回]
「どうぞお入り下さい」[p]

[whosay name="？？？" color=%mp.color]
「圧力をかけて内々に呼び出し、お揃いで私に何の御用でしょうか」[p]

#
今原中将以下、懲役刑となったものから、自分は唆されたのだと、彼の名を出した者もいる。[p]
彼は追い詰められていた。[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮真剣]
「柏木元大将、戦争の準備を始める貴方に自首を進めようと思いました。[r]
[sp]貴方が行おうとしていることは法に触れることです」[p]

#
彼は無表情で言った。[p]

[whosay name="柏木元大将" color=%mp.color]
「ほう？ なんのことですかな？[sp]どんな証拠を以って私が法を[r]
[sp]犯したと？」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮眉怒り]
「収賄の証拠は挙がっています。 国を守るといいながら、貴方は不正が[r]
[sp]多いです」[p]

[whosay name="柏木元大将" color=%mp.color]
「それで？ でも私は正しい事をしているのですよ。[r]
[sp]国を守る為に第二、第三の私が出るでしょう」[p]

「失礼ながら貴方が思っているより、我が国の情勢は悪い」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮怒り]
「ですが武力を以って、他国を押さえつけ、[r]
[sp]民族の誇りを踏みにじっていい理由になりません！」[p]

[whosay name="柏木元大将" color=%mp.color]
[葛城宮口通常]
「強い国家を作る為です。[r]
[sp]なにも非道な支配をしようとはしていない。[r]
[sp]属国には学校を創設し、植林も植え洪水も少なくなるでしょうな」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮目閉じ]
「善政を敷けばいいという問題でもありません！[sp]どれほど反発を生むか[r]
[sp]おわかりでしょうか？」[p]

[whosay name="柏木元大将" color=%mp.color]
[葛城宮目通常]
「もちろん理解を得るつもりですよ」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮憂い]
「……戦争を正当化するための教育か」[p]

「貴方の計画の全貌を知って、恐ろしい気持ちになった」[p]

[whosay name="柏木元大将" color=%mp.color]
「それなら話は早い、[r]
[sp]属国を従え、国を豊かにする。 素晴らしいと思いませんか？」[p]
*seen5
;==========================================================================
;【背景】臣民教育 ﾚｲﾔｰ13に表示
;[bg method='crossfade' storage="../fgimage/bg/B4nFWraU42/katuragi_sisou.jpg" time=50 wait=true]
[image layer=13 x=0 y=0 storage="bg/B4nFWraU42/katuragi_sisou.jpg" time=1000 visible=true]
[wait time=1000]
[eval exp="f.haikei_credit='photo by ＠名無しさん１'"]
;==========================================================================
#
民族の宗教、言語、姓名を我が国と同化させ、臣民教育を徹底する。[p]
;つまりは？　我が国の支配を永続化し、属国に戦争の協力をさせる魂胆？[p]

それはどれだけの屈辱になるだろうか。[p]
;==========================================================================
;【背景】;背景ttps://www.flickr.com/photos/28752865@N08/5741972861/
;[bg method='crossfade' storage="../fgimage/bg/katuraginomiya_kaigi2.jpg" time=50 wait=true]
[eval exp="f.haikei_credit=''"]
;【背景】臣民教育 ﾚｲﾔｰ13に表示を消去
[freeimage layer=13 time=1000]
[wait time=1000]
[layopt layer=13 visible=true]
;==========================================================================
*seen6
[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮怒り]
「思いません。[r]
[sp]今上帝まで利用して軍事国家を作り上る気ですか？」[p]

[whosay name="柏木元大将" color=%mp.color]
「殿下とは気が合わないようだ。 帰らせてもらいます」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮真剣]
「今、貴方の自宅に警察が入ってます。　証拠も見つかるでしょう。[r]
[sp]そして証言もあります。入りなさい！」[p]

;【SE】ドアが開く
[playse storage=door_open.ogg loop=false ]

#
隣室から現れたのは一人の初老の男性。[p]

その人物は、柏木元大将の家令にあたる者だった。[p]

;【SE】椅子を引く（ガタッ）
[playse storage=isu_gata.ogg loop=false ]
[whosay name="柏木元大将" color=%mp.color]
「どうしてここにお前が！」[p]

;ここで人物紹介でもいい
;彼が驚くのも無理はなった。その者は柏木元大将の家令にあたる人物だった。

[whosay name="柏木家家令" color=%mp.color]
「旦那様が蟷螂団とも組み、反軍国主義の首相を暗殺する計画まで[r]
[sp]立てていることを黙ってみている訳にはまいりません」[p]


#
その場に居た者は表情を凍りつかせ柏木元大将を凝視した。[p]
;【SE】人々のざわめき（ザワザワ…屋内）
[playse storage=zawa_room.ogg loop=false ]

しばしの間をおいて、場にざわめきが広がっていく……。 [p]
;==========================================================================
;【背景】蟷螂団 ﾚｲﾔｰ13に表示
;[bg method='crossfade' storage="../fgimage/bg/B4nFWraU42/katuragi_kamakiri.jpg" time=50 wait=true]
[image layer=13 x=0 y=0 storage="bg/B4nFWraU42/katuragi_kamakiri.jpg" time=1000 visible=true]
[wait time=1000]
[eval exp="f.haikei_credit='illustration by ＠名無しさん１'"]
;==========================================================================
*seen7
#
蟷螂団は以前にも事件を起こしている。[r]
軍将校に働きかけクーデターを起こし、帝政を復活させようと[r]
した右翼団体だ。[p]

;==========================================================================
;【背景】;背景ttps://www.flickr.com/photos/28752865@N08/5741972861/
;[bg method='crossfade' storage="../fgimage/bg/katuraginomiya_kaigi2.jpg" time=50 wait=true]
[eval exp="f.haikei_credit=''"]
;【背景】蟷螂団 ﾚｲﾔｰ13に表示を消去
[freeimage layer=13 time=1000]
[wait time=1000]
[layopt layer=13 visible=true]
;==========================================================================
*seen8
[whosay name="将校" color=%mp.color]
「……蟷螂団！ 」[p]

[whosay name="上官大将" color=%mp.color]
「なんと首相を暗殺！」[p]

[whosay name="中将" color=%mp.color]
「まさか、そんなことを現実にしようとは……」[p]

;【SE】人々のざわめき（ザワザワ…屋内）
[playse storage=zawa_room.ogg loop=false ]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮目閉じ]
「お静かに！[r]
[sp]貴方は危険すぎる思想を持ち、ある程度の権力をお持ちだ。[r]
[sp]見過せません！」[p]

[whosay name="柏木元大将" color=%mp.color]
「お前に裏切られるとは思わなかった」[p]

#
茫然と柏木元大将が呟く。[p]
;==========================================================================
;【背景】治安維持法
[bg method='crossfade' storage="../fgimage/bg/B4nFWraU42/katuragi_chianijihou.jpg" time=1200 wait=true]
[eval exp="f.haikei_credit='font by　花園明朝体, designed by ＠名無しさん１'"]
;==========================================================================
*seen9
#
国体を変革することを目的として結社を組織したる者又は[r]
結社の役員其の他指導者たる任務に従事したる者は[r]
死刑又は無期もしくは五年以上の禁固刑。[p]
;（治安維持法より）
;==========================================================================
;【背景】;背景ttps://www.flickr.com/photos/28752865@N08/5741972861/
[bg method='crossfade' storage="../fgimage/bg/katuraginomiya_kaigi2.jpg" time=50 wait=true]
[eval exp="f.haikei_credit=''"]
;==========================================================================
*seen10
;【背景】治安維持法
[葛城宮怒り]
「帝政化と軍事化で国が栄えるなどと、愚かな考えを持ったものだ。[r]
[sp]柏木元大将を捕らえろ！」[p]

[whosay name="将校" color=%mp.color]
「は！」[p]

#
[葛城宮通常]
将校が柏木元大将を連行後、代わりに秘書が入ってきた。[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
「何かあったのか？」[p]

[whosay name="秘書" color=%mp.color]
「先ほど、国会で大蔵大臣が大きな失言をしました！[r]
[sp]首都を中心に大きな騒ぎと発展するやもしれません！」[p]
*seen11

*seen_end
[eval exp="sf.event_katuragi_11_4 = 1"]
[イベントシーン終了]
[イベントシーン終了４]

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

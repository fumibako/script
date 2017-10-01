;8回目イベント　
=======================お芝居の準備中です==================================
*replay_katuraginomiya_1_3
[stopbgm]
[call target=*1_3 storage="katuraginomiya/preload_katuraginomiya.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸 庭の見える部屋：昼
[bg method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50 wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[主人公憂い]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

[主人公伏目パチ1回]
[主人公口通常]
;【立ち絵】主人公 真剣
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[whosay name=磯野 color="dimgray"]
「お嬢様そんなにラヂオの前で、じっと待たれてても[r]
[sp]殿下の演説まで、まだ、あと[ruby text=いち]一時間もありますよ」[p]

;【立ち絵】主人公　ため息
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
「ほかの事に手を付けられないんですもの」[p]
[主人公口通常]
（殿下の一番大切な時で、きっと重要な演説になるわ）[p]

[whosay name=磯野 color="dimgray"]
「相変わらず、葛城宮殿下からお手紙が来ませんが」[p]
#
磯野は不満げだ。[r]
やはり、音沙汰なしというのは、皆、不安になる。[p]

;【立ち絵】主人公　憂い
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ」[p]
[主人公眉下げ下]
[主人公目閉じ]
（私に不安はないわ。[r]
[sp]事態も悪化したけれど、殿下を信じていられる）[p]

;【立ち絵】主人公　伏目
[主人公伏目]
[主人公口ほほえみ]
[主人公眉下げ下]
「でもお手紙が来なくても、殿下の想いが何となくわかります。[r]
[sp]以心伝心というのかしら」[p]

[whosay name=磯野 color="dimgray"]
「お嬢様が、信じてらっしゃるなら私も従うだけです」[p]

;【立ち絵】主人公　微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ありがとう」[p]
;==================================幕間==================================================
#
;機能ボタン非表示
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
;メッセージレイヤを全画面用に設定変更
;[position left=200 width=700 height=530 top=110 page=fore margint="50" opacity=0]
;放送局前 をいれた方がいいのでは？
[image layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/housoukyoku.jpg" time=1500 visible=true]
[wait time=1500]
;クレジット表示
[mtext text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[主人公退場]
;【背景】放送局
[bg method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/housoukyoku.jpg" time=50 wait=true]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;ラジオ放送局
[イベントシーン構築ボタン無し版枠茶色]
[葛城宮ベース軍服]
[葛城宮微笑み]
[freeimage layer=29 time=300]
[wait time=300]
;画面表示もどる
[メッセージウィンドウ上ボタン表示]
;機能ボタン表示
[layopt layer=message0 visible=true]
[eval exp="sf.FButton='ON'"]
[メッセージウィンドウ上ボタン表示]
;================================幕間おわり====================================================
;幕間に設定済
;【立ち絵】葛城宮　ほほえみ
[whosay name="葛城宮　晴仁" color=%mp.color]
「……」[p]
（彼女には、励まされた。 どれほど感謝しても足りないぐらいだ）[p]
[葛城宮伏目パチ1回]
（ずっと私を信じて手紙をくれた……）[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
[手紙主人公]
[font color=navy size=21]
葛城宮　晴仁殿下へ[l][r]
[r]
[sp]　初春の光さやけく折、[r]
どうしても殿下にお手紙を出したく筆を取りました。[r]
[r]
[sp]今朝の新聞を読み、殿下の働きが徒労に終わった事を[r]
残念に思います。[r]
[r]
[sp]日々新聞に目を通し、沢山の洋書を読みながら[r]
私は、殿下のことを想っておりました。[p]

[sp]前内閣はデモクラシーという民主化運動を推進し、[r]
普通選挙制度や男女平等、ストライキ権、自由教育の獲得に[r]
着手しようとした殿下の考えに最も近い思想を持った[r]
内閣でもあり、今殿下は、深く失望しておられるでしょう。[r]
[r]
[sp]ですが、殿下は、ここで折られる方でありません。[r]
[sp]私は、殿下を信じております。[p]
[sp]どうか信じた道を突き進んでください。[r]
[r]
[sp]またどうかお体を大切になさってくださいね。[r]
[sp]ひと月前も少しおやつれになっていらっしゃいました。[r]
[r]
[sp]心から殿下のことを祈っております。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　[名字][名前][p]
[手紙読了]
[resetfont]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[whosay name="侍従" color=%mp.color]
「何を読まれているんですか？　演説用のメモには見えませんが」[p]
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


[葛城宮目閉じ]
;【立ち絵】葛城宮　微笑み
[whosay name="葛城宮　晴仁" color=%mp.color]
「演説の内容はもう頭に入っている。 これは我が婚約者殿からの手紙だ」[p]
[葛城宮眉下げ]
[葛城宮目伏]
（あなたのためなら強くなれる……か）[p]

;【立ち絵】葛城宮　伏目
[葛城宮真剣]
[whosay name="葛城宮　晴仁" color=%mp.color]
（薔薇園での彼女を見て、私が守りたいだけの女性ではないと気付いた）[p]
[葛城宮目伏]
（彼女のためにもっと私も強くなろう）[p]

;【立ち絵】葛城宮　目閉じ
[葛城宮目閉じ]
[whosay name="葛城宮　晴仁" color=%mp.color]
（ただ反発を繰り返し、意見を述べるのではなく、[r]
[sp]周囲の者たちと調和しながら指導力を付けたい）[p]
;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】演説画像  [テキスト全画面白文字]裏で画面構成
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:演説画像
[image layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/enzetu.jpg" time=1000 visible=true]
[wait time=1500]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
;再配布状態になるのでクレジットを表示
[mtext name=ct text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
[葛城宮退場]
;裏で退場
[iscript]
$('.ct').remove();
[endscript]
;クレジットのみ消去
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50" opacity=0]
;【背景】主人公邸 庭の見える部屋：昼
[bg method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50 wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]　
;テキスト全画面
[font color=white size=27]
;暗くする
[iscript]
$('.29_fore').css({'filter':'brightness(0.5)','-webkit-filter':'brightness(0.5)','-moz-filter':'brightness(0.5)','-ms-filter':'brightness(0.5)'});
[endscript]
;==========================スクリプトここまで=========================================================
[sp]「ラジオをお聞きの国民の皆様方、[r]
此度の海軍高官の不祥事を私は誠に申し訳なく[r]
情けなく思っている。[r]
[sp]同じ海軍である私が発言するのは、[r]
不適切と思われる方もいるだろう」[p]

[sp]「だが同じ海軍出身の議員だからこそ[r]
[sp]私は発言し、国民の一人一人の方に[r]
[sp]この身に変えても二度とこのような事件は[r]
起こさせないそう誓おう」[p]

[sp]「我が国は列強諸国に不平等な条約を交わされ[r]
諸外国と対等な関係を築くために[r]
[sp]アジア圏での支配力を強めていった。[r]
[r]
[sp]しかし、その結果近隣諸国からの反発は強い。[r]
初代内閣総理大臣はその反発から暗殺され[r]
また欧米諸国との関係は悪化の一途をたどっている[r]
[r]
[sp]だが、軍事を増強して戦争に勝てばいいなどと[r]
そんな容易い問題ではない」[p]

「切迫した国際情勢から軍は必要であろう。[r]
[sp]だが、戦争を続ければ続けるほど、[r]
人の命は消え、[r]
勝ち続ければ勝ち続けるほど、[r]
孤立を深める結果になるだろう。[r]
[sp]ナポレオンの最後をみればわかることだ。[r]
[r]
[sp]国を豊かにするためには最大限に[r]
戦争を避け国を発展させるこが第一だと[r]
私は思っている」[p]

[sp]「世界は目まぐるしく近代化の道を進み[r]
我が国も例外ではない。[r]
[sp]列強の国と対等に交渉するためにも[r]
また国民の皆様方の協力と努力が必要である。[r]
[sp]産業を発展させ文化を豊かにしたい。[r]
[r]
[sp]そのためにも国民は平等に学び、また男女平等、[r]
女性の協力も必要なのである。[r]
[r]
[sp]我が党には成し遂げたいことがあり、[r]
[r]
[sp]その実現の為にも我々に力を貸して頂きたい！」[p]
[resetfont]

;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
;戻す
[iscript]
$('.29_fore').css({'filter':'brightness(1.0)','-webkit-filter':'brightness(1.0)','-moz-filter':'brightness(1.0)','-ms-filter':'brightness(1.0)'});
[endscript]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50" opacity=0]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[freeimage layer = 29 time=1000]
[wait time=1000]
[メッセージウィンドウ上ボタン表示]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
;==========================スクリプト・全画面表示からの復帰準備========================================
[主人公目パチ1回]
;【立ち絵】主人公 微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「力強い演説だったわ。　殿下はもうきっと大丈夫ね」[p]

[whosay name=磯野 color="dimgray"]
「ええ、左様でございますね」[p]

;==========================スクリプト担当=====================================================
*seen_end
[eval exp="sf.event_katuragi_1_3 = 1"]
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

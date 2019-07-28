;=============================================
;葛城宮ルート2月2週から3月４週の間に散策イベント１
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*sansaku storage="katuraginomiya/preload_katuraginomiya.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】町並み
[bg method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50  wait=true]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
#
町は今日も賑やかな様子を見せている。[r]
私は見知った姿を目にして声を掛けた。
[autosave改]
[p]

[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[if exp="tf.test_gamen == true"]
テストページから開始しています。シナリオ終点にjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=200 top=100 left=380 opacity=0]
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
jumpします。[p]
[cm]
@jump target=*seen_end1
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
最初からはじめます。[p]
[cm]
[endif]


;【立ち絵】主人公ほほえみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「お久しぶりです時子さん！ お元気でしたか？」[p]

[whosay name="三宮時子"]
「[名前]さん、お久しぶりですね。 [名前]さんこそ、お元気でしたか？[r]
[sp]政界でもひと悶着あって心配しておりましたのよ」[p]

;【立ち絵】主人公ほほえみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
[主人公眉下げ下]
[主人公口ほほえみ]
「御心配をありがとうございます。[r]
[sp]確かに色々ありましたが、殿下は貴族院で[r]
[sp]忙しくしていらっしゃる様です」[p]

[whosay name="三宮時子" ]
「[名前]さん、[r]
[sp]あれから葛城宮殿下とお会いになりましたか？」[p]

;【立ち絵】主人公通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、お会いしましたけれど、どうかしましたか？」[p]

[whosay name="三宮時子" ]
「いえ、[r]
[sp]葛城宮殿下が少し変わったと宮中でもっぱらの噂ですのよ。[r]
[sp]あの政界の一件から少しやつれて、 [ruby text="せい"]精[ruby text="かん"]悍になり、大人になったと」[p]

;【立ち絵】主人公目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「そうなのでしょうね」[p]

[whosay name="三宮時子" ]
「[名前]さん、わかっておられませんね。[r]
[sp]皇族は複数妃を持ってもおかしくはありませんのよ」[p]

「先帝も複数の妃がいらっしゃったし、[r]
[sp]女官たちが葛城宮殿下に[ruby text=しゅう]秋[ruby text=は]波を送っているとか」[p]

;【立ち絵】主人公困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「……殿下は女官に手を出したりしませんわ」[p]
（確かに、おもてになるでしょうけど）[p]

[whosay name="三宮時子" ]
「殿下は心配ないと思いますが、[r]
[sp]女官たちが[名前]さんに当たったりしないか[r]
[sp]思いやられますわ」[p]

;【立ち絵】主人公困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「……」[p]

[whosay name="三宮時子" ]
「やはり不安でしょうね[r]
[sp]ねえ、[名前]さん 私、貴方の侍女になりましょうか？」[p]

;【立ち絵】主人公驚
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「え！[r]
[sp]時子さん、またどうしてそんな事を？」[p]

[whosay name="三宮時子" ]
「[名前]さんが心配ですし、お父様に勧められているけれど[r]
[sp]まだ私は縁談を受ける気はありませんの」[p]

;【立ち絵】主人公驚
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「でも家格は私より時子さんの方が上ですし、[r]
[sp]時子さんの家族の方は、了承して下さらないんじゃ……」[p]

[whosay name="三宮時子" ]
「親王妃になれば[名前]さんの方が、地位は上です。[r]
[sp]私が家族を説得できないと思いますの？」[p]

#
時子さんは自信ありげにクスッと笑う。[r]
それがとても心強い。[p]

そして時子さんは、ためらいがちに言った。
[autosave改]
[p]

[whosay name="三宮時子" ]
「それに私にもお慕いする方が……」[p]

#
時子さんは目を伏せていて少し頬が赤い。[r]
その様子が可愛らしかった。[p]


;【立ち絵】主人公目伏せ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
[主人公口通常]
「もしかして時子さんも、想う方がいらっしゃるの？」[p]

[whosay name="三宮時子" ]
「……ええ、叶わなくとも、[r]
[sp]今はこの気持ちを曲げて縁談を受けたくないのです」[p]

#
憂いげに時子さんはうなずいた。[r]
時子さんの恋も障害があるのかもしれない。[p]

;四行直せない
[whosay name="三宮時子" ]
「私はそろそろ家に戻らなければなりません、[r]
[sp][名前]さん、またお話ししましょう。[sp]ごきげんよう」[p]

;【立ち絵】主人公目伏せ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ええ、ごきげんよう」[p]

（次の機会に聞けるかしら）[p]
*seen_end1
[wait time=50]
[eval exp="f.event_machi_katuraginomiya[1]=1"]
[wait time=50]
[eval exp="sf.event_katuragi_sansaku1 = 1"]
[wait time=50]

;↓散策イベント終了時については、気力回復と共に主人公のコメントを入れたい場合は[イベントシーン終了]の前に[イベントシーン終了２]を置き、コメント無しの方が合いそうな場合は逆の順に置くと良さそうです(スクリプト担
[イベントシーン終了]
;このイベントについては、コメント無しの方が合いそうなため[イベントシーン終了]を先にしてみました
[イベントシーン終了２]
@jump storage="test_katuragi.ks"
[s]

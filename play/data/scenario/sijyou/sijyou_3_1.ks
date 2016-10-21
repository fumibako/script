条件:華織の迷いのイベントを一つでも見ている　【全力】の手紙をよんだ後日 夜
;主人公庭夜
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
;華織様のことを思う主人公。
棚引く雲の中から、満ちたりた月の輝きが現れる[r]
今日ほど、春の夜を一番美しいと感じた日はないかもしれない。[p]
;季節は変えておけばいいです
私は筆をとる[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織さま……手紙、読ませていただきました。[r]
[sp]華織様から頂いた手紙からは、霧が晴れたような明るい気持ちが伝わってきました。）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様は、華道競合会にて大賞受賞されて、どのようにご活躍していらっしゃるのでしょうか？）
[p]
#
私は手紙をもう一度、開いた。[p]
;～～～～～～選択肢～～～～～
[chara_mod name="bg" storage="bg/plane_sakura.jpg" time=100]
[eval exp="f.haikei_credit=''"]
[position layer=message1 height=160 top=100 left=280 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
[link target=*see_fumi]手紙をじっくり読み返した。[endlink]
[link target=*not_fumi]手紙を眺める。(スキップ)[endlink]
[resetfont]
[s]
;～～～～～～選択肢おわり～～～～～
*see_fumi
#
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[cm]
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
私は、手紙をじっくり読み返した。[p]

[手紙四条 fumi_number=]
[名前]さんへ[r]
[r]
メジロが庭の桜の蜜をあつめており、心穏やかにさせてくれます。[r]
[名前]さんは、お変わりなくお元気でしょうか？[r]
[r]
さて、この度、四条華織は、[名前]のお約束とおり、[r]
祖母の開いた華道競合会にて大賞受賞を果たしました。[r]
場所が場所だけに七光りと思われがちですが、[r]
祖父にも、来ていただいた方にも心にくる華だと褒めていただき[r]
ました。[p]
もう、何も迷うこともない。[r]
だから今、全力で自分を使って色々な場所で活躍していきます。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]
;共通1へ
@jump target=*common1
～～～～～～～～～～選択２～～～～～～～～～～～～～～
*not_fumi
#
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[cm]
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
;横においてさらりと眺める
私は、机に置いてある、手紙を眺めた。[p]
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;～～～～～～～共通1～～～～～～～
*common1
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ふぅ……お兄様から、華織様は家業上、初冬から春にかけて、お忙しいとお聞きしていますが……）[p]
;春はどうだろう。冬は忙しいはず。クリスマスと正月は花屋は忙しい
[whosay name=&sf.girl_namae color="#cf5a7f"]
(やっぱり、こういう時はお傍について、喜びを共にしたいです）[p]
;主人公横目　ポーズ指
[whosay name=&sf.girl_namae color="#cf5a7f"]
（磯野に頼んで行ってみようかしら？）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ですが、殿方のお仕事が忙しい時に会いに行っても迷惑ではないでしょうか？）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（いえ、そもそも……）[p]
;うんうん
#
あの寂しい夜とはうってかわって私は、幸せな悩みを抱えて眠ってしまった。[p]
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
;ちゅんちゅんSE
[if exp="f.para_shujinkou_shukujodo >= 200"]
;～～～～～～～淑女度高い～～～～～
;磯野が四条の手紙をもってきて、返事がなく、心配して呼びかけるが、すぐに起きて返事をする主人公
[whosay name="磯野" color="dimgray"]
「お嬢様？」[p]
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（!……磯野の声だわ。　
;主人公ふぅ　主人公頬染
私、こんな場所で寝てしまったのね）[p]
;SE布音
[whosay name="磯野" color="dimgray"]
「お嬢様、今はお休みでしたか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;通常顔でおすまし
「磯野、起きています。　入って頂戴」[p]
私は素早く身だしなみを整えると、いつも通りに整然と筆をとった姿勢で磯野を迎えいれた。[p]
[whosay name="磯野" color="dimgray"]
「失礼します」[p]
;SE襖
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、丁度、あなたにお願いしたいことが……」[p]
;共通２にジャンプ
[else]
;～～～～～～～～淑女度ひくい～～～～～～～～
;磯野が四条の手紙をもってきて、返事がなく、心配して部屋をみるとそこには机に突っ伏して寝てしまった主人公がいた
[whosay name="？？？" color="dimgray"]
「お……様……？」[p]
[whosay name="磯野" color="dimgray"]
「お嬢様！ 大丈夫ですか？！」[p]
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？　う……ん……
;SE布音
あら、磯野……？][p]
[whosay name="磯野" color="dimgray"]
「あぁ、机の上で寝てしまったのですね……勝手に入って申し訳ございません」[p]
[whosay name="磯野" color="dimgray"]
「返事がなく、心配して部屋の様子を見てしまいましたら、[r]
机の上に倒れているお嬢様を見つけていまい、慌てていましました……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「もう！　大丈夫よ！　ちょっと、眠ってただけですわ」[p]
[whosay name="磯野" color="dimgray"]
「お嬢様。お言葉ですが、四条様との結納前の大事な時期です、[r]
[sp]お風邪を召されませんようにお気をつけくださいませ」[p]
#
安堵の表情を浮かべた磯野は、私の丈夫な様子をみるなり、お説教を始めだした。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そ、それより、丁度、あなたにお願いしたいことが……」[p]
[endif]

;～～～～～～～共通２～～～～～～～
*common2
;言うまでもなく磯野は手紙をもってきていた...四条の手紙には華道展の切符（チケット）が。　
;自身は早朝から会場の設営で身動きできず、迎えにいけませんが……[名前]さんが、よろしければ、御家族もご一緒に是非見に来てください　
[whosay name="磯野" color="dimgray"]
「お嬢様のお願いは、こちらのことでしょうか？」
#
磯野は私が全てを伝えるまでもなく、彼の人の手紙をもってきていた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様の手紙だわ！)[p]
#
その手紙の上には、品の良い押し花と和紙で作られた華道展の切符（チケット）が、
添えられており、磯野は私の笑顔を見ると、つられたかの様に共に微笑んだ。

;～～～～～～～～淑女度ひくい～～～～～～～～
[if exp="f.para_shujinkou_shukujodo , 200"]
;勘がいい磯野に感づかれ、恥ずかしくなった私は、冗談で返事をした。
[whosay name=&sf.girl_namae color="#cf5a7f"]
「もう、磯野って、たまに、いぢわるね！ 」[p]
;年寄の磯野の楽しみだと冗談をいう
[whosay name="磯野" color="dimgray"]
「申し訳ありません、お嬢様。[r]
[sp]この老僕、磯野、 お嬢様の嬉しいお顔を見させていただくことが、[r]
[r]唯一の生きる励みでございまして」[p]
#
私が冗談めいて、勘のいい磯野をせっつくと、[r]
磯野も同じように冗談を交えながらも、私に手紙と切符(チケット)を手渡した。[p]
;共通３へ飛ぶ
@jump target=*common3
[else]
;～～～～～～～淑女度高い～～～～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、磯野。こちらは、いつ届きましたの？」[p]
[whosay name="磯野" color="dimgray"]
「昨晩、旦那様宛に届き、その中にお嬢様宛の手紙が含まれおりました」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「え？ そうなのですか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(お父様宛に？ どうしてかしら？  )[p]
[whosay name="磯野" color="dimgray"]
「すぐにお届けせず、申し訳ありません。[r]
[sp]奥方となられる方のお部屋に夜分遅く訪ねるわけにもいかず、[r]
[sp]この不肖、磯野、今お持ちした次第でございます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(奥方となられる方……そうだわ……私、華織様ともう直ぐ……)[p]
#
 私は、先ほどの疑問も忘れ、その言葉に顔を赤らめてしまった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そ、そうなのですね。配慮をありがとう。[r]
[sp]早速、 読ませて頂くわ」[p]
[whosay name="磯野" color="dimgray"]
「はい。 では、下がらせていただきます。失礼しました」[p]
[endif]
;～～～～～～～共通3～～～～～～～
*common3
#
部屋から下がる磯野は、何となく微笑んでいるような気がしたが、[r]
;が→けれど？
それより私は華織様の手紙のことが気になり、その事は寛容にも見逃してしまった。[p]

[手紙四条 fumi_number=]
[名前]へ[r]
[r]
お変わりなく、お元気でしょうか[r]
;挨拶わからん
気持ちの高まりのまま、名前さんからの返事も待たず、[r]
矢継ぎ早に手紙を出して申し訳ありません。[r]
[r]
先日の手紙にお伝えした通り、華道競合展で大賞を果たしました。[r]
そのおかげで、他の先生方からの勧めもあり、来週に四条華道展を行うことなりました。[r]
もちろん、華道競合展で、大賞を得た作品も出す予定です。[r]
[r]
[名前]さんが、よろしければ、迎えの者を向わせますので、御家族も、ご一緒に来場ください。
[r]
その際に改めて、四条家と[苗字]家と会食を設けようと考えております。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]
;一方的だなぁ〜

;～後日～　という流れで主人公達は出かけようとすると玄関先には文也も待っていた。
;父は知っていた様子。驚く主人公、結納が終わるまでの少しの間、有能な家令に任せてお休みをいただいたようだ
;家族総出で四条華道展にいく。色とりどりの生け花に目を見張る主人公
;華道のパラが高いと　私も出してみようかしらと思う
;華織の演説をきいてほっとする主人公　
;転
;華織、壇上での演説後、祖父母とともに鷹司家に挨拶し、先日は文乃さんのお陰で助かりましたという
;父「華織君、君は年末にわざわざ私に会いにきてくれて話をしてくれたね]
;お正月の手紙のことを思い出す主人公
;父「私は、そんな君のとても正直で清廉な君に感銘を受けている。やはり、昔から付き添っていただけある。
;娘を任せる人は君しかないようだ」とほめる

;華道展から食事の流れ思いつかない　終わりまで家族を待たせるわけにもいかないし


;華織が用意した食事の場で、その後、四条家と鷹司家で食事する
;再度,ご迷惑をおかけしたことを詫びる四条家
;これからもよろしくお願いできるかきいてくる 
;父は主人公に華織くんのことを尋ねた後、もちろんといって乾杯する。
;文也もよかったねという
;四条兄弟との顔合わせで華織はひやひやする　兄は顔もよくお世辞がうまい　弟はぶっきらぼう（まだいい）　妹は小心で夢見がち
;結
;食事の後。二人になる　夕方
;個性的な兄弟の話をして、心配する華織。主人公は兄弟を好意的に評する
;まだまだ未熟な華道と、賑やかな家族、それが僕の持っているすべて。
;こんな僕の傍にいてくれてありがとう、君のおかげでもう一歩先に進める　という
;あれがアルタイル～ベガ♪夏の大三角形？
;これからは、手紙の代わりに　花で君に恋を綴るという
;エピローグの回収↑
;いい感じになって見つめ合う二人。
;華妹が華衣と喧嘩しだしたので戻るふたり　爽やか！
;文矢が華織に話しかけ、これからも妹のことをよろしく。もう泣かしたらダメだよというと、華織は決意して了承し、
;文也に会わせてくれてありがとう、君という友人がいて本当に幸せだ　という
;テーマ、結び言葉をいっておしまい　（まだ決まってない）
;¥¥¥¥¥¥¥¥イベント5おわり¥¥¥¥¥¥¥¥
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
@jump storage="test_sijyou.ks"
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

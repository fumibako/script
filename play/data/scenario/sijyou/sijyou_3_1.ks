;条件:華織の迷いのイベントを一つでも見ている　【全力】の手紙をよんだ後日 夜
;主人公庭夜
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
;～～～～～～～～～～～～～～～～～～前章シーンここから～～～～～～～～～～～～～～～～
[主人公ポーズ通常]
[主人公通常]
;華織様のことを思う主人公。
;地の文案2
;棚引く雲の中、眩い月の光と影が揺れる。[r]
;地の文案1
棚引く雲の中から、満ち足りた月の輝きが現れる。[p]
;今日ほど、春の夜を一番美しいと感じた日はないかもしれない。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】星降る夜に（思い出/夢見るシーンに
[playbgm storage="yumemiru_hoshi.ogg" loop=true]
[eval exp="f.bgm_storage='yumemiru_hoshi.ogg'"]
[endif]
[主人公目閉じ]
;【SE】ペンで書く
[playse storage=pen_write.ogg loop=false ]
私は、彼の人を想い、筆をとる。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織さま……手紙、読ませていただきました。[r]
[sp]華道競合会にて大賞受賞されて、私も嬉しくおもいます）[r]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（今は、どのようにご活躍して、いらっしゃるのでしょうか？）[p]
#
私は手紙をもう一度、開いた。[p]
;～～～～～～選択肢～～～～～
[chara_mod name="bg" storage="bg/plane_sakura.jpg" time=100]
[eval exp="f.haikei_credit=''"]
[position layer=message1 height=160 top=100 left=280 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
[link target=*see_fumi]手紙をじっくり読み返した。[endlink][r]
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
;～～～～～～～～～～手紙１～～～～～～～～～～～～～～
[手紙四条 fumi_number=]
*fumi_in1
[er]
[名前]さんへ[r]
[r]
メジロが庭の桜の蜜をあつめており、心穏やかにさせてくれます。[r]
[名前]さんは、お変わりなくお元気でしょうか？[r]
[r]
さて、この度、四条華織は、[名前]のお約束とおり、[r]
祖母の開いた華道競合会にて大賞受賞を果たしました。[r]
場所が場所だけに七光りと思われがちですが、[r]
祖父にも、来ていただいた方にも心にくる華だと褒めていただき[r]
ました。[r]
[sp]                                      [font size=5]1/2[resetfont][r]
もう、何も迷うこともない。[r]
だから今、全力で自分を使って色々な場所で活躍していきます。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[link target=fumi_in1][sp]　　　　　　　　　　　　　　　　　　　　　　　　[font size=5]2/2[resetfont]
[endlink][r]
[link target=fumi_in1][sp]　　　　　　　　　　　　　　　　　　　　　　　　[font size=5](閉)[resetfont]
[endlink][r]
[s]
[手紙四条読了 fumi_number=]
;共通1へ
@jump target=common1
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
;～～～～～～～共通1～～～～～～～
*common1
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公ポーズ通常]
[主人公目閉じ]
#
―― 華織様から頂いた手紙からは、霧が晴れたような明るい気持ちが伝わってくる。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
（ふぅ……お兄様から、華織様は家業上、初冬から春にかけて、[r]
[sp]お忙しいとお聞きしておりますが……）[p]
;春はどうだろう開店祝いとか。冬は忙しいはず。クリスマスと正月は花屋は忙しい
;胸に手を当てるポーズがあったらいいな
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
(やはり、こういった時は、お傍について、喜びを共にしたいです）[p]
[主人公ポーズ指]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横目]
（磯野に頼んで行ってみようかしら？）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
（ですが、お仕事が忙しい時に会いに行ったら、迷惑では、ないでしょうか？）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
（いえ、そもそも……）[p]
;うんうんと考える
#
あの寂しい夜とはうってかわって私は、幸せな悩みを抱えて眠ってしまった。[p]
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
;ちゅんちゅんSE　ここでは、目白かな
;【SE】メジロ（ピィピュイ）
[playse storage=tori_mejiro.ogg loop=false ]
[if exp="f.para_shujinkou_shukujodo >= 200"]
;～～～～～～～淑女度高い～～～～～
;磯野が四条の手紙をもってきて、返事がなく、心配して呼びかけるが、すぐに起きて返事をする主人公
[whosay name="磯野" color="dimgray"]
「お嬢様？」[p]
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公伏目]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（!……磯野の声だわ。
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[主人公ふぅ閉]
私、こんな場所で寝てしまったのね）[p]
;SE布音
;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]
[whosay name="磯野" color="dimgray"]
「お嬢様、今はお休みでしたか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「磯野、起きています。　入って頂戴」[p]
私は素早く身だしなみを整えると、いつも通りに整然と筆をとった姿勢で磯野を迎えいれた。[p]
;SE襖
;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]
[whosay name="磯野" color="dimgray"]
「失礼します」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、丁度、あなたにお願いしたいことが……」[p]
;共通２にジャンプ
[else]
;～～～～～～～～淑女度ひくい～～～～～～～～
;磯野が四条の手紙をもってきて、返事がなく、心配して部屋をみるとそこには机に突っ伏して寝てしまった主人公がいた
[whosay name="？？？" color="dimgray"]
「お……様……？」[p]
;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]
[whosay name="磯野" color="dimgray"]
「お嬢様！ 大丈夫ですか？！」[p]
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公伏目]
「？　う……ん……
;SE布音
;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]
[主人公ポーズ片手]
[主人公通常]
あら、磯野……？][p]
[whosay name="磯野" color="dimgray"]
「あぁ、机の上で寝てしまったのですね……勝手に入って申し訳ございません」[p]
[whosay name="磯野" color="dimgray"]
「返事がなく、心配して部屋の様子を見てしまいましたら、[r]
机の上に倒れているお嬢様を見つけていまい、慌てていましました……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
「もう！　大丈夫よ！　ちょっと、眠ってただけですわ」[p]
[whosay name="磯野" color="dimgray"]
「お嬢様。お言葉ですが、四条華織様との結納前。とても大事な時期です、[r]
[sp]お風邪を召されませんようにお気をつけくださりませ」[p]
#
安堵の表情を浮かべた磯野は、私の丈夫な様子をみるなり、お説教を始めだした。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そ、それより、丁度、あなたにお願いしたいことが……」[p]
[endif]

;～～～～～～～共通２～～～～～～～
*common2
;説明：言うまでもなく磯野は手紙をもってきていた...四条の手紙には華道展の切符（チケット）が。
;説明：自身は早朝から会場の設営で身動きできず、迎えにいけませんが[名前]さんが、よろしければ、御家族もご一緒に是非見に来てください
[whosay name="磯野" color="dimgray"]
「お嬢様のお願いは、こちらのことでしょうか？」[p]
#
磯野は私が全てを伝えるまでもなく、彼の人の手紙をもってきていた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様の手紙だわ！)[p]
#
その手紙の上には、品の良い押し花と和紙で作られた華道展のチケットが、[r]
添えられいた。[p]
;～～～～～～～～淑女度ひくい～～～～～～～～
[if exp="f.para_shujinkou_shukujodo<200"]
[whosay name="磯野" color="dimgray"]
「お嬢様のお目覚めには、適された文でしょうか？」[p]
磯野は、明るい私を見守るように微笑む。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「もう、磯野って、たまに、いぢわるね！ 」[p]
#
勘が良い磯野に感づかれ、恥ずかしくなった私は、冗談で返事をした。[p]
;なんで？って思う層に説明↑
;年寄の磯野の楽しみだと冗談をいう
[whosay name="磯野" color="dimgray"]
「申し訳ありません、お嬢様。[r]
[sp]この老僕、磯野、 お嬢様の喜ぶお顔を見させていただくことが、[r]
[sp]唯一の生きる励みでございまして」[p]
#
私が冗談めいて、勘のいい磯野をせっつくと、[r]
磯野も同じように冗談を交えながらも、私に手紙とチケットを手渡した。[p]
;共通３へ飛ぶ
@jump target=common3
[else]
;～～～～～～～淑女度高い～～～～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、磯野。こちらは、いつ届いたのかしら？」[p]
[whosay name="磯野" color="dimgray"]
「昨晩、旦那様宛に届き、その中にお嬢様宛の手紙が含まれおりました」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「え？ そうなのですか？」[p]
;説明：プレイヤー同調と説明
[whosay name=&sf.girl_namae color="#cf5a7f"]
(お父様宛に？ どうしてかしら？ )[p]
;説明：後の話の伏線１↑↓説明
[whosay name="磯野" color="dimgray"]
「すぐにお届けせず、申し訳ありません。[r]
[sp]奥方となられる方のお部屋に夜分遅く訪ねるわけにもいかず、[r]
[sp]この不肖、磯野、今お持ちした次第でございます」[p]
;説明：現在の状況説明と糖度の平均化↓↑
[whosay name=&sf.girl_namae color="#cf5a7f"]
(奥方となられる方……そうだわ……私、華織様と、もうすぐ……)[p]
#
私は、先ほどの疑問も忘れ、その言葉に顔を赤らめてしまった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そ、そうなのですね。配慮をありがとう。[r]
[sp]早速、 読ませて頂くわ」[p]
[whosay name="磯野" color="dimgray"]
「はい。 では、下がらせていただきます。[r]
[sp]失礼しました」[p]
[endif]
;～～～～～～～共通3～～～～～～～
*common3
;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]
[wait time=2]
#
部屋から下がる磯野は、何となく微笑んでいるような気がしたが、[r]
;が→けれど？
それより華織様の手紙のことが気になって、寛容にも見逃してしまった。[p]

;～～～～～～～～～～手紙2～～～～～～～～～～～～～～
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
[手紙四条 fumi_number=]
[名前]さんへ[r]
[r]
お変わりなく、お元気でしょうか[r]
;挨拶わからん
気持ちの高まりのまま、名前さんからの返事も待たず、[r]
矢継ぎ早に手紙を出して申し訳ありません。[r]
[r]
先日の手紙にお伝えした通り、華道競合展で大賞を果たしました。[r]
そのおかげで、他の先生方からの勧めもあり、来週に四条華道展を行うことなりました。[r]
もちろん、華道競合展で、大賞を得た作品も出す予定です。[p]
[r]
[名前]さんが、よろしければ、迎えの者を向わせますので、御家族も、ご一緒に来場ください。
[r]
その際に改めて、四条家と[苗字]家と会食を設けようと考えております。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]
;～～～～～～～～～～手紙2おわり～～～～～～～～～～～～～～
;一方的だなぁ〜感じの良いBGM鳴っていれば気にならない？
華織様のいつもの美しい細い筆跡は、慌てて書かれたような、墨跡が残されている。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様、お忙しい中、いそいでお誘いしてくれたのですね)[p]
華織様は、私のために兄のような大人らしい立ち振る舞いをして下さる。[r]
なのに、時折、素の素朴な想いが見え隠れする。[p]
;セリフを挟む
[whosay name=&sf.girl_namae color="#cf5a7f"]
;笑顔
（そんなに慌てなくても、大丈夫ですわ。　[r]
[sp]家族まで誘って下さって、ありがとうございます）[p]
#
私は、お付き合いを重ねてみえてくる、また違った華織様の温かい人柄に心が和んだ。[p]
心に咲き誇る恋夢にうたた寝をすると、庭木の上でメジロが愛らしく鳴いた。[p]
;暖かい陽気で、まだ少し眠いよ！ということでもあり。あやしうほどものぐるおしけれ、みたいな。
;～～～～～～～～～～～～～～～～～～前章シーンおわり～～～～～～～～～～～～～～～～
;テキスト全面表示
[テキスト全画面白文字]
;一時的に行間多く
[iscript]
tyrano.plugin.kag.config.defaultLineSpacing = '15';
[endscript]
[sp]――後日。[r]
[sp]庭の沈丁花が香る昼過ぎ。
[sp]父と私は、華織様にお誘いを頂いた四条華道展に向かう為の準備をしていた。[p]
;ジンチョウゲ。花言葉は栄光、不滅、永遠。香水として使われる
[iscript]
tyrano.plugin.kag.config.defaultLineSpacing = '6';
[endscript]
[イベントシーン構築]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]、そろそろ準備はできたかね？」[p]
;～～～～～～～～淑女度低い～～～～～～～～
[if exp="f.para_shujinkou_shukujodo<200"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。大丈夫です！」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「うむ。今日も元気そうで何より」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父様、早く、行きましょう！」[p]
父「急かなくても大丈夫。
[名前]も、好きな人のこととなると、せっかちになるのだな」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まぁ、お父様。 私を誰と、お比べなのですか？」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「こっちに来くれば、わかるだろう」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(どなたかお待ちなのかしら？ [r]
華織様は会場にいらっしゃると思いますし……誰かしら？)[p]
はやる気持ちのまま、父の後ろをついて歩いた。[p]
;～～～～～～～～淑女度高い～～～～～～～～～～
[else]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。準備は整えたつもりです」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いかがでしょうか？ 失礼はない様に少し控えめな着物にしましたが……」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
父「うむ。婚姻前の晴れ着としては、もう少し華やかでも構わない[r]
[sp]気もするが、今日は華道展であったな……その見立ては間違いない[r]
[sp]であろう」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとうございます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「では、向かおうか。先に待っている者がいるからな」[p]
(どなたかお待ちなのかしら？ [r]
華織様は会場にいらっしゃると思いますし……？)[p]
はやる気持ちを抑え、父の後ろをついて歩いた。[p]
[endif]
;～～～～～～～～～～共通４～～～～～～～～～～～～～～
*common4
父の後ろをついて、玄関先まで出てみると、兄、文也が待っていた。[p]
;父は知っていた様子。驚く主人公、結納が終わるまでの少しの間、有能な家令に任せてお休みをいただいたようだ
;家族総出で四条華道展にいく。色とりどりの生け花に目を見張る主人公
;華道のパラが高いと　私も出してみようかしらと思う
;華織の演説をきいてほっとする主人公
「今日は、四条華道展に来てくださってありがとうございます。
初日は昼までの展示ですが、皆様の目を楽しませることが出来たら幸いです」

壇上の華織様は、瑞々しい花々のように生き生きしていた。

;転
;華織、壇上での演説後、祖父母とともに鷹司家に挨拶し、先日は文乃さんのお陰で助かりましたという

華織「苗字様、先日は、文也さんと名前さんのお陰で助かりました。
ご子息、子女に、ご迷惑をおかけして申し訳ありませんでした」

文也「僕はちょっとだけ手を貸しただけだよ」
華織「文也、ありがとう」

父「華織君、君は年末にわざわざ私に会いにきてくれて話をしてくれたね][p]
華織「はい。事をお知らせする義務がございます」
文也「お陰で僕はちょっぴり怒られてしまったけどね」
華織「文也、ごめん」
文也「いや、それでいいんだ。それでこそ僕の友人だよ」

;お正月の手紙のことを思い出す主人公
[whosay name=&sf.girl_namae color="#cf5a7f"]
(そういえば、お正月のお手紙には、『君のお父様と会いました』と書いてありましたが)[p]
(そうですね。 自由にお出掛けを許してもらう事だけでは、ないですよね……)[p]

私は、お父様と共に華織様の透き通る瞳を見つめた。
父「私は、そんな君のとても清廉なところに感服した。
やはり、娘と昔から付き添っていただけある。
私もこそ、決まりとはいえ、引き離してすまない」[p]

華織
「いえ、苗字様。それもあってこそ、名前さんを強く想う今の自分があるのだと思います……」[p]

父
「今日、見せてもらった作品も、華やかさと調和を兼ねていて、他に類を見ない素晴らしさだった。
華織君、娘を任せる人は君しかないようだ」[p]

華織「……ありがとうございます」
華織様の透き通る瞳が、うっすらと滲む。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織さま……」
文也「華織、泣くには早すぎるよ。結納までにとっておきなよ」
華織「泣いてないよ。 文也こそ、結納の時に名前さんの事が寂しくなって泣かないように」
文也「ふふ。華織……変わったね」
昔のように。けれども、少し変化が訪れた友情の間に幸せな笑い声が溢れる。
[whosay name=&sf.girl_namae color="#cf5a7f"]
(もう。お兄様ったら……[r]
[sp]ですが、いつも、気を遣って頂いてありがとうございます)[p]
(やっぱり、私のお兄様は……尊敬できる素敵な兄です)[p]

;華道展から食事の流れ思いつかない　終わりまで家族を待たせるわけにもいかないし

華織が用意した食事の場で、その後、四条家と鷹司家で食事することとなった。

;再度,ご迷惑をおかけしたことを詫びる四条家
;これからもよろしくお願いできるかきいてくる

父「[名前]、聞くまでもないが、華織くんのことを選んで良かったかね？」[p]
「もう、お父様ったら……」[p]
[主人公目閉じ]
「……はい。華織を選んで、良かったと思います」[p]
父「娘がこう言うのだ。嫁ぐ娘を例え寂しくなったとしても、勿論と言わねば、父親として廃る。さぁ、未来の夫婦に祝杯を上げようではないか！」[p]
父の口上を起点に、晴れやかな空気が流れる。
私はもう一度、華織様と見つめ合った。[p]
文也「名前、よかったね」[p]

乾杯の音頭も終えたころ、華織が改めて、兄弟を紹介する。

華織「文也、[名前]さん。
渡仏(とふつ)やら留学中で紹介できてなかった兄弟を改めて、紹介するね……」[p]
文也(？ 華織、何か疲れてないか？)[p]

;四条兄弟との顔合わせで華織はひやひやする
華織「こちらが、僕の兄の一華」[p]
四条一華「長男の四条一華です。外交官をしており、普段は仏蘭西にいます。
それにしても、君のような美しい方が義妹になって嬉しいよ」[p]
「は、はい、よろしくお願いします」
一華様は、さすが、華織様の一つ上の兄らしく、華織様によく似ている。
ただし、雰囲気そのものは、華織様の素朴さを抜いた甘い仮面を纏う社交界の紳士のような人柄に見える[p]
華織「……」[p]
文也(あぁ、この方が華織の言っていた、お兄さんか)[p]

華織「ほら、[華衣]も挨拶して」[p]
華織様の横で、挨拶を始めたのは、[華衣]さんだった。[p]
見るからに慣れない場と、ばつの悪さで顔を下げていると言った様子で、見ているこちらも、もどかしくなりそうだった。[p]
華衣「こんにちは、また会ったな……」[p]
「こんにちは、元気にされてましたか？」[p]
華衣「まぁ。元気にしてた……[r]
……よろしく」[p]
うなづくように顔を下げると、兄に向き直し、驚くほど丁寧に挨拶を交わす。[p]
華衣「お義兄さん、華衣と申します。よろしくお願いします。 先日は[名前]さんにご迷惑おかけして申し訳ありませんでした」[p]
文也「いえいえ。華織、可愛い弟じゃないか」
華織「全く、不詳で……自慢の弟だよ」[p]
華衣「……」照れ
([華衣]さんの顔は、相変わらず、そっぽを向いているけど)
(もしかして、華衣さん、照れてるのかしら？)

華織「ほら、美華も挨拶なさい」[p]
四条美華「こ、こんにちは……末妹の美華と申します。ふ、普段は、聖白百合の寄宿舎にいます……華織お兄様から聞いて、是非、名前様にお会いしたかったです
今後とも、よろしくお願いします」

華織「……箱入り娘で、ごめんね」

;疲れた、難しい

;結
;食事の後。二人になる　夕方
;個性的な兄弟の話をして、心配する華織。主人公は兄弟を好意的に評する
お兄様に言われた私達は二人で庭へと出る。
後ろの室内からは、賑やかな声がする。
華織「ふぅ……」
「お疲れさまです」
華織「名前さん、ありがとう。
僕が言うのも、なんだけど、個性的な兄弟で、君も疲れたましたよね」

「いえ、兄弟が沢山いらっしゃって、驚きました」

華織「ふぅ。久しぶりに皆がそろったのは良かったのですが、かく次男とは、中間管理職のようなものなのか、ひしひしと感じましたよ」

〜〜〜〜淑女度低め〜〜〜〜
「面白い方達ですね」
華織「別宅に住むから、そこは安心してください……」
「ふふ。ですけど、華やかなお兄様方に囲まれて美華様は幸せでしょうね」[p]

〜〜〜〜〜〜淑女度高め〜〜〜〜
「華織様が、華織様であらせることに納得がいきました」
華織「そうですか？ 」

「ええ、一華様は、社交界の花形のような華やかさ持っていて、華織様はそんなお兄様に惹かれて、優しい華やかさをお持ちなられたのでしょう」

華織「確かに。僕は、有能な兄の事を尊敬してます。同時に乗り越えたい人でもありますね……」

「そんな華織様の弟様にあたる、華衣様は、華織様の素朴さをそのままに引き継がれたのですね」

華織「……華衣は、僕の悪いところを見破っていたのかもしれませんね……」
華織「今迄は、必要以上に甘やしすぎてたから、つかず離れず見守っていきたい……」

「華やかなお兄様方に囲まれて美華様は、幸せでしょうね」
〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜

華織「名前さん。君って人は、
時々、僕より大人びて見えますね……」[p]
「そ、そうでしょうか？」[p]
華織「ええ。まだ僕が、知り得てない君をもっと知りたい」
「そんな……私は今のままでも充分に、華織様に知って頂いてますわ[r]
[sp]ですから、華織様のことをもっと私に教えてください」
;しんどい
華織「僕のすべては、これからは、いつだって君の前にある」
「？ 華織様？」
華織「賑やかな家族、まだまだ未熟だけど、目指す道の華道。[名前]さんへの愛。
それが僕の持っているすべて……」
華織「[名前]さん。こんな僕の傍にいてくれてありがとう。
[名前]さんのおかげで、もう一歩先に進めます」
華織「これからは、僕の全てをもってして、君に恋を綴ります」
;エピローグの回収↑
;いい感じになって見つめ合う二人。
「華織様……」[p]
「[名前]さん……」[p]
;華妹が華衣と喧嘩しだしたので戻るふたり　爽やか！
;文矢が華織に話しかけた。

華織「これからも妹のことをよろしく。もう泣かしたらダメだよ」[p]
華織は深くうなづく。[p]
華織「文也、[名前]さんに会わせてくれてありがとう、君という友人がいて本当に幸せだ」[p]
;幸せな悩み？
文也「さて。これから訪れる、幸せな悩みについて、相談に乗ろうか？」[p]
華織「そうだね。けど、まずは君がまた悩んでいることがあったら、僕が助けるよ」[p]
文也「そうだなぁ……」[p]
暗転
新しく訪れる幸せな悩みについて、ふたりの話は、夜も更けていった。[p]
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


*replay_sijyou_3_1
*start
[stopbgm]
;暗転プリロードサブルーチン
[call target=*3_1 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;=================================================================================_
*first
[er]
;条件:華織の迷いのイベントを一つでも見ている　【全力】の手紙をよんだ後日 夜
;主人公庭夜
[freeimage layer = 1]
[wait time=10]
[背景_庭_夜]
[stopbgm]
;～～～～～～～～～～～～～～～～～～前章シーンここから～～～～～～～～～～～～～～～～
[四条イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[四条ボタン表示]
;=================================================================================_
[if exp="tf.test_gamen == true"]
テストページからプレイしています。華道展お誘いの手紙まで移動しますか？[r]

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
@jump target=*fumi_toutyaku_sijyou_102
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
そのままはじめます。[p]
[cm]
[endif]

*seen0
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
（華織さま……手紙、読ませていただきました。[r]
[sp]華道競合会にて大賞を受賞されて、私も嬉しくおもいます。[r]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
[sp]今は、どのようにご活躍して、いらっしゃるのでしょうか？）[p]
[autosave]
#
私は手紙をもう一度、開いた。[p]
;～～～～～～選択肢～～～～～
[背景選択肢_sakura]
[position layer=message1 height=160 top=100 left=280 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
[link target=*see_fumi]手紙をじっくり読み返した。[endlink][r]
[r]
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
[暗転１]
;[chara_mod name="bg" storage="toumei.gif"]
私は、手紙をじっくり読み返した。[p]
;～～～～～～～～～～手紙１～～～～～～～～～～～～～～
[手紙四条 fumi_number=]
*fumi_in1
[er]
[名前]さんへ[r]
[r]
庭の桜にメジロが蜜をあつめており、その愛らしさに[r]
心穏かになる季節となりました。[r]
[名前]さんは、お変わりなくお元気でしょうか？[r]
[r]
さて、この度、四条華織は、[名前]のお約束とおり、[r]
祖母の開いた華道競合会にて大賞受賞を果たしました。[r]
場所が場所だけに七光りと思われがちですが、[r]
祖父にも、来ていただいた方にも心にくる華だと褒めていた[r]
だきました。[r]
[link target=fumi_in2][sp]　　　　　　　　　　　　　　　　　　　　　　　　【壱/弐】[endlink][s]
*fumi_in2
[er]
もう、何も迷うこともない。[r]
だから今、全力で自分を使って色々な場所で活躍していきます。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[r][r]
[link target=fumi_in1][sp]　　　　　　　　　　　　　　　　　　　　　　【弐/弐】[endlink][r]
[r]
[link target=fumi_in3][sp]　　　　　　　　　　　　　　　　　　　　　　 　【閉】[endlink][s]
*fumi_in3
[er]
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
[bg wait=true method='crossfade' storage="toumei.gif" time=600]
[wait time=50]
;横においてさらりと眺める
私は、机に置いてある、手紙を眺めた。[p]
;～～～～～～～共通1～～～～～～～
*common1
[背景_庭_夜]
[主人公ポーズ通常]
[autosave]
#
――華織様に頂いた手紙からは、霧が晴れたような明るい気持ちが[r]
[sp]伝わってくる。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
（ふぅ。[r]
[sp]お兄様から、華織様は[ruby text=ご]御家業上、初冬から春にかけて、[r]
[sp]お忙しいとお聞きしておりますが……）[p]
;春はどうだろう開店祝いとか。冬は忙しいはず。クリスマスと正月は花屋は忙しい
;胸に手を当てるポーズがあったらいいな
[whosay name=&sf.girl_namae color="#cf5a7f"]
（やはり、こういった時は、お傍について、喜びを共にしたいです）[p]
[主人公ポーズ指]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横目]
（磯野に頼んで行ってみようかしら？）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ですが、お仕事が忙しい時に会いに行ったら、迷惑では、[r]
[sp]ないでしょうか？）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
[主人公目閉じ]
（いえ、そもそも……）[p]
;うんうんと考える
;=================================================================================_
*seen1
[autosave]
#
あの寂しい夜とはうってかわって私は、幸せな悩みを抱えて眠ってしまった。[p]
[暗転]
;[chara_mod name="bg" storage="toumei.gif"]
;ちゅんちゅんSE　ここでは、目白かな
;【SE】メジロ（ピィピュイ）
[playse storage=tori_mejiro.ogg loop=false ]
[if exp="f.para_shujinkou_shukujodo >= 200"]
;～～～～～～～淑女度高い～～～～～
;磯野が四条の手紙をもってきて、返事がなく、心配して呼びかけるが、すぐに起きて返事をする主人公
[whosay name="磯野" color="dimgray"]
「お嬢様？」[p]
[背景_庭]
[主人公伏目]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（！ ……磯野の声だわ。
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
#
私は、素早く身だしなみを整えると、いつも通りに整然と筆をとった姿勢で磯野を迎えいれた。[p]
;SE襖
;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]
[whosay name="磯野" color="dimgray"]
「失礼します」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目パチ1回]
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
[背景_庭]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公伏目]
「？　う……ん……
;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]
[主人公ポーズ片手]
[主人公通常]
あら、磯野……？」[p]
[whosay name="磯野" color="dimgray"]
「ああ、机の上で寝てしまわれたのですね……勝手に入って申し訳ござい[r]
[sp]ません」[p]
;机の上でっていうのが、本当に机の上で？と読む人がいるかもしれない？
[whosay name="磯野" color="dimgray"]
「返事がなく、心配して部屋の様子を見てしまいましたら、[r]
[sp]筆を枕にして、倒れているお嬢様を見つけまして、慌ててしまい[r]
;「しまい」の連続を避けて変更調整しました(◆jsYiJcqRkk
[sp]ました……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
「もう！　大丈夫よ！　ちょっと、眠ってただけですわ」[p]
[主人公ポーズ通常]
[whosay name="磯野" color="dimgray"]
「お嬢様。お言葉ですが、四条華織様との結納前。とても大事な時期です、[r]
[sp]お風邪を召されませんようにお気をつけくださいませ」[p]
#
安堵の表情を浮かべた磯野は、私の丈夫な様子をみるなり、お説教を始めだした。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横目]
「そ、それより、丁度、あなたにお願いしたいことが……」[p]
[endif]
;～～～～～～～共通２～～～～～～～
;=================================================================================_
*common2
[autosave]
;説明：言うまでもなく磯野は手紙をもってきていた...四条の手紙には華道展の切符（チケット）が。
;説明：自身は早朝から会場の設営で身動きできず、迎えにいけませんが[名前]さんが、よろしければ、御家族もご一緒に是非見に来てください
[whosay name="磯野" color="dimgray"]
「お嬢様のお願いは、こちらのことでしょうか？」[p]
[主人公目大]
#
磯野は私が全てを伝えるまでもなく、彼の人の手紙をもってきていた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目大]
[主人公ポーズ片手]
（華織様の手紙だわ！）[p]
#
その手紙の上には、品の良い押し花と和紙で作られた華道展のチケットが、[r]
添えられていた。[p]
;～～～～～～～～淑女度ひくい～～～～～～～～
[if exp="f.para_shujinkou_shukujodo < 200"]
[whosay name="磯野" color="dimgray"]
「お嬢様のお目覚めには、適された文でしょうか？」[p]
#
磯野は、明るい様子の私を見守るように微笑む。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ両手]
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
彼も同じように冗談を交えながらも、私に手紙とチケットを手渡した。[p]
;共通３へ飛ぶ
@jump target=common3
[else]
;～～～～～～～淑女度高い～～～～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
[主人公口ほほえみ]
「ありがとう、磯野。こちらは、いつ届いたのかしら？」[p]
[whosay name="磯野" color="dimgray"]
「昨晩、旦那様宛に届き、その中にお嬢様宛の手紙が含まれおりました」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ片手]
「？ そうなのですか？」[p]
;説明：プレイヤー同調と説明
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ指]
（お父様宛に？ どうしてかしら？ ）[p]
[主人公ポーズ通常]
;説明：後の話の伏線１↑↓説明
[whosay name="磯野" color="dimgray"]
「すぐにお届けせず、申し訳ありません。[r]
[sp]奥方となられる方のお部屋に夜分遅く訪ねるわけにもいかず、[r]
[sp]この[ruby text=ふ]不[ruby text=しょう]肖、磯野、今お持ちした次第でございます」[p]
;説明：現在の状況説明と糖度の平均化↓↑
[主人公照れ目普通]
[主人公ポーズ片手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（奥方となられる方……そうだわ……私、華織様と、もうすぐ……）[p]
#
私は、先ほどの疑問も忘れ、その言葉に顔を赤らめてしまった。[p]
[主人公横目]
[主人公ポーズ通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そ、そうなのですね。配慮をありがとう。[r]
[主人公目閉]
[sp]早速、 読ませて頂くわ」[p]
[whosay name="磯野" color="dimgray"]
「はい。 では、下がらせていただきます。[r]
[sp]失礼しました」[p]
#
[endif]
;～～～～～～～共通3～～～～～～～
;=================================================================================_
*common3
[主人公ポーズ通常]
[主人公ほほえみ]
;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]
[wait time=2]
#
部屋から下がる磯野は、何となく微笑んでいるような気がしたけれど、[r]
それより華織様の手紙のことが気になって、寛容にも見逃してしまった。[p]
[autosave]
;サウンドノベルくさい
;～～～～～～～～～～手紙2～～～～～～～～～～～～～～
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
*fumi_toutyaku_sijyou_102
[if exp="f.okeiko_gamen == true"]
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「四条華道展のお誘い」　四条 華織"; //←仮タイトルです。ご自由に変更してください
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「四条華道展のお誘い」"; //←仮タイトルです。ご自由に変更してください
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_event_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_event_fumi.ks");
f.fumi_list_all_target.push("*3_1_kadouten");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(101);
f.fumi_list_sijyou_location_fumi.push(101);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*3_1_kadouten");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[102]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_sijyou_number=f.fumi_sijyou_number + 1;
f.hensin_list_hairetsu[2][101]=1;//イベント中に届く手紙は基本的に「返信済」とします(返信している前提で物語が進行するため)
f.para_sijyou_koukando = f.para_sijyou_koukando + f.sijyou_koukando_up_event_fumi;
[endscript]
[endif]
[手紙四条 fumi_number=]
*fumi_in1_1
[er]
[名前]さんへ[r]
[r]
お変わりなく、お元気でしょうか[r]
;挨拶わからん
気持ちの高まりのまま、[名前]さんからの返事も待たず、[r]
矢継ぎ早に手紙を出して申し訳ありません。[r]
[r]
先日の手紙にお伝えした通り、華道競合展で大賞を[r]
果たしました。[r]
そのおかげで、他の先生方からの勧めもあり、来週に[r]
『四条華道展』を行う運びとなりました。[r]
もちろん、華道競合展で、大賞を得た作品も出す予定です。[r]
[link target=fumi_in2_2][sp]　　　　　　　　　　　　　　　　　　　　　　　　【壱/弐】[endlink][s]
*fumi_in2_2
[er]
[r]
[名前]さんとお義父様が、よろしければ、迎えの者を向わせ[r]
ますので、御家族も、ご一緒に来場ください。[r]
その際に改めて、四条家と[名字]家と会食を設けようと[r]
考えております。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[r][r]
[link target=fumi_in1_1][sp]　　　　　　　　　　　　　　　　　　　　　　　　　【弐/弐】[endlink][r]
[r]
[link target=fumi_in3_3][sp]　　　　　　　　　　　　　　　　　　　　　　　　　　【閉】[endlink][s]
*fumi_in3_3
[er]
[if exp="f.okeiko_gamen == true"]
;未読→既読処理
[eval exp="f.midoku_list_hairetsu[2][101] = 0"]
[endif]
[手紙四条読了 fumi_number=]
;～～～～～～～～～～手紙2おわり～～～～～～～～～～～～～～
[if exp="tf.test_gamen == true"]
テストページからプレイしています。イベント終わりまで移動しますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]

[link target=*jump_ok_2]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no_2]い　い　え[endlink][r]
[resetfont]
[s]

*jump_ok_2
[current layer="message0"]
[resetfont]
「はい」[r]
移動します。[p]
[cm]
@jump storage="sijyou/sijyou_3_1b.ks" target=*seen10
[s]

*jump_no_2
[current layer="message0"]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]

;=================================================================================_
*seen2
[autosave]
;一方的だなぁ～感じの良いBGM鳴っていれば気にならない？
華織様のいつもの美しい細い筆跡は、慌てて書かれたような、墨跡が残されている。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様、お忙しい中、急いでお誘いしてくださったのですね）[p]
#
[主人公目閉]
華織様は、私のために兄のような大人らしい立ち振る舞いをして下さる。[r]
なのに、時折、素の素朴な想いが見え隠れする。[p]
;セリフを挟む 主人公のセリフ苦手
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
（そんなに慌てなくても、大丈夫ですわ。　[r]
[sp]家族まで誘って下さって、ありがとうございます）[p]
#
私は、お付き合いを重ねてみえてくる、また違った華織様の温かい人柄に心が和んだ。[p]
[主人公目閉]
心に咲き誇る恋夢にうたた寝をすると、庭木の上でメジロが愛らしく鳴いた。[p]
;暖かい陽気で、まだ少し眠いよ！ということでもあり。
;【SE】メジロ（ピィピュイ）
[playse storage=tori_mejiro.ogg loop=false ]
[wait time=1000]
[暗転]
;[chara_mod name="bg" storage="toumei.gif" time=10]
;～～～～～～～～～～～～～～～～～～前章シーンおわり～～～～～～～～～～～～～～～～
[layopt layer=fix visible=false]
;テキスト全面表示
;一時的に行間多く
[iscript]
tyrano.plugin.kag.config.defaultLineSpacing = '15';
[endscript]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[image layer=29 x=0 y=0 zindex=0 storage="bg/bg_prologue.jpg" time=50]
[font color=white size=27]
[sp]――後日。[r]
[sp]庭の沈丁花が香る、暖かな昼どき。[r]
[sp]父と私は、華織様にお誘いを頂いた『四条華道展』に[r]
[sp]向かう為の準備をしていた。[p]
;ジンチョウゲ。花言葉は栄光、不滅、永遠。香水として使われる
[iscript]
tyrano.plugin.kag.config.defaultLineSpacing = '6';
[endscript]
[resetfont]
;～～～～～～～～～～～～～～～シーン主人公準備はじめ～～～～～～～～～～～～～～～～
;主人公部屋
[背景_庭]
[主人公ポーズ通常]
[主人公目閉]
[wait time=10]
[freeimage layer=29 time=0]
;[四条イベントシーン構築]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[layopt layer=fix visible=true]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]、そろそろ準備はできたかね？」[p]
;～～～～～～～～淑女度低い～～～～～～～～
[if exp="f.para_shujinkou_shukujodo<200"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公口ほほえみ]
「はい。大丈夫です！」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「うむ。今日も元気そうで何より」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「お父様、早く、行きましょう！」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「急かなくても大丈夫だ。[r]
;だよ（どちらでも
[sp][名前]も、好きな人のこととなると、せっかちになるのだな」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
[主人公ポーズ片手]
「まあ、お父様。 私を誰と、お比べなのですか？」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「こちらに来くれば、わかるだろう」[p]
#
[暗転]
;[chara_mod name="bg" storage="toumei.gif"]
[主人公ポーズ通常]
[主人公目閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どなたかお待ちなのかしら？ [r]
[sp]華織様は会場にいらっしゃると思いますし……誰かしら？）[p]
;ここが違う↓
#
はやる気持ちのまま、父の後ろをついて歩いた。[p]
;～～～～～～～～淑女度高い～～～～～～～～～～
[else]
[主人公ポーズ通常]
[主人公目閉]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。準備は整えたつもりです」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「いかがでしょうか？ 失礼がない様に少し控えめな着物にしましたが……」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「うむ。婚姻前の晴れ着としては、もう少し華やかでも構わない[r]
[sp]気もするが、今日は華道展であったな……その見立ては間違いない[r]
[sp]であろう」[p]
;花より目立ってはいけないし
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ありがとうございます」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「では、向かおうか。先に待っている者がいるからな」[p]
#
[主人公ポーズ通常]
[主人公目閉]
[暗転]
;[chara_mod name="bg" storage="toumei.gif"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どなたかお待ちなのかしら？ [r]
[sp]華織様は会場にいらっしゃると思いますし……？）[p]
#
;ここが違う↓
#
はやる気持ちを抑え、父の後ろをついて歩いた。[p]
[endif]
;～～～～～～～～～～共通４～～～～～～～～～～～～～～
*common4
[fadeoutbgm time=3000]
;～～～～～～主人公宅玄関～～～～～～～～～～～～～～
[背景_主人公邸_玄関]
;[chara_mod name="bg" storage="bg/bg_genkan.jpg" time=1500]
[主人公驚]
#
父の後ろをついて、玄関先まで出てみると、兄、文矢が待っていた。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】みやび（磯野登場シーン：若干コミカルな場面など目立たせたいときに
[playbgm storage="isono_miyabi.ogg" loop=true]
[eval exp="f.bgm_storage='isono_miyabi.ogg'"]
[endif]
;文也じゃないよ文矢　辞書登録した！
[whosay name=&sf.father_name color="DarkSlateBlue"]
「待たせたな、文矢」[p]
[whosay name=文矢 color="#538a8a"]
「お父様、[名前]。待ちかねたよ」[p]
;文矢から父への呼び方を知らない…了解です！
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お兄様！ 来て下さったのですね」[p]
[whosay name=文矢 color="#538a8a"]
「まあね。[名前]と華織の結納が終わるまでの間くらいは、[r]
[sp]一緒に過ごしたいからね」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「文矢の家にも、代わりに仕事を任せられる安心有能な家令がいるよう[r]
[sp]だな」[p]
[whosay name=文矢 color="#538a8a"]
「ええ。[r]
[sp]けど、どんな、じゃじゃ馬娘も、こんな淑女に変えてしまう磯野には[r]
[主人公驚]
[sp]勝てませんけどね」[p]
[主人公口ムッ]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「はは、それもそうだな」[p]
[主人公真剣]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お兄様！」[p]
#
[主人公困りほほえみ]
久しぶりに一家団欒に戸惑いつつも、私達は、顔をほころばせた。[p]
;母親の設定はわからないから書けない、性格違ってたら教えて下さい くれくれマン
[fadeoutbgm time=3000]
#
;～～～～～～～～～～～～～シーン主人公準備おわり～～～～～～～～～～～～～～～～
[主人公目閉]
;～～～～～～～～～～～～～シーン華道展はじまり～～～～～～～～～～～～～～～～
[暗転]
;[chara_mod name="bg" storage="toumei.gif"]
[主人公通常]
[背景_四条展覧会]
#
華道展に来た。[p]
見事な作品達が、白亜の台座に美を競い合いながらも、固有の世界感を[r]
表現している[p]
;白を基調とした展示会場には、美しい花々が趣向ごとに展示されており、[r]
来場者は皆、ゆったりと、華の世界に浸っていた。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】海風と沈む太陽（しっとりと想うシーン、回想シーンなどに
[playbgm storage="sittori_umikaze.ogg" loop=true]
[eval exp="f.bgm_storage='sittori_umikaze.ogg'"]
[endif]
;【SE】人々のざわめき（ザワザワ…屋内）
[playse storage=zawa_room.ogg loop=false ]
;賑わう会場の表現
[whosay name=&sf.girl_namae color="#cf5a7f"]
（結構な人達がいるわ。華織様の作品を見るためにこれだけの方達が[r]
[sp]来て下さっているのね……）[p]
[主人公口ほほえみ]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「ほぉ。これはなかなか……生けた花とは、よく言ったものだ」[p]
[whosay name=文矢 color="#538a8a"]
「あったよ。[名前]。　これが、華織が受賞した作品だね」[p]
;～～～～～～～～～～～～～シーン華織の作品みる～～～～～～～～～～～～～～～～
*kaori_sakuhin
[autosave]
#
[背景_四条金屏風2]
;[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kinbyoubu2.jpg"]
;[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
お兄様が金屏風の前に飾られた受賞作品を見つける。[p]
[if exp="f.para_shujinkou_j_gogaku>=100"]
;語学の能力が高い
[whosay name=&sf.girl_namae color="#cf5a7f"]
「松の木が幾重に重なって……山岳のような気迫を感じるわ」[p]
[whosay name=文矢 color="#538a8a"]
「そうだね。[r]
[sp]壮大でありながらも、細やかな花が優しさと調和を表している」[p]
[else]
;語学の能力が低いなーと思って
[whosay name=&sf.girl_namae color="#cf5a7f"]
（美しいわ……いえ、それだけでは、言葉が足りないわ）[p]
[whosay name=文矢 color="#538a8a"]
「山岳のような気迫を感じるね」[p]
[endif]
[if exp="f.para_shujinkou_j_kadou >= 100"]
;～～華道パラがかなり高い場合～～[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「えぇ、松と沈丁花を大胆に使用し、合間にロトウサクラを取り入れた[r]
[sp]見事な作品ですわね」[p]
[whosay name=文矢 color="#538a8a"]
「ふふ。[名前]は、どうやら華織の為に華道に詳しくなったようだね」[p]
[主人公照れ目普通]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そ、そうかしら？[sp]これくらい、淑女として当然です」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公ポーズ片手]
（それにしても、こちらの作品は、自然の風景をそのまま切り取ったような[r]
[sp]情緒あふれる生け方をされているわ）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ指]
[主人公ふぅ閉]
（こういった表現は、基本ではあるけれど、とても技術や表現力が必要なのよね）[p]
;華道オタクさを半減↓
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
[主人公真剣]
（私も、華織様を支えられるように精進しなくては……！）[p]
;～～華道パラ普通の場合～～[p]
[else]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
[主人公ほほえみ]
（本当に、素敵な作品だわ）[p]
#
私は、華織様が作り出す華道の世界に目を奪われてしまった。[p]
[endif]
;～～～～～～～～～～～～～シーン華織の作品みるおわり～～～～～～～～～～～～～～～～
;～～～～～～～～～～～～共通５～～～～～～～～～～～
*common5
[autosave]
[主人公目閉]
;[暗転]
[bg storage="toumei.gif"]
[wait time=10]
[bg storage="../fgimage/bg/B4nFWraU42/bg_sijyou_tenrankai.jpg" method="crossfade"]
[wait time=10]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
#
大賞作品を見た後、私たちは他の作品を見て回る。[r]
展示台に飾られた作品も、目を引かれる作品であった。[p]
;適当に追加↑
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（こちらは、複数の生け花で、夏の[ruby text=かわず]蛙の跳ねる姿を表現されているの[r]
[sp]ですね……）[p]
;【SE】人々のざわめき（ザワザワ…屋内）
[playse storage=zawa_room.ogg loop=false ]
;～引き立て悪役の登場～
[whosay name="華道家の弟子達"]
「ふーん…まあまあだな」[p]
;http://detail.chiebukuro.yahoo.co.jp/qa/question_detail/q1142669656
[主人公憂い]
「どうせ親の七光りの賞だろう」[p]
[主人公真剣]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（この様な素敵な花を見てなんてことをいうのでしょうか……）[p]
;四条綾花の登場
[whosay name=四条祖母 color=%mp.color]
「こんにちは、[名字]様」[p]
[主人公驚]
[whosay name="華道家の弟子達"]
「！」[p]
;四条祖母の風貌説明
#
銀色の髪を着物に合わせて上品に結った老婦人が現れた途端、[r]
失礼な華道家の弟子達は、足早に去って行ってしまった。[p]

;～～～～～～～～～～～～共通５ここまで～～～～～～～～～～～
;祖母のイベントをやっていない人が、何故祖母と、わかったのか説明する
;～～～祖母イベントをやってる場合～～～[p]
[if exp="f.sijyou_sobo == true"]
[主人公ふぅ閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（何だったのでしょうか……）[p]
#
;華織様のお祖母様がゆったりと挨拶をした。[p]
[主人公口ほほえみ]
[主人公目閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「こんにちは、四条綾花様」[p]
;綾女じゃないよ綾花だよ　変数にいれて＆で呼び方変えてもいいものか
[whosay name=四条祖母 color=%mp.color]
「こんにちは、[名前]さん、ご挨拶が遅れまして申し訳ありません」[p]
#
四条綾花様は、[ruby text=ろう]老[ruby text=せい]成した穏やかな微笑みをこちらに向けた。[p]
;速読で読みにくいため修正↑
[主人公ほほえみ]
;共通6にジャンプ 華道パラスルー
@jump target=*common6
[endif]
#
[if exp="f.para_shujinkou_j_kadou >= 100"]
;～～～華道パラが高い場合～～[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
（あの方は、華道の名士の四条綾花様だわ）[p]
#
華道の教本でも、お顔を何度か拝見しており、[r]
園遊会でも、四条家について、詳しくお話をされた方。[p]
[else]
;～～～華道パラがそれ以外の場合～～～[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「！あの方は、園遊会でもお会いした華織様のお祖母様だわ」[p]
[endif]
;～～～～～～～～～～～共通6ここから～～～～～～～
*common6
[主人公通常]
[whosay name=四条祖母 color=%mp.color]
「園遊会の時にも、お世話になりましたわ」[p]
[autosave]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「四条様。今日はお誘い頂きありがとうございます」[p]
[whosay name=四条祖母 color=%mp.color]
「こちらこそ、ご足労頂きありがとうございます。[r]
[sp]どうか、四条家の華の世界をお楽しみ下さい」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「うむ。楽しませてもらおう」[p]
[主人公横目]
[主人公ポーズ片手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様は、どこにいらっしゃるのかしら？）[p]
[whosay name=四条祖母 color=%mp.color]
「[名前]さん。
[主人公ポーズ通常]
華織は、先生方に頼まれて、演説の準備をして[r]
[sp]いますので、もう少しお待ち頂けないでしょうか？」[p]
;主人公気付かれて恥ずかしい、戸惑い
[主人公照れ目普通]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]
[whosay name=四条祖母 color=%mp.color]
「ありがとうございます。また後でお会いしましょう」[p]
#
[主人公目閉じ]
*sijyou_1
;～～～～～～シーン壇上。イベントの趣旨、プレイヤーの勝利～～～～～～～～～
;↓［全画面～］タグの関係か華織立ち絵の表示が不安定なため再度マクロをコールしてみます(スクリプト担
[call target=*start storage="macro_tati_sijyou.ks"]
[暗転]
;[chara_mod name="bg" storage="toumei.gif"]
[主人公通常]
#
しばらく、展示作品に愉しんでいると、華織様が他の華道名士達と[r]
共に壇上に現れた。[p]
;室内ざわざわSE
;【SE】人々のざわめき（ザワザワ…屋内）
[playse storage=zawa_room.ogg loop=false ]
[背景_四条金屏風1]
;[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kinbyoubu.jpg"]
[layopt layer=13 visible=true]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/B4nFWraU42/bg_sijyou_kinbyoubu.jpg" time=50]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[主人公ほほえみ]
[whosay name="華織" color="olivedrab"]
[四条ベース羽織]
[四条微笑み]
;===四条登場===
[freeimage layer=13 time=500]
[wait time=500]
[layopt layer=13 visible=true]
;===四条登場===
「今日は、四条華道展に来てくださってありがとうございます。[r]
[sp]初日は昼過ぎまでの展示ですが、皆様の目を楽しませることが[r]
[sp]出来たら幸いです」[p]
;[四条眉強気]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_tuyoki.png" time=0]
[wait time=10]
#
壇上の華織様は、瑞々しい花々のように生き生きしていた。[p]
;このイベントの趣旨1をプレイヤーに説明
[whosay name="先生方"]
「華織君については、華道会の名士、四条綾花さんのお孫さんだけ[r]
[sp]あって、僕達も陰ながら応援していました」[p]
[四条目パチ1回]
[主人公通常]
[whosay name="先生方"]
「ですが、僕達は、芸の道の者として、決して[ruby text=え]依[ruby text=こ]怙[ruby text=ひ]贔[ruby text=いき]屓などしており[r]
[sp]ません」[p]
[whosay name="華道家の弟子達"]
「……」[p]
[whosay name="先生方"]
「綾花様のお孫さんだからこそ、厳しい目で審査し、今まで彼に[r]
[sp]賞を与えることを見送っていました」[p]
[四条目パチ1回]
;今までのイベントについての説明
#
壇上の華道家達の厳しい言葉を聞いて、私は華織様の境遇を改めて知った。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（華織様……今まで[華衣]様のことも背負っていらしゃったのに[r]
[sp][ruby text=ご]御家業のことも、ずっと悩まれていたのですね）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
（それなのに、おひとりで立ち向かわれて……努力されて……）[p]
[whosay name="先生方"]
「……それだけに、この受賞展は、僕達も感極まる者があります」[p]
[主人公ほほえみ]
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「ありがとうございます」[p]
[whosay name="先生方"]
「これまでは、表現に苦労されていた様ですが、賞をとった心境を[r]
[sp]お聞かせ下さい」[p]
[主人公通常]
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
「そうですね。僕自身、何をやってみても、心に響くものがなくて[r]
[sp]悩んでいました」[p]
[主人公憂い]
[whosay name="華織" color="olivedrab"]
「それは、僕の中に弱い部分が、あったからだと思います」[p]
;プレイヤー、主人公のことを褒める
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「ですが、今は、あるお方のおかげで、強さを掴み取ることができました」[p]
;華衣のせいにしない演説な感じで。
[主人公照れ目普通]
[whosay name="先生方"]
「ほほう？ つまり、それは最近、綾花様からお聞かせ頂いた御婚約者様の[r]
[sp]ことでしょうか」[p]
;[四条口笑顔]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_warau_s.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「はい……」[p]
[四条微笑み]
#
――華織様の視線が、私のことを密やかに射抜く。[p]
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ 華織さま？！）[p]
#
数人の勘の良い来場者は、チラリと私を見つめた。[p]
;主人公困り照れ
[主人公眉困り]
[主人公照れ目普通]
[whosay name=文矢 color="#538a8a"]
「華織の奴、随分と大胆な告白だね」[p]
;主人公恥ずかしいが、もう落ち着いてうれしい感じ？
[主人公眉下げ]
[主人公目閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……）[p]
;主人公、華織の冗談でかわした配慮にほほえましく思う
[主人公照れ目普通]
[四条困り微笑み]
[whosay name="華織" color="olivedrab"]
「……と言いたいところですが、彼女に迷惑が、かかるかもしれないので、[r]
[sp]どうかこの話は、流して下さい」[p]
[whosay name="華織" color="olivedrab"]
「まったく祖母は、どこに行っても彼女の話をするのですから」[p]
[主人公ほほえみ]
#
会場からは、ワッと笑い声が咲く。[p]
;主人公慣れて、ほほえましく思う　少し大人
[主人公照れ目普通]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様ったら。一時は、恥ずかしさでどうなるかと思いましたわ）[p]
[主人公ほほえみ]
[四条微笑み]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（けど、華織様は、これからは、きっと大丈夫ですね）[p]
[主人公目閉]
[暗転２]
[主人公通常]
[四条退場]
*seen3
[背景_四条展覧会
;[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_tenrankai.jpg"]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/B4nFWraU42/bg_sijyou_tenrankai.jpg" time=50]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[暗転２終了]
;～～～～～～～～～～シーン・旦那になるものとしての男、四条華織と父の会話～～～～～～～～～～～～
;=================================================================================_
壇上での演説後、華織様は、祖母様と祖父様とともに挨拶に来られた。[p]
[autosave]
[四条ベース羽織]
[四条真剣]
;===四条登場===
[freeimage layer=13 time=500]
[wait time=500]
[layopt layer=13 visible=true]
;===四条登場===
[whosay name="華織" color="olivedrab"]
「[名字]様、先日は、文矢さんと[名前]さんのお陰で助かりました。[r]
[sp]ご子息、子女に、ご迷惑をおかけして申し訳ございませんでした」[p]
;でした　でした重なるので違和感せめて接続的なものがほしい　　くわえて？　また？
[四条目閉じ]
;いきなり文矢の会話からだと違和感あり
[whosay name=&sf.father_name color="DarkSlateBlue"]
「いや、そのことは文矢に”も”、話したことだから[r]
[sp]華織君は、もう気にしなくていい」[p]
[whosay name=文矢 color="#538a8a"]
「僕は、ちょっとだけ手を貸しただけだよ」[p]
[主人公口ほほえみ]
[whosay name="華織" color="olivedrab"]
;[四条眉困り]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
;[四条目通常]
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[wait time=10]
;[四条口微笑み]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
「文矢、ありがとう」[p]
[四条真剣]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「華織君、君は年末にわざわざ私に会いにきてくれて話をしてくれたね」[p]
[主人公通常]
[whosay name="華織" color="olivedrab"]
「はい。事をお知らせする義務がございます」[p]
#
;話したら怒られるでしょう・・・のフォロー
[主人公眉困り]
[主人公横目]
[主人公口ふぅ]
[whosay name=文矢 color="#538a8a"]
「お陰で僕はちょっぴり怒られてしまったけどね」[p]
#
[主人公口ムッ]
[主人公憂い]
[whosay name="華織" color="olivedrab"]
;[四条眉困り]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
;[四条目通常]
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[wait time=10]
;[四条口ムッ]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_mu.png" time=0]
[wait time=10]
「文矢、ごめん」[p]
[whosay name=文矢 color="#538a8a"]
「いや、それでいいんだ。それでこそ僕の友人だよ」[p]
;[四条口微笑み]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
;お正月の手紙のことを思い出す主人公
#
[主人公ポーズ指]
[主人公横目]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そういえば、お正月のお手紙には、[r]
[sp]『[名前]のお父様と会いました』と書いてありましたが）[p]
[主人公憂い]
[四条真剣]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そうですわよね。[r]
[sp]自由にお出掛けを許してもらう事だけでは、ないですわよね……）[p]
[主人公ポーズ通常]
;主人公柔
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
#
私は、お父様と共に華織様の透き通る瞳を見つめた。[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「私は、そんな君のとても清廉なところに感服した。[r]
[sp]やはり、娘と昔から付き添っていただけある」[p]
[主人公憂い]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「私こそ、決まりとはいえ、[名前]と引き離してすまない」[p]
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
「いえ、[名字]様。[r]
[sp]それもあってこそ、[名前]さんを強く想う今の自分があるのだと思い[r]
[sp]ます……」[p]
#
;主人公柔和ほほえみ
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「今日、見せてもらった作品も、華やかさと調和を兼ねていて、[r]
[sp]他に類を見ない素晴らしさだった」[p]
[主人公照れ目普通]
「華織君。娘を任せる人は、君しかいないようだ」[p]
[四条笑顔]
[whosay name="華織" color="olivedrab"]
「……ありがとうございます」[p]
;微妙な顔になっているので修正　半泣き顔ってどんなの
[四条口通常]
[四条目伏]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
#
華織様の透き通る瞳が、うっすらと滲む。[r]
[四条口微笑み]
その瞳の奥には、短期間で賞をとるほどの努力の滲みが見えていた。[p]
;[四条眉困り]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
;細かな描写がないので全然泣けない　苦労の滲みだと嫌々感
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織さま……」[p]
[whosay name=文矢 color="#538a8a"]
「華織、泣くには早すぎるよ。
[主人公驚]
結納までにとっておきなよ」[p]
[主人公照れ目普通]
[四条困り微笑み]
;[四条頬染め]
[chara_mod name="sijyou_emo" storage="sijyou/emo_hohosome.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「泣いてないよ。 [r]
[sp]文矢こそ、結納の時に[名前]さんの事が寂しくなって泣かないように」[p]
[whosay name=文矢 color="#538a8a"]
「ふふ。 華織……変わったね」[p]
[主人公照れ目普通]
;=================================================================================_
*seen4
[autosave]
#
昔のように。[r]
けれども、少し変化が訪れた友情の間に幸せな笑い声が溢れる。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（もう。お兄様ったら……）[p]
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ですが、本当にさり気なく気を遣って頂いてくださる……。[r]
[sp]私は、そんなお兄様のことを誇らしくも尊敬しております）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（お兄様が華織様の友人で、お兄様が私の兄で、本当に良かった）[p]
#
強さを秘めた幸せは、周囲の人を幸せにするのかもしれない。[r]
私は、お二人の笑顔を見ながらひっそりと考えた。[p]
;長いので分けます　
;これだけでもイベントになるように絞め言葉を。適当。
[暗転２]
[主人公退場]
;【退場】四条
[四条退場]
[fadeoutbgm time=3000]
;背景変更:黒茶・和紙風 bg_prologue.jpg
[背景_黒茶・和紙風]
;[chara_mod name="bg" storage="bg/bg_prologue.jpg"]
[image layer=29 x=0 y=0 storage="bg/ bg_prologue.jpg" time=1000 visible=true]
@jump storage=sijyou/sijyou_3_1b.ks target=first
;続編に飛ぶ
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
[メッセージウィンドウ上ボタン表示]
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

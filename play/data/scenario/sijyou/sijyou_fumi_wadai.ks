;////////////表示準備/////////
;表示遅れ防止
;[preload storage="data/fgimage/bg/bg_prologue_dark.jpg"]
[preload storage="data/fgimage/bg/bg_prologue.jpg"]
;////////////表示準備/////////
;友人に会う
;書き終わりましたら元の場所に写します
;間を埋める為の凡庸用の返信を追加　口調は見合い前か悩む　両方書いておこうかな
;テストボタン追加済b(-)　仮シナリオ全追加済・凡庸含むs(-) 全然思いついてない(+)凡庸思いつかない(！)
;友人b(-)s(-)
;新茶　b(-)s(-)
;さつき　b(-)s(!)
;詩集を買う　b(-)s(!)
;大衆食堂お品書き	食事の話題	b(-)　s(!)
;聞き上手と話し上手	聞き上手と話し上手の話題b(-)　s(!)
;猫	猫の話題	b(-)　s(-)
;緑の石	緑の石の話題	b(-)　s(-)
;1日のはじまり	1日のはじまりの話題	b(-)　s(-)
;お気に入りの曲	お気に入りの曲の話題 b	(-)　s(!)
;道案内	道の話題	b(-)s(!)
;変化と永遠 b(-)s(!)
;スポーツの話題 b(-)s(!)
;小劇場開場	観劇の話題	b(-)　s(!)
;淑女度２０以上	写真	写真の話題 b(-)　s(+)
*start
[stopbgm]
[eval exp="sf.FButton='OFF'"]
;テスト以外はコメはずす
;@jump target=*fumi_cmmon
*test
[if exp=tf.test_sijyou == true]
[bg storage="../fgimage/bg/bg_prologue.jpg"]
[iscript]
$(".1_fore").empty();
[endscript]
*test_page1
*page1
[glink target="midori" text="緑の石" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="midori2" text="緑の石２回目" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="midori3" text="緑の石３回目" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="ichi_nichi" text="一日のはじまり" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="ichi_nichi2" text="一日のはじまり２" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="ichi_nichi3" text="一日のはじまり３" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]
[glink target="neko" text="猫" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]
[glink target="neko2" text="猫2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 color=white]

[glink target="neko3" text="猫3" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
[glink target="neko4" text="猫4" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="neko5" text="猫5" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="kiki_jyouzu1" text="聞き上手" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=white]
[glink target="kiki_jyouzu_2" text="聞き上手２凡庸" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 color=white]
[glink target="kiki_jyouzu_3" text="聞き上手３事件解決後" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 color=white]

[glink target="page2" text="次へ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=500 color=white]
;ページ停止に地点にジャンプ
@jump target="*common"

*page2
[glink target="*sijyou_yujin_1" text="友人1(お見合い前)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="*sijyou_yujin_2" text="友人1(お見合い後)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="*sijyou_yujin_b" text="友人2(前・凡庸)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="*sijyou_yujin_b2" text="友人2(後・凡庸)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="syokuji" text="食事" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="syokuji_2" text="食事2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]
[glink target="syokuji_3" text="食事3" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]

[glink target="michi" text="道" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
[glink target="michi2" text="道2(事件解決後)" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="*henka1" text="変化と永遠" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="*henka2" text="変化と永遠2" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=white]
[glink target="*henka3" text="変化と永遠3" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=white]
[glink target="*satuki" text="さつき" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 color=white]
[glink target="*satuki2" text="さつき2" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 color=white]

[glink target="page3" text="次へ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=500 color=white]
;ページ停止に地点にジャンプ
@jump target="*common"

*page3
[glink target="*sincya" text="新茶" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="*sincya2" text="新茶２凡庸" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="*sincya3" text="新茶３凡庸" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="*sincya3_1" text="新茶凡庸A" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="*sincya3_2" text="新茶凡庸A" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="*sincya3_3" text="新茶凡庸B" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]
[glink target="*sincya3_4" text="新茶凡庸B" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]

[glink target="*kyoku1" text="お気に入りの曲1" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
[glink target="*kyoku2" text="お気に入りの曲2" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="*sps" text="スポーツの話題(見前)" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="*sps2" text="スポーツの話題(事後)" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=white]
[glink target="*sps2_1" text="スポーツの話題(凡庸・前)" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=white]
[glink target="*sps2_2" text="スポーツの話題(凡庸・後)" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 color=white]

[glink target="page4" text="次へ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=500 color=white]
;ページ停止に地点にジャンプ
@jump target="*common"

*page4
[glink target="*sisyu" text="詩集" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
[glink target="*kangeki" text="観劇(事件前)" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="*kangeki2" text="観劇(事件後)" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="*syasin" text="写真(事件前)" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=white]
[glink target="*syasin2" text="写真(事件後)" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=white]
[glink target="*sijyou_kaidan_1" text="怪談(事件前)" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 color=white]
[glink target="*sijyou_kaidan_2" text="怪談(事件後)１" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 color=white]
[glink target="*sijyou_kaidan_3" text="怪談(事件後)２" graphic="select_waku_x500.png" size=20 width="250" x=400 y=450 color=white]
[glink target="page1" text="前へ" graphic="select_waku_x500.png" size=20 width="250" x=100 y=550 color=white]
*common

[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=550 color=white]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=600 color=white]
[s]
[endif]

*fumi_cmmon
;============================================================================================================
;///////////////////////////////////////////////////////////新茶の話題/////////////////////////////
;============================================================================================================
*sincya
*sijyou_fumi47
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=50]
新茶の話題（事件前）[p]
[endif]
[手紙四条 fumi_number=]
[名前]、手紙をありがとう。[r]
[r]
もう、新茶の季節なんだね。[r]
僕も、あの場所をよく通るけど、[名前]の季節を[r]
感じ取る感性には目を見張るものがあるね。[r]
[r]
なんだか、[名前]の手紙を読んでいたら、お茶の[r]
いい香りがしてきたかも。[r]
[r]
お茶を飲みながら、季節の花を眺める時間が[r]
とても落ち着く時間だね。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][46] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sincya_1
*sijyou_fumi48
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=50]
新茶の話題（事件後）[p]
[endif]
[手紙四条 fumi_number=]
[名前]さん、御手紙をありがとうございます。[r]
[r]
もう、新茶の季節なのですね。[r]
僕も、あの場所をよく通りますが、[名前]さんの季節を[r]
感じ取る感性には目を見張るものがありますね。[r]
[r]
なんだか、[名前]の手紙を読んでいたら、お茶の[r]
いい香りがしてきました。[p]
;してきたように感じられました・・・うまくいえない
[r]
[r]
追記[r]
[r]
お茶を飲みながら、季節の花を眺める時間が[r]
とても落ち着く時間です。[r]
[名前]さんは、どんな時にお茶をいただきますか？[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][47] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sincya_2
*sijyou_fumi49
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=50]
新茶の話題（事件後）[p]
[endif]
;///////新茶の話題///////
[手紙四条 fumi_number=]
[名前]さん、手紙をありがとうございます。[r]
[r]
この前、見晴らしの良い山通りを散策していたら[r]
山岳の合間に小さな茶畑を見つめました。[r]
茶畑の上で、風車が回っているのは、何か意味が[r]
あるのでしょうか？[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][48] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sincya_3
*sijyou_fumi50
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=50]
新茶の話題（事件後）[p]
[endif]
;///////新茶の話題///////
[手紙四条 fumi_number=]
[名前]さん、手紙をありがとうございます。[r]
[r]
あの風車は扇風機っていうらしいです。[r]
暖かい空気の層を各藩する事で、霜の被害を防ごいで[r]
いるんだそう。[r]
そういった努力によってより美味しいお茶が出来てい[r]
ると思うと、ありがたいですよね[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][49] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sincya_3_1
*sijyou_fumi51
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=50]
新茶の話題　凡庸（事件前）[p]
[endif]
;///////新茶の話題///////
[手紙四条 fumi_number=]
[名前]、手紙をありがとう。[r]
[r]
[r]
[r]
この前、自分でお茶を[ruby text=い]淹れたら量を間違えて[r]
苦くなってしまったよ。[r]
[名前]なら、こんな失敗はしないのだろうね。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][50] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sincya_3_2
*sijyou_fumi52
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=50]
新茶の話題　凡庸（事件前）[p]
[endif]
;///////新茶の話題///////
[手紙四条 fumi_number=]
[名前]、手紙をありがとう。[r]
[r]
[r]
[r]
この前、自分でお茶をいれたら[r]
美味しく[ruby text=い]淹れることができたよ。[r]
お茶を飲むと落ち着くよね[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][51] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]

;============================================================================================================
;sijyou_fumi53 聞き上２＿２
;============================================================================================================
*sijyou_fumi54

;============================================================================================================
;////////////////事件後凡庸////////////////////////////////
*sincya_3_3
*sijyou_fumi55
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=50]
新茶の話題　凡庸（事件後）[p]
[endif]
[手紙四条 fumi_number=]
[名前]さん、手紙をありがとう。[r]
[r]
[r]
[r]
この前、自分でお茶をいれたら量を間違えて[r]
苦くなってしまいました。[r]
[名前]さんが[ruby text=い]淹れたお茶を飲んでみたい[r]
ですね[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][54] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sincya_3_4
*sijyou_fumi56
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=50]
新茶の話題　凡庸（事件後）[p]
[endif]
;///////新茶の話題///////
[手紙四条 fumi_number=]
[名前]さん、手紙をありがとう。[r]
[r]
[r]
[r]
この前、自分でお茶をいれたら[r]
美味しく[ruby text=い]淹れることができました。[r]
[名前]さんと一緒にお茶を飲みたいですね[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][55] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]

;============================================================================================================
;///////////////////////////////////////////////////////////さつきの話題/////////////////////////////
;============================================================================================================
*satuki
*sijyou_fumi57
[if exp="f.okeiko_gamen != true"]
[wait time=10]
[テキスト全画面白文字]
[wait time=50]
さつきの話題[p]
[endif]
[手紙四条 fumi_number=]
[名前]
[if exp="f.sijyou_event6==1"]
さん
[endif]
。手紙をありがとう
[if exp="f.sijyou_event6==1"]
ございます
[endif]
。[r]
[r]
百年の月日の経つ、さつきとは見事なもので[r]
[if exp="f.sijyou_event6==1"]
でしょうね
[else]
だろうね
[endif]
……。
[r]
盆栽は、小さな箱庭のように思えて、生花とは[r]
違った面白さがあ
[if exp="f.sijyou_event6==1"]
りますね。
[else]
るよね。
[endif]
[r]
あの小さな世界の中の大きな木の下で、[r]
のんびりと過ごしてみたい。なんて思うのは、[r]
僕だけ
[if exp="f.sijyou_event6==1"]
でしょうか
[else]
かな？
[endif]
[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][56] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*satuki2
*sijyou_fumi58
[if exp="f.okeiko_gamen != true"]
[wait time=10]
[テキスト全画面白文字]
[wait time=50]
さつきの話題(見合い後)[p]
[endif]
[手紙四条 fumi_number=]
[名前]さん。いつも御手紙をありがとうございます。[r]
[r]
百年の月日の経つ、さつきとは見事なもので[r]
しょうね……。[r]
盆栽は、小さな箱庭のように思えて、生花とは[r]
違った面白さがあると思います。[r]
あの小さな世界の中の大きな木の下で、[r]
のんびりと過ごしてみたい。なんて思うのは、[r]
僕だけでしょうか？[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][57] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]

;============================================================================================================
;/////////////////////////////////////////////詩集の話題/////////////////////////////
;============================================================================================================
*sisyu
*sijyou_fumi59
[if exp="f.okeiko_gamen != true"]
[wait time=10]
[テキスト全画面白文字]
[wait time=50]
詩集[p]
[endif]
[手紙四条 fumi_number=]
[名前]。手紙をありがとう。[r]
素敵な詩集を見つけたんだね[r]
[r]
～高く競い合う葉の中に[r]
[sp]咲く薄紫の上品の菖蒲の花。[r]
[sp]凛とした姿は貴婦人のよう。～[r]
[r]
僕も詩人になれるでしょうか？[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][58] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
;/////////////////////////////聞き上手と話し上手の話題////////////////////////////
;============================================================================================================
*kiki_jyouzu1
*sijyou_fumi60
[if exp="f.okeiko_gamen != true"]
[wait time=10]
[テキスト全画面白文字]
[wait time=50]
聞き上手と話し上手１[p]
[endif]
[手紙四条 fumi_number=]
[名前]へ　手紙をありがとう。[r]
[r]
そんなことがあったんだね。[r]
よく話す方って話題が尽きないですね。[r]
僕は、文矢の前以外では、聞く側かな。[r]
[r]
今の[名前]は、どちらかな。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][59] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]
;============================================================================================================
*sijyou_fumi61
[wait time=10]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=50]
聞き上手と話し上手１(見合い後or事件解決後)[p]
[endif]
[手紙四条 fumi_number=]
[名前]
[if exp="f.sijyou_event6==1"]
さん
[endif]
。手紙をありがとう
[if exp="f.sijyou_event6==1"]
ございます。
[else]
。
[endif]
[r]
[r]
そんなことがあった
[if exp="f.sijyou_event6==1"]
のですね。
[else]
のだね。
[endif]
[r]
きっと楽しい話
[if exp="f.sijyou_event6==1"]
をされたのでしょうね。
[else]
で、[名前]の友人も楽しい時間を過ごせたのだろうね。
[endif]
[r]
僕は、文矢の前以外では、聞く側かもしれません。[r]
[r]
今の[名前]
[if exp="f.sijyou_event6==1"]
さん
[endif]
は、どちらかと言えば、話を聞く側
[if exp="f.sijyou_event6==1"]
でしょうか？[r]
いつも手紙を読んでくれてありがとうございます。[r]
[else]
かな？　[r]
いつも手紙を読んでくれてありがとう。[r]
[endif]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][60] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi62
*kiki_jyouzu_2
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=50]
聞き上手と話し上手２　見合い前[p]
[endif]
[手紙四条 fumi_number=]
[名前]。手紙をありがとう。[r]
[r]
今日は、どんな話をしたかな？[r]
[r]
時には、相手の話をゆっくり聞くことも[r]
大事だね。　でも話したくなったら僕に[r]
話してね。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][61] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi63
*kiki_jyouzu_2_1
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=50]
聞き上手と話し上手２　凡庸[p]
[endif]

[手紙四条 fumi_number=]
[名前]
[if exp="f.sijyou_event6==1"]
さん。手紙をありがとうございます。[r]
[r]
今日は、どんな話をされましたか？[r]
[r]
時には、相手の話をゆっくり聞くことも[r]
大事ですね。　でも話したくなったら僕に[r]
お話してください。[r]
[else]
。 手紙をありがとう。[r]
[r]
今日は、どんな話をしたのかな。[r]
[r]
時には、相手の話をゆっくり聞くことも[r]
大事なんだろうね。　でも話したくなったら僕に[r]
お話してね。[r]
僕は君の話を聞く時が、とても落ち着いた時間だからね。[r]
[endif]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][62] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi64
*kiki_jyouzu_3
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
聞き上手と話し上手３(事件解決後)[p]
[endif]
[手紙四条 fumi_number=]
[名前]
[if exp="f.sijyou_event6==1"]
さん
[endif]
。手紙をありがとう。[r]
[r]
[r]
[r]
[名前]さんが楽しく話をしてくれる姿を[r]
思い描くと心が穏やかになります。[r]
[r]
今日あったこと、気づいたこと[r]
何気ないことを教えて下さると嬉しいです。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][63] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
;///////////////////////////////////////////////////////////食事の話題/////////////////////////////
;============================================================================================================
*sijyou_fumi65
*syokuji
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『食事』[p]
[endif]
[手紙四条 fumi_number=]
[名前]。手紙をありがとう。[r]
[r]
[r]
最近は、大衆食堂が増えてきたね。[r]
ウチでは、父の外交の関係で、洋食が多めかな。[r]
暖かいハムボーグ、ステーキは、[r]
とても美味しいよ。[r]
今度、一緒に食事会をしようか[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][64] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi66
*syokuji_2
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『食事 凡庸1』[p]
[endif]
[手紙四条 fumi_number=]
[名前]。手紙をありがとう。[r]
[r]
[r]
皆で食事をするなら、馴染みのすき焼き店もいいけれど、[r]
[名前]と食べるなら甘いものがいいかな[r]
キヤラメルやカルグルト……最近は色々な嗜好品が増えたよね。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][65] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi67
*syokuji_3
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『食事 凡庸2』[p]
[endif]
[手紙四条 fumi_number=]
[名前]さん。手紙をありがとうございます。[r]
甘くてさわやかなカルシスは春夏に飲むと清々しい気持ちになりますね。[r]
カルシスは、「初恋の味」と謳われているけれど[r]
[r]どうでしょうか？[r]
[r][名前]さんの初恋がどのようなものでしたか考えしまいます。
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][66] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
;//////////////////////////////緑の石の話題/////////////////////////////
;============================================================================================================
*sijyou_fumi68
*midori
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『緑の石』[p]
[endif]
[手紙四条 fumi_number=]
[名前]
[if exp="f.sijyou_event6==1"]
さん
[endif]
。手紙をありがとう
[if exp="f.sijyou_event6==1"]
ございます
[endif]
。[r]
[r]
調べてみたら、翡翠の天然石のよう
[if exp="f.sijyou_event6==1"]
です
[else]
だ
[endif]
ね[r]
僕も、この前、宝石商の知人から、[r]
天然石の話をしたところ、[r]
腕の良い職人を雇ってるそうです[r]
この石の持ち味をそのままに加工してくれる、[r]
そうなので、また、[名前]に贈りますね[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][67] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi69
*midori2
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『緑の石　凡庸』[p]
[endif]
[手紙四条 fumi_number=]
[名前]。手紙をありがとう。[r]
[r]
[r]
[r]
もう少し待ってくれると助かるよ。[r]
楽しみにしていてください。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][68] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]
;============================================================================================================
*sijyou_fumi70
*midori2_1
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『緑の石　凡庸』[p]
[endif]
[手紙四条 fumi_number=]
[名前]
[if exp="f.sijyou_event6==1"]
さん。[r]いつも手紙をありがとうございます。[r]
[r]
[r]
もう少し待ってくださると助かります。[r]
お時間取らせて申し訳ありません。[r]
ですが、楽しみにしていてください。[r]
[else]
。[r]いつも手紙をありがとう。[r]
もう少し待ってくれると良いことあるよ。[r]
待たせてごめんね。[r]
でも、楽しみにしていてほしいな。　[r]
[ruby text=じゅう]十[ruby text=に]二月になったら[r]
この件について手紙を交わそうか[r]
[endif]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][69] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi71
*midori3
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『緑の石（事件後のみ）』３[p]
[endif]
[手紙四条 fumi_number=]
[名前]
[if exp="f.sijyou_event6==1"]
さん
[endif]
。この前の手紙の件です。[r]
[r]
如何でしょうか？　[r]
台座下には透かしが入っているため、[r]
光が入って側面からの見た時のデザインも
美しいかと思います。[r]
お送り致しました帯どめをお喜びいただけ[r]
ると幸いです。[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][70] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]
;============================================================================================================
*sijyou_fumi72
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『緑の石（事件後のみ）』４[p]
[endif]
[手紙四条 fumi_number=]
[名前]さんへ。手紙ありがとう。[r]
[r]
翡翠の石言葉を知っていますか？[r]
『よき知らせ、忍耐、調和、飛躍、福徳、福財、幸運』で[r]
太古から、災いや不運、呪いから身を守り、[r]
持ち主の身の安全を守ってくれると言われているそうです。[r]
僕も[名前]さんの幸せを築き、守っていきたいです。[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][71] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
;//////////////////////////////一日のはじまりの話題/////////////////////////////
;============================================================================================================
*sijyou_fumi73
*ichi_nichi
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『一日のはじまり』[p]
[endif]
[手紙四条 fumi_number=]
[名前]へ。手紙をありがとう。[r]
[r]
[r]
そうだね。一日のはじまりに良いことがあると[r]
その日の気分がよくなることもあるよね[r]
思った通りに花を生けることが出来たときなんか、[r]
嬉しい気持ちになるよ。[r]
[名前]も楽しい一日が過ごせますように[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][72] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi74
*ichi_nichi2
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『一日のはじまり２凡庸』[p]
[endif]
[手紙四条 fumi_number=]
[名前]へ。手紙をありがとう。[r]
[r]
[r]
[r]
今日は、よいことがありましたか？[r]
[名前]も楽しい一日が過ごせますように[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][73] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]
;============================================================================================================
*sijyou_fumi53
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『一日のはじまり２＿２凡庸』[p]
[endif]
[手紙四条 fumi_number=]
[名前]さんへ。手紙をありがとうございます。[r]
[r]
[r]
[r]
今日は、よいことがありましたか？[r]
[名前]さんも楽しい一日が過ごせますように[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][52] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi75
*ichi_nichi3
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『一日のはじまり３』[p]
[endif]
[手紙四条 fumi_number=]
[名前]さんへ。手紙をありがとうございます。[r]
[r]
[r]
[r]
一日のはじまりに[名前]さんからの[r]
手紙が届くと嬉しい気持ちになります。[r]
[名前]にも、幸せな一日を過ごせますように[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][74] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
;//////////////////////////////猫の話題/////////////////////////////
;============================================================================================================
*sijyou_fumi76
*neko
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『猫（見合い前・事件解決前）』[p]
[endif]
[手紙四条 fumi_number=]
[名前]。いつも手紙をありがとう。[r]
[r]
[r]
[r]
今日は、猫を見かけたかな？[r]
[名前]は、猫が好きなんだね。[r]
ところでどうして三毛は、雄が少ないのでしょうね。[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][75] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi77
*neko2
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『猫 見合い後　事件解決後』[p]
[endif]
[手紙四条 fumi_number=]
[名前]
[if exp="f.sijyou_event6==1"]
さん
[endif]
。いつも手紙をありがとう
[if exp="f.sijyou_event6==1"]
ございます
[endif]
。[r]
[r]
[r]
僕は、猫も犬も大好き
[if exp="f.sijyou_event6==1"]
ですね。[r]
時々、神様は、どうしてあの様な可愛い生き物を造られたの[r]
だろうと考えてしまいます
[else]
だよ
[endif]
。[r]
一人で歩いている時に人懐っこい猫を見つけ[r]
てしまうと撫でてしま
[if exp="f.sijyou_event6==1"]
いますよね
[else]
うよね
[endif]
[r]
[名前]
[if exp="f.sijyou_event6==1"]
さん
[endif]
は、どちらが好きですか？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][76] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi78
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『猫 凡庸2』[p]
[endif]
[手紙四条 fumi_number=]
[名前]さん。いつも手紙をありがとうございます。[r]
[r]
[r]
[r]
今日は、猫を見かけましたか？[r]
[名前]さんは、猫がお好きなのですね[r]
そんな[名前]さんを僕は可愛らしいと感じています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][77] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi79
*neko3
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『猫３　事件解決後』[p]
[endif]
[手紙四条 fumi_number=]
[名前]さん。いつも手紙をありがとう。[r]
[r]
実は、この前。[r]
泣いていた子供に出会ったんだ。[r]
それで理由を聞いたところ、家で猫を飼えないから[r]
捨てないといけないらしくって……[r]
ウチで飼うことになったんだ。[p]
[r]
といっても、ウチには猫アレルギーの祖父が[r]
いるから貰い手が見つかるまで[r]
の間になってしまうのだけど……[r]
[r]
既に愛着が湧きそうです。[r]
[r]
また機会があったら、[名前]さんに近況を報告するよ[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][78] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi80
*neko4
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『猫４　事件解決後』[p]
[endif]
[手紙四条 fumi_number=]
[名前]さん。いつも手紙をありがとう。[r]
[r]
[r]
子猫は、健やかに大きくなっていますよ。[r]
ちなみに、今は、白い足でしっかり立ちあがって[r]
僕の様子を見ています。[r]
（もし、この手紙に足跡がついていたら[r]
申し訳ない）[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][79] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi81
*neko4b
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『猫５　事件解決後』[p]
[endif]
[手紙四条 fumi_number=]
[名前]さん。いつも手紙をありがとう。[r]
[r]
[r]
[r]
先日、引き取り手が見つかったらしく[r]
別れの時が近いようです。[r]
それまでに、後悔がないように可愛がろうとは[r]
思っている。　でも寂しくなるね。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][80] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi82
*neko5
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『猫６　事件解決後』[p]
[endif]
[手紙四条 fumi_number=]
[名前]さん。いつも手紙をありがとう。[r]
[r]
[r]
今日は、引き取りの日でした。[r]
家族の中で僕に一番なついていました。[r]
体重もみるみる多くなってとても天真爛漫で健康な[r]
子でした。[r]
家に残った猫じゃらしを見ると切なくなります。[r]
どうか、彼が幸せでありますように。[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][81] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
;//////////////////////////////道の話題/////////////////////////////
;============================================================================================================
*sijyou_fumi83
*michi
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『道』[p]
[endif]
[手紙四条 fumi_number=]
[名前]へ。手紙をありがとう。[r]
[r]
道案内をしてあげたんだね。[r]
違う町から来たのかな？[r]
あの迷いやすい裏通りからやってくると、[r]
向かってる先が合っているか不安になるの[r]
かもしれない。[r]
そんな時に優しい[名前]がいてくれて[r]
その方は、どんなに安心したのだろう。[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][82] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi84
*michi2
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『道２ (事件解決後)』[p]
[endif]
[手紙四条 fumi_number=]
[名前]さんへ。手紙ありがとう。[r]
[r]
向かってる先が合っているか不安になる[r]
こともあった。[r]
そんな時に優しい[名前]がいてくれて[r]
僕は、どんなに安心したのだろうか。[r]
ありがとう。[r]
道は人の出会いそのものでもあるのかもしれないね[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][83] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
;//////////////////////////////好きな曲の話題/////////////////////////////
;============================================================================================================
*sijyou_fumi85
*kuoku1
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『お気に入りの曲』[p]
[endif]
[手紙四条 fumi_number=]
[名前]へ。手紙ありがとう。[r]
[r]
独逸の歌曲が好きだよ。[r]
懐かしくて切ない気持ちになる曲なんだ。[r]
連作歌曲だから詩もついている。[r]
～僕の心をひたしたい[r]
ユリの中のうてなにひたしたい[r]
ユリは響かせるだろう[r]
僕の恋人への歌を～[r]
一度聴いたら忘れられなくなる、そんな曲だと思うよ。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][84] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi86
*kyoku2
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『お気に入りの曲２』[p]
[endif]
[手紙四条 fumi_number=]
[名前]
[if exp="f.sijyou_event6==1"]
さん
[endif]
へ。手紙ありがとう
[if exp="f.sijyou_event6==1"]
ございます
[endif]
。[r]
[r]
つづきの詩を聞きたいの
[if exp="f.sijyou_event6==1"]
ですか
[endif]
？[r]
[sp]～いとしい恋人よ[r]
いとしい恋人よ、僕の胸に手を当ててごらん、[r]
 ほら、聞こえるだろう？[r]
部屋の中でトントンやっているのが。[r]
陰険な、意地の悪い大工がひとりここに住み込んで、[r]
僕の棺桶を作ってるのさ。～[r]
[if exp="f.sijyou_event6==1"]
不思議な詩ですよね。でもこういった気持ちは、わからなくはないです。
[endif]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][85] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]

;============================================================================================================
;//////////////////////////////変化と永遠の話題/////////////////////////////
*sijyou_fumi87
*henka1
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『変化と永遠（見合い後、事件解決前）』[p]
[endif]
[手紙四条 fumi_number=]
[名前]へ　手紙をありがとう。[r]
[r]
変わらないでいてほしいものって何だろう。[r]
[r]
あえて、いうなら今使っている 花鋏 でしょうか[r]
そこそこ切れ味もよく、耐久性もあり研ぎやすいので[r]
重宝しています。[r]
これ一本で、花も枝も、紙もリボンも切れますので、[r]
ありがたい花鋏です。[r]
[名前]には、そういったものはありますか？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][86] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi88
*henka2
[手紙四条 fumi_number=]
[名前]へ　手紙をありがとう。[r]
[r]
変わらないものは、あるのでしょうか。[r]
どこかにそういったものがあるなら[r]
置いていかれた愛なのでしょうか……色々と考えてしまいますね。[r]
[名前]には、そういったものはありますか？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][87] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]

;============================================================================================================
*sijyou_fumi89
*henka3
[手紙四条 fumi_number=]
[名前]さんへ　手紙をありがとう。[r]
[r]
[r]
変わらない日々や景色が[名前]さんのおかげで[r]
変わっていきます。[r]
[名前]さんへの愛も、もっと深まっていくように[r]
尽力しますね。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][88] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
;//////////////////////////////////////スポーツ////////////////////////////////////////////
*sijyou_fumi90
*sps
[if exp="f.okeiko_gamen != true"]
[wait time=10]
[テキスト全画面白文字]
[wait time=50]
『スポーツ』[p]
[endif]
[手紙四条 fumi_number=]
[名前]へ　手紙をありがとう。[r]
[r]
[r]
[r]
今の僕は、運動は、特にやっていないかな[r]
昔は、文矢とウチでテニスをしたり、乗馬をやっていたね。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][89] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi91
*sps2
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『 スポーツ  事件解決後』[p]
[endif]
[手紙四条 fumi_number=]
[名前]さんへ　手紙をありがとう。[r]
[r]
今のところ、特に運動と呼べるものは特にやってないですね。[r]
気分転換に庭の池でボートはたまに乗りますが、[r]
これでは、[名前]さんがおっしゃるような運動には[r]
入らないですね。[r]
毎朝、街中を付き人と卸商店を駆け回って花材を集める。[r]
それが今の僕の運動というものでしょうか……[r]
[r]
余裕ができた時にそういったことができると[r]
良いですね[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][90] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi92
*sps2_1
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『 スポーツ 凡庸1』[p]
[endif]
[手紙四条 fumi_number=]
[名前]へ　手紙をありがとう。[r]
[r]
[r]
今はまだ手が離せないけれど[r]
また機会があったら、野球を見に行こうか？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][91] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi93
*sps2_2
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『 スポーツ 凡庸2』[p]
[endif]
[手紙四条 fumi_number=]
[名前]
[if exp="f.sijyou_event6==1"]
さん
[endif]
へ　手紙をありがとう
[if exp="f.sijyou_event6==1"]
ございます
[endif]
。[r]
[r]
[r]
今はまだ成すべきこともあって、手が離せませんが[r]
また機会がありましたら、野球を見に行きましょうね。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][92] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
;///////////////////////////////////////観劇////////////////////////////////////////////
;============================================================================================================
*sijyou_fumi94
*kangeki
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『観劇の話題　事件前』
[endif]
[手紙四条 fumi_number=]
[名前]へ　手紙をありがとう。[r]
最近できたようだね。[r]
しばらくは、込み合いそうだから、落ち着いたら[r]
見に行きたいね。[r]
観劇といえば、今度、歌舞伎を見にいってみようか？[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][93] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_fumi95
*kangeki2
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『観劇の話題　事件後』[p]
[endif]
[手紙四条 fumi_number=]
[名前]さんへ　手紙をありがとうございます。[r]
[r]
観劇について調べていたら、僕が好きな作曲家の曲を使用いた[r]
オペラをやっているそうです。[r]
しかしながら、今はやりたいこと、やらなければいけないこと[r]
が多くて行けそうにないです……。[r]
[r]
いつか[名前]さんとオペラを見に行きたいですね。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][94] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]

;============================================================================================================
;///////////////////////////////////////写真////////////////////////////////////////////
;============================================================================================================
*sijyou_fumi96
*syasin
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『写真の話題（事件前）』[p]
[endif]
[手紙四条 fumi_number=]
[名前]へ　手紙をありがとう。[r]
[r]
声をかけられるということは、[名前]が、とても[r]
綺麗なのだろうけど、僕は心配だな[r]
[r]
写真といえば[r]
文矢の結納写真、幸せそうに写っていたね。[r]
そういえば、[名前]は、やっぱり白無垢がいいのかな。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][95] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]

;============================================================================================================
*sijyou_fumi97
*syasin2
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『写真の話題（事件後）』
[p]
[endif]
[手紙四条 fumi_number=]
[名前]さんへ　手紙をありがとう。[r]
[r]
声をかけられるということは、[名前]さんが、[r]
美しいなのだろうけど、僕は心配のあまり、[r]
居ても立っても居られない気持ちになってしまいます。[r]
[r]
[名前]さん、僕以外の男性に声をかけられても、ついて[r]
いかなように。[r]
たとえ、その写真が素晴らしい写真であっても、世に[r]
出回ってしまうと悪い人に悪用されてしまうことがある[r]
のです。[p]
;昔はエロ写真に美人をコラしていた
[r]
ああ、お説教くさくなって申し訳ありません。[r]
[r]
話は、変わりますが、写真といえば[r]
[名前]さんとの結納時の写真の段取りが決まってなかったですね[r]
お父様とお会いした時にもお話しますが、[名前]さんの要望が[r]
あったら教えてください。[r]
その時の[名前]さんは、とても美しいのでしょうね。[r]
;説教くささ半減↑
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][96] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
;//////////////////////////////////////////////////友人について 凡庸/////////////////////////////////////////
;============================================================================================================
*sijyou_yujin_b|(凡庸)
*sijyou_fumi98
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=50]
『友人について』(お見合い前)
[p]
[endif]
[手紙四条 fumi_number=]
[r][r][r]
[if exp="f.sijyou_event6==1"]
[名前]さん。　手紙をありがとうございます。[r]
[名前]さんは、いつも、どの様な話をしていますか？[r]
きっと楽しい話をしているのでしょうね。[r]
普段の[名前]さんを色々と想像してしまいました。[r]
[名前]さんと御友人が、いつも楽しくありますように。[r]
[else]
[名前]へ。　手紙ありがとう。[r]
[r]
[r]
[r]
[名前]と友人は、いつもは、どんな感じなのかな。[r]
[名前]とその友人がいつも楽しくありますように。[r]
[endif]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][97] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
;///////////////////////////////////////△友人について （これは元ファイルにも残してあります)/////////////////////////////////////////
;============================================================================================================
;凡庸難しい
*sijyou_yujin_b2|(凡庸)
*sijyou_fumi99
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=50]
『友人について凡庸』(お見合い後)
[p]
[endif]
[手紙四条 fumi_number=]
[r][r][r]
[名前]さんへ　手紙をありがとうございます。[r]
[r]
[名前]さんと御友人は、いつもは、どのようなお話をされるの[r]
でしょうか。[r]
[名前]さんと御友人がいつも楽しくありますように。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][98] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_yujin_1|(お見合い前)
*sijyou_fumi19
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=50]
『友人について』(お見合い前)
[p]
[endif]
[手紙四条 fumi_number=]
[r][r][r]
[名前]へ[r]
[r]
[r]
手紙ありがとう。友人についてだね。それなら[r]
君も知ってるだろうけど文矢が友人だよ。[r]
僕のことより[名前]の話を聞きたいね[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][18] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;/////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_yujin_2|(お見合い後)
*sijyou_fumi20
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=50]
『友人について』(お見合い後)
[p]
[endif]
[手紙四条 fumi_number=]
[r][r][r]
[名前]
[if exp="f.sijyou_event6 == 1"]
さんへ[r]
いつも手紙をありがとうございます。[r]
僕と文矢が出会ったのは、十四歳の時でした。[r]
[名前]さんは、八歳だったかな。[r]
あの頃から文矢は外交官になるための勉学に励んでいたね。[r]
五年後には、結婚も決まって、外交官の仕事も、[r]
うまくいって……[r]
僕は思うんだ。 外交官を目指していた頃、文矢は奥さんに[r]
励まされていたのかもしれないって。[r]
そう考えると手紙を書くって素敵なことですね。[r]
文矢に今度、会ったら聞いてみようかな。[r]
[else]
へ[r]
[r]
手紙ありがとう。友人についてだね。それなら[r]
文矢が一番の親友だよ。[r]
文矢は手紙に合う心葉についてよく訊かれたよ、[r]
彼の朗らかなところが好きなんだよね[r]
[endif]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][19] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_kaidan_1
*sijyou_fumi21
*sijyou_fumi104
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=50]
『怪談話について』(お見合い前)
[p]
[endif]
[手紙四条 fumi_number=]
;見合い前
[名前]へ。[r][r]
いつも手紙をありがとう。[r]
そういえば、[名前]は怖い話が苦手だったね。[r]
昔、僕が怪談話をして[名前]を泣かせてしまって、[r]
文矢に怒られた事を思い出したよ。[r]
もちろん、すぐに反省したよ。[sp]あの時は、楽しかったね。[r]
何気ない出来事が幸せで、全てが輝いていた気がするよ。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][103] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_kaidan_2
*sijyou_fumi22
*sijyou_fumi105
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=50]
『怪談話について』(お見合い後・事件解決後)
[p]
[endif]
[手紙四条 fumi_number=]
;見合い後 f.sijyou_event6==1
[名前]さんへ。[r][r]
いつも手紙をありがとうございます。[r]
今も[名前]さんは怖い話は苦手でしょうか？[r]
麻草の"花鳥得時"という場所に[r]
珍しい見世物小屋が出来たらしいです。[r]
花園の他にクマやトラも見れるらしいので、[r]
いつか二人で行ってみたいですね。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][104] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
*sijyou_kaidan_3
*sijyou_fumi23
*sijyou_fumi106
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=50]
『怪談話について』(お見合い後・事件解決後２)
[p]
[endif]
[手紙四条 fumi_number=]
;見合い後 f.sijyou_event6==1 前の手紙を見ている
[名前]さんへ。[r][r]
いつも手紙をありがとうございます。[r]
[名前]さんは、もう怖い話は苦手ではないのでしょうか？[r]
それでしたら、怖いお話を耳にしたので[r]
書いてみましょうか。[p]

麻草にある高層建築"明雲閣"での怖い噂話です。[r]
夜の明雲閣は怪しげに光り、[r]
時折、明雲閣の前を通った男性を呼び寄せるそうです。[r]
呼び寄せられた男性は、無我夢中で長い螺旋階段を[r]
ぐるぐると上がってしまい、
[r]昼間では十二階だったその先に十三階への扉が現れるそうです。[p]

そこには明雲閣の下の娼館で働いていた、[r]
元娼婦の幽霊がいて、その人を連れ去ってしまうそうです。[r]
あそこのエレベエタアが故障したままなのは、[r]
そのせいかもしれない？[sp]……といった噂話でした。[r]
あまり、怖くなかったかな。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][105] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
[手紙四条読了 fumi_number=]
;//////////////////////////////////////////////////////////////////
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;============================================================================================================
;/////////////////ここからは戻り処理//////////////////////
*back_test
[イベントシーン終了]
[bg storage="../fgimage/bg/title.jpg" time=0]
@jump storage="test_sijyou.ks"
[s]
*title
@jump storage="title.ks"
[s]

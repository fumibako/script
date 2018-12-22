;=============================================================
;script by ＠名無しさん１ 
;背景マクロ使用・四条は戻り場所がちがうのでpage_textにて判定　他はtextでok
;作成をありがとうございます。◆jsYiJcqRkk
;===========================================================
*page_text
@jump storage="test_haikei_list.ks" target=&tf.bg_target

[iscript]
tf.raberu = "*page"+tf.page;
[endscript]
;四条立ち絵サイズ別のjump機能についてはtest_haikei_list.ksの*close以下に移動しました。◆jsYiJcqRkk
;===========================================================0
*back_page_haikei
;glinkそのままからでは動作が悪い
[iscript]
tf.page = tf.page-1;
tf.raberu = "*page"+tf.page;
//alert(tf.raberu);
[endscript]
[wait time=10]
@jump target=&tf.raberu
[s]
*next_page_haikei
[iscript]
tf.page = tf.page+1;
tf.raberu = "*page"+tf.page;
//alert(tf.raberu);
[endscript]
[wait time=10]
@jump target=&tf.raberu
[s]


;===========================================================0
*page0

*page1
@call target=*clear
["バラ"]
@jump target=page_text
*page2
@call target=*clear
["チャリティー会場１"]
@jump target=page_text
*page3
@call target=*clear
["チャリティー会場２"]
@jump target=page_text
*page4
@call target=*clear
["チャリティー会場３"]
@jump target=page_text
*page5
@call target=*clear
["チャリティー会場４"]
@jump target=page_text
*page6
@call target=*clear
["チャリティー会場５"]
@jump target=page_text
*page7
@call target=*clear
["チャリティー会場６"]
@jump target=page_text
*page8
@call target=*clear
["チャリティー会場７"]
@jump target=page_text
*page9
@call target=*clear
["チャリティー会場８"]
@jump target=page_text
*page10
@call target=*clear
["藤枝演奏１"]
@jump target=page_text
*page11
@call target=*clear
["藤枝演奏２"]
@jump target=page_text
*page12
@call target=*clear
["藤枝演奏３"]
@jump target=page_text
*page12b
@call target=*clear
["藤枝演奏３＿１"]
@jump target=page_text
*page13
@call target=*clear
["img効果キラキラ"]
@jump target=page_text
*page14
@call target=*clear
["img効果削除"]
["葛城森林公園"]
@jump target=page_text
*page15
@call target=*clear
["藤枝ムーンレイク"]
@jump target=page_text
*page16
@call target=*clear
["四条宴会"]
@jump target=page_text
*page16b
@call target=*clear
["四条宴会廊下"]
@jump target=page_text
*page17
@call target=*clear
["四条エピローグ和室"]
@jump target=page_text
*page18
@call target=*clear
["四条玄関"]
@jump target=page_text
*page19
@call target=*clear
["四条玄関ホール"]
@jump target=page_text
*page20
@call target=*clear
["四条華衣部屋"]
@jump target=page_text
*page21
@call target=*clear
["四条金屏風"]
@jump target=page_text
*page22
@call target=*clear
["四条金屏風２"]
@jump target=page_text
*page23
@call target=*clear
["四条香水"]
@jump target=page_text
*page24
@call target=*clear
["四条＿香水２"]
@jump target=page_text
*page25
@call target=*clear
["四条ネリネ庭"]
@jump target=page_text
*page26
@call target=*clear
[四条廊下"]
@jump target=page_text
*page27
@call target=*clear
[四条展覧会"]
@jump target=page_text
*page28
@call target=*clear
["四条家"]
@jump target=page_text
*page29
@call target=*clear
["四条＿波ヶ浦"]
@jump target=page_text
*page30
@call target=*clear
["四条＿波ヶ裏２"]
@jump target=page_text
*page31
@call target=*clear
["四条＿病院"]
@jump target=page_text
*page32
@call target=*clear
["四条＿銀座"]
@jump target=page_text
*page33
@call target=*clear
["葛城宮＿御所"]
@jump target=page_text
*page34
@call target=*clear
["葛城宮＿御所＿中"]
@jump target=page_text
*page35
@call target=*clear
["葛城宮＿野天"]
@jump target=page_text
*page36
@call target=*clear
["四条縁側＿夏"]
@jump target=page_text
*page37
@call target=*clear
["藤枝＿ミルクホール＿１"]
@jump target=page_text
*page38
@call target=*clear
[藤枝＿ミルクホール店内"]
@jump target=page_text
*page38b
@call target=*clear
[藤枝＿ミルクホールピアノ"]
@jump target=page_text
*page39
@call target=*clear
["藤枝＿ミルクホール"]
@jump target=page_text
;背景のサイズ？場所変更わからない？
*page40
@call target=*clear
["藤枝＿ミルクホール３"]
@jump target=page_text
*page41
@call target=*clear
["藤枝＿ミルクホール４"]
@jump target=page_text
*page42
@call target=*clear
["藤枝＿ミルクホール玄関２"]
@jump target=page_text
*page43
@call target=*clear
["藤枝＿ミルクホール玄関１"]
@jump target=page_text
*page44
@call target=*clear
["財前＿会議室"]
@jump target=page_text
*page44b
@call target=*clear
["葛城宮_会議室与党"]
@jump target=page_text
*page44c
@call target=*clear
["葛城宮_会議室"]
@jump target=page_text

*page45
@call target=*clear
["四条＿ネリネイメージ"]
@jump target=page_text
*page46
@call target=*clear
["四条＿池"]
@jump target=page_text
*page47
@call target=*clear
["四条＿池＿ロング"]
@jump target=page_text
*page48
@call target=*clear
["四条＿バラ噴水"]
@jump target=page_text
*page49
@call target=*clear
["四条＿温室"]
@jump target=page_text
[s]
*page50
@call target=*clear
["四条＿バラ茂み"]
@jump target=page_text
[s]
*page51
@call target=*clear
["四条＿土蔵"]
@jump target=page_text
[s]
*page52
@call target=*clear
["四条＿土蔵２"]
@jump target=page_text
*page53
@call target=*clear
["四条＿教室１"]
@jump target=page_text
[s]
*page54
@call target=*clear
["四条＿教室夕"]
@jump target=page_text
[s]
*page55
@call target=*clear
["四条＿教室夕２"]
@jump target=page_text
[s]
*page56
@call target=*clear
["四条_教室全体"]
@jump target=page_text
[s]
*page57
@call target=*clear
["四条＿教室廊下"]
@jump target=page_text
*page58
@call target=*clear
["財前＿バラ"]
@jump target=page_text
*page59
@call target=*clear
["四条＿婚約者実家２"]
@jump target=page_text
*page60
@call target=*clear
["四条＿花園"]
@jump target=page_text
*page61
@call target=*clear
["財前＿居間"]
@jump target=page_text
*page62
@call target=*clear
["財前＿パーティ会場"]
@jump target=page_text
*page63
@call target=*clear
["財前＿パーティ会場２"]
@jump target=page_text
*page64
@call target=*clear
["財前＿パーティ会場控室"]
@jump target=page_text
*page65
@call target=*clear
["財前＿パーティ会場庭"]
@jump target=page_text
*page66
@call target=*clear
["財前＿パーティ会場＿応接室"]
@jump target=page_text
*page67
@call target=*clear
["財前＿洋館"]
@jump target=page_text
*page67b
@call target=*clear
["財前＿呉服"]
@jump target=page_text
*page67c
@call target=*clear
["財前＿銀行前"]
@jump target=page_text
*page68
@call target=*clear
["財前＿雪柳"]
@jump target=page_text
*page69
@call target=*clear
["バラ園"]
@jump target=page_text
*page70
@call target=*clear
["葛城宮＿謁見室"]
@jump target=page_text
*page71
@call target=*clear
["藤枝＿演奏会場"]
@jump target=page_text
*page72
@call target=*clear
["葛城宮＿演説"]
@jump target=page_text
*page73
@call target=*clear
["葛城宮＿放送局"]
@jump target=page_text
*page74
@call target=*clear
["公園"]
@jump target=page_text
*page75
@call target=*clear
["葛城宮＿仲人庭"]
@jump target=page_text
*page76
@call target=*clear
["葛城宮＿仲人道"]
@jump target=page_text
*page77
@call target=*clear
["葛城宮＿仲人道２"]
@jump target=page_text
*page78
@call target=*clear
["葛城宮＿仲人庭＿夕"]
@jump target=page_text
*page79
@call target=*clear
["葛城宮＿執務室"]
@jump target=page_text
*page80
@call target=*clear
["藤枝＿音楽練習室"]
@jump target=page_text
*page81
@call target=*clear
["ビワ＿木"]
@jump target=page_text
*page82
@call target=*clear
["青空"]
@jump target=page_text
*page83
@call target=*clear
["萩の花"]
@jump target=page_text
*page84
@call target=*clear
["四条＿庭園＿椅子"]
@jump target=page_text
*page85
@call target=*clear
["四条＿庭園＿椅子dark"]
@jump target=page_text
*page86
@call target=*clear
["玄関"]
@jump target=page_text
*page87
@call target=*clear
["四条＿歌舞伎"]
@jump target=page_text
*page88
@call target=*clear
["四条＿歌舞伎＿外"]
@jump target=page_text
*page89
@call target=*clear
["紅葉"]
@jump target=page_text
*page90
@call target=*clear
["紅葉＿階段"]
@jump target=page_text
*page91
@call target=*clear
["紅葉＿鬱葱"]
@jump target=page_text
*page92
@call target=*clear
["黒田家"]
@jump target=page_text
*page93
@call target=*clear
["町"]
@jump target=page_text
*page94
@call target=*clear
["img効果＿町雪"]
@jump target=page_text
*page95
@call target=*clear
["img効果削除"]
["門"]
@jump target=page_text
*page96
@call target=*clear
["お稽古部屋"]
@jump target=page_text
*page97
@call target=*clear
["町＿橋"]
@jump target=page_text
*page98
@call target=*clear
["室内音楽１"]
@jump target=page_text
*page99
@call target=*clear
["室内音楽２"]
@jump target=page_text
*page100
@call target=*clear
["料亭"]
@jump target=page_text
*page100b
@call target=*clear
["料亭夕"]
@jump target=page_text
*page101
@call target=*clear
["桜"]
@jump target=page_text
*page102
@call target=*clear
["森林公園＿門"]
@jump target=page_text
*page103
@call target=*clear
["森林公園＿冬"]
@jump target=page_text
*page104
@call target=*clear
["森林公園＿冬＿夕"]
@jump target=page_text
*page105
@call target=*clear
["森林公園＿夕"]
@jump target=page_text
*page106
@call target=*clear
["四条＿和雑貨"]
@jump target=page_text
*page107
@call target=*clear
["石畳み"]
@jump target=page_text
*page108
@call target=*clear
["石畳み＿夕"]
@jump target=page_text
*page109
@call target=*clear
["石畳み＿夜"]
@jump target=page_text
*page110
@call target=*clear
["森林＿冬"]
@jump target=page_text
*page111
@call target=*clear
["森林＿冬＿夕"]
@jump target=page_text
*page112
@call target=*clear
["夕焼け"]
@jump target=page_text
*page113
@call target=*clear
["藤枝_kyakuseki"]
@jump target=page_text
*page114
@call target=*clear
["藤枝_tanpopo"]
@jump target=page_text
*page115
@call target=*clear
["藤枝_tanpopo_kouen"]
@jump target=page_text
*page116
@call target=*clear
["主人公庭＿０"]
@jump target=page_text
*page117
@call target=*clear
["主人公庭＿明"]
@jump target=page_text
*page118
@call target=*clear
["主人公庭＿春"]
@jump target=page_text
*page119
@call target=*clear
["主人公庭＿雪"]
@jump target=page_text
*page120
@call target=*clear
["主人公庭＿夜"]
@jump target=page_text
*page120b
@call target=*clear
["主人公庭＿夏"]
@jump target=page_text
*page120c
@call target=*clear
["四条_線香花火"]
@jump target=page_text
*page120d
@call target=*clear
["四条_打ち上げ花火"]
@jump target=page_text
*page120e
@call target=*clear
["四条：思い出"]
@jump target=page_text
*page120f
@call target=*clear
[四条：思い出(セピア)]
@jump target=page_text
*page120g
@call target=*clear
[チャリティー会場食堂]
@jump target=page_text
*page120h
@call target=*clear
[チャリティー会場回廊]
@jump target=page_text
*page120i
@call target=*clear
[チャリティー会場休憩所]
@jump target=page_text
*page120j
@call target=*clear
[町＿思い出]
@jump target=page_text
*page120k
@call target=*clear
[葛城宮＿ヨーロッパモノローグ]
@jump target=page_text
*page120l
@call target=*clear
[藤枝＿ミルクホール外観]
@jump target=page_text

*page121
@call target=*clear
[chara_mod name="bg" storage="toumei.gif"]
[eval exp="tf.page=1"]
@jump target=page_text
*page122
@call target=*clear
[chara_mod name="bg" storage="toumei.gif"]
[eval exp="tf.page=1"]
@jump target=page_text
[s]
;===========================================================
*clear
[iscript]
$('.credit').remove();
$('.credit1').remove();
[endscript]
;クレジット位置調整(主人公鑑賞時、顔グラ上にクレジットがかぶらないように)
[if exp="tf.tokuten == 'all'"]
[eval exp="tf.cl_x=10"]
[eval exp="tf.cl_y1=330"]
[eval exp="tf.cl_y=360"]
[endif]
[if exp="tf.tokuten != 'all'"]
[eval exp="tf.cl_x=10"]
[eval exp="tf.cl_y1=570"]
[eval exp="tf.cl_y=600"]
[endif]

[return]

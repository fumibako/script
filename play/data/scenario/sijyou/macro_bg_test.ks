*start
[eval exp="tf.page=0"]
[eval exp="f.haikei_credit=''"]
[mtext text=&f.haikei_credit layer=27 size=18 x=400 y=10 color=#5b4513 fadeout=false in_delay=0]
@layopt layer=27 visible=true
@layopt layer=1 visible=true
@clearstack stack=if
[iscript]
tf.raberu = "*"+tf.page;
[endscript]
*label_macro
*1
[macro name=バラ]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bara_image.jpg"]
[endmacro]
*2
[macro name=チャリティー会場１]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity.jpg"]
[endmacro]
*3
[macro name=チャリティー会場２]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity2.jpg"]
[endmacro]
*4
[macro name="チャリティー会場３"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity3.jpg"]
[endmacro]
*5
[macro name="チャリティー会場４"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity4.jpg"]
[endmacro]
*6
[macro name="チャリティー会場５"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity51.jpg"]
[endmacro]
*7
[macro name="チャリティー会場６"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity6.jpg"]
[endmacro]
*8
[macro name="チャリティー会場６＿１"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity6_1.jpg"]
[endmacro]
*9
[macro name="チャリティー会場７"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity7.jpg"]
[endmacro]
*10
[macro name="チャリティー会場８"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity8.jpg"]
[endmacro]
*11
[macro name="藤枝演奏１"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_hujieda_ensou1.jpg"]
[endmacro]
*12
[macro name="藤枝演奏２"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_hujieda_ensou2.jpg"]
[endmacro]
*13
[macro name="藤枝演奏３"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_hujieda_ensou3.jpg"]
[endmacro]
*14
[macro name="藤枝演奏３＿１"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_hujieda_ensou3_1.jpg"]
[endmacro]
*15
macro name="img効果キラキラ"]
[eval exp="f.haikei_credit=''"]
[image layer=1 name=kouka storage="bg/B4nFWraU42/bg_hujieda_kirakira.png"]
[endmacro]
*16
[macro name="葛城森林公園"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_katuraginomiya_sinrin_kouen.jpg"]
[endmacro]
*17
[macro name="藤枝ムーンレイク"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_moon_lake.jpg"]
[endmacro]
*18
[macro name="四条宴会"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_enkai.jpg"]
[endmacro]
*19
[macro name="四条エピローグ和室"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_ep_wasitu.jpg"]
[endmacro]
*20
[macro name="四条玄関"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_genkan.jpg"]
[endmacro]
*21
[macro name="四条玄関ホール"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_genkan_hole.jpg"]
[endmacro]
*22
macro name="四条華衣部屋"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kai_room.jpg"]
[endmacro]
*23
[macro name="四条金屏風"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kinbyoubu.jpg"]	
[endmacro]
*24
[macro name="四条金屏風２"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kinbyoubu2.jpg"]
[endmacro]
*25
[macro name="四条香水"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kousuiB.jpg"]
[endmacro]
*26
[macro name="四条＿香水２"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kousi.jpg"]
[endmacro]
*27
[macro name="四条ネリネ庭"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_nerine_niwa4.jpg"]
[endmacro]
*28
macro name="四条廊下"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_rouka.jpg"]
[endmacro]
*29
macro name="四条展覧会"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_tenrankai.jpg"]
[endmacro]
*30
[macro name="四条家"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyouke.jpg"]
[endmacro]
*31
[macro name="ししおどし"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sisiodosi.jpg"]
[endmacro]
*32
[macro name="四条＿波ヶ浦"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/sijyou_namigaura.jpg"]
[endmacro]

[macro name="四条＿波ヶ裏２"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/test_sijyou_namigauara.jpg"]
[endmacro]
*33
[macro name="四条＿病院"]
[eval exp="f.haikei_credit='明治村画像庫'"]
[chara_mod name="bg" storage="bg/sijyou_byouin.jpg"]
[endmacro]
*34
[macro name="四条＿銀座"]
[eval exp="f.haikei_credit='＠名無しさん１/◆jsYiJcqRkk'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/ginza3.jpg"]
[endmacro]
*35
[macro name="葛城宮＿御所"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/gosyo.jpg"]
[endmacro]
*36
[macro name="葛城宮＿野天"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/katuraginomiya_yaten.jpg"]
[endmacro]
*37
[macro name="藤枝＿ミルクホール＿１"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/mirukuho_ru4.jpg"]
[endmacro]
*38
macro name="藤枝＿ミルクホール店内"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/mirukutennai.jpg"]
[endmacro]
*39
[macro name="藤枝＿ミルクホール"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/mirukutest.jpg"]
[endmacro]
*80
[macro name="ミルクホール２"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo/＠名無しさん１'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/mirukuho-ru2.jpg"]
[endmacro]
*81
[macro name="ミルクホール３"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo/＠名無しさん１'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/mirukuho-ru3.jpg"]
[endmacro]
*82
[macro name="ミルクホール４"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/mirukutest.jpg"]
[endmacro]
*78
[macro name="藤枝＿ミルクホール玄関２"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/miruku_genkan2.jpg"]
[endmacro]
*79
[macro name="藤枝＿ミルクホール玄関１"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/mirukugenkan.jpg"]
[endmacro]
*40
[macro name="財前＿会議室"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/test_zaizen_kaigi.jpg"]
[endmacro]
*41
[macro name="四条＿ネリネイメージ"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/nerine_img.jpg"]
[endmacro]
*42
[macro name="四条＿池"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/niwa_large_ike.jpg"]
[endmacro]
*43
[macro name="四条＿池＿ロング"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/niwa_large_ike_long.jpg"]	
[endmacro]
*44
[macro name="四条＿バラ噴水"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/niwa_rose_funsui.jpg"]
[endmacro]
*45
[macro name="ムーンレイク＿ピアノ効果"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_moon_lake.jpg"]
@layopt layer=1 visible=true
[image layer=1 name="kouka" storage="bg/B4nFWraU42/piano_base.png" zindex=2]
[wait time=4000]
[endmacro]
*46
[macro name="四条＿温室"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/rose_onsitsu.jpg"]
[endmacro]
*47
[macro name="四条＿バラ茂み"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/rose_shigemi.jpg"]
[endmacro]
*48
[macro name="四条＿土蔵"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_dozou.jpg"]
[endmacro]
*49
[macro name="四条＿土蔵２"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/test_sijyou_dozou.jpg"]
[endmacro]
*50
[macro name="四条＿教室１"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_kyousitu1.jpg"]
[endmacro]
*51
[macro name="四条＿教室夕"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_kyousitu1_yuu.jpg"]
[endmacro]
*52
[macro name="四条＿教室夕２"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_kyousitu1_yuu2.jpg"]
[endmacro]
*53
[macro name="四条_教室全体"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_kyousitu_zentai.jpg"]
[endmacro]
*54
[macro name="四条＿教室廊下"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_kyousitu_rouka1.jpg"]
[endmacro]
*55
[macro name="四条＿洋館バラ"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/youkan_rose.jpg"]	
[endmacro]
*56
[macro name="財前＿バラ"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/zaizen_bara.jpg"]
[endmacro]
*57
[macro name="四条＿婚約者実家２"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/test_konyaku_jikka2.jpg"]
[endmacro]
*58
[macro name="四条＿花園"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/test_sijyou_hanazono.jpg"]
[endmacro]
*59

*60
[macro name="財前＿居間"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/test_room_zaizen_ima.jpg"]
[endmacro]
*61
[macro name="財前＿パーティ会場"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/test_zaizen_paty1.jpg"]
[endmacro]
*62
[macro name="財前＿パーティ会場２"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/zaizen_doitutaisikan.jpg"]
[endmacro]
*63
[macro name="財前＿パーティ会場控室"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/zaizen_paty_hikae.jpg"]
[endmacro]
*64
[macro name="財前＿パーティ会場庭"]
[eval exp="f.haikei_credit='flicer'"]
[chara_mod name="bg" storage="bg/zaizen_paty_niwa.jpg"]
[endmacro]
*65
;photo　by　
[macro name="財前＿パーティ会場＿応接室"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/zaizen_paty_ousetu.jpg"]
[endmacro]
*66
[macro name="財前＿洋館"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/zaizen_youkan.jpg"]
[endmacro]
*67
[macro name="財前＿洋館モノローグ"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/zaizen_youkan_zengamen.jpg"]
[endmacro]
*68
[macro name="財前＿雪柳"]
[eval exp="f.haikei_credit='flicer'"]
[chara_mod name="bg" storage="bg/zaizen_yukiyanagi.jpg"]
[endmacro]
*69
[macro name="バラ園"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/baraen.jpg"]
[endmacro]
*70
[macro name="藤枝＿ハト"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo/＠名無しさん１'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/bg_hujieda_hato.jpg"]
[endmacro]
*71
[macro name="藤枝＿ハト２"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo/＠名無しさん１'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/bg_hujieda_hato2.jpg"]
[endmacro]
*72
[macro name="葛城宮＿謁見室"]
[eval exp="f.haikei_credit='明治村画像庫'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/ekken.jpg"]
[endmacro]
*73
[macro name="藤枝＿演奏会場"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/ensoukaijyou.jpg"]
[endmacro]
*74
[macro name="葛城宮＿演説"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/enzetu.jpg"]
[endmacro]
*75
[macro name="葛城宮＿放送局"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/housoukyoku.jpg"]
[endmacro]
*76
[macro name="時子＿散策１"]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/bg_tokiko_sansaku1.jpg"]
[endmacro]
*77
[macro name="公園"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/kouenn.jpg"]
[endmacro]
*83
[macro name="葛城宮＿仲人庭"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/nakoudoteiniwa.jpg"]
[endmacro]
*84
[macro name="葛城宮＿仲人道"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/nakoudoteiniwa_michi1.jpg"]
[endmacro]
*85
[macro name="葛城宮＿仲人道２"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/nakoudoteiniwa_michi2.jpg"]
[endmacro]
*86
[macro name="tf.page==86"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/nakoudoteiniwa_mon_yuu.jpg"]
[endmacro]
*87
macro name="tf.page==87"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/ongakurensyuusitu.jpg"]
[endmacro]
*88
[macro name="tf.page==88"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/situmu.jpg"]
[endmacro]
*89
[macro name="tf.page==89"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/test_zaizen_kaigi.jpg"]
[endmacro]
*90
macro name="tf.page==90"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo/◆jsYiJcqRkk'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/tyasitu.jpg"]

[endmacro]
*91
[macro name="tf.page==91"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/yo-roppa.jpg"]
[endmacro]
*92
[macro name="tf.page==92"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/youkannaisou.jpg"]
[endmacro]

*93
macro name="tf.page==93"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_biwa_flower.jpg"]
[endmacro]
*94
[macro name="tf.page==94"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_biwa_tree.jpg"]
[endmacro]
*95
[macro name="tf.page==95"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_bluesky.jpg"]
[endmacro]
*96
[macro name="tf.page==96"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_flower_hagi.jpg"]
[endmacro]
*97
[macro name="tf.page==97"]
[eval exp="f.haikei_credit='fricer'"]
[endmacro]
*98
[macro name="tf.page==98"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_garden_isu.jpg"]
[endmacro]
*99
[macro name="tf.page==99"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_garden_isu_dark.jpg"]
[endmacro]
*100
[macro name="tf.page==100"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_genkan.jpg"]
[endmacro]
*101
[macro name="tf.page==101"]
[eval exp="f.haikei_credit='明治村画像庫'"]
[chara_mod name="bg" storage="bg/bg_kabuki_in.jpg"]
[endmacro]
*102
[macro name="tf.page==102"]
[eval exp="f.haikei_credit='明治村画像庫'"]
[chara_mod name="bg" storage="bg/bg_kabuki_out.jpg"]
[endmacro]
*103
[macro name="tf.page==103"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_katuraginomiya_gosyo_in.jpg"]
[endmacro]
*104
[macro name="tf.page==104"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_koryouriya.jpg"]
[endmacro]
*105
[macro name="tf.page==105"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_kouyou_kaidan.jpg"]
[endmacro]
*106
[macro name="tf.page==106"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_kouyou_ussou.jpg"]
[endmacro]
*107
[macro name="tf.page==107"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_kurodake.jpg"]
[endmacro]
*108
[macro name=""]
[eval exp="f.haikei_credit='ゆうあかり　http://light77.sakura.ne.jp/'"]
[chara_mod name="bg" storage="bg/bg_machi.jpg"]
[endmacro]
*109
[macro name="img_効果＿町雪"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/ + (効果)＠名無しさん１'"]
[image layer=1 name=kouka storage="bg/sijyou_machi_yuki.png"]
[wait time=4000]
[endmacro]
*110

[macro name="img効果削除"]
[iscript]
$('.kouka').remove();
[endscript]
[endmacro]

[macro name="bg_web_blue2"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_web_blue2.jpg"]
[endmacro]

*111
[macro name="tf.page==111"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/bg_machi_hasi.jpg"]
[endmacro]
*112
[macro name="tf.page==112"]
[eval exp="f.haikei_credit='ゆうあかり　http://light77.sakura.ne.jp/'"]
[chara_mod name="bg" storage="bg/bg_machi_omoide.jpg"]
[endmacro]
*113
[macro name="tf.page==113"]
[eval exp="f.haikei_credit='ゆうあかり　http://light77.sakura.ne.jp/'"]
[chara_mod name="bg" storage="bg/bg_okeiko.jpg"]
[endmacro]
*114
[macro name="tf.page==114"]
[eval exp="f.haikei_credit='ゆうあかり　http://light77.sakura.ne.jp/　+編集'"]
[chara_mod name="bg" storage="bg/bg_okeiko_anten.jpg"]
[endmacro]
*115
[macro name="tf.page==115"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_web_blue.jpg"]
[endmacro]

*116
[macro name="tf.page==116"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_omoide.jpg"]
[endmacro]
*117
[macro name="tf.page==117"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
[endmacro]
*118
[macro name="tf.page==118"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_sakura.jpg"]
[endmacro]
*119
[macro name="tf.page==119"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/menu_load_bg.jpg"]
[endmacro]
*120
[macro name="tf.page==120"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_shinrinkouen_gate.jpg"]
[endmacro]
*121
[macro name="tf.page==121"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_shinrinkouen_gate_winter.jpg"]
[endmacro]
*122
[macro name="tf.page==122"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_shinrinkouen_gate_winter_yuu.jpg"]
[endmacro]
*123
[macro name="tf.page==123"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_shinrinkouen_gate_yuu.jpg"]
[endmacro]
*124
macro name="tf.page==124"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_shop_wazakka.jpg"]
[endmacro]
*125
[macro name="tf.page==125"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_teien_ishidatami.jpg"]
[endmacro]
*126
[macro name="tf.page==126"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_teien_ishidatami_yoru.jpg"]
[endmacro]
*127
[macro name="tf.page==127"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_teien_ishidatami_yuu.jpg"]
[endmacro]
*128
[macro name="tf.page==128"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_tirasi.jpg"]
[endmacro]
*129
[macro name="tf.page==129"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_winter_forest.jpg"]
[endmacro]
*130
[macro name="tf.page==130"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_winter_forest_yuu.jpg"]
[endmacro]
*131
[macro name="tf.page==131"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_yuuyake.jpg"]
[endmacro]
*132
[macro name="tf.page==132"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/hijieda_kaede_sita2.jpg"]
[endmacro]
*133
[macro name="tf.page==133"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/hujieda_kyakuseki.jpg"]
[endmacro]
*134
[macro name="tf.page==134"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/hujieda_sky1.jpg"]
[endmacro]
*135
[macro name="tf.page==135"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/hujieda_tanpopo.jpg"]
[endmacro]
*136
[macro name="tf.page==136"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/hujieda_tanpopo_kouen.jpg"]
[endmacro]
*137
[macro name="tf.page==137"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/katuraginomiya_kaigi2.jpg"]
[endmacro]
*138
[macro name="tf.page==138"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[endmacro]
*139
[macro name="tf.page==139"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/room_niwa_akarui.jpg"]
[endmacro]

[macro name="主人公庭＿春"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/room_niwa_haru.jpg"]
[endmacro]

[macro name="主人公庭＿夜"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg"]
[endmacro]

[macro name="主人公庭＿雪"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/room_niwa_yuki.jpg"]
[endmacro]

[macro name="室内音楽１"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/situnaiongaku.jpg"]
[endmacro]

[macro name="室内音楽２"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/situnaiongaku2.jpg"]
[endmacro]

[macro name="門"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/test_mon.jpg"]
[endmacro]

[macro name="bg_web_blue.jpg"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_web_blue.jpg"]
[endmacro]

[return]

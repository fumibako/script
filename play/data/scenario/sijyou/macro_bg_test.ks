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
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bara_image.jpg"]
[endmacro]
*2
[macro name=チャリティー会場１]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity.jpg"]
[endmacro]
*3
[macro name=チャリティー会場２]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity2.jpg"]
[endmacro]
*4
[macro name="チャリティー会場３"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity3.jpg"]
[endmacro]
*5
[macro name="チャリティー会場４"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity4.jpg"]
[endmacro]
*6
[macro name="チャリティー会場５"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity51.jpg"]
[endmacro]
*7
[macro name="チャリティー会場６"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity6.jpg"]
[endmacro]
*8
[macro name="チャリティー会場６＿１"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity6_1.jpg"]
[endmacro]
*9
[macro name="チャリティー会場７"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity7.jpg"]
[endmacro]
*10
[macro name="チャリティー会場８"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity8.jpg"]
[endmacro]
*11
[macro name="藤枝演奏１"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_hujieda_ensou1.jpg"]
[endmacro]
*12
[macro name="藤枝演奏２"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_hujieda_ensou2.jpg"]
[endmacro]
*13
[macro name="藤枝演奏３"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_hujieda_ensou3.jpg"]
[endmacro]
*14
[macro name="藤枝演奏３＿１"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_hujieda_ensou3_1.jpg"]
[endmacro]
*15
[macro name="img効果キラキラ"]
[eval exp="tf.img_kouka='on'"]
[eval exp="f.haikei_credit=''"]
[image layer=1 name=kouka storage="bg/B4nFWraU42/bg_hujieda_kirakira.png"]
[endmacro]
*16
[macro name="葛城森林公園"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_katuraginomiya_sinrin_kouen.jpg"]
[endmacro]
*17
[macro name="藤枝ムーンレイク"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_moon_lake.jpg"]
[endmacro]
*18
[macro name="四条宴会"]
[eval exp="tf.img_kouka='off'"]
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
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_genkan.jpg"]
[endmacro]
*21
[macro name="四条玄関ホール"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_genkan_hole.jpg"]
[endmacro]
*22
macro name="四条華衣部屋"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kai_room.jpg"]
[endmacro]
*23
[macro name="四条金屏風"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kinbyoubu.jpg"]	
[endmacro]
*24
[macro name="四条金屏風２"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kinbyoubu2.jpg"]
[endmacro]
*25
[macro name="四条香水"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kousuiB.jpg"]
[endmacro]
*26
[macro name="四条＿香水２"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kousi.jpg"]
[endmacro]
*27
[macro name="四条ネリネ庭"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_nerine_niwa4.jpg"]
[endmacro]
*28
macro name="四条廊下"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_rouka.jpg"]
[endmacro]
*29
macro name="四条展覧会"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_tenrankai.jpg"]
[endmacro]
*30
[macro name="四条家"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyouke.jpg"]
[endmacro]
*31
[macro name="ししおどし"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sisiodosi.jpg"]
[endmacro]
*32
[macro name="四条＿波ヶ浦"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/sijyou_namigaura.jpg"]
[endmacro]
*33
[macro name="四条＿波ヶ裏２"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/test_sijyou_namigauara.jpg"]
[endmacro]
*34
[macro name="四条＿病院"]
[eval exp="f.haikei_credit='明治村画像庫'"]
[chara_mod name="bg" storage="bg/sijyou_byouin.jpg"]
[endmacro]
*35
[macro name="四条＿銀座"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１/◆jsYiJcqRkk'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/ginza3.jpg"]
[endmacro]
*36
[macro name="葛城宮＿御所"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/gosyo.jpg"]
[endmacro]
*37
[macro name="葛城宮＿御所＿中"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_katuraginomiya_gosyo_in.jpg"]
[endmacro]
*38
[macro name="葛城宮＿野天"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/katuraginomiya_yaten.jpg"]
[endmacro]
*39
[macro name="藤枝＿ミルクホール＿１"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/mirukuho_ru4.jpg"]
[endmacro]
*40
macro name="藤枝＿ミルクホール店内"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/mirukutennai.jpg"]
[endmacro]
*41
[macro name="藤枝＿ミルクホール"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/mirukutest.jpg"]
[endmacro]
*42
[macro name="藤枝＿ミルクホール２"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo/＠名無しさん１'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/mirukuho-ru2.jpg"]
[endmacro]
*43
[macro name="藤枝＿ミルクホール３"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo/＠名無しさん１'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/mirukuho-ru3.jpg"]
[endmacro]
*44
[macro name="藤枝＿ミルクホール４"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/mirukutest.jpg"]
[endmacro]
*45
[macro name="藤枝＿ミルクホール玄関２"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/miruku_genkan2.jpg"]
[endmacro]
*46
[macro name="藤枝＿ミルクホール玄関１"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/mirukugenkan.jpg"]
[endmacro]
*47
[macro name="財前＿会議室"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/test_zaizen_kaigi.jpg"]
[endmacro]
*48
[macro name="四条＿ネリネイメージ"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/nerine_img.jpg"]
[endmacro]
*49
[macro name="四条＿池"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/niwa_large_ike.jpg"]
[endmacro]
*50
[macro name="四条＿池＿ロング"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/niwa_large_ike_long.jpg"]	
[endmacro]
*51
[macro name="四条＿バラ噴水"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/niwa_rose_funsui.jpg"]
[endmacro]
*52
[macro name="ムーンレイク＿ピアノ効果"]
[eval exp="tf.img_kouka='on'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_moon_lake.jpg"]
@layopt layer=1 visible=true
[image layer=1 name="kouka" storage="bg/B4nFWraU42/piano_base.png" zindex=2]
[wait time=4000]
[endmacro]
*53
[macro name="四条＿温室"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/rose_onsitsu.jpg"]
[endmacro]
*54
[macro name="四条＿バラ茂み"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/rose_shigemi.jpg"]
[endmacro]
*55
[macro name="四条＿土蔵"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_dozou.jpg"]
[endmacro]
*56
[macro name="四条＿土蔵２"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/test_sijyou_dozou.jpg"]
[endmacro]
*57
[macro name="四条＿教室１"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_kyousitu1.jpg"]
[endmacro]
*58
[macro name="四条＿教室夕"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_kyousitu1_yuu.jpg"]
[endmacro]
*59
[macro name="四条＿教室夕２"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_kyousitu1_yuu2.jpg"]
[endmacro]
*60
[macro name="四条_教室全体"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_kyousitu_zentai.jpg"]
[endmacro]
*61
[macro name="四条＿教室廊下"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_kyousitu_rouka1.jpg"]
[endmacro]
*62
[macro name="四条＿洋館バラ"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/youkan_rose.jpg"]	
[endmacro]
*63
[macro name="財前＿バラ"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/zaizen_bara.jpg"]
[endmacro]
*64
[macro name="四条＿婚約者実家２"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/test_konyaku_jikka2.jpg"]
[endmacro]
*65
[macro name="四条＿花園"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/test_sijyou_hanazono.jpg"]
[endmacro]
*66
[macro name="財前＿居間"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/test_room_zaizen_ima.jpg"]
[endmacro]
*67
[macro name="財前＿パーティ会場"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/test_zaizen_paty1.jpg"]
[endmacro]
*68
[macro name="財前＿パーティ会場２"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/zaizen_doitutaisikan.jpg"]
[endmacro]
*69
[macro name="財前＿パーティ会場控室"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/zaizen_paty_hikae.jpg"]
[endmacro]
*70
[macro name="財前＿パーティ会場庭"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='flicer'"]
[chara_mod name="bg" storage="bg/zaizen_paty_niwa.jpg"]
[endmacro]
*71
;photo　by　
[macro name="財前＿パーティ会場＿応接室"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/zaizen_paty_ousetu.jpg"]
[endmacro]
*72
[macro name="財前＿洋館"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/zaizen_youkan.jpg"]
[endmacro]
*73
[macro name="財前＿洋館モノローグ"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/zaizen_youkan_zengamen.jpg"]
[endmacro]
*74
[macro name="財前＿雪柳"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='flicer'"]
[chara_mod name="bg" storage="bg/zaizen_yukiyanagi.jpg"]
[endmacro]
*75
[macro name="バラ園"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/baraen.jpg"]
[endmacro]
*76
[macro name="藤枝＿ハト"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo/＠名無しさん１'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/bg_hujieda_hato.jpg"]
[endmacro]
*77
[macro name="藤枝＿ハト２"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo/＠名無しさん１'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/bg_hujieda_hato2.jpg"]
[endmacro]
*78
[macro name="葛城宮＿謁見室"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='明治村画像庫'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/ekken.jpg"]
[endmacro]
*79
[macro name="藤枝＿演奏会場"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/ensoukaijyou.jpg"]
[endmacro]
*80
[macro name="葛城宮＿演説"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/enzetu.jpg"]
[endmacro]
*81
[macro name="葛城宮＿放送局"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/housoukyoku.jpg"]
[endmacro]
*82
[macro name="時子＿散策１"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/bg_tokiko_sansaku1.jpg"]
[endmacro]
*83
[macro name="公園"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/kouenn.jpg"]
[endmacro]
*84
[macro name="葛城宮＿仲人庭"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/nakoudoteiniwa.jpg"]
[endmacro]
*85
[macro name="葛城宮＿仲人道"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/nakoudoteiniwa_michi1.jpg"]
[endmacro]
*86
[macro name="葛城宮＿仲人道２"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/nakoudoteiniwa_michi2.jpg"]
[endmacro]
*87
[macro name="葛城宮＿仲人庭＿夕"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/nakoudoteiniwa_mon_yuu.jpg"]
[endmacro]
*88
[macro name="藤枝＿音楽練習室"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/ongakurensyuusitu.jpg"]
[endmacro]
*89
[macro name="葛城宮＿執務室"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/situmu.jpg"]
[endmacro]
*90
[macro name="葛城宮＿茶室モノローグ"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo/◆jsYiJcqRkk'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/tyasitu.jpg"]
[endmacro]
*91
[macro name="葛城宮＿ヨーロッパモノローグ"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/yo-roppa.jpg"]
[endmacro]
*92
[macro name="洋館内装"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/youkannaisou.jpg"]
[endmacro]
*93
[macro name="ビワ＿花"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_biwa_flower.jpg"]
[endmacro]
*94
[macro name="ビワ＿木"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_biwa_tree.jpg"]
[endmacro]
*95
[macro name="青空"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_bluesky.jpg"]
[endmacro]
*96
[macro name="萩の花"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_flower_hagi.jpg"]
[endmacro]
*97
[macro name="四条＿庭園＿椅子"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_garden_isu.jpg"]
[endmacro]
*98
[macro name="四条＿庭園＿椅子dark"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_garden_isu_dark.jpg"]
[endmacro]
*99
[macro name="玄関"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_genkan.jpg"]
[endmacro]
*100
[macro name="四条＿歌舞伎"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='明治村画像庫'"]
[chara_mod name="bg" storage="bg/bg_kabuki_in.jpg"]
[endmacro]
*101
[macro name="四条＿歌舞伎＿外"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='明治村画像庫'"]
[chara_mod name="bg" storage="bg/bg_kabuki_out.jpg"]
[endmacro]
*102
[macro name="紅葉"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_koryouriya.jpg"]
[endmacro]
*104
[macro name="紅葉＿階段"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_kouyou_kaidan.jpg"]
[endmacro]
*105
[macro name="紅葉＿鬱葱"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_kouyou_ussou.jpg"]
[endmacro]
*106
[macro name="黒田家"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_kurodake.jpg"]
[endmacro]
*107
[macro name="町"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='ゆうあかり　http://light77.sakura.ne.jp/'"]
[chara_mod name="bg" storage="bg/bg_machi.jpg"]
[endmacro]
*108
[macro name="img効果＿町雪"]
[eval exp="tf.img_kouka='on'"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/ + (効果)＠名無しさん１'"]
[image layer=1 name=kouka storage="bg/sijyou_machi_yuki.png"]
[wait time=4000]
[endmacro]
*109
[macro name="img効果削除"]
[eval exp="tf.img_kouka='off'"]
[iscript]
$('.kouka').remove();
[endscript]
[endmacro]
*110
[macro name="門"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/test_mon.jpg"]
[endmacro]
*111
[macro name="町＿橋"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/bg_machi_hasi.jpg"]
[endmacro]
*112
[macro name="町＿思い出"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='ゆうあかり　http://light77.sakura.ne.jp/'"]
[chara_mod name="bg" storage="bg/bg_machi_omoide.jpg"]
[endmacro]
*113
[macro name="お稽古部屋"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='ゆうあかり　http://light77.sakura.ne.jp/'"]
[chara_mod name="bg" storage="bg/bg_okeiko.jpg"]
[endmacro]
*114
[macro name="お稽古部屋＿暗転"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='ゆうあかり　http://light77.sakura.ne.jp/　+編集'"]
[chara_mod name="bg" storage="bg/bg_okeiko_anten.jpg"]
[endmacro]
*115
[macro name="室内音楽１"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/situnaiongaku.jpg"]
[endmacro]
*116
[macro name="室内音楽２"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/situnaiongaku2.jpg"]
[endmacro]
*117
[macro name="四条_omoide"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_omoide.jpg"]
[endmacro]
*118
[macro name="料亭"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
[endmacro]
*119
[macro name=桜"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_sakura.jpg"]
[endmacro]
*120
[macro name="森林公園＿門"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_shinrinkouen_gate.jpg"]
[endmacro]
*121
[macro name="森林公園＿冬"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_shinrinkouen_gate_winter.jpg"]
[endmacro]
*122
[macro name="森林公園＿冬＿夕"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_shinrinkouen_gate_winter_yuu.jpg"]
[endmacro]
*123
[macro name="森林公園＿夕"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_shinrinkouen_gate_yuu.jpg"]
[endmacro]
*124
[macro name="四条＿和雑貨"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_shop_wazakka.jpg"]
[endmacro]
*125
[macro name="石畳み"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_teien_ishidatami.jpg"]
[endmacro]
*126
[macro name=""石畳み＿夜"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_teien_ishidatami_yoru.jpg"]
[endmacro]
*127
[macro name="石畳み＿夕"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_teien_ishidatami_yuu.jpg"]
[endmacro]
*128
[macro name="bg_tirasi"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_tirasi.jpg"]
[endmacro]
*129
[macro name="森林＿冬"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_winter_forest.jpg"]
[endmacro]
*130
[macro name="森林＿冬＿夕"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_winter_forest_yuu.jpg"]
[endmacro]
*131
[macro name="夕焼け"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_yuuyake.jpg"]
[endmacro]
*132
[macro name="hijieda_kaede_sita2"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/hijieda_kaede_sita2.jpg"]
[endmacro]
*133
[macro name="藤枝_kyakuseki"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/hujieda_kyakuseki.jpg"]
[endmacro]
*134
[macro name="藤枝_sky1"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/hujieda_sky1.jpg"]
[endmacro]
*135
[macro name="藤枝_tanpopo"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/hujieda_tanpopo.jpg"]
[endmacro]
*136
[macro name="藤枝_tanpopo_kouen"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/hujieda_tanpopo_kouen.jpg"]
[endmacro]
*137
[macro name="葛城宮_会議室"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/katuraginomiya_kaigi2.jpg"]
[endmacro]
*138
[macro name="主人公庭＿０"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[endmacro]
*139
[macro name="主人公庭＿明"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/room_niwa_akarui.jpg"]
[endmacro]
*140
[macro name="主人公庭＿春"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/room_niwa_haru.jpg"]
[endmacro]
*141
[macro name="主人公庭＿夜"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg"]
[endmacro]
*142
[macro name="主人公庭＿雪"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/room_niwa_yuki.jpg"]
[endmacro]
*143
[macro name="bg_web_blue"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_web_blue.jpg"]
[endmacro]
*144
[macro name="bg_web_blue2"]
[eval exp="tf.img_kouka='off'"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_web_blue2.jpg"]
[endmacro]
*145
[macro name="ロード背景"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/menu_load_bg.jpg"]
[endmacro]
[return]

;=============================================================================================
*start2
[eval exp="tf.page=0"]

[mtext text=&f.haikei_credit layer=27 size=18 x=400 y=10 color=#5b4513 fadeout=false in_delay=0]
@layopt layer=27 visible=true
@layopt layer=1 visible=true
@clearstack stack=if
[iscript]
tf.raberu = "*page"+tf.page;
[endscript]
*page0
*page1
["バラ"]
*page2
["チャリティー会場１"]
*page3
["チャリティー会場２"]
*page4
["チャリティー会場３"]
*page5
["チャリティー会場４"]
*page6
["チャリティー会場５"]
*page7
["チャリティー会場６"]
*page8
["チャリティー会場６＿１"]
*page9
["チャリティー会場７"]
*page10
["チャリティー会場８"]
*page11
["藤枝演奏１"]
*page12
["藤枝演奏２"]
*page13
["藤枝演奏３"]
*page14
["藤枝演奏３＿１"]
*page15
["img効果キラキラ"]
*page16
["葛城森林公園"]
*page17
["藤枝ムーンレイク"]
*page18
["四条宴会"]
*page19
["四条エピローグ和室"]
*page20
["四条玄関"]
*page21
["四条玄関ホール"]
*page22
["四条華衣部屋"]
*page23
["四条金屏風"]
*page24
["四条金屏風２"]
*page25
["四条香水"]
*page26
["四条＿香水２"]
*page27
["四条ネリネ庭"]
*page28
[四条廊下"]
*page29
[四条展覧会"]
*page30
["四条家"]
*page31
["ししおどし"]
*page32
["四条＿波ヶ浦"]
*page33
["四条＿波ヶ裏２"]
*page34
["四条＿病院"]
*page35
["四条＿銀座"]
*page36
["葛城宮＿御所"]
*page37
["葛城宮＿御所＿中"]
*page38
["葛城宮＿野天"]
*page39
["藤枝＿ミルクホール＿１"]
*page40
[藤枝＿ミルクホール店内"]
*page41
["藤枝＿ミルクホール"]
*page42
["藤枝＿ミルクホール２"]
*page43
["藤枝＿ミルクホール３"]
*page44
["藤枝＿ミルクホール４"]
*page45
["藤枝＿ミルクホール玄関２"]
*page46
["藤枝＿ミルクホール玄関１"]
*page47
["財前＿会議室"]
*page48
["四条＿ネリネイメージ"]
*page49
["四条＿池"]
*page50
["四条＿池＿ロング"]
*page51
["四条＿バラ噴水"]
*page52
["ムーンレイク＿ピアノ効果"]

*end
[return]

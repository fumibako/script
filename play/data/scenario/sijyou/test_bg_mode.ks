*start
[eval exp="tf.page=0"]
[eval exp="tf.bg_onry=1"]
[eval exp="f.haikei_credit=''"]
[mtext text=&f.haikei_credit layer=27 size=18 x=400 y=10 color=#5b4513 fadeout=false in_delay=0]
*link
@layopt layer=27 visible=true
@layopt layer=1 visible=true

[if exp="tf.chara_test == true"]
@clearstack stack=if
@jump storage="test_sijyou_hyoujou.ks" target=*sijyou_text
[else]
@freeimage layer=27
[mtext text=&f.haikei_credit layer=27 size=18 x=400 y=10 color=#5b4513 fadeout=false in_delay=0]
@clearstack stack=if
[endif]

@layopt layer=27 visible=true

[if exp="tf.test_sijyou == true"]
[glink storage="sijyou/test_bg_mode.ks" target=p1 exp="tf.page++" text="&tf.page" size=20 width="200" x=800 y=190 color=white]
[if exp="tf.page > 0"]
[glink storage="sijyou/test_bg_mode.ks" target=p1 exp="tf.page--" text="前へ" size=20 width="200" x=800 y=240 color=white]
[endif]
[glink storage="sijyou/test_bg_mode.ks" target=endtest text="おわり" size=20 width="200" x=800 y=290 color=white]
[s]
[endif]




*p1
[iscript]
$('.kouka').remove();
tf.raberu = "*"+tf.page;
[endscript]
@jump target=&tf.raberu

*0
*1
[if exp="tf.page == 1 || tf.page == 0 "]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bara_image.jpg"]
@jump target=link
[endif]
*2
[if exp="tf.page==2"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity.jpg"]
@jump target=link
[endif]
*3
[if exp="tf.page==3"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity2.jpg"]
@jump target=link
[endif]
*4
[if exp="tf.page==4"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity3.jpg"]
@jump target=link
[endif]
*5
[if exp="tf.page==5"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity4.jpg"]
@jump target=link
[endif]
*6
[if exp="tf.page==6"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity51.jpg"]
@jump target=link
[endif]
*7
[if exp="tf.page==7"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity6.jpg"]
@jump target=link
[endif]
*8
[if exp="tf.page==8"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity6_1.jpg"]
@jump target=link
[endif]
*9
[if exp="tf.page==9"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity7.jpg"]
@jump target=link
[endif]
*10
[if exp="tf.page==10"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity8.jpg"]
@jump target=link
[endif]
*11
[if exp="tf.page==11"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_hujieda_ensou1.jpg"]
[endif]
*12
[if exp="tf.page==12"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_hujieda_ensou2.jpg"]
[endif]
*13
[if exp="tf.page==13"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_hujieda_ensou3.jpg"]
[endif]
*14
[if exp="tf.page==14"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_hujieda_ensou3_1.jpg"]
[endif]
*15
[if exp="tf.page==15"]
[eval exp="f.haikei_credit=''"]
[image layer=1 name=kouka storage="bg/B4nFWraU42/bg_hujieda_kirakira.png"]
[endif]
*16
[if exp="tf.page==16"]
[iscript]
$('.kouka').remove();
[endscript]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_katuraginomiya_sinrin_kouen.jpg"]
[endif]
*17
[if exp="tf.page==17"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_moon_lake.jpg"]
[endif]
*18
[if exp="tf.page==18"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_enkai.jpg"]
[endif]
*19
[if exp="tf.page==19"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_ep_wasitu.jpg"]
[endif]
*20
[if exp="tf.page==20"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_genkan.jpg"]
[endif]
*21
[if exp="tf.page==21"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_genkan_hole.jpg"]
[endif]
*22
[if exp="tf.page==22"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kai_room.jpg"]
[endif]
*23
[if exp="tf.page==23"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kinbyoubu.jpg"]	
[endif]
*24
[if exp="tf.page==24"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kinbyoubu2.jpg"]
[endif]
*25
[if exp="tf.page==25"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kousuiB.jpg"]
[endif]
*26
[if exp="tf.page==26"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_nerine_niwa4.jpg"]
[endif]
*27
[if exp="tf.page==27"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_rouka.jpg"]
[endif]
*28
[if exp="tf.page==28"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_tenrankai.jpg"]
[endif]
*29
[if exp="tf.page==29"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyouke.jpg"]
[endif]
*30
[if exp="tf.page==30"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sisiodosi.jpg"]
[endif]
*31
[if exp="tf.page==31"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/sijyou_namigaura.jpg"]
[endif]
*32
[if exp="tf.page==32"]
[eval exp="f.haikei_credit='明治村画像庫'"]
[chara_mod name="bg" storage="bg/sijyou_byouin.jpg"]
[endif]
*33
[if exp="tf.page==33"]
[eval exp="f.haikei_credit='＠名無しさん１/◆jsYiJcqRkk'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/ginza3.jpg"]
[endif]
*34
[if exp="tf.page==34"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/gosyo.jpg"]
[endif]
*35
[if exp="tf.page==35"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/katuraginomiya_yaten.jpg"]
[endif]
*36
[if exp="tf.page==36"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/mirukuho_ru4.jpg"]
[endif]
*37
[if exp="tf.page==37"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/mirukutennai.jpg"]
[endif]
*38
[if exp="tf.page==38"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kousi.jpg"]
[endif]
*39
[if exp="tf.page==39"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/mirukutest.jpg"]
[endif]
*40
[if exp="tf.page==40"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/test_zaizen_kaigi.jpg"]
[endif]
*41
[if exp="tf.page==41"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/nerine_img.jpg"]
[endif]
*42
[if exp="tf.page==42"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/niwa_large_ike.jpg"]
[endif]
*43
[if exp="tf.page==43"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/niwa_large_ike_long.jpg"]	
[endif]
*44
[if exp="tf.page==44"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/niwa_rose_funsui.jpg"]
[endif]
*45
[if exp="tf.page==45"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_moon_lake.jpg"]
@layopt layer=1 visible=true
[image layer=1 name="kouka" storage="bg/B4nFWraU42/piano_base.png" zindex=2]
[wait time=4000]
[endif]
*46
[if exp="tf.page==46"]
[iscript]
$('.kouka').remove();
[endscript]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/rose_onsitsu.jpg"]
[endif]
*47
[if exp="tf.page==47"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/rose_shigemi.jpg"]
[endif]
*48
[if exp="tf.page==48"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_dozou.jpg"]
[endif]
*49
[if exp="tf.page==49"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_kyousitu1.jpg"]
[endif]
*50
[if exp="tf.page==50"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_kyousitu1_yuu.jpg"]
[endif]
*51
[if exp="tf.page==51"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_kyousitu1_yuu2.jpg"]
[endif]
*52
[if exp="tf.page==52"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_kyousitu_rouka1.jpg"]
[endif]
*53
[if exp="tf.page==53"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/sijyou_kyousitu_zentai.jpg"]
[endif]
*54
[if exp="tf.page==54"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/youkan_rose.jpg"]	
[endif]
*55
[if exp="tf.page==55"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/B4nFWraU42/zaizen_bara.jpg"]
[endif]
*56
[if exp="tf.page==56"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/test_sijyou_dozou.jpg"]
[endif]
*57
[if exp="tf.page==57"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/test_konyaku_jikka2.jpg"]
[endif]
*58
[if exp="tf.page==58"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/test_sijyou_hanazono.jpg"]
[endif]
*59
[if exp="tf.page==59"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/test_sijyou_namigauara.jpg"]
@jump target=link
[endif]
*60
[if exp="tf.page==60"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/test_room_zaizen_ima.jpg"]
[endif]
*61
[if exp="tf.page==61"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/test_zaizen_paty1.jpg"]
[endif]
*62
[if exp="tf.page==62"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/zaizen_doitutaisikan.jpg"]
[endif]
*63
[if exp="tf.page==63"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/zaizen_paty_hikae.jpg"]
[endif]
*64
[if exp="tf.page==64"]
[eval exp="f.haikei_credit='flicer'"]
[chara_mod name="bg" storage="bg/zaizen_paty_niwa.jpg"]
[endif]
*65
;photo　by　
[if exp="tf.page==65"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/zaizen_paty_ousetu.jpg"]
[endif]
*66
[if exp="tf.page==66"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/zaizen_youkan.jpg"]
[endif]
*67
[if exp="tf.page==67"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/zaizen_youkan_zengamen.jpg"]
[endif]
*68
[if exp="tf.page==68"]
[eval exp="f.haikei_credit='flicer'"]
[chara_mod name="bg" storage="bg/zaizen_yukiyanagi.jpg"]
[endif]
*69
[if exp="tf.page==69"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/baraen.jpg"]
[endif]
*70
[if exp="tf.page==70"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo/＠名無しさん１'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/bg_hujieda_hato.jpg"]
[endif]
*71
[if exp="tf.page==71"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo/＠名無しさん１'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/bg_hujieda_hato2.jpg"]
[endif]
*72
[if exp="tf.page==72"]
[eval exp="f.haikei_credit='明治村画像庫'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/ekken.jpg"]
[endif]
*73
[if exp="tf.page==73"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/ensoukaijyou.jpg"]
[endif]
*74
[if exp="tf.page==74"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/enzetu.jpg"]
[endif]
*75
[if exp="tf.page==75"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/housoukyoku.jpg"]
[endif]
*76
[if exp="tf.page==76"]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/bg_tokiko_sansaku1.jpg"]
[endif]
*77
[if exp="tf.page==77"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/kouenn.jpg"]
[endif]
*78
[if exp="tf.page==78"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/miruku_genkan2.jpg"]
[endif]
*79
[if exp="tf.page==79"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/mirukugenkan.jpg"]
[endif]
*80
[if exp="tf.page==80"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo/＠名無しさん１'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/mirukuho-ru2.jpg"]
[endif]
*81
[if exp="tf.page==81"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo/＠名無しさん１'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/mirukuho-ru3.jpg"]
[endif]
*82
[if exp="tf.page==82"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/mirukutest.jpg"]
[endif]
*83
[if exp="tf.page==83"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/nakoudoteiniwa.jpg"]
[endif]
*84
[if exp="tf.page==84"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/nakoudoteiniwa_michi1.jpg"]
[endif]
*85
[if exp="tf.page==85"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/nakoudoteiniwa_michi2.jpg"]
[endif]
*86
[if exp="tf.page==86"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/nakoudoteiniwa_mon_yuu.jpg"]
[endif]
*87
[if exp="tf.page==87"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/ongakurensyuusitu.jpg"]
[endif]
*88
[if exp="tf.page==88"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/situmu.jpg"]
[endif]
*89
[if exp="tf.page==89"]
[eval exp="f.haikei_credit='＠名無しさん１'"]

[chara_mod name="bg" storage="bg/I9IhvvVdPo/test_zaizen_kaigi.jpg"]
[endif]
*90
[if exp="tf.page==90"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo/◆jsYiJcqRkk'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/tyasitu.jpg"]
@jump target=link
[endif]
*91
[if exp="tf.page==91"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/yo-roppa.jpg"]
@jump target=link
[endif]
*92
[if exp="tf.page==92"]
[eval exp="f.haikei_credit='◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/youkannaisou.jpg"]
@jump target=link
[endif]

*93
[if exp="tf.page==93"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_biwa_flower.jpg"]
[endif]
*94
[if exp="tf.page==94"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_biwa_tree.jpg"]
[endif]
*95
[if exp="tf.page==95"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_bluesky.jpg"]
[endif]
*96
[if exp="tf.page==96"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_flower_hagi.jpg"]
[endif]
*97
[if exp="tf.page==97"]
[eval exp="f.haikei_credit='fricer'"]
[endif]
*98
[if exp="tf.page==98"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_garden_isu.jpg"]
[endif]
*99
[if exp="tf.page==99"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_garden_isu_dark.jpg"]
[endif]
*100
[if exp="tf.page==100"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_genkan.jpg"]
[endif]
*101
[if exp="tf.page==101"]
[eval exp="f.haikei_credit='明治村画像庫'"]
[chara_mod name="bg" storage="bg/bg_kabuki_in.jpg"]
[endif]
*102
[if exp="tf.page==102"]
[eval exp="f.haikei_credit='明治村画像庫'"]
[chara_mod name="bg" storage="bg/bg_kabuki_out.jpg"]
[endif]
*103
[if exp="tf.page==103"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_katuraginomiya_gosyo_in.jpg"]
[endif]
*104
[if exp="tf.page==104"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_koryouriya.jpg"]
[endif]
*105
[if exp="tf.page==105"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_kouyou_kaidan.jpg"]
[endif]
*106
[if exp="tf.page==106"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_kouyou_ussou.jpg"]
[endif]
*107
[if exp="tf.page==107"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_kurodake.jpg"]
[endif]
*108
[if exp="tf.page==108"]
[eval exp="f.haikei_credit='ゆうあかり　http://light77.sakura.ne.jp/'"]
[chara_mod name="bg" storage="bg/bg_machi.jpg"]
[endif]
*109
[if exp="tf.page==109"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/ + (効果)＠名無しさん１'"]
[image layer=1 name=kouka storage="bg/sijyou_machi_yuki.png"]
[wait time=4000]
[endif]
*110

[if exp="tf.page==110"]
[iscript]
$('.kouka').remove();
[endscript]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_web_blue2.jpg"]
[endif]

*111
[if exp="tf.page==111"]
[eval exp="f.haikei_credit='＠名無しさん１'"]
[chara_mod name="bg" storage="bg/bg_machi_hasi.jpg"]
[endif]
*112
[if exp="tf.page==112"]
[eval exp="f.haikei_credit='ゆうあかり　http://light77.sakura.ne.jp/'"]
[chara_mod name="bg" storage="bg/bg_machi_omoide.jpg"]
[endif]
*113
[if exp="tf.page==113"]
[eval exp="f.haikei_credit='ゆうあかり　http://light77.sakura.ne.jp/'"]
[chara_mod name="bg" storage="bg/bg_okeiko.jpg"]
[endif]
*114
[if exp="tf.page==114"]
[eval exp="f.haikei_credit='ゆうあかり　http://light77.sakura.ne.jp/　+編集'"]
[chara_mod name="bg" storage="bg/bg_okeiko_anten.jpg"]
[endif]
*115
[if exp="tf.page==115"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_web_blue.jpg"]
[endif]

*116
[if exp="tf.page==116"]
[eval exp="f.haikei_credit='fricer'"]
[chara_mod name="bg" storage="bg/bg_omoide.jpg"]
[endif]
*117
[if exp="tf.page==117"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
[endif]
*118
[if exp="tf.page==118"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_sakura.jpg"]
[endif]
*119
[if exp="tf.page==119"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/menu_load_bg.jpg"]
[endif]
*120
[if exp="tf.page==120"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_shinrinkouen_gate.jpg"]
[endif]
*121
[if exp="tf.page==121"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_shinrinkouen_gate_winter.jpg"]
[endif]
*122
[if exp="tf.page==122"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_shinrinkouen_gate_winter_yuu.jpg"]
[endif]
*123
[if exp="tf.page==123"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_shinrinkouen_gate_yuu.jpg"]
[endif]
*124
[if exp="tf.page==124"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_shop_wazakka.jpg"]
[endif]
*125
[if exp="tf.page==125"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_teien_ishidatami.jpg"]
[endif]
*126
[if exp="tf.page==126"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_teien_ishidatami_yoru.jpg"]
[endif]
*127
[if exp="tf.page==127"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_teien_ishidatami_yuu.jpg"]
[endif]
*128
[if exp="tf.page==128"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_tirasi.jpg"]
[endif]
*129
[if exp="tf.page==129"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_winter_forest.jpg"]
[endif]
*130
[if exp="tf.page==130"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_winter_forest_yuu.jpg"]
[endif]
*131
[if exp="tf.page==131"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/bg_yuuyake.jpg"]
[endif]
*132
[if exp="tf.page==132"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/hijieda_kaede_sita2.jpg"]
[endif]
*133
[if exp="tf.page==133"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/hujieda_kyakuseki.jpg"]
[endif]
*134
[if exp="tf.page==134"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/hujieda_sky1.jpg"]
[endif]
*135
[if exp="tf.page==135"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/hujieda_tanpopo.jpg"]
[endif]
*136
[if exp="tf.page==136"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/hujieda_tanpopo_kouen.jpg"]
[endif]
*137
[if exp="tf.page==137"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/katuraginomiya_kaigi2.jpg"]
[endif]
*138
[if exp="tf.page==138"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[endif]
*139
[if exp="tf.page==139"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/room_niwa_akarui.jpg"]
[endif]
*140
[if exp="tf.page==140"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/room_niwa_haru.jpg"]
[endif]
*141

[if exp="tf.page==141"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg"]
[endif]
*142
[if exp="tf.page==142"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/room_niwa_yuki.jpg"]
[endif]
*143
[if exp="tf.page==143"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/situnaiongaku.jpg"]
[endif]
*144
[if exp="tf.page==144"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/situnaiongaku2.jpg"]
[endif]
*145
[if exp="tf.page==145"]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/test_mon.jpg"]
[endif]
*146
*147
[if exp="tf.page > 146"]
[eval exp="tf.page=0"]
;@jump target=start
[eval exp="f.haikei_credit=''"]

[chara_mod name="bg" storage="bg/bg_web_blue.jpg"]
[eval exp="exp=tf.page=0"]
[cm]

[if exp="tf.chara_test == true"]
@jump storage="test_sijyou_hyoujou.ks" target=*sijyou_text
[endif]

[if exp="tf.bg_onry==1"]
@jump storage="test_sijyou.ks"
[endif]

[endif]

[wait time=50]
[if exp="tf.chara_test == true"]
@jump storage="test_sijyou_hyoujou.ks" target=*sijyou_text
[else]
;tf.bg_onry
@jump target=link
[endif]






*endtest
[eval exp="tf.page=0"]
@freeimage layer=27
[eval exp="f.haikei_credit=''"]
[if exp="tf.chara_test == true"]
@jump storage="test_sijyou_hyoujou.ks" target=*sijyou_text
[else]
@jump storage="test_sijyou.ks"
[endif]
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

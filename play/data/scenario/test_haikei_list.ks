;=============================================================
;背景選択窓
;===========================================================
*list_haikei
[freeimage layer = 24]
[call target=*start storage="sijyou/macro_bg_test.ks"]
[wait time=10]
[clearstack]
;[iscript]
;$('.bg_list').remove();
;$('.bg_choice').remove();
;//$('.credit').remove();
;[endscript]
;layer27を背景クレジットに使用している(macro_bg_test.ks)。背景変更ウインドウはその上に設定する必要あり＝layer28
@layopt layer=28 visible=true
[wait time=10]
[freeimage layer=28]
[wait time=10]
[image name="bg_choice" layer=28 folder="image" storage="flame_bgchoice_brown.png" left=0 top=0]
[wait time=10]
[if exp="tf.bg_target!=''"]
@jump target=&tf.bg_target
[endif]
[if exp="tf.bg_target==''"]
@jump target=*common_list
[endif]
*menu_button
;閉じる
[button name="bg_choice" fix=true graphic="x_50x50.png" target="*close" x=923 y=148 width=43 height=43 ]
[if exp="tf.tokuten=='sijyou'"]
[glink name="bg_choice" target=*common_list text="共通" exp="tf.bg_target='*common_list'" size=16 width="80" height="20" x=300 y=595 graphic="select_waku_x135b.png" font_color=black]
[glink name="bg_choice" target=*sijyou_list text="四条" exp="tf.bg_target='*sijyou_list'" size=16 width="80" height="20" x=600 y=595 graphic="select_waku_x135b.png" font_color=black]
[endif]
[if exp="tf.tokuten=='zaizen'"]
[glink name="bg_choice" target=*common_list text="共通" exp="tf.bg_target='*common_list'" size=16 width="80" height="20" x=350 y=595 graphic="select_waku_x135b.png" font_color=black]
[glink name="bg_choice" target=*zaizen_list text="財前" exp="tf.bg_target='*zaizen_list'" size=16 width="80" height="20" x=650 y=595 graphic="select_waku_x135b.png" font_color=black]
[endif]
[if exp="tf.tokuten=='kuroda'"]
[glink name="bg_choice" target=*common_list text="共通" exp="tf.bg_target='*common_list'" size=16 width="80" height="20" x=350 y=595 graphic="select_waku_x135b.png" font_color=black]
[glink name="bg_choice" target=*kuroda_list text="黒田" exp="tf.bg_target='*kuroda_list'" size=16 width="80" height="20" x=650 y=595 graphic="select_waku_x135b.png" font_color=black]
[endif]
[if exp="tf.tokuten=='katuraginomiya'"]
[glink name="bg_choice" target=*common_list text="共通" exp="tf.bg_target='*common_list'" size=16 width="80" height="20" x=350 y=595 graphic="select_waku_x135b.png" font_color=black]
[glink name="bg_choice" target=*katuraginomiya_list text="葛城宮" exp="tf.bg_target='*katuraginomiya_list'" size=16 width="80" height="20" x=650 y=595 graphic="select_waku_x135b.png" font_color=black]
[endif]
[if exp="tf.tokuten=='hujieda'"]
[glink name="bg_choice" target=*common_list text="共通" exp="tf.bg_target='*common_list'" size=16 width="80" height="20" x=350 y=595 graphic="select_waku_x135b.png" font_color=black]
[glink name="bg_choice" target=*hujieda_list text="藤枝" exp="tf.bg_target='*hujieda_list'" size=16 width="80" height="20" x=650 y=595 graphic="select_waku_x135b.png" font_color=black]
[endif]
[if exp="tf.tokuten=='all'"]
[glink name="bg_choice" target=*common_list text="共通" exp="tf.bg_target='*common_list'" size=16 width="80" height="20" x=170 y=595 graphic="select_waku_x135b.png" font_color=black]
[glink name="bg_choice" target=*sijyou_list text="四条" exp="tf.bg_target='*sijyou_list'" size=16 width="80" height="20" x=300 y=595 graphic="select_waku_x135b.png" font_color=black]
[glink name="bg_choice" target=*zaizen_list text="財前" exp="tf.bg_target='*zaizen_list'" size=16 width="80" height="20" x=430 y=595 graphic="select_waku_x135b.png" font_color=black]
[glink name="bg_choice" target=*kuroda_list text="黒田" exp="tf.bg_target='*kuroda_list'" size=16 width="80" height="20" x=560 y=595 graphic="select_waku_x135b.png" font_color=black]
[glink name="bg_choice" target=*katuraginomiya_list text="葛城宮" exp="tf.bg_target='*katuraginomiya_list'" size=16 width="80" height="20" x=690 y=595 graphic="select_waku_x135b.png" font_color=black]
[glink name="bg_choice" target=*hujieda_list text="藤枝" exp="tf.bg_target='*hujieda_list'" size=16 width="80" height="20" x=820 y=595 graphic="select_waku_x135b.png" font_color=black]
[endif]
[s]

*common_list
[eval exp="tf.bg_target='*common_list'"]
[glink name="bg_list" storage="test_haikei.ks" target=*page116 text="主人公部屋：通常" size=16 width="220" height="20" x=255 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page117 text="主人公部屋：光射す" size=16 width="220" height="20" x=255 y=250 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page118 text="主人公部屋：春" size=16 width="220" height="20" x=255 y=300 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page120 text="主人公部屋：夜" size=16 width="220" height="20" x=255 y=350 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page96 text="主人公邸：お稽古部屋" size=16 width="220" height="20" x=255 y=400 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page86 text="主人公邸：玄関" size=16 width="220" height="20" x=255 y=450 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page93 text="町並み" size=16 width="220" height="20" x=255 y=500 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page97 text="町：橋" size=16 width="220" height="20" x=255 y=550 graphic="select_waku_x300b.png" font_color=black]

[glink name="bg_list" storage="test_haikei.ks" target=*page82 text="青空" size=16 width="220" height="20" x=585 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page101 text="青空に桜" size=16 width="220" height="20" x=585 y=250 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page100 text="料亭" size=16 width="220" height="20" x=585 y=300 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page100b text="料亭：夕方" size=16 width="220" height="20" x=585 y=350 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page14 text="庭園へ続く道" size=16 width="220" height="20" x=585 y=400 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page107 text="庭園" size=16 width="220" height="20" x=585 y=450 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page108 text="庭園：夕方" size=16 width="220" height="20" x=585 y=500 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page109 text="庭園：夜" size=16 width="220" height="20" x=585 y=550 graphic="select_waku_x300b.png" font_color=black]

[glink name="list" target=*common_list2 text="→" size=20 width="20" x=870 y=380 graphic="select_waku_x135b.png" font_color=black]
[wait time=10]

@jump target=*menu_button

*common_list2
[eval exp="tf.bg_target='*common_list2'"]
[glink name="bg_list" storage="test_haikei.ks" target=*page7 text="チャリティー会場：門" size=16 width="220" height="20" x=255 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page6 text="チャリティー会場：裏口" size=16 width="220" height="20" x=255 y=250 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page8 text="チャリティー会場：階段前" size=16 width="220" height="20" x=255 y=300 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page2 text="チャリティー会場：バザー遠景" size=16 width="220" height="20" x=255 y=350 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page5 text="チャリティー会場：バザー近景" size=16 width="220" height="20" x=255 y=400 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page3 text="チャリティー会場：バザーお店" size=16 width="220" height="20" x=255 y=450 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page4 text="チャリティー会場：ダンスホール" size=16 width="220" height="20" x=255 y=500 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page9 text="チャリティー会場：準備風景" size=16 width="220" height="20" x=255 y=550 graphic="select_waku_x300b.png" font_color=black]

;[glink name="bg_list" storage="test_haikei.ks" target=*page9 text="チャリティー会場：準備風景"  size=16 width="220" height="20" x=585 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="list" target=*common_list text="←" size=20 width="20" x=160 y=380 graphic="select_waku_x135b.png" font_color=black]
;[glink name="list" target=*common_list3 text="→" size=20 width="20" x=870 y=380 graphic="select_waku_x135b.png" font_color=black]

@jump target=*menu_button

*sijyou_list
[eval exp="tf.bg_target='*sijyou_list'"]
[glink name="bg_list" storage="test_haikei.ks" target=*page28 text="四条邸：外観" size=16 width="220" height="20" x=255 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page18 text="四条邸：玄関" size=16 width="220" height="20" x=255 y=250 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page19 text="四条邸：玄関ホール" size=16 width="220" height="20" x=255 y=300 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page26 text="四条邸：廊下" size=16 width="220" height="20" x=255 y=350 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page20 text="四条邸：華衣の部屋" size=16 width="220" height="20" x=255 y=400 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page17 text="四条邸：和室(エピローグ)" size=16 width="220" height="20" x=255 y=450 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page84 text="四条邸：庭園" size=16 width="220" height="20" x=255 y=500 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page85 text="四条邸：庭園(暗)" size=16 width="220" height="20" x=255 y=550 graphic="select_waku_x300b.png" font_color=black]

[glink name="bg_list" storage="test_haikei.ks" target=*page50 text="四条邸：バラの茂み" size=16 width="220" height="20" x=585 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page49 text="四条邸：温室" size=16 width="220" height="20" x=585 y=250 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page48 text="四条邸：バラの噴水" size=16 width="220" height="20" x=585 y=300 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page46 text="四条邸：池" size=16 width="220" height="20" x=585 y=350 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page47 text="四条邸：池(遠め)" size=16 width="220" height="20" x=585 y=400 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page25 text="四条邸：ネリネ庭" size=16 width="220" height="20" x=585 y=450 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page60 text="花園" size=16 width="220" height="20" x=585 y=500 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page45 text="ネリネイメージ" size=16 width="220" height="20" x=585 y=550 graphic="select_waku_x300b.png" font_color=black]

[glink name="list" target=*sijyou_list2 text="→" size=20 width="20" x=870 y=380 graphic="select_waku_x135b.png" font_color=black]


@jump target=*menu_button

*sijyou_list2
[eval exp="tf.bg_target='*sijyou_list2'"]
[glink name="bg_list" storage="test_haikei.ks" target=*page120b text="主人公部屋：夏" size=16 width="220" height="20" x=255 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page36 text="主人公邸縁側：夏" size=16 width="220" height="20" x=255 y=250 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page120d text="打ち上げ花火" size=16 width="220" height="20" x=255 y=300 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page87 text="歌舞伎座：中" size=16 width="220" height="20" x=255 y=350 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page88 text="歌舞伎座：外観" size=16 width="220" height="20" x=255 y=400 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page32 text="銀座" size=16 width="220" height="20" x=255 y=450 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page106 text="和雑貨店" size=16 width="220" height="20" x=255 y=500 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page95 text="華衣婚約者実家：門" size=16 width="220" height="20" x=255 y=550 graphic="select_waku_x300b.png" font_color=black]

[glink name="bg_list" storage="test_haikei.ks" target=*page59 text="華衣婚約者実家：外観" size=16 width="220" height="20" x=585 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page51 text="華衣婚約者実家：土蔵外" size=16 width="220" height="20" x=585 y=250 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page52 text="華衣婚約者実家：土蔵内" size=16 width="220" height="20" x=585 y=300 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page30 text="波ヶ浦：荒波" size=16 width="220" height="20" x=585 y=350 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page29 text="波ヶ浦：浜" size=16 width="220" height="20" x=585 y=400 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page31 text="病院" size=16 width="220" height="20" x=585 y=450 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page53 text="華道教室" size=16 width="220" height="20" x=585 y=500 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page57 text="華道教室：廊下" size=16 width="220" height="20" x=585 y=550 graphic="select_waku_x300b.png" font_color=black]
[glink name="list" target=*sijyou_list text="←" size=20 width="20" x=160 y=380 graphic="select_waku_x135b.png" font_color=black]
[glink name="list" target=*sijyou_list3 text="→" size=20 width="20" x=870 y=380 graphic="select_waku_x135b.png" font_color=black]

@jump target=*menu_button

*sijyou_list3
[eval exp="tf.bg_target='*sijyou_list3'"]
[glink name="bg_list" storage="test_haikei.ks" target=*page56 text="華道教室：全体" size=16 width="220" height="20" x=255 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page54 text="華道教室：夕" size=16 width="220" height="20" x=255 y=250 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page55 text="華道教室：夕暮れ" size=16 width="220" height="20" x=255 y=300 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page120g text="チャリティー会場：食堂" size=16 width="220" height="20" x=255 y=350 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page120h text="チャリティー会場：回廊" size=16 width="220" height="20" x=255 y=400 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page120i text="チャリティー会場：休憩所" size=16 width="220" height="20" x=255 y=450 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page27 text="四条：華道展" size=16 width="220" height="20" x=255 y=500 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page21 text="四条：金屏風" size=16 width="220" height="20" x=255 y=550 graphic="select_waku_x300b.png" font_color=black]

[glink name="bg_list" storage="test_haikei.ks" target=*page22 text="四条：金屏風　二" size=16 width="220" height="20" x=585 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page16 text="宴会場" size=16 width="220" height="20" x=585 y=250 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page16b text="宴会場廊下" size=16 width="220" height="20" x=585 y=300 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page23 text="香水店前" size=16 width="220" height="20" x=585 y=350 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page24 text="香水店内" size=16 width="220" height="20" x=585 y=400 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page120e text="思い出" size=16 width="220" height="20" x=585 y=450 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page120f text="思い出(セピア)" size=16 width="220" height="20" x=585 y=500 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page32 text="銀座" size=16 width="220" height="20" x=585 y=550 graphic="select_waku_x300b.png" font_color=black]
[glink name="list" target=*sijyou_list2 text="←" size=20 width="20" x=160 y=380 graphic="select_waku_x135b.png" font_color=black]
;[glink name="list" target=*sijyou_list4 text="→" size=20 width="20" x=870 y=380 graphic="select_waku_x135b.png" font_color=black]

@jump target=*menu_button

*zaizen_list
[eval exp="tf.bg_target='*zaizen_list'"]
[glink name="bg_list" storage="test_haikei.ks" target=*page61 text="財前邸：居間" size=16 width="220" height="20" x=255 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page69 text="薔薇園" size=16 width="220" height="20" x=255 y=250 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page58 text="薔薇園　二" size=16 width="220" height="20" x=255 y=300 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page62 text="パーティ会場" size=16 width="220" height="20" x=255 y=350 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page64 text="パーティ会場：控室" size=16 width="220" height="20" x=255 y=400 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page67 text="洋館" size=16 width="220" height="20" x=255 y=450 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page67b text="呉服屋" size=16 width="220" height="20" x=255 y=500 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page67c text="銀行前" size=16 width="220" height="20" x=255 y=550 graphic="select_waku_x300b.png" font_color=black]

[glink name="bg_list" storage="test_haikei.ks" target=*page44 text="会議室" size=16 width="220" height="20" x=585 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page63 text="独逸大使館：パーティー会場" size=16 width="220" height="20" x=585 y=250 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page66 text="独逸大使館：応接室" size=16 width="220" height="20" x=585 y=300 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page65 text="独逸大使館：庭" size=16 width="220" height="20" x=585 y=350 graphic="select_waku_x300b.png" font_color=black]

;[glink name="list" target=*sijyou_list2 text="→" size=20 width="20" x=870 y=380 graphic="select_waku_x135b.png" font_color=black]


@jump target=*menu_button

*kuroda_list
[eval exp="tf.bg_target='*kuroda_list'"]
[glink name="bg_list" storage="test_haikei.ks" target=*page102 text="森林公園の門：秋" size=16 width="220" height="20" x=255 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page105 text="森林公園の門：秋(夕)" size=16 width="220" height="20" x=255 y=250 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page103 text="森林公園の門：冬" size=16 width="220" height="20" x=255 y=300 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page104 text="森林公園の門：冬(夕)" size=16 width="220" height="20" x=255 y=350 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page91 text="紅葉" size=16 width="220" height="20" x=255 y=400 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page90 text="紅葉：階段" size=16 width="220" height="20" x=255 y=450 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page110 text="冬の木々" size=16 width="220" height="20" x=255 y=500 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page111 text="冬の木々(夕)" size=16 width="220" height="20" x=255 y=550 graphic="select_waku_x300b.png" font_color=black]

[glink name="bg_list" storage="test_haikei.ks" target=*page81 text="ビワの木" size=16 width="220" height="20" x=585 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page92 text="黒田家和室" size=16 width="220" height="20" x=585 y=250 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page89 text="小料理屋" size=16 width="220" height="20" x=585 y=300 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page1 text="薔薇" size=16 width="220" height="20" x=585 y=350 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page44c text="会議室(海軍)" size=16 width="220" height="20" x=585 y=400 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page73 text="放送局" size=16 width="220" height="20" x=585 y=450 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page72 text="演説" size=16 width="220" height="20" x=585 y=500 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page35 text="野点" size=16 width="220" height="20" x=585 y=550 graphic="select_waku_x300b.png" font_color=black]

;[glink name="list" target=*katuraginomiya_list2 text="→" size=20 width="20" x=870 y=380 graphic="select_waku_x135b.png" font_color=black]

@jump target=*menu_button

*katuraginomiya_list
[eval exp="tf.bg_target='*katuraginomiya_list'"]
[glink name="bg_list" storage="test_haikei.ks" target=*page120j text="町：思い出" size=16 width="220" height="20" x=255 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page79 text="執務室" size=16 width="220" height="20" x=255 y=250 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page33 text="御所" size=16 width="220" height="20" x=255 y=300 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page34 text="御所内" size=16 width="220" height="20" x=255 y=350 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page75 text="仲人邸：庭園" size=16 width="220" height="20" x=255 y=400 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page76 text="仲人邸：庭園の道" size=16 width="220" height="20" x=255 y=450 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page77 text="仲人邸：庭園の道　二" size=16 width="220" height="20" x=255 y=500 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page78 text="仲人邸：庭園(夕)" size=16 width="220" height="20" x=255 y=550 graphic="select_waku_x300b.png" font_color=black]

[glink name="bg_list" storage="test_haikei.ks" target=*page120k text="ヨーロッパ" size=16 width="220" height="20" x=585 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page44b text="会議室(与党)" size=16 width="220" height="20" x=585 y=250 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page69 text="薔薇園" size=16 width="220" height="20" x=585 y=300 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page1 text="薔薇" size=16 width="220" height="20" x=585 y=350 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page44c text="会議室(海軍)" size=16 width="220" height="20" x=585 y=400 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page73 text="放送局" size=16 width="220" height="20" x=585 y=450 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page72 text="演説" size=16 width="220" height="20" x=585 y=500 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page35 text="野点" size=16 width="220" height="20" x=585 y=550 graphic="select_waku_x300b.png" font_color=black]

[glink name="list" target=*katuraginomiya_list2 text="→" size=20 width="20" x=870 y=380 graphic="select_waku_x135b.png" font_color=black]

@jump target=*menu_button

*katuraginomiya_list2
[eval exp="tf.bg_target='*katuraginomiya_list2'"]
[glink name="bg_list" storage="test_haikei.ks" target=*page74 text="公園" size=16 width="220" height="20" x=255 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page70 text="謁見室" size=16 width="220" height="20" x=255 y=250 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page33 text="御所" size=16 width="220" height="20" x=255 y=300 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page34 text="御所内" size=16 width="220" height="20" x=255 y=350 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page75 text="仲人邸：庭園" size=16 width="220" height="20" x=255 y=400 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page76 text="仲人邸：庭園の道" size=16 width="220" height="20" x=255 y=450 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page77 text="仲人邸：庭園の道　二" size=16 width="220" height="20" x=255 y=500 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page78 text="仲人邸：庭園(夕)" size=16 width="220" height="20" x=255 y=550 graphic="select_waku_x300b.png" font_color=black]

;[glink name="bg_list" storage="test_haikei.ks" target=*page120k text="ヨーロッパ" size=16 width="220" height="20" x=585 y=200 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page44b text="会議室(与党)" size=16 width="220" height="20" x=585 y=250 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page69 text="薔薇園" size=16 width="220" height="20" x=585 y=300 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page1 text="薔薇" size=16 width="220" height="20" x=585 y=350 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page44c text="会議室(海軍)" size=16 width="220" height="20" x=585 y=400 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page73 text="放送局" size=16 width="220" height="20" x=585 y=450 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page72 text="演説" size=16 width="220" height="20" x=585 y=500 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page35 text="野点" size=16 width="220" height="20" x=585 y=550 graphic="select_waku_x300b.png" font_color=black]
[glink name="list" target=*katuraginomiya_list text="←" size=20 width="20" x=160 y=380 graphic="select_waku_x135b.png" font_color=black]

@jump target=*menu_button

*hujieda_list
[eval exp="tf.bg_target='*hujieda_list'"]
[glink name="bg_list" storage="test_haikei.ks" target=*page15 text="ムーンレイク(夢)" size=16 width="220" height="20" x=255 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page120l text="ミルクホール：外観" size=16 width="220" height="20" x=255 y=250 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page40 text="ミルクホール：近景" size=16 width="220" height="20" x=255 y=300 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page37 text="ミルクホール：窓" size=16 width="220" height="20" x=255 y=350 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page39 text="ミルクホール：玄関外" size=16 width="220" height="20" x=255 y=400 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page42 text="ミルクホール：玄関内" size=16 width="220" height="20" x=255 y=450 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page43 text="ミルクホール：玄関内(夜)" size=16 width="220" height="20" x=255 y=500 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page38 text="ミルクホール：店内" size=16 width="220" height="20" x=255 y=550 graphic="select_waku_x300b.png" font_color=black]

[glink name="bg_list" storage="test_haikei.ks" target=*page38b text="ミルクホール：ピアノ" size=16 width="220" height="20" x=585 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page80 text="音楽練習室" size=16 width="220" height="20" x=585 y=250 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page71 text="演奏会会場" size=16 width="220" height="20" x=585 y=300 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page113 text="客席" size=16 width="220" height="20" x=585 y=350 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page98 text="演奏会舞台：近景" size=16 width="220" height="20" x=585 y=400 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page99 text="演奏会舞台：遠景" size=16 width="220" height="20" x=585 y=450 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page11 text="チャリティー会場：音楽室遠景" size=16 width="220" height="20" x=585 y=500 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page10 text="チャリティー会場：音楽室近景" size=16 width="220" height="20" x=585 y=550 graphic="select_waku_x300b.png" font_color=black]

[glink name="list" target=*hujieda_list2 text="→" size=20 width="20" x=870 y=380 graphic="select_waku_x135b.png" font_color=black]

@jump target=*menu_button
*hujieda_list2
[eval exp="tf.bg_target='*hujieda_list2'"]
[glink name="bg_list" storage="test_haikei.ks" target=*page12 text="チャリティー会場：演奏会会場" size=16 width="220" height="20" x=255 y=200 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page12b text="チャリティー会場：演奏会会場(明)" size=16 width="220" height="20" x=255 y=250 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page115 text="たんぽぽの咲く公園" size=16 width="220" height="20" x=255 y=300 graphic="select_waku_x300b.png" font_color=black]
[glink name="bg_list" storage="test_haikei.ks" target=*page114 text="たんぽぽ" size=16 width="220" height="20" x=255 y=350 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page39 text="ミルクホール：玄関外" size=16 width="220" height="20" x=255 y=400 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page42 text="ミルクホール：玄関内" size=16 width="220" height="20" x=255 y=450 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page43 text="ミルクホール：玄関内(夜)" size=16 width="220" height="20" x=255 y=500 graphic="select_waku_x300b.png" font_color=black]
;[glink name="bg_list" storage="test_haikei.ks" target=*page38 text="ミルクホール：店内" size=16 width="220" height="20" x=255 y=550 graphic="select_waku_x300b.png" font_color=black]
[glink name="list" target=*hujieda_list text="←" size=20 width="20" x=160 y=380 graphic="select_waku_x135b.png" font_color=black]
@jump target=*menu_button


*common_hyouji_end

[s]

*close
[freeimage layer=28]
[iscript]
$('.list').remove();
$('.bg_list').remove();
$('.bg_choice').remove();
[endscript]
;四条立ち絵サイズ別のjump機能(script by ＠名無しさん１)。test_haikei.ksより移動しました。◆jsYiJcqRkk
[if exp="tf.tokuten == 'sijyou' && tf.size == 'defo'"]
	@jump storage="test_sijyou_hyoujou.ks" target=sijyou_text
;	@jump storage="test_sijyou_hyoujou.ks" target="*page_01"
[elsif exp="tf.tokuten == 'sijyou' && tf.size == 'tonari'"]
	@jump storage="test_sijyou_hyoujou.ks" target=*sijyou_tonari_text
[elsif exp="tf.tokuten == 'sijyou' && tf.size== 'up'"]
	@jump storage="test_sijyou_hyoujou.ks" target=sijyou_up_text
[elsif exp="tf.tokuten == 'sijyou'"]
	@jump storage="test_sijyou_hyoujou.ks" target=sijyou_text
[endif]
;エラー。　お手数ですがゲームの再起動をお願いします。[p]初期値
[if exp="tf.tokuten == 'zaizen'"]
@jump storage="test_zaizen_hyoujou.ks" target=*hyouji_start
[endif]
[if exp="tf.tokuten == 'kuroda'"]
@jump storage="test_kuroda_hyoujou.ks" target=*hyouji_start
[endif]
[if exp="tf.tokuten == 'katuraginomiya'"]
@jump storage="test_katuraginomiya_hyoujou.ks" target=*hyouji_start
[endif]
[if exp="tf.tokuten == 'hujieda'"]
@jump storage="test_hujieda_hyoujou.ks" target=*hyouji_start
[endif]
[if exp="tf.tokuten == 'all'"]
@jump storage="test_girl.ks" target=*hyouji_start
[endif]
[s]
;===========================================================

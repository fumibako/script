;◆◆攻略対象情報画面(お稽古画面から「情報」ボタンを押すと表示される)
*info_oaite
;◆お相手肖像画像表示位置変数
[eval exp="f.x_info=0"]
[eval exp="f.y_info=0"]

[eval exp="f.viewing_storage = 'info.ks'"]
@layopt layer=message1 page=fore visible = false
[freeimage layer = 26]
[freeimage layer = 27]
[clearfix]
[cm]
[layopt layer=26 visible=true]
[layopt layer=27 visible=true]
[layopt layer=28 visible=true]
[freeimage layer = 26]
;↓アドバイスイベントを(1=通過済)に変更(主人公セリフ表示のため)
[eval exp="f.event_advice = 1"]

[if exp="f.oaite_viewing_target != ''"]
@jump storage=&f.oaite_viewing_storage target=&f.oaite_viewing_target
[endif]

@jump storage="info_kuroda.ks" target=*info_kuroda

*info_kuroda
@jump storage="info_kuroda.ks"
*fumi_kuroda_page2
@jump storage="info_kuroda.ks" target=fumi_kuroda_page2
*fumi_kuroda_page3
@jump storage="info_kuroda.ks" target=fumi_kuroda_page3
;======================================================================================
*info_zaizen
@jump storage="info_zaizen.ks"
*fumi_zaizen_page2
@jump storage="info_zaizen.ks" target=fumi_zaizen_page2
*fumi_zaizen_page3
@jump storage="info_zaizen.ks" target=fumi_zaizen_page3
;======================================================================================
*info_sijyou
@jump storage="info_sijyou.ks"
*fumi_sijyou_page2
@jump storage="info_sijyou.ks" target=fumi_sijyou_page2
*fumi_sijyou_page3
@jump storage="info_sijyou.ks" target=fumi_sijyou_page3
*fumi_sijyou_page4
@jump storage="info_sijyou.ks" target=fumi_sijyou_page4
*fumi_sijyou_page5
@jump storage="info_sijyou.ks" target=fumi_sijyou_page5
*fumi_sijyou_page6
@jump storage="info_sijyou.ks" target=fumi_sijyou_page6
*fumi_sijyou_page7
@jump storage="info_sijyou.ks" target=fumi_sijyou_page7
*fumi_sijyou_page8
@jump storage="info_sijyou.ks" target=fumi_sijyou_page8
*fumi_sijyou_page9
@jump storage="info_sijyou.ks" target=fumi_sijyou_page9
*fumi_sijyou_page10
@jump storage="info_sijyou.ks" target=fumi_sijyou_page10
*fumi_sijyou_page11
@jump storage="info_sijyou.ks" target=fumi_sijyou_page11
*fumi_sijyou_page12
@jump storage="info_sijyou.ks" target=fumi_sijyou_page12
*fumi_sijyou_page13
@jump storage="info_sijyou.ks" target=fumi_sijyou_page13
*fumi_sijyou_page14
@jump storage="info_sijyou.ks" target=fumi_sijyou_page14
*fumi_sijyou_page15
@jump storage="info_sijyou.ks" target=fumi_sijyou_page15
*fumi_sijyou_page16
@jump storage="info_sijyou.ks" target=fumi_sijyou_page16
*fumi_sijyou_page17
@jump storage="info_sijyou.ks" target=fumi_sijyou_page17
*fumi_sijyou_page18
@jump storage="info_sijyou.ks" target=fumi_sijyou_page18
*fumi_sijyou_page19
@jump storage="info_sijyou.ks" target=fumi_sijyou_page19
*fumi_sijyou_page20
@jump storage="info_sijyou.ks" target=fumi_sijyou_page20
*fumi_sijyou_page21
@jump storage="info_sijyou.ks" target=fumi_sijyou_page21
*fumi_sijyou_page22
@jump storage="info_sijyou.ks" target=fumi_sijyou_page22
*fumi_sijyou_page23
@jump storage="info_sijyou.ks" target=fumi_sijyou_page23
*fumi_sijyou_page24
@jump storage="info_sijyou.ks" target=fumi_sijyou_page24
;======================================================================================
*info_katuraginomiya
@jump storage="info_katuraginomiya.ks"
*fumi_katuraginomiya_page2
@jump storage="info_katuraginomiya.ks" target=fumi_katuraginomiya_page2
*fumi_katuraginomiya_page3
@jump storage="info_katuraginomiya.ks" target=fumi_katuraginomiya_page3
;======================================================================================
*info_hujieda
@jump storage="info_hujieda.ks"
*fumi_hujieda_page2
@jump storage="info_hujieda.ks" target=fumi_hujieda_page2
*fumi_hujieda_page3
@jump storage="info_hujieda.ks" target=fumi_hujieda_page3

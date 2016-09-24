[setreplay name="test"]
*test
;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[preload storage="data/fgimage/girl/S/base.png"]
[preload storage="data/fgimage/girl/S/base_yubi.png"]
[preload storage="data/fgimage/girl/S/base_katate.png"]
[preload storage="data/fgimage/girl/S/base_ryoute.png"]
[preload storage="data/fgimage/girl/S/mayu_yowa.png"]
[preload storage="data/fgimage/girl/S/me_fusi1.png"]
[preload storage="data/fgimage/girl/S/kuti_futuu.png"]

[call target=*start storage="hensuu.ks"]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]

;=============================================
;test
;=============================================

[cm]

[glink target="test1" text="四条テスト" graphic="select_waku_x500.png" size=20 width="300" x=100 y=100 color=white]
[glink target="test_sijyou_hyoujou" text="四条表情テスト" graphic="select_waku_x500.png" size=20 width="200" x=450 y=100 color=blue]

[glink target="test2" text="葛城宮テスト" graphic="select_waku_x500.png" size=20 width="300" x=100 y=170 color=white]
[glink target="test_sijyou_hyoujou" text="四条表情テスト" graphic="select_waku_x500.png" size=20 width="200" x=450 y=170 color=blue]

[glink target="test3" text="藤枝テスト" graphic="select_waku_x500.png" size=20 width="300" x=100 y=240 color=white]
[glink target="test_hujieda_hyoujou" text="藤枝表情テスト" graphic="select_waku_x500.png" size=20 width="200" x=450 y=240 color=blue]

[glink target="test4" text="財前テスト" graphic="select_waku_x500.png" size=20 width="500" x=100 y=310 color=white]


[glink target="test5" text="表情テスト：主人公" graphic="select_waku_x500.png" size=20 width="500" x=100 y=380 color=white]

;[glink target="test10" text="表情テスト" graphic="select_waku_x500.png" size=20 width="500" x=100 y=450 color=white]

;[glink target="haikei" text="背景テスト" graphic="select_waku_x500.png" size=20 width="500" x=100 y=400 color=white]

[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=20 width="500" x=100 y=500 color=white]
[s]

*test1
@jump storage="test_sijyou.ks"
[s]

*test2
@jump storage="test_katuragi.ks"
[s]

*test3
@jump storage="test_hujieda.ks"
[s]

*test4
@jump storage="test_zaizen.ks"
[s]

*test5
@jump storage="test_girl.ks"
[s]

*test10
@jump storage="kuroda_9_1.ks"
[s]

*test_sijyou_hyoujou
[cm]
[freeimage layer = 26]
@jump storage="test_sijyou_hyoujou.ks"
[s]

*test_hujieda_hyoujou
[cm]
[freeimage layer = 26]
@jump storage="test_hujieda_hyoujou.ks"
[s]

*haikei
@jump storage="test_haikei.ks"

[s]



*title
;------タイトルへ戻る
@jump storage="title.ks"
[endreplay]
[s]

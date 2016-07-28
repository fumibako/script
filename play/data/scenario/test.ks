﻿[setreplay name="test"]
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

[glink target="test1" text="四条テスト" graphic="select_waku_x500.png" size=20 width="500" x=100 y=100 color=white]

[glink target="test2" text="葛城宮テスト" graphic="select_waku_x500.png" size=20 width="500" x=100 y=170 color=white]

;[glink target="haikei" text="背景テスト" graphic="select_waku_x500.png" size=20 width="500" x=100 y=400 color=white]

[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=20 width="500" x=100 y=500 color=white]
[s]

*test1
@jump storage="test_sijyou.ks"
[s]

*test2
@jump storage="test_katuragi.ks"
[s]

*haikei
@jump storage="test_haikei.ks"

[s]



*title
;------タイトルへ戻る
@jump storage="title.ks"
[endreplay]
[s]

;=============================================
;手紙　語調の選択
;=============================================
*gotyou_sentaku
[cm]
[freeimage layer = 28]
[一斉表示準備]
;↓loadキャンセル時戻り先を記憶(試行中
[eval exp="f.load_mae_storage='fumi_henji_gotyou.ks'; f.load_mae_target='*gotyou_sentaku'"]
[wait time=50]
;fumi_henji_gotyou_kanketsu.ks, fumi_henji_gotyou_teinei.ks, fumi_henji_gotyou_kigaru.ksとしてボタン選択後処理を切り出しました(◆jsYiJcqRkk

*button_hyouji
[font size=25]
どんな感じに[r]
書きましょう？
	[glink name="list" storage="fumi_henji_gotyou_kanketsu.ks" text="簡潔に書く" size=16 width="200" x=480 y=150 color=white]
	[glink name="list" storage="fumi_henji_gotyou_teinei.ks" text="丁寧に書く" size=16 width="200" x=480 y=250 color=white]
	[glink name="list" storage="fumi_henji_gotyou_kigaru.ks" text="気軽に書く" size=16 width="200" x=480 y=350 color=white]
;[button name="list" folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[一斉表示]
[s]

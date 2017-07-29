;「手紙を書く」「返事」終了処理（画面を自動で閉じる）
[cm]
[freeimage layer = 28]
;↓手紙を出した後は自動で画面が閉じられるため、ボタン類を撤去
;[button name="list" folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[clearfix]
[wait time=10]
[chara_mod name="A_mayu" storage="girl/L/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_niko.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_hohoemi.png" time=0]
[wait time=10]
;メッセージレイヤサイズをお稽古フキダシ窓用に設定変更
[position left=70 width=700 height=550 top=47 page=fore margint="50"]
[font size=25]
手紙を出しました
[wait time=1000]
[jump storage="fumi_henji_owari.ks" target=*fumi_henji_owari]
[s]

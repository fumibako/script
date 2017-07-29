*binsen_sentaku
[if exp="f.para_shujinkou_tairyoku_now < f.fumi_hituyou_tairyoku"]
[chara_mod name="A_mayu" storage="girl/L/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_toji.png" time=0]
[wait time=10]
[font size=25]
今は疲れすぎて[r]
書けないわ……[r]
[font size=20 color=rosybrown]
(必要体力[emb exp="f.fumi_hituyou_tairyoku"] 気力[emb exp="f.fumi_hituyou_kiryoku"])
@jump storage="fumi_henji_binsen_hyouji_end.ks" target="*fumi_binsen_hyouji_end"
[s]
[s]
[elsif exp="f.para_shujinkou_kiryoku_now < f.fumi_hituyou_kiryoku"]
[chara_mod name="A_mayu" storage="girl/L/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_toji.png" time=0]
[wait time=10]
[font size=25]
今は疲れすぎて[r]
書けないわ……[r]
[font size=20 color=rosybrown]
(必要体力[emb exp="f.fumi_hituyou_tairyoku"] 気力[emb exp="f.fumi_hituyou_kiryoku"])
@jump storage="fumi_henji_binsen_hyouji_end.ks" target="*fumi_binsen_hyouji_end"
[s]
[s]
[else]
@jump storage="fumi_henji_binsen_sentaku2.ks" target=*binsen_sentaku2
[endif]
[s]
[s]

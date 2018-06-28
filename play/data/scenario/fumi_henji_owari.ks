*fumi_henji_owari
@jump storage="fumi_henji_report.ks"
;↑主人公手紙履歴保存。Script by ＠名無しさん１(ありがとうございます)
;↓ここに戻ります
*fumi_henji_owari2
[eval exp="f.fumi_henjityu=0"]
[eval exp="f.fumi_kakunin=0"]
[eval exp="f.fumi_atesaki=''"]
[eval exp="f.fumi_hairetsu1=0"]
[eval exp="f.fumi_hairetsu2=0"]

[clearfix]
;[freeimage layer = 23]
[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]
[freeimage layer = 25]
[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer = 28]
[cm]

@jump storage=&f.viewing_storage target=&f.viewing_target
[s]

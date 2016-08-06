
;¥¥¥¥¥¥¥¥イベント6.5¥¥¥¥¥¥¥¥
;☆結果の知らせ (黒田ルートと同じお正月なイメージ)
;×日程の調整によって変更してもokです。
;手紙はなくても？
;△手紙バージョン
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[chara_mod name="bg" storage="bg/room_niwa_akarui.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]


[whosay name="磯野" color="dimgray"]
「[名前]さま、;お嬢様、
『四条華織』さまからお手紙が届いております。」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
ありがとう。[p]
#
;○四条手紙 正月はがき？
お健やかに新年をお迎えのこととお慶び申し上げます。[r]
昨年は大変お世話になりありがとうございました。[r]
本年もよろしくお願いいたします[p]
ー追伸ー[r]
先日、[名前]のお父様の浩文さまとお会いしました。[r]
つきましては、[名前]さんと直接会ってお話しをしたいと考えております。[r]
返事待ってます。[p]

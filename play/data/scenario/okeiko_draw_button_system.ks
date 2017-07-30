*draw_button_system
[eval exp="f.viewing_storage = 'okeiko.ks'"]
[eval exp="f.viewing_target = '*draw_button_system'"]
;背景チラ見え防止:背景表示を[bg]へ切り替えに伴いまたたき防止のためにコメントアウトさせていただきます。
;[bg storage="../fgimage/bg/toumei.gif" time=0]

;◆お稽古パート画面表示処理へ飛んでokeiko.ksへ戻る
;↓どこから飛んだか、戻る際の道標
[eval exp="f.hyoujimae_storage='okeiko.ks'"]
[eval exp="f.hyoujimae_target='*draw_owari'"]
@jump storage="okeiko_hyouji.ks" target=*start

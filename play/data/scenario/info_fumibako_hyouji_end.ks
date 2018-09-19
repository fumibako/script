[wait time=10]
[iscript]
$('.loding_pic1').remove();
[endscript]
[wait time=10]
[一斉表示]
;↓閉ボタンを設置します。glinkボタンが消えても「閉」は表示させたい為、nameはlistとは別にします
﻿@clearstack
[button name="button" folder="fgimage/button" width=60 height=60 graphic="button_close80x80.png" storage="info_fumibako_owari.ks" x=890 y=570]
;「履歴」ボタンは「文箱」のみ表示「情報」では非表示としたいので表示スクリプトをfumibako_oaite_hyouji.ksに移動しました。(info_fumibako_hyouji_end.ksは「文箱」「情報」表示共通処理を書く場所のため、ここに置くと「情報」でも表示されてしまうのです）
[s]

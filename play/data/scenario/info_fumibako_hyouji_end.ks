[wait time=10]
[iscript]
$('.loding_pic1').remove();
[endscript]
[wait time=10]
[一斉表示]
;↓閉ボタンを設置します。glinkボタンが消えても「閉」は表示させたい為、nameはlistとは別にします
﻿@clearstack
[button name="button" folder="fgimage/button" width=60 height=60 graphic="button_close80x80.png" storage="info_fumibako_owari.ks" x=890 y=570]
;主人公履歴表示ボタン設置：info_hiroin_fumi.ks
[locate x=815 y=570]
[button name="button_info,button_rireki" fix=true folder="fgimage/button" width=60 height=60 graphic="button_info_rireki.png" storage=info_hiroin_fumi.ks target=*start ]
[wait time=10]

[s]

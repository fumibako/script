*fumi_binsen_hyouji_end
[if exp="(f.para_shujinkou_tairyoku_now >= f.fumi_hituyou_tairyoku) && (f.para_shujinkou_kiryoku_now >= f.fumi_hituyou_kiryoku)"]
	[glink name="list" storage="fumi_henji.ks" target="repair_binsen" text="磯野を呼ぶ" graphic="select_waku_x500.png" size=16 width="200" x=380 y=550 color=white]
[endif]

;【機能ボタン表示】
;↓「文箱」をお稽古パートのfix=trueボタンから呼び出しているため、fixボタンを設置可能となるようコールスタックを消します(コールスタック無しでも動作するように組んでいます。が、動作不具合があれば修正します)◆jsYiJcqRkk
﻿@clearstack
[button fix=true name="list" folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji_owari.ks" target="*fumi_henji_owari" x=870 y=555]
[locate x=680 y=535]
[button name="message_save,list" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=780 y=535]
[button name="message_load,list" graphic="button_message_load.png" role=load]
;autosaveロードを可能とするためsys_load.ksに飛ぶ方法を試行中です。まだうまく動作しないため、コメントアウトします◆jsYiJcqRkk
;[button fix=true name="message_load,list" graphic="button_message_load.png" storage="sys_load.ks"]
[wait time=10]
[iscript]
$('.loding_pic1').remove();
[endscript]
[wait time=10]
[一斉表示]
[s]

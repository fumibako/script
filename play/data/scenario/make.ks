[call target=*start storage="macro_etc.ks"]
[wait time=10]
[call target=*start storage="macro_etc2.ks"]
[wait time=10]
[call target=*start storage="macro_etc3.ks"]
[wait time=10]
[call target=*start storage="macro_graphic.ks"]
[wait time=10]

[if exp="sf.BGM=='OFF'"]
[iscript]
/*BGMを再生しない*/
TG.stat.play_bgm = false;
[endscript]
;ロード時点で再生していたBGMを停止します。
[stopbgm ]
[else]
[iscript]
/*BGMを再生する*/
TG.stat.play_bgm = true;
[endscript]
;[playbgm storage=&f.bgm_storage]
[endif]

[if exp="sf.SE=='OFF'"]
[iscript]
/*効果音を再生しない*/
TG.stat.play_se = false;
[endscript]
;ロード時点で再生していたSEを停止します。
[stopse ]
[else]
[iscript]
/*効果音を再生する*/
TG.stat.play_se = true;
[endscript]
[endif]

[if exp="sf.KSKIP=='ON'"]
[skipstart]
[endif]

;[if exp="f.viewing_storage == 'okeiko.ks'"]
;	[clearfix]
;	[お稽古ボタン表示]
;[endif]

[return]


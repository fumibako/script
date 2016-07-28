; テキスト高速表示モード追加プラグイン Ver2.74.01
; Studio Overdrive http://studio-overdrive.com/
;
;
; ＜使い方＞
;   最初に、boost_mode.ksを読み込んでください。
;   [call storage="boost_mode/boost_mode.ks"]
;
;   [boost_mode_on]……テキストを一括描画ON
;   [boost_mode_on]……テキストを一括描画OFF(1文毎描画)
;
; ＜注意点＞
;   ティラノスクリプトVer2.74 で動作確認しています。
;   ティラノスクリプトのエンジン本体の処理を変更しているため、他のバージョンでの動作は保証しません。
;

[loadjs storage="boost_mode/boost_mode.js"]
[macro name="boost_mode_on"]
[iscript]
sutdioOverdrive.tyrano.kag.stat.is_boost_mode = true;
[endscript]
[endmacro]

[macro name="boost_mode_off"]
[iscript]
sutdioOverdrive.tyrano.kag.stat.is_boost_mode = false;
[endscript]
[endmacro]
[return]

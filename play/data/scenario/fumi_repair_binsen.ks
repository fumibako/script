;=============================================
;fumi_repair_binsen.ks便せん配列を修復する処理
;=============================================
*start
;配列を消去
[eval exp="f.binsen_list_hairetsu[0]=[]"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[1]=[]"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[2]=[]"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[3]=[]"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[4]=[]"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[5]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[6]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[7]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[8]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[9]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[10]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[11]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[12]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[13]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[14]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[15]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[16]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[17]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[18]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[19]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[20]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[21]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[22]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[23]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[24]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[25]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu[26]=''"]
[wait time=10]
[eval exp="f.binsen_list_hairetsu.length = 0"]
[wait time=10]
*complete_load_binsen_list_hairetsu

[iscript]
f.binsen_list_hairetsu[0]=["白無地",0,1,1,1,-2,"",""];
f.binsen_list_hairetsu[1]=["桜模様",1,1,2,1,1,3,4];
f.binsen_list_hairetsu[2]=["あぶりだし",-1,0,-1,0,0,"",""];
f.binsen_list_hairetsu[3]=["透かし模様",0,0,1,-1,0,"",""];
f.binsen_list_hairetsu[4]=["幾何学模様",1,0,0,-1,0,"",""];
[endscript]
[if exp="f.okeiko_month == 4"]
@jump target=*complete_repair_binsen_list
[endif]
[iscript]
f.binsen_list_hairetsu[5]=["レンガ街の風景画",0,2,1,1,1,"",""];
f.binsen_list_hairetsu[6]=["新緑の模様",1,0,2,1,1,5,6];
[endscript]
[if exp="f.okeiko_month == 5"]
@jump target=*complete_repair_binsen_list
[endif]
[iscript]
f.binsen_list_hairetsu[7]=["黒無地",-1,0,0,1,-2,"",""];
f.binsen_list_hairetsu[8]=["紫陽花の模様",1,0,2,1,1,6,7];
[endscript]
[if exp="f.okeiko_month == 6"]
@jump target=*complete_repair_binsen_list
[endif]
[iscript]
f.binsen_list_hairetsu[9]=["夏雲の模様",0,0,1,2,1,7,8];
f.binsen_list_hairetsu[10]=["清流に鮎の模様",1,1,1,2,1,7,8];
[endscript]
[if exp="f.okeiko_month == 7"]
@jump target=*complete_repair_binsen_list
[endif]
[iscript]
f.binsen_list_hairetsu[11]=["ラムネ瓶の模様",0,0,1,1,2,"",8];
f.binsen_list_hairetsu[12]=["向日葵の模様",1,0,2,1,2,8,""];
[endscript]
[if exp="f.okeiko_month == 8"]
@jump target=*complete_repair_binsen_list
[endif]
[iscript]
f.binsen_list_hairetsu[13]=["お月見の模様",1,1,1,1,1,"",9];
f.binsen_list_hairetsu[14]=["葡萄の模様",1,0,2,1,1,9,10];
[endscript]
[if exp="f.okeiko_month == 9"]
@jump target=*complete_repair_binsen_list
[endif]
[iscript]
f.binsen_list_hairetsu[15]=["曼珠沙華の模様",0,2,2,-2,1,10,11];
f.binsen_list_hairetsu[16]=["紅葉の模様",2,1,2,1,1,10,11];
[endscript]
[if exp="f.okeiko_month == 10"]
@jump target=*complete_repair_binsen_list
[endif]
[iscript]
f.binsen_list_hairetsu[17]=["柿の模様",2,0,2,1,2,11,12];
f.binsen_list_hairetsu[18]=["どんぐりの模様",1,0,2,1,1,11,12];
[endscript]
[if exp="f.okeiko_month == 11"]
@jump target=*complete_repair_binsen_list
[endif]
[iscript]
f.binsen_list_hairetsu[19]=["雪の模様",0,0,1,0,1,12,1];
f.binsen_list_hairetsu[20]=["蜜柑の模様",1,-1,2,1,1,12,1];
[endscript]
[if exp="f.okeiko_month == 12"]
@jump target=*complete_repair_binsen_list
[endif]
[iscript]
f.binsen_list_hairetsu[21]=["餅つきの画",1,1,1,2,1,"",1];
f.binsen_list_hairetsu[22]=["凧の模様",1,0,0,1,1,"",1];
[endscript]
[if exp="f.okeiko_month == 1"]
@jump target=*complete_repair_binsen_list
[endif]
[iscript]
f.binsen_list_hairetsu[23]=["豆撒きの風景画",0,0,0,2,1,"",2];
f.binsen_list_hairetsu[24]=["蕗のとうの模様",1,1,2,1,2,2,3];
[endscript]
[if exp="f.okeiko_month == 2"]
@jump target=*complete_repair_binsen_list
[endif]
[iscript]
f.binsen_list_hairetsu[25]=["雛飾りの模様",0,-1,0,0,1,"",3];
f.binsen_list_hairetsu[26]=["うぐいすの模様",1,0,0,1,1,3,""];
[endscript]
*complete_repair_binsen_list
@jump storage="fumi_henji_binsen_sentaku2.ks" target=*binsen_sentaku2

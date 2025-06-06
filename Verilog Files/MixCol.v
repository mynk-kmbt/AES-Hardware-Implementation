`timescale 1ns / 1ps

module MixCol(Mat,OutMat);
    input [127:0] Mat; 
    output [127:0] OutMat;
    wire [7:0] S000,S001,S002,S003,S010,S011,S012,S013,S020,S021,S022,S023,S030,S031,S032,S033,S100,S101,S102,S103,S110,S111,S112,S113,S120,S121,S122,S123,S130,S131,S132,S133,S200,S201,S202,S203,S210,S211,S212,S213,S220,S221,S222,S223,S230,S231,S232,S233,S300,S301,S302,S303,S310,S311,S312,S313,S320,S321,S322,S323,S330,S331,S332,S333;
    wire [7:0] S00,S01,S02,S03,S10,S11,S12,S13,S20,S21,S22,S23,S30,S31,S32,S33; 
   
    multi m000(8'h02,Mat[127:120],9'b100011011,S000);
    multi m001(8'h03,Mat[95:88],9'b100011011,S001);
    multi m002(8'h01,Mat[63:56],9'b100011011,S002);
    multi m003(8'h01,Mat[31:24],9'b100011011,S003);
    assign S00=S000^S001^S002^S003;
    
    multi m010(8'h02,Mat[119:112],9'b100011011,S010);
    multi m011(8'h03,Mat[87:80],9'b100011011,S011);
    multi m012(8'h01,Mat[55:48],9'b100011011,S012);
    multi m013(8'h01,Mat[23:16],9'b100011011,S013);
    assign S01=S010^S011^S012^S013;
    
    multi m020(8'h02,Mat[111:104],9'b100011011,S020);
    multi m021(8'h03,Mat[79:72],9'b100011011,S021);
    multi m022(8'h01,Mat[47:40],9'b100011011,S022);
    multi m023(8'h01,Mat[15:8],9'b100011011,S023);
    assign S02=S020^S021^S022^S023;
        
    multi m030(8'h02,Mat[103:96],9'b100011011,S030);
    multi m031(8'h03,Mat[71:64],9'b100011011,S031);
    multi m032(8'h01,Mat[39:32],9'b100011011,S032);
    multi m033(8'h01,Mat[7:0],9'b100011011,S033);
    assign S03=S030^S031^S032^S033;
    
    multi m100(8'h01,Mat[127:120],9'b100011011,S100);
    multi m101(8'h02,Mat[95:88],9'b100011011,S101);
    multi m102(8'h03,Mat[63:56],9'b100011011,S102);
    multi m103(8'h01,Mat[31:24],9'b100011011,S103);
    assign S10=S100^S101^S102^S103;
    
    multi m110(8'h01,Mat[119:112],9'b100011011,S110);
    multi m111(8'h02,Mat[87:80],9'b100011011,S111);
    multi m112(8'h03,Mat[55:48],9'b100011011,S112);
    multi m113(8'h01,Mat[23:16],9'b100011011,S113);
    assign S11=S110^S111^S112^S113;
    
    multi m120(8'h01,Mat[111:104],9'b100011011,S120);
    multi m121(8'h02,Mat[79:72],9'b100011011,S121);
    multi m122(8'h03,Mat[47:40],9'b100011011,S122);
    multi m123(8'h01,Mat[15:8],9'b100011011,S123);
    assign S12=S120^S121^S122^S123;
        
    multi m130(8'h01,Mat[103:96],9'b100011011,S130);
    multi m131(8'h02,Mat[71:64],9'b100011011,S131);
    multi m132(8'h03,Mat[39:32],9'b100011011,S132);
    multi m133(8'h01,Mat[7:0],9'b100011011,S133);
    assign S13=S130^S131^S132^S133;


    multi m200(8'h01,Mat[127:120],9'b100011011,S200);
    multi m201(8'h01,Mat[95:88],9'b100011011,S201);
    multi m202(8'h02,Mat[63:56],9'b100011011,S202);
    multi m203(8'h03,Mat[31:24],9'b100011011,S203);
    assign S20=S200^S201^S202^S203;
    
    multi m210(8'h01,Mat[119:112],9'b100011011,S210);
    multi m211(8'h01,Mat[87:80],9'b100011011,S211);
    multi m212(8'h02,Mat[55:48],9'b100011011,S212);
    multi m213(8'h03,Mat[23:16],9'b100011011,S213);
    assign S21=S210^S211^S212^S213;
    
    multi m220(8'h01,Mat[111:104],9'b100011011,S220);
    multi m221(8'h01,Mat[79:72],9'b100011011,S221);
    multi m222(8'h02,Mat[47:40],9'b100011011,S222);
    multi m223(8'h03,Mat[15:8],9'b100011011,S223);
    assign S22=S220^S221^S222^S223;
        
    multi m230(8'h01,Mat[103:96],9'b100011011,S230);
    multi m231(8'h01,Mat[71:64],9'b100011011,S231);
    multi m232(8'h02,Mat[39:32],9'b100011011,S232);
    multi m233(8'h03,Mat[7:0],9'b100011011,S233);
    assign S23=S230^S231^S232^S233;


    multi m300(8'h03,Mat[127:120],9'b100011011,S300);
    multi m301(8'h01,Mat[95:88],9'b100011011,S301);
    multi m302(8'h01,Mat[63:56],9'b100011011,S302);
    multi m303(8'h02,Mat[31:24],9'b100011011,S303);
    assign S30=S300^S301^S302^S303;
    
    multi m310(8'h03,Mat[119:112],9'b100011011,S310);
    multi m311(8'h01,Mat[87:80],9'b100011011,S311);
    multi m312(8'h01,Mat[55:48],9'b100011011,S312);
    multi m313(8'h02,Mat[23:16],9'b100011011,S313);
    assign S31=S310^S311^S312^S313;
    
    multi m320(8'h03,Mat[111:104],9'b100011011,S320);
    multi m321(8'h01,Mat[79:72],9'b100011011,S321);
    multi m322(8'h01,Mat[47:40],9'b100011011,S322);
    multi m323(8'h02,Mat[15:8],9'b100011011,S323);
    assign S32=S320^S321^S322^S323;
        
    multi m330(8'h03,Mat[103:96],9'b100011011,S330);
    multi m331(8'h01,Mat[71:64],9'b100011011,S331);
    multi m332(8'h01,Mat[39:32],9'b100011011,S332);
    multi m333(8'h02,Mat[7:0],9'b100011011,S333);
    assign S33=S330^S331^S332^S333;
    
    assign OutMat={S00,S10,S20,S30,S01,S11,S21,S31,S02,S12,S22,S32,S03,S13,S23,S33};
    
endmodule

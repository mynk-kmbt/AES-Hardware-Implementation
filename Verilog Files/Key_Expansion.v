`timescale 1ns / 1ps


module Key_expansion(key,w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23,w24,w25,w26,w27,w28,w29,w30,w31,w32,w33,w34,w35,w36,w37,w38,w39,w40,w41,w42,w43);
    input [127:0] key;
    output [31:0] w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23,w24,w25,w26,w27,w28,w29,w30,w31,w32,w33,w34,w35,w36,w37,w38,w39,w40,w41,w42,w43;
    wire [31:0] g3,g7,g11,g15,g19,g23,g27,g31,g35,g39;
    
    assign w0=key[127:96];
    assign w1=key[95:64];
    assign w2=key[63:32];
    assign w3=key[31:0];
    
    g_func u1 (w3,1,g3);
     assign w4= w0 ^ g3 ;
     assign w5= w1 ^ w4 ;
     assign w6= w2 ^ w5 ;
     assign w7= w3 ^ w6 ;

    g_func u2 (w7,2,g7);     
     assign w8= w4 ^ g7 ;
     assign w9= w5 ^ w8 ;
     assign w10= w6 ^ w9 ;
     assign w11= w7 ^ w10 ;
     
    g_func u3 (w11,3,g11);
     assign w12= w8 ^ g11 ;
     assign w13= w9 ^ w12 ;
     assign w14= w10 ^ w13 ;
     assign w15= w11 ^ w14 ;
     
    g_func u4 (w15,4,g15);
     assign w16= w12 ^ g15 ;
     assign w17= w13 ^ w16 ;
     assign w18= w14 ^ w17 ;
     assign w19= w15 ^ w18 ;
     
    g_func u5 (w19,5,g19);
     assign w20= w16 ^ g19 ;
     assign w21= w17 ^ w20 ;
     assign w22= w18 ^ w21 ;
     assign w23= w19 ^ w22 ;    
     
     g_func u6 (w23,6,g23);
     assign w24= w20 ^ g23 ;
     assign w25= w21 ^ w24 ;
     assign w26= w22 ^ w25 ;
     assign w27= w23 ^ w26 ;
     
    g_func u7 (w27,7,g27);
     assign w28= w24 ^ g27 ;
     assign w29= w25 ^ w28 ;
     assign w30= w26 ^ w29 ;
     assign w31= w27 ^ w30 ;
     
    g_func u8 (w31,8,g31);
     assign w32= w28 ^ g31 ;
     assign w33= w29 ^ w32 ;
     assign w34= w30 ^ w33 ;
     assign w35= w31 ^ w34 ;
     
    g_func u9 (w35,9,g35);
     assign w36= w32 ^ g35 ;
     assign w37= w33 ^ w36 ;
     assign w38= w34 ^ w37 ;
     assign w39= w35 ^ w38 ;
          
    g_func u10 (w39,10,g39);
     assign w40= w36 ^ g39 ; 
     assign w41= w37 ^ w40 ;
     assign w42= w38 ^ w41 ;
     assign w43= w39 ^ w42 ;
    
endmodule
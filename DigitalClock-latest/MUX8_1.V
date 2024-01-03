module mux8_1(sel,d0,d1,d2,d3,d4,d5,d6,d7,q0,q1,q2,q3);
input[2:0] sel ;
input[3:0] d0,d1,d2,d3,d4,d5,d6,d7;
output q0,q1,q2,q3;
reg q0,q1,q2,q3;

always @ (sel or d0 or d1 or d2 or d3 or d4 or d5 or d6 or d7)
begin
     case(sel)
        3'd0: {q3,q2,q1,q0}=d0;
        3'd1: {q3,q2,q1,q0}=d1;
        3'd2: {q3,q2,q1,q0}=d2;
        3'd3: {q3,q2,q1,q0}=d3;
        3'd4: {q3,q2,q1,q0}=d4;
        3'd5: {q3,q2,q1,q0}=d5;
        3'd6: {q3,q2,q1,q0}=d6;
        3'd7: {q3,q2,q1,q0}=d7;
        default:{q3,q2,q1,q0}=4'bxxxx;
   endcase
 end
endmodule


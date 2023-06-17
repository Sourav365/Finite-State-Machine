`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2023 23:03:33
// Design Name: 
// Module Name: moore_1101_overlap
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module moore_1101_overlap(
    output z,//reg z,
    input x, clk, rst
    );
    
    parameter s0=0,s1=1,s2=2,s3=3,s4=4;
    reg[2:0] p_state,n_state;
    
    /*always @(posedge clk or posedge rst) begin
        if(rst) p_state<=s0;
        else    p_state<=n_state;
    end
    
    always @(p_state or x)  begin
            case(p_state)
                 s0: begin
                    z<=0;
                    if(x==1) n_state<=s1;
                    else     n_state<=s0;
                    end
                s1: begin
                    z<=0;
                    if(x==1) n_state<=s2;
                    else     n_state<=s0;
                    end
                s2: begin
                    z<=0;
                    if(x==0) n_state<=s3; 
                    else     n_state<=s2;
                    end
                s3: begin
                    z<=0;
                    if(x==1) n_state<=s4;
                    else     n_state<=s0;
                    end
                s4: begin
                    z<=1;
                    if(x==1) n_state<=s2;
                    else     n_state<=s0;
                    end
            endcase
    end*/
    
    always @(p_state or x)  
            case(p_state)
                 s0: n_state <= x ? s1 : s0;
                 s1: n_state <= x ? s2 : s0;
                 s2: n_state <= x ? s2 : s3;
                 s3: n_state <= x ? s4 : s0;
                 s4: n_state <= x ? s2 : s0;
            endcase
            
    always @ (posedge clk or posedge rst)
        if(rst) p_state <= s0;
        else    p_state <= n_state;
    
    assign z = (p_state == s4);
endmodule

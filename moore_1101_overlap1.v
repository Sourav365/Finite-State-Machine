`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2023 23:11:48
// Design Name: 
// Module Name: moore_1101_overlap1
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


module moore_1101_overlap1(
    output reg z,
    input x, clk, rst
    );
    
    parameter s0=0,s1=1,s2=2,s3=3,s4=4;
    reg[2:0] state;
    
    always @(posedge clk or posedge rst) begin
        if(rst) begin z<=1'b0; state<=s0; end
        else begin
            case(state)
                s0: begin
                    z<=0;
                    if(x==1) state<=s1;
                    else     state<=s0;
                    end
                s1: begin
                    z<=0;
                    if(x==1) state<=s2;
                    else     state<=s0;
                    end
                s2: begin
                    z<=0;
                    if(x==0) state<=s3; 
                    else     state<=s2;
                    end
                s3: begin
                    z<=0;
                    if(x==1) state<=s4;
                    else     state<=s0;
                    end
                s4: begin
                    z<=1;
                    if(x==1) state<=s2;
                    else     state<=s0;
                    end
            endcase
        end
    end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2023 23:01:56
// Design Name: 
// Module Name: mealy_1101_overlap2
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


module mealy_1101_overlap2(
    output reg z,
    input x, clk, rst
    );
    
    parameter s0=0,s1=1,s2=2,s3=3;
    reg[1:0] p_state,n_state;
    
    always @(posedge clk or posedge rst) begin
        if(rst) p_state<=s0;
        else    p_state<=n_state;
    end
    always @(p_state or x)  begin
            case(p_state)
                s0: begin
                    if(x==1) begin n_state<=s1; z<=0; end
                    else     begin n_state<=s0; z<=0; end
                    end
                s1: begin
                    if(x==1) begin n_state<=s2; z<=0; end
                    else     begin n_state<=s0; z<=0; end
                    end
                s2: begin
                    if(x==0) begin n_state<=s3; z<=0; end
                    else     begin n_state<=s2; z<=0; end
                    end
                s3: begin
                    if(x==1) begin n_state<=s1; z<=1; end
                    else     begin n_state<=s0; z<=0; end
                    end
            endcase
        end
    
endmodule

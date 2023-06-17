`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2023 23:02:41
// Design Name: 
// Module Name: mealy_1101_overlap1
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


module mealy_1101_overlap1(
    output reg z,
    input x, clk, rst
    );
    
    parameter s0=0,s1=1,s2=2,s3=3;
    reg[1:0] state;
    
    always @(posedge clk or posedge rst) begin
        if(rst) begin z<=1'b0; state<=s0; end
        else begin
            case(state)
                s0: begin
                    if(x==1) begin state<=s1; z<=0; end
                    else     begin state<=s0; z<=0; end
                    end
                s1: begin
                    if(x==1) begin state<=s2; z<=0; end
                    else     begin state<=s0; z<=0; end
                    end
                s2: begin
                    if(x==0) begin state<=s3; z<=0; end
                    else     begin state<=s2; z<=0; end
                    end
                s3: begin
                    if(x==1) begin state<=s1; z<=1; end
                    else     begin state<=s0; z<=0; end
                    end
            endcase
        end
    end
endmodule

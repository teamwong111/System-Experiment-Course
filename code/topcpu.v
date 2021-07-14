`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/22 22:03:53
// Design Name: 
// Module Name: topcpu
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


module topcpu(
input	wire										clk,
	input wire										rst,
	output wire[7:0]o_seg,
	output wire[7:0]o_sel
    );
    wire[31:0]pc;
    wire[31:0]inst;
    reg div_clk=0;
    reg[40:0]clk_cnt=0;

    always @(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            div_clk<=0;
        end
        else if(clk_cnt==0)
        begin
            div_clk<=~div_clk;
            clk_cnt<=50;
        end
        else
        begin
            clk_cnt<=clk_cnt-1;
        end
    end
    
    openmips_min_sopc openmips(div_clk,rst,pc,inst,o_seg,o_sel);
endmodule

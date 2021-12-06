`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/05 10:44:02
// Design Name: 
// Module Name: new1_tb
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
/*module openmips_min_sopc_tb();

  reg     CLOCK_50;
  reg     rst;
  wire[31:0]inst;
  
  initial begin
    CLOCK_50 = 1'b0;
    forever #10 CLOCK_50 = ~CLOCK_50;
  end
      
  initial begin
    rst = `RstEnable;
    #195 rst= `RstDisable;
    #10000 $stop;
  end
       
  openmips_min_sopc openmips_min_sopc0(
		.clk(CLOCK_50),
		.rst(rst),
		.inst(inst)	
	);

endmodule*/

module new1_tb();
reg clk;
reg rst;
wire[31:0]inst;
wire[31:0]pc;
wire[31:0]idata;
wire[7:0]seg;
wire[7:0]sel;
wire[31:0]h1;
wire[31:0]h2;
wire[31:0]h3;
wire[31:0]h4;
wire[31:0]h5;
wire[31:0]h6;
wire[31:0]h7;
wire[31:0]h8;
wire[31:0]h9;
wire[31:0]h10;
wire[31:0]h11;
wire[31:0]h12;
wire[31:0]h13;
wire[31:0]h14;
openmips_min_sopc cpu(clk,rst,inst,pc,seg,sel,idata);
assign h1=new1_tb.cpu.data_ram0.data_mem0[0];
assign h2=new1_tb.cpu.data_ram0.data_mem1[0];
assign h3=new1_tb.cpu.data_ram0.data_mem2[0];
assign h4=new1_tb.cpu.data_ram0.data_mem3[0];
integer i;
integer fp_w;
  /*initial begin
    rst = `RstEnable;
    #195 rst= `RstDisable;
    #10000 $stop;
  end*/
initial
begin
fp_w=$fopen("D:/Xilinx/cputest/cpu89/data_out.txt","w");//以写的方式打开文件
clk=0;
rst=1;
#10;
clk=1;
#10;
rst=0;
clk=0;
for(i=0;i<50000;i=i+1)
begin
#10;
 clk=1;
  #10;
  clk=0;
  $fwrite(fp_w,"regfile0: %h\n",new1_tb.cpu.openmips0.regfile1.regs[0]);
  $fwrite(fp_w,"regfile1: %h\n",new1_tb.cpu.openmips0.regfile1.regs[1]); 
  $fwrite(fp_w,"regfile2: %h\n",new1_tb.cpu.openmips0.regfile1.regs[2]); 
  $fwrite(fp_w,"regfile3: %h\n",new1_tb.cpu.openmips0.regfile1.regs[3]); 
  $fwrite(fp_w,"regfile4: %h\n",new1_tb.cpu.openmips0.regfile1.regs[4]); 
  $fwrite(fp_w,"regfile5: %h\n",new1_tb.cpu.openmips0.regfile1.regs[5]); 
  $fwrite(fp_w,"regfile6: %h\n",new1_tb.cpu.openmips0.regfile1.regs[6]); 
  $fwrite(fp_w,"regfile7: %h\n",new1_tb.cpu.openmips0.regfile1.regs[7]); 
  $fwrite(fp_w,"regfile8: %h\n",new1_tb.cpu.openmips0.regfile1.regs[8]); 
  $fwrite(fp_w,"regfile9: %h\n",new1_tb.cpu.openmips0.regfile1.regs[9]); 
  $fwrite(fp_w,"regfile10: %h\n",new1_tb.cpu.openmips0.regfile1.regs[10]); 
  $fwrite(fp_w,"regfile11: %h\n",new1_tb.cpu.openmips0.regfile1.regs[11]);  
  $fwrite(fp_w,"regfile12: %h\n",new1_tb.cpu.openmips0.regfile1.regs[12]); 
  $fwrite(fp_w,"regfile13: %h\n",new1_tb.cpu.openmips0.regfile1.regs[13]); 
  $fwrite(fp_w,"regfile14: %h\n",new1_tb.cpu.openmips0.regfile1.regs[14]); 
  $fwrite(fp_w,"regfile15: %h\n",new1_tb.cpu.openmips0.regfile1.regs[15]); 
  $fwrite(fp_w,"regfile16: %h\n",new1_tb.cpu.openmips0.regfile1.regs[16]); 
  $fwrite(fp_w,"regfile17: %h\n",new1_tb.cpu.openmips0.regfile1.regs[17]); 
  $fwrite(fp_w,"regfile18: %h\n",new1_tb.cpu.openmips0.regfile1.regs[18]); 
  $fwrite(fp_w,"regfile19: %h\n",new1_tb.cpu.openmips0.regfile1.regs[19]); 
  $fwrite(fp_w,"regfile20: %h\n",new1_tb.cpu.openmips0.regfile1.regs[20]); 
  $fwrite(fp_w,"regfile21: %h\n",new1_tb.cpu.openmips0.regfile1.regs[21]); 
  $fwrite(fp_w,"regfile22: %h\n",new1_tb.cpu.openmips0.regfile1.regs[22]); 
  $fwrite(fp_w,"regfile23: %h\n",new1_tb.cpu.openmips0.regfile1.regs[23]); 
  $fwrite(fp_w,"regfile24: %h\n",new1_tb.cpu.openmips0.regfile1.regs[24]); 
  $fwrite(fp_w,"regfile25: %h\n",new1_tb.cpu.openmips0.regfile1.regs[25]); 
  $fwrite(fp_w,"regfile26: %h\n",new1_tb.cpu.openmips0.regfile1.regs[26]); 
  $fwrite(fp_w,"regfile27: %h\n",new1_tb.cpu.openmips0.regfile1.regs[27]); 
  $fwrite(fp_w,"regfile28: %h\n",new1_tb.cpu.openmips0.regfile1.regs[28]); 
  $fwrite(fp_w,"regfile29: %h\n",new1_tb.cpu.openmips0.regfile1.regs[29]); 
  $fwrite(fp_w,"regfile30: %h\n",new1_tb.cpu.openmips0.regfile1.regs[30]); 
  $fwrite(fp_w,"regfile31: %h\n",new1_tb.cpu.openmips0.regfile1.regs[31]); 
  $fwrite(fp_w,"pc: %h\n",new1_tb.pc);
  $fwrite(fp_w,"inst: %h\n",new1_tb.inst);
end
end
endmodule
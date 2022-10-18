`timescale 1ns / 1ps



module StaticRAM(
    input i_clk,
    input i_ce,
    input i_rw,
    input [5:0] i_addr,
    
    inout [7:0] io_data
    );

    reg [7:0] mem[0:63];
    reg [5:0] r_addr;
    assign io_data =  (i_rw) ?  8'bzzzzzzzz : mem[r_addr] ; // 값을 보낼�? : ?��?���?
    
    
    always @(posedge i_clk) begin
        if(i_ce) begin
            if(!i_rw) begin
                mem[i_addr] <= io_data;
            end 
            else begin
                r_addr <= i_addr;
            end
        end
        else begin
        end
    
    end
            
endmodule

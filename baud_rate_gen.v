`timescale 1ns / 1ps

module baud_rate_gen #(
    parameter CLK_FREQ = 50000000,
    parameter BAUD_RATE = 115200
)(
    input clk,
    input rst_n,
    output reg baud_tick
);
    localparam integer BAUD_PERIOD = CLK_FREQ / BAUD_RATE;
    reg [$clog2(BAUD_PERIOD)-1:0] counter;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 0;
            baud_tick <= 0;
        end else begin
            if (counter == BAUD_PERIOD - 1) begin
                counter <= 0;
                baud_tick <= 1;
            end else begin
                counter <= counter + 1;
                baud_tick <= 0;
            end
        end
    end
endmodule

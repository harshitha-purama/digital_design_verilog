module tb_mux4to1;
    reg [3:0] I;
    reg [1:0] S;
    integer i;       // wider loop variable
    wire Y;

    mux4to1 uut (.I(I), .S(S), .Y(Y));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_mux4to1);

        I = 4'b1010;
        for (i = 0; i < 4; i = i + 1) begin
            S = i[1:0];    // assign lower 2 bits of i to S
            #10;
            $display("S=%b -> Y=%b", S, Y);
        end
        $finish;
    end
endmodule


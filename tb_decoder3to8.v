module tb_decoder3to8;
    reg [2:0] A;
    integer i;
    wire [7:0] Y;

    decoder3to8 uut (.A(A), .Y(Y));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_decoder3to8);

        for (i = 0; i < 8; i = i + 1) begin
            A = i[2:0];   // take 3 LSBs of i
            #10;
            $display("A=%b -> Y=%b", A, Y);
        end
        $finish;
    end
endmodule


module tb_alu;
    reg [3:0] A, B;
    reg [1:0] op;
    integer i;
    wire [3:0] result;

    alu uut (.A(A), .B(B), .op(op), .result(result));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_alu);

        A = 4'b0101; 
        B = 4'b0011;

        for (i = 0; i < 4; i = i + 1) begin
            op = i[1:0];   // Assign 2-bit op from integer loop
            #10;
            $display("op=%b A=%b B=%b result=%b", op, A, B, result);
        end

        $finish;
    end
endmodule


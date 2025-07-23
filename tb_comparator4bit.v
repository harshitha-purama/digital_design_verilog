module tb_comparator4bit;
    reg [3:0] A, B;
    wire A_gt_B, A_lt_B, A_eq_B;

    comparator4bit uut (
        .A(A),
        .B(B),
        .A_gt_B(A_gt_B),
        .A_lt_B(A_lt_B),
        .A_eq_B(A_eq_B)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_comparator4bit);

        // Test case 1
        A = 4'b1010; B = 4'b1001; #10;
        $display("A=%b B=%b | >:%b <%b =:%b", A, B, A_gt_B, A_lt_B, A_eq_B);

        // Test case 2
        A = 4'b0110; B = 4'b0110; #10;
        $display("A=%b B=%b | >:%b <%b =:%b", A, B, A_gt_B, A_lt_B, A_eq_B);

        // Test case 3
        A = 4'b0011; B = 4'b1010; #10;
        $display("A=%b B=%b | >:%b <%b =:%b", A, B, A_gt_B, A_lt_B, A_eq_B);

        $finish;
    end
endmodule


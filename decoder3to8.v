module decoder3to8 (
    input wire [2:0] A,
    output reg [7:0] Y
);
    always @(*) begin
        Y = 8'b00000000;
        Y[A] = 1;
    end
endmodule


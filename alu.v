module alu (
    input wire [3:0] A, B,
    input wire [1:0] op,
    output reg [3:0] result
);
    always @(*) begin
        case(op)
            2'b00: result = A + B;  // Add
            2'b01: result = A - B;  // Sub
            2'b10: result = A & B;  // AND
            2'b11: result = A | B;  // OR
        endcase
    end
endmodule

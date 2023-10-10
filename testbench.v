module alu_tb ;
    reg [3:0]a, b ;     //register declaration for a & b
    reg [1:0]select ;   //register declaration for select
    wire [3:0]out ;     //wire declaration for out
    wire zero, carry, sign, parity, overflow ; //wire declaration for zero, carry, sign, parity, overflow

    alu dut (.a(a), .b(b), .select(select), .zero(zero), .carry(carry), .sign(sign), .parity(parity), .overflow(overflow),.out(out));
    initial begin
        repeat(10) begin
            stimulus();#5;
            $display("a = %b, b = %b, select = %b, out = %b, zero = %b, carry = %b, sign =%b, parity = %b, overflow = %b", a, b, select, out, zero, carry, sign, parity, overflow);
        end
    end

    task stimulus; begin
            a = $random ;
            b = $random ;
            select = $random ;
        end
    endtask
endmodule

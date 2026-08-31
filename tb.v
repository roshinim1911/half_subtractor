module tb_half_subtractor;
    reg A;
    reg B;
    wire Diff;
    wire Borrow;
    half_subtractor dut (
        .A(A),
        .B(B),
        .Diff(Diff),
        .Borrow(Borrow)
        );
    initial begin
        $dumpfile("half subtractor.vcd");
        $dumpvars(0,tb_half_subtractor);
        $monitor("Time=%0t|A=%b B=%b| Diff=%b Borrow=%b",$time,A,B,Diff, Borrow);
        A=0;B=0;
        #10 A=0;B=1;
        #10 A=1;B=0;
        #10 A=1;B=1;
        #10 $finish;
    end
endmodule
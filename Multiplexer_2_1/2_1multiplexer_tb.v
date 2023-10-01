`timescale 1ns/100ps 
module multiplexer_2_1_tb;

	//inputs
	reg a, b, select;
	//outputs
	wire y;

	multiplexer_2_1 u0_DUT(
		.a(a),
		.b(b),
		.select(select),
		.y(y)
	);

	//initialize inputs

	initial begin
		$dumpfile("test_2_1mux.vcd");
		$dumpvars(0,multiplexer_2_1_tb);
		a=1'b0;b=1'b0; select=1'b0;
		#5 a=1'b1;
		#5 select = 1'b1;
		#5 b=1'b1;
		#5 a=1'b0;
		#5 $finish;
	end
endmodule
	


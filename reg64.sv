module reg64 
(
	input  logic sclk, lrclk, Reset, Shift_In,
   input  logic [63:0]  Din,
   output logic Shift_Out,
   output logic [63:0]  Data
);

    always_ff @ (posedge sclk)
    begin
//	 	 if (Reset) //notice, this is a sycnrhonous reset, which is recommended on the FPGA
//			  Data_Out <= 64'b0;
//		 else if (Load)
//			  Data_Out <= D;
//		 else if (Shift_En)
//		 if (Shift_En)
//		 begin
			  //Left-Shift
			Data <= { Data[62:0], Shift_In }; 
//	    end
    end
	 
	 always_ff @ (posedge lrclk)
	 begin
		if (Reset)
			  Data <= 64'b0;
		 else //Load Data
			  Data <= Din;
	 end
	
    assign Shift_Out = Data[63];

endmodule

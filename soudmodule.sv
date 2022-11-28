module soundmodule
(
	input logic 	sclk,			//44.1*60 kHz clock
						lrclk,		//44.1 kHz clock
						clk, 			//50 MHz clock
						Reset,		//Reset 
					
	output logic 	sound_out	//sound to dac
					
);

//Generate sound

//Instantiate memory that holds wavetable samples



//step through samples in wavetable according to frequency


//additional signal processing here (filters/fft/delay/etc)




//Shift Register to convert wavetable sample to spi
reg64 Sample_Reg
(
	.sclk,
	.lrclk,
	.Reset,
	.Din(/*COMPUTEED DATA HERE*/),
	.Shift_In(1'b0),
	
	.Shift_Out(sound_out),
	.Data()
);



endmodule

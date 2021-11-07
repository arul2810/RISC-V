/* risc_v.v 

--------------------------------------------------------------------------------------------------------------------

Module Name : risc_v.v - RISC V Processor Top Level Verilog HDL File

Module Description : Top Level Module for RISC V Processor IP Core

Module Author : Arul Prakash Samathuvamani | University of Leeds | hire@arulprakash.dev

					 Akilan Venkatachalam | Anna University | akilanvrka250@gmail.com
					 
					 Rashika Azhakesan Krishnamoni | Birla Institute of Science and Tech. | rashikaak@gmail.com

Creation Date : 7/11/2021

Last Modified : 7/11/2021

-------------------------------------------------------------------------------------------------------------------- 

Changelog :





*/


// Top Level Module Declaration 


module risc_v ( 


/* Input Parameters :



*/


	input base_clock, // Input base clock
	
	input reset, // Processor status reset - Reset the entire system
	
	input processor_multiply, // clock frequency multiply for ALU input
	
	
/* Output Parameters Declaration


*/	
	
	output status // Currrent running status of the processor - 1  is running
	
);


//----------------------------------------------------------------------

// Declaration of parameters inside the module


wire processor_clock; // Input clock signal to ALU






//-----------------------------------------------------------------------

// Declaration of sub modules

//-----------------------------------------------------------------------



/* Module Declaration

Clock Multiplier - Module clock_multiply.v

- Input is the base clock and multiplication level
- Output is the multiplied frequency

Author - Arul Prakash Samathuvamani

*/


clock_multiply multiplier_1 (


	.base_clock ( base_clock ),
	.multiply ( processor_multiply ),
	.multiplied_freq ( processor_clock )
	
);






endmodule
	
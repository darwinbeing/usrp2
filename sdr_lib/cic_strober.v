//
//  USRP2 - Universal Software Radio Peripheral Mk II
//
//  Copyright (C) 2008 Matt Ettus
//
//  This program is free software; you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation; either version 2 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program; if not, write to the Free Software
//  Foundation, Inc., 51 Franklin Street, Boston, MA  02110-1301  USA
//

module cic_strober
  #(parameter WIDTH=9) //IMPORTANT : width was 8 bits. we extended it to 9 bits to fit the decimal 320.
    ( input clock,
      input reset,
      input enable,
      input [WIDTH-1:0] rate, // Rate should EQUAL to your desired divide ratio, no more -1 BS
      input strobe_fast,
      output wire strobe_slow );
   
   reg [WIDTH-1:0] counter;
   wire      now = (counter==1);
   assign    strobe_slow = now && enable && strobe_fast;
   
   always @(posedge clock)
     if(reset)
       counter <= 0; 
     else if (~enable)
       counter <= rate;
     else if(strobe_fast)
       if(now)
	 counter <= rate;
       else 
	 counter <= counter - 1;
   
endmodule // cic_strober

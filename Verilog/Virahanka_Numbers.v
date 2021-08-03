module Virahanka_Numbers (clock,Vira_Num);

input clock;
output integer Vira_Num;

integer count=0, previous_num ,current_num;

initial
begin
	previous_num=0;
	current_num=1;
end

always @ (posedge clock)
begin
			$display("V(%d) : %d",count, Vira_Num);
			count = count + 1;
			Vira_Num = previous_num + current_num;
			previous_num = current_num;
			current_num = Vira_Num;
end

endmodule
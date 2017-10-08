module Questao01 (
	input swap, enable, clock,
	output logic[3:0] UpSaida, DownSaida 
);


logic[3:0] UpEntrada, DownEntrada;


Registrador Upcount (.clock(clock), .entrada(UpEntrada), .saida(UpSaida)),
				Downcount (.clock(clock), .entrada(DownEntrada), .saida(DownSaida));
				
always_comb
begin
	if(enable)
		if(swap)
			UpEntrada = DownSaida;
		else
			UpEntrada = UpSaida + 4'd1;
	else
		UpEntrada = UpSaida + 4'd1;
end

always_comb
begin
	if(enable)
		if(swap)
			DownEntrada = UpSaida;
		else
			DownEntrada = DownSaida - 4'd1;
	else
		DownEntrada = DownSaida - 4'd1;
end	
	
endmodule 
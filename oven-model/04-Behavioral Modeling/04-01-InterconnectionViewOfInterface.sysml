interface def PowerInterface {
	end supplierPort: PowerPort;
	end consumerPort: ~PowerPort;
	flow of current: Current 
		from supplierPort.powerOut 
		to consumerPort.powerIn;
}

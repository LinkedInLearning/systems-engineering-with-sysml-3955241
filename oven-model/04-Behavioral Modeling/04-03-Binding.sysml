action def action0 {
	action action1 { out param1; }
	action action2 { in param2; }
	
	bind action1.param1 = action2.param2;
	first start then action1;
	first action1 then action2;
	first action2 then done;
}

action def Sample1 {
	action action1;
	action action2; 
	first action1 then action2;
}

action def Sample2 {
	action action1;
	first action1;
	then action action2;
}

action def Sample3 {
	first start;
	then action action1;
	then action action2;
	then done;
}

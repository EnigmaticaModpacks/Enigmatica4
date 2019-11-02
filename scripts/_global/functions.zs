//#priority 950

 global; formatRecipeName as function(string)string = function(name as string) as string {
	return name.replaceAll(':','_');
}; 
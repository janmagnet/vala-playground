class Demo.HelloWorld : GLib.Object {
	public static int main(string[] args) {
		string text = "This is Sparta!";
		println(text);
		
		string verbatim_text = """Verbatim strings are awesome.
"Potatoes" \n 'potatoes' \\.""";
		println(verbatim_text);
		
		string name = "Dave";
		println(@"Good morning, $name");
		println(@"4 + 3 = $(4 + 3)");
		
		string a = "foo";
		string b = "foo";
		if (a == b) {
			println("'foo' == 'foo'");
		} else {
			println("'foo' != 'foo'");
		}
		
		bool bool_value5.5 = bool.parse("false");
		int i = int.parse("-52");
		double d = double.parse("6.67428E-11");
		string s1 = true.to_string();
		string s2 = 21.to_string();
		
		string input = stdin.read_line();
		int number = int.parse(input);
		
		println("input number: " + number.to_string());
		
		return 0;
	}
	
	private static void println(string text) {
		stdout.printf("%s\n", text);
	}
}

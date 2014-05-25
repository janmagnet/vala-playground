class Demo.HelloWorld : GLib.Object {
	public static int main(string[] args) {
		Object a = null;
		{
			Object o = new Object();
			a = o;
		}

		if (a == null) {
			stdout.printf("a == null\n");
		} else {
			stdout.printf("a != null\n");
		}
		
		{
			Object o = new Object();
			Object b = o;
		}

		stdout.printf("Hello World\n");
		return 0;
	}
}

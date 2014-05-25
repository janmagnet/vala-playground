struct Vector3d {
	public double x;
	public double y;
	public double z;
}
	
enum WindowType {
	TOPLEVEL,
	POPUP
}

class Demo.HelloWorld : GLib.Object {
	public static int main(string[] args) {
		stdout.printf("Hello World\n");
		
		unichar c = 'u';
		stdout.printf("unichar c = %lc\n", c);
		
		float percentile = 0.75f;
		stdout.printf("float percentile = %g\n", percentile);

		const double MU_BOHR = 927.400915E-26;
		stdout.printf("double MU_BOHR = %E\n", MU_BOHR);

		bool the_box_has_crashed = false;
		stdout.printf("bool the_box_has_crashed = %d\n", (int)the_box_has_crashed);
		
		Vector3d vector = { 0, 0, 0 };
		stdout.printf("vector -> (%g, %g, %g)\n", vector.x, vector.y, vector.z);
		change_and_print_vector(vector);
		stdout.printf("vector original -> (%g, %g, %g)\n", vector.x, vector.y, vector.z);
		
		ulong vector_size = sizeof(Vector3d);
		stdout.printf("sizeof(Vector3d) = %lu\n", vector_size);
		
		WindowType window_type = WindowType.POPUP;
		stdout.printf("window_type = %d\n", window_type);
		
		ulong nbytes = sizeof(int32);
		stdout.printf("sizeof(int32) = %lu\n", nbytes);

		uint uint_max = uint.MAX;
		stdout.printf("uint.MAX = %u\n", uint_max);

		uint uint_min = uint.MIN;
		stdout.printf("uint.MIN = %u\n", uint_min);
		
		int int_max = int.MAX;
		stdout.printf("int.MAX = %d\n", int_max);

		int int_min = int.MIN;
		stdout.printf("int.MIN = %d\n", int_min);

		return 0;
	}
	
	private static void change_and_print_vector(Vector3d vector) {
		vector.x += 1;
		vector.y += 1;
		vector.z += 1;
		
		stdout.printf("vector changed -> (%g, %g, %g)\n", vector.x, vector.y, vector.z);
		
		
	}
}

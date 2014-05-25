class TicTacToe.Intro : Screen {
	public override void show() {
		println("Tic Tac Toe");
		println("Coded in Vala");
		println("");
		
//~ 		switch (ByteOrder) {
//~ 		}
		if (BYTE_ORDER == ByteOrder.LITTLE_ENDIAN) {
			println("Byte order: Little endian");
		} else if (BYTE_ORDER == ByteOrder.BIG_ENDIAN) {
			println("Byte order: Big endian");
		}
		
		// Pretend to be loading.
		const ulong load_delay = 500 * 1000;
		stdout.printf("Loading\n");
		//Thread.yield();
		for (int i = 0; i < 6; i++) {
			stdout.printf(".\n");
			//Thread.yield();
			Thread.usleep(load_delay);
		}
		
		println("");
		
		manager.next_screen = new MainMenu();
	}
}

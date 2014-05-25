class TicTacToe.ScreenManager : GLib.Object {
	public Screen current_screen { get; private set; }
	public Screen? next_screen { get; set; }
	
	public void run(Screen initial_screen) {
		current_screen = initial_screen;
		current_screen.initialize(this);
		current_screen.show();
		
		while (next_screen != null) {
			current_screen = (!)next_screen;
			next_screen = null;
			current_screen.initialize(this);
			current_screen.show();
		}
	}
}

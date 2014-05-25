abstract class TicTacToe.Screen : GLib.Object {
	public ScreenManager manager { get; private set; }
	
	public virtual void initialize(ScreenManager manager) {
		this.manager = manager;
	}
	
	public abstract void show();
	
	protected void println(string text) {
		stdout.printf("%s\n", text);
	}
}

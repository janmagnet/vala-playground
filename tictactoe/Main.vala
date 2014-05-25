public class TicTacToe.Main : GLib.Object {
    public static void main(string[] args) {
		ScreenManager manager = new ScreenManager();
		Screen screen = new Intro();
		manager.run(screen);
    }
}

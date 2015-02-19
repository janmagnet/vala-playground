public class Battleship.Main : GLib.Object {
	Screen screen = new MainMenu();
	
    public static void main(string[] args) {
		Main main = new Main();
		main.run(args);
    }
    
    private void run(string[] args) {
		show_main_menu();
		var choice = get_choice("1x");
		
		switch (choice) {
			case "1": println("Starting new game..."); break;
			case "x": return;
		}
		
		println("Good bye");
	}
	
	private void show_main_menu() {
		println("1. Start new game");
		println("x. Exit");
	}
	
	private string get_choice(string valid_choices) {
		println("Make your choice: ");
		
		while (true) {
			string choice = (!)(stdin.read_line() ?? "");
			
			if (choice in valid_choices) {
				return choice;
			}
			
			println("Unknown choice. Make your choice: ");
		}
	}
    
	private void println(string text) {
		stdout.printf("%s\n", text);
	}
}

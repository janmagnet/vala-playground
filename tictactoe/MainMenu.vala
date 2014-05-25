class TicTacToe.MainMenu : Screen {
	public override void show() {
		show_main_menu();
		var choice = get_choice("1x");
		
		switch (choice) {
			case "1":
				manager.next_screen = new MainMenu();
				return;
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
			string? text = stdin.read_line();
			if (text != null) {
				string choice = (!)text;
				if (choice in valid_choices) {
					return choice;
				}
			}
			
			println("Unknown choice. Make your choice: ");
		}
	}
}

using static System.Console;

int numberOfApples = 12;
decimal pricePerApple = 0.35M;

WriteLine(
    format: "{0} apples cost {1:C}",
    numberOfApples,
    pricePerApple * numberOfApples
);

WriteLine($"{numberOfApples} apples cost {pricePerApple*numberOfApples:C}");

string appleText = "Apples";
int appleCount = 1234;
string bananaText = "Bananas";
int bananaCount = 56789;

WriteLine("{0, -10} {1, 16:N0}", "Name", "Count");
WriteLine("{0, -10} {1, 16:N0}", appleText, appleCount);
WriteLine("{0, -10} {1, 16:N0}", bananaText, bananaCount);

/*
WriteLine("Type your name:");
string? name = ReadLine();
WriteLine("Type your age:");
string? age = ReadLine();
WriteLine($"Hello {name}, you look good for {age}.");
*/

Write("Press any key combination: ");
ConsoleKeyInfo key = ReadKey();
WriteLine("\nKey: {0}, Char:{1}, Modifiers: {2}",
	key.Key,
	key.KeyChar,
	key.Modifiers);
using static System.Console;

string nameDecimal = "decimal";
string sizeDecimal = sizeof(decimal).ToString();
string minDecimal = decimal.MinValue.ToString();
string maxDecimal = decimal.MaxValue.ToString();

int lengthName = nameDecimal.Length;
int lengthSize= sizeDecimal.Length;
int lengthMin= minDecimal.Length;
int lengthMax= maxDecimal.Length;

int[] lengths = new[] {lengthName, lengthSize, lengthMin, lengthMax};
foreach (int len in lengths){
    Write("{0} ", len);
}
WriteLine();
string line = new string('-', 75);
//WriteLine("{0, -7} {1, -4} {2, 20} {3, 30}", nameDecimal, sizeDecimal, minDecimal, maxDecimal);

WriteLine(line);
WriteLine("{0, -7} {1, -4} {2, 20} {3, 30}", "Type", "Bytes of memory", "Min", "Max");
WriteLine(line);
WriteLine("{0, -7} {1, -4} {2, 31} {3, 30}", "sbyte", sizeof(sbyte), sbyte.MinValue, sbyte.MaxValue);
WriteLine("{0, -7} {1, -4} {2, 31} {3, 30}", "byte", sizeof(byte), byte.MinValue, byte.MaxValue);
WriteLine("{0, -7} {1, -4} {2, 31} {3, 30}", "short", sizeof(short), short.MinValue, short.MaxValue);
WriteLine("{0, -7} {1, -4} {2, 31} {3, 30}", "ushort", sizeof(ushort), ushort.MinValue, ushort.MaxValue);
WriteLine("{0, -7} {1, -4} {2, 31} {3, 30}", "int", sizeof(int), int.MinValue, int.MaxValue);
WriteLine("{0, -7} {1, -4} {2, 31} {3, 30}", "uint", sizeof(uint), uint.MinValue, uint.MaxValue);
WriteLine("{0, -7} {1, -4} {2, 31} {3, 30}", "long", sizeof(long), long.MinValue, long.MaxValue);
WriteLine("{0, -7} {1, -4} {2, 31} {3, 30}", "ulong", sizeof(ulong), ulong.MinValue, ulong.MaxValue);
WriteLine("{0, -7} {1, -4} {2, 31} {3, 30}", "float", sizeof(float), float.MinValue, float.MaxValue);
WriteLine("{0, -7} {1, -4} {2, 31} {3, 30}", "double", sizeof(double), double.MinValue, double.MaxValue);
WriteLine("{0, -7} {1, -4} {2, 31} {3, 30}", "decimal", sizeof(decimal), decimal.MinValue, decimal.MaxValue);
WriteLine(line);
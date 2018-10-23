using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp4
{
	class Program
	{
		static void Main(string[] args)
		{
			Probar a = new Probar();
			String[,] Matriz = new string[3, 5];
			for(int x=0;x<Matriz.GetLength(0);x++)
			{
				for(int y=0;y<Matriz.GetLength(1);y++)
				{
					Matriz[x, y] = " ";
				}
			}
			Matriz[0, 1] = "a";
			Matriz[0, 2] = "b";
			Matriz[0, 3] = "c";
			Matriz[0, 4] = "$";
			Matriz[1, 0] = "S";
			Matriz[2, 0] = "A";
			Matriz[1, 4] = "£";
			Matriz[1, 1] = "AA";
			Matriz[2, 1] = "a";
			Matriz[2, 2] = "b";
			Matriz[2, 3] = "c";
			String r = "a b";
			Char[] del = { ' ' };
			String[] c = r.Split(del, StringSplitOptions.RemoveEmptyEntries);
				  

			a.Probarcadena(Matriz, a.Configurarcadena(c));
			Console.ReadKey();
		}
	}
}

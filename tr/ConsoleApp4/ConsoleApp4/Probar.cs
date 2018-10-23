using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp4
{
	class Probar
	{
		public void Probarcadena(String[,] matriz,List<String> cadena)
		{
			//inicia con el simbolo inicial
			List<String> cadenareglas = new List<string>();
			cadenareglas.Add("$");
			cadenareglas.Add("S");

			bool seguir_camino = true;
			
				while (seguir_camino)
				{
					//String combinacion= cadenareglas[cadenareglas.Length-1]+""
					int count1 = 0;
				    int count2 = 0;
				if (("" + cadenareglas[cadenareglas.Count - 1]) != "$")
				{
					for (int x = 1; x < matriz.GetLength(0); x++)
					{
						if (("" + cadenareglas[cadenareglas.Count - 1]) == matriz[x, 0])
						{
							count1 = x;
						}
					}
					for (int x = 1; x < matriz.GetLength(1); x++)
					{
						if (("" + cadena[cadena.Count-1]) == matriz[0, x])
						{
							count2 = x;
						}
					}
					Console.WriteLine(count1 + " " + count2);
					if(matriz[count1,count2]!=" ")
					{
						if (matriz[count1, count2] == "£")
						{
							cadenareglas.RemoveAt(cadenareglas.Count - 1);

						}
						else
						{
							bool ver = true;
							for (int y = 0; y < matriz.GetLength(1); y++)
							{
								if (matriz[0, y] == matriz[count1, count2])
								{
									ver = false;
								}
							}
							if (!ver)
							{
								cadenareglas.RemoveAt(cadenareglas.Count - 1);
								cadenareglas.Add(matriz[count1, count2]);
							}
							else
							{
								cadenareglas.RemoveAt(cadenareglas.Count - 1);

								for (int x = matriz[count1, count2].Length - 1; x >= 0; x--)
								{
									cadenareglas.Add("" + matriz[count1, count2][x]);
								}
							}
							if (cadenareglas[cadenareglas.Count - 1] == cadena[cadena.Count - 1])
							{
								cadenareglas.RemoveAt(cadenareglas.Count - 1);
								cadena.RemoveAt(cadena.Count - 1);

							}
							//else if( cadenareglas[cadenareglas.Count-1]!="$"&&ca)
						}
					}
					else
					{
						seguir_camino = !seguir_camino;
					}

				}
				else
				{
					seguir_camino = !seguir_camino;
				}
				}

				if( cadenareglas[cadenareglas.Count-1]=="$"&&cadena[cadena.Count-1]=="$")
			{
				Console.WriteLine("cadena aceptada ");

			}
				else
			{
				Console.WriteLine("error en " + cadena[cadena.Count - 1]);
			}
			}
		public List<String> Configurarcadena(String[] cadena)
		{
			List<String> cadenanueva = new List<string>();
			cadenanueva.Add("$");
			for(int x=cadena.Length-1;x>=0;x--)
			{
				cadenanueva.Add(cadena[x]);
			}
			return cadenanueva;
		}
	}
	
	}



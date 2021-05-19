using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GUI_RegexLexer
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        RegexLexer csLexer = new RegexLexer();
        bool load;
        List<string> palabrasReservadas;
        List<string> palabrasEstados;
        List<string> palabrastiposDatos;

        private void WindowLoaded(object sender, RoutedEventArgs e)
        {
            using (StreamReader sr = new StreamReader(@"..\..\RegexLexer.cs"))
            {
                //tbxCode.Text = sr.ReadToEnd();

                csLexer.AddTokenRule(@"\s+", "ESPACIO", true);           
                csLexer.AddTokenRule(@"\b[_a-zA-Z][\w]*\b", "IDENTIFICADOR");
                csLexer.AddTokenRule("\".*?\"", "CADENA");
                csLexer.AddTokenRule(@"'\\.'|'[^\\]'", "CARACTER");
                csLexer.AddTokenRule("//[^\r\n]*", "COMENTARIO1");
                csLexer.AddTokenRule("/[*].*?[*]/", "COMENTARIO2");
                csLexer.AddTokenRule(@"\d*\.?\d+", "NUMERO");             
                csLexer.AddTokenRule(@"[\(\)\{\}\[\];,]", "DELIMITADOR");
                csLexer.AddTokenRule(@"[\&\|\!\|\|]", "OPERADOR_LOGICO");
                csLexer.AddTokenRule(@"[\.=)\+\-/*%]","OPERADOR");
                csLexer.AddTokenRule(@">|<|==|>=|<=|!=|", "COMPARADOR");
                



                palabrasReservadas = new List<string>() {"desde","hasta","esperar","modoPIN","como","estado", "abstract", "as", "async", "await",
                "checked", "const", "continua","leerPIN","leeranalogPIN","pordefecto", "delegate", "base", "romper", "caso"
                ,"escribirPIN","escribiranalogPIN","hazlo", "sino", "enum", "event", "explicit", "extern", "false", "finally","funcion",
                "fixed", "ciclo", "milseg","aleatorio","foreach", "goto", "si", "implicit", "in", "interface",
                "puertoabrir","puertoimprimir","puertoleer","puertobytes","internal", "is", "lock", "new", "nulo", "operator","catch",
                "out", "override", "params", "private", "protected", "public", "readonly",
                "ref", "retorna", "sealed", "sizeof", "stackalloc", "static",
                "Decision","hacer", "this", "throw", "true", "try", "typeof", "namespace",
                "unchecked", "unsafe", "virtual", "vacio", "mientras","long", "object",
                "get", "set", "new", "partial", "yield", "add", "remover", "value", "alias", "ascending",
                "descending", "from", "group", "into", "orderby", "select", "where",
                "join", "equals", "using","double", "dynamic",
                "sbyte", "short", "uint", "ulong", "ushort", "var", "class", "struct","preparar","iniciar","programa"};

                palabrasEstados = new List<string>()
                {"ALTO","BAJO","SALIDA","ENTRADA"
                };
                palabrastiposDatos = new List<string>()
                {"entero","decimal","caracter","cadena","entlargo","decilargo","logico","byte"
                };

                csLexer.Compile(RegexOptions.Compiled | RegexOptions.Singleline | RegexOptions.ExplicitCapture);

                load = true;
                AnalizeCode();
                tbxCode.Focus();
            }
        }

        private void AnalizeCode()
        {
            lvToken.Items.Clear();

            int n = 0, e = 0;

            foreach (var tk in csLexer.GetTokens(tbxCode.Text))
            {
                if (tk.Name == "ERROR") e++;

                if (tk.Name == "IDENTIFICADOR")
                    if (palabrasReservadas.Contains(tk.Lexema))
                    {
                        tk.Name = "RESERVADO";
                    }else if (palabrasEstados.Contains(tk.Lexema))
                    {
                        tk.Name = "SENTENCIA_ESTADO";
                    }
                    else if (palabrastiposDatos.Contains(tk.Lexema))
                    {
                        tk.Name = "TIPO_DE_DATO";
                    }


                lvToken.Items.Add(tk);
                n++;
            }

            this.Title = string.Format("Analizador Lexico - {0} tokens {1} errores", n, e);
        }

        private void CodeChanged(object sender, TextChangedEventArgs e)
        {
            if (load)
                AnalizeCode();
        }

        private void ListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {

        }

        private void MenuItem_Click_1(object sender, RoutedEventArgs e)
        {

        }

        private void MenuItem_Click_2(object sender, RoutedEventArgs e)
        {

        }

        private void MenuItem_Click_3(object sender, RoutedEventArgs e)
        {

        }

        private void LvToken_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}

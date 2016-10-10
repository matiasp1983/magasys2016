using System.Globalization;

namespace COMMON
{
    public class Utilities
    {
        public static string CapitalizeFirstLetter(string cadena)
        {
            return CultureInfo.CurrentCulture.TextInfo.ToTitleCase(cadena);
        }

        public static string UpperCase(string cadena)
        {
            return CultureInfo.CurrentUICulture.TextInfo.ToUpper(cadena);
        }

        public static string RemoveSpace(string cadena)
        {
            return cadena.Trim();
        }
    }
}

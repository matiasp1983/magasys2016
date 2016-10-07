using System.Globalization;

namespace COMMON
{
    public class Utilities
    {
        public static string CapitalizeFirstLetter(string cadena)
        {
            return CultureInfo.CurrentCulture.TextInfo.ToTitleCase(cadena);
        }
    }
}

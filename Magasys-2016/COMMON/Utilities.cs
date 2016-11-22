using System;
using System.Globalization;
using System.Linq;

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

        /// <summary>
        /// Calcula el dígito verificador dado un CUIT completo o sin él.
        /// </summary>
        /// <param name="cuit">El CUIT como String sin guiones</param>
        /// <returns>El valor del dígito verificador calculado.</returns>
        public static int CalcularDigitoCuit(string cuit)
        {
            var mult = new[] { 5, 4, 3, 2, 7, 6, 5, 4, 3, 2 };
            var nums = cuit.ToCharArray();
            var total = mult.Select((t, i) => int.Parse(nums[i].ToString(CultureInfo.InvariantCulture))*t).Sum();
            var resto = total % 11;
            return resto == 0 ? 0 : resto == 1 ? 9 : 11 - resto;
        }

        public static string ReemplazaAxB(string objeto, string valorA, string valorB)
        {
            return objeto.Replace(valorA, valorB);
        }

        public static string FormatDate(string fecha)
        {
            return Convert.ToDateTime(fecha).ToString("yyyyMMdd");
        }
    }
}

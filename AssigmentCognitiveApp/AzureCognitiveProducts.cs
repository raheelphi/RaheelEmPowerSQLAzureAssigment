using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.Json;

namespace AssigmentCognitiveApp
{
    public class AzureCognitiveProducts
    {
        public string prodcut_id { get; set; }
        public string product_name { get; set; }
        public int category_id { get; set; }
        public string category_name { get; set; }
        public string price { get; set; }
        public string description { get; set; }
        public string date_added { get; set; }
    }
}

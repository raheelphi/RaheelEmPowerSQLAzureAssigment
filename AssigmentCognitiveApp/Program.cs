using Azure.Search.Documents.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssigmentCognitiveApp
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Please type the search term Or put * to return All for the Azure Cognitive Search and hit enter\n");
            String typeKeyword = Console.ReadLine();
            Console.WriteLine("Loading......\n");
            AzureCognitiveSearch.RunQueries("productsearchappindex", typeKeyword);
        }
        
        
    }
}

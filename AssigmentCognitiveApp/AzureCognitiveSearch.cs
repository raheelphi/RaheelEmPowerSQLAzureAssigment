using Azure;
using Azure.Search.Documents;
using Azure.Search.Documents.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssigmentCognitiveApp
{
    class AzureCognitiveSearch
    {
        private static SearchClient CreateSearchClientForQueries(string indexName)
        {
            string searchServiceEndPoint = "https://assigmentsearch.search.windows.net";
            string queryApiKey = "ZMt14hkaJjudSLr5SjbeOVxHXE3r3t648jqYgfIsyKAzSeDH3GSI";

            SearchClient searchClient = new SearchClient(new Uri(searchServiceEndPoint), indexName, new AzureKeyCredential(queryApiKey));
            return searchClient;
        }

        public static void RunQueries(string indexName, string searchTerm)
        {
            SearchClient srchclient = CreateSearchClientForQueries(indexName);
            SearchOptions options;
            SearchResults<AzureCognitiveProducts> response;

            options = new SearchOptions()
            {
                Filter = "",
                OrderBy = { "" }
            };

            options.Select.Add("prodcut_id");
            options.Select.Add("product_name");
            options.Select.Add("category_id");
            options.Select.Add("category_name");
            options.Select.Add("price");
            options.Select.Add("description");
            options.Select.Add("date_added");

            response = srchclient.Search<AzureCognitiveProducts>(searchTerm, options);
            WriteDocuments(response);
        }

        private static void WriteDocuments(SearchResults<AzureCognitiveProducts> searchResults)
        {
            int count = 0;
            foreach (SearchResult<AzureCognitiveProducts> result in searchResults.GetResults())
            {
                Console.WriteLine("=================================================");
                Console.WriteLine("Product ID:" + result.Document.prodcut_id);
                Console.WriteLine("Product Name:" + result.Document.product_name);
                Console.WriteLine("Category ID:" + result.Document.category_id);
                Console.WriteLine("Category Name:" + result.Document.category_name);
                Console.WriteLine("Price:" + result.Document.price);
                Console.WriteLine("Description:" + result.Document.description);
                Console.WriteLine("Date Added:" + result.Document.date_added);
                Console.WriteLine("=================================================");
                count++;
            }
            if(count == 0)
            {
                Console.WriteLine("Nothing Found!\n");
            }

            Console.WriteLine("Please either close the program OR type another search term Or put * to return All for the Azure Cognitive Search and hit enter\n");
            String typeKeyword = Console.ReadLine();
            Console.WriteLine("Loading......\n");
            AzureCognitiveSearch.RunQueries("productsearchappindex", typeKeyword);
        }
    }
}

using System;
using System.Collections.Generic;
using Microsoft.Rest;
using Microsoft.Azure.Management.ResourceManager;
using Microsoft.Azure.Management.DataFactory;
using Microsoft.Azure.Management.DataFactory.Models;
using Microsoft.Identity.Client;

namespace AssigmentApp
{
    class PipelineExecution
    {
        public IDataFactoryManagementClient client;
        private AzureSQLConnectionDataContext db = new AzureSQLConnectionDataContext();

        private string applicationId = "08511b2a-1e9a-40aa-8ba9-71044b179e1a";
        private string clientSecret = "DV98Q~qHpPluEoHezNlC.TbNKE1BEyKbgN0AUcc-";
        private string subscriptionId = "8f4575b7-8818-4dbb-8186-c07f7d52e97b";
        private string tenantID = "c4b6f674-df56-4544-88d5-5c8707c09401";
        public static string responseId = "";

        public async void create_adf_client()
        {

            IConfidentialClientApplication app = ConfidentialClientApplicationBuilder.Create(applicationId)
             .WithAuthority("https://login.microsoftonline.com/" + tenantID)
             .WithClientSecret(clientSecret)
             .WithLegacyCacheCompatibility(false)
             .WithCacheOptions(CacheOptions.EnableSharedCacheOptions)
             .Build();

            AuthenticationResult result = await app.AcquireTokenForClient(
                new string[] { "https://management.azure.com//.default" })
                .ExecuteAsync();
            ServiceClientCredentials cred = new TokenCredentials(result.AccessToken);
            client = new DataFactoryManagementClient(cred)
            {
                SubscriptionId = subscriptionId
            };
        }

        public void execute_pipeline()
        {
            create_adf_client();
            StartPipeline();
        }

        public void StartPipeline()
        {
            Console.WriteLine("Creating pipeline run...");
            string resourceGroup = "20230222-Raheel-A";
            string dataFactoryName = "assigmentadf";
            string pipelineName = "AssigmentETL";
            string inputBlobPath = "https://assigmentlake.blob.core.windows.net/sourcedata";
            string outputBlobPath = "https://assigmentlake.blob.core.windows.net/sourcedata";

            if (client == null)
            {
                Console.WriteLine("Waiting for Authentication...");
                System.Threading.Thread.Sleep(5000);
                StartPipeline();
            }
            else
            {
                //var runResponse = client.Pipelines.CreateRunWithHttpMessagesAsync(resourceGroup, dataFactoryName, pipelineName).Result.Body;
                //Console.WriteLine("Pipeline run ID: " + runResponse.RunId);
                Dictionary<string, object> parameters = new Dictionary<string, object>
                {
                    { "inputPath", inputBlobPath },
                    { "outputPath", outputBlobPath }
                };
                CreateRunResponse runResponse = client.Pipelines.CreateRunWithHttpMessagesAsync(
                    resourceGroup, dataFactoryName, pipelineName, parameters: parameters
                ).Result.Body;
                responseId = runResponse.RunId;
                Console.WriteLine("Pipeline run ID: " + responseId);
                System.Threading.Thread.Sleep(5000);
                Console.WriteLine("Checking pipeline run status...");
                PipelineRun pipelineRun;
                while (true)
                {
                    pipelineRun = client.PipelineRuns.Get(
                        resourceGroup, dataFactoryName, runResponse.RunId);
                    Console.WriteLine("Status: " + pipelineRun.Status);
                    if (pipelineRun.Status == "InProgress" || pipelineRun.Status == "Queued")
                        System.Threading.Thread.Sleep(15000);
                    else
                        break;
                }
            }
            LogInfo newRecord = new LogInfo()
            {
                LogStatus = "Success",
                LogDescription = "Pipeline Execution with ID: " + responseId + " was executed sucessfully at: " + DateTime.Now.ToShortDateString()
            };
            db.LogInfos.InsertOnSubmit(newRecord);
            db.SubmitChanges();
            db.Dispose();

            Console.ReadLine();
            Console.WriteLine("Press Any Key to Exist");


        }
    }
}

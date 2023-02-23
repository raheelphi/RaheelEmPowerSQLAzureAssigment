using System;

namespace AssigmentApp
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Press Y to start ETL Pipeline OR Press N to exist and hit Enter");
            //Console.ReadLine();
            String typeKeyword = Console.ReadLine();
            if (typeKeyword[0] == 'Y' || typeKeyword[0] == 'y')
            {
                try
                {
                    PipelineExecution obj = new PipelineExecution();
                    obj.execute_pipeline();
                }
                catch (Exception e)
                {
                    try
                    {
                        AzureSQLConnectionDataContext db = new AzureSQLConnectionDataContext();
                        LogInfo newRecord = new LogInfo()
                        {
                            LogStatus = "Failed",
                            LogDescription = "Pipeline Execution with ID: " + PipelineExecution.responseId + " was failed at: " + DateTime.Now.ToShortDateString()
                        };
                        db.LogInfos.InsertOnSubmit(newRecord);
                        db.SubmitChanges();
                        db.Dispose();
                    }
                    catch (Exception ee)
                    {
                        Console.WriteLine("Some error occured saving the error logs " + ee.Message);
                    }

                    Console.WriteLine("Some error occured while executing the the pipeline " + e.Message);
                    Console.ReadLine();
                    Console.WriteLine("Press Any Key to Exist");
                }
            }
            
            
        }

    }

    
}

using EMMS.Business.Interface;
using EMMS.DTO;
using EMMSClientApplication.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace EMMSClientApplication.Controllers
{
    public class ConsuProdBudgetedController : Controller
    {
        private IPlantSetUpManager plantSetup;
        public ConsuProdBudgetedController(IPlantSetUpManager plantSetup)
        {
            this.plantSetup = plantSetup;
        }
        // GET: ConsuProdBudgeted
        [CheckUserSession]
        public ActionResult ConsuProdBudgeted()
        {         
            return View();
        }
        [HttpPost]
        [CheckUserSession]
        public int AddBudgetedConsumtion(List<AnnualDetails> Consumption,List<AnnualDetails> Cost, string year, int wages)
        {

            if (Consumption != null)
            {
                if (plantSetup.AddConsumptionActual(Consumption, year, wages, "AddConsumptionBudgeted") && plantSetup.AddConsumptionActual(Cost, year, wages, "AddConsumptionBudgetedCost"))
                    return 1;
                else
                    return 0;
            }
            return 0;
        }
        [HttpPost]
        [CheckUserSession]
        public int AddProductionBudgeted(List<AnnualDetails> production, string year)
        {

            if (production != null)
            {
                if (plantSetup.AddProductionActual(production, year, "AddProductionBudgeted"))
                    return 1;
                else
                    return 0;
            }
            return 0;
        }
        [CheckUserSession]
        public JsonResult GetBudgetedConsumtion(int year, string wagesID)
        {
            List<AnnualDetails> budgetedconsumlist = plantSetup.GetConsumptionActual(year,Convert.ToInt32(wagesID), "GetBudegtedConsumption");
            List<AnnualDetails> budgetedcostlist = plantSetup.GetConsumptionActual(year, Convert.ToInt32(wagesID), "GetBudegtedCost");
            var consumptionAndCost = new { Budgetedconsumlist = budgetedconsumlist, Budgetedcostlist = budgetedcostlist };
            return Json(consumptionAndCost, JsonRequestBehavior.AllowGet);
        }
        [CheckUserSession]
        public JsonResult GetBudgetedCost(int year,string wagesID)
        {
            List<AnnualDetails> budgetedcostlist = plantSetup.GetConsumptionActual(year, Convert.ToInt32(wagesID), "GetBudgetCost");
            return Json(budgetedcostlist, JsonRequestBehavior.AllowGet);
        }
        [CheckUserSession]
        public JsonResult GetBudgetedProduction(int year)
        {
            List<AnnualDetails> budgetedcostlist = plantSetup.GetProductionActual(year, "GetProductionBudgeted");
            return Json(budgetedcostlist, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        [CheckUserSession]
        public JsonResult GetSolidWasteBudgted(string year)
        {
            try
            {
                List<AnnualDetails> solidwaste = plantSetup.GetSolidWaste(Convert.ToInt32(year), "GetSolidWasteBudgeted");
                List<AnnualDetails> solidwastecost = plantSetup.GetSolidWaste(Convert.ToInt32(year), "GetSolidWasteBudgetedCost");
                var budgetedsolidwastevalCost = new { solidwaste = solidwaste, solidwastecost = solidwastecost };
                return Json(budgetedsolidwastevalCost, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        [HttpPost]
        [CheckUserSession]
        public int AddUSDRate(double rate, int year)
        {
            if (rate != 0)
            {
                if (plantSetup.AddUSDExchnageRate(rate, year))
                    return 1;
                else
                    return 0;
            }
            return 0;
        }
        [HttpPost]
        [CheckUserSession]
        public int AddBudgetedSolidwaste(List<AnnualDetails> Consumption, List<AnnualDetails> Cost, string year)
        {

            if (Consumption != null)
            {
                if (plantSetup.AddCSolidwasteActual(Consumption, year, "AddCSolidwasteBudgeted") && plantSetup.AddCSolidwasteActual(Cost, year, "AddCSolidwasteBudgetedCost"))
                    return 1;
                else
                    return 0;
            }
            return 0;
        }
        [HttpGet]
        [CheckUserSession]
        public double GetUSDRate(string year)
        {
            
            
            return plantSetup.GetUSDRate(year);
        }
        
        protected override void Initialize(RequestContext requestContext)
        {
            if (plantSetup != null)
            {
                if (requestContext.HttpContext.Session["PlantId"] != null && requestContext.HttpContext.Session["UserName"] != null)
                {
                    plantSetup.PlantId = Convert.ToInt32(requestContext.HttpContext.Session["PlantId"]);
                    plantSetup.UserName = requestContext.HttpContext.Session["UserName"].ToString();
                }
                else
                {
                    RedirectToAction("Initiate", "IdPInitiated");
                }

            }
            base.Initialize(requestContext);
        }
    }
}
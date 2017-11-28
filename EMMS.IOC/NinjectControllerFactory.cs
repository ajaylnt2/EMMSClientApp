using System;
using System.Web.Mvc;
using System.Web.Routing;
using Ninject;
using EMMS.Business.Interface;
using EMMS.Business;
namespace EMMS.IOC
{
    public class NinjectControllerFactory : DefaultControllerFactory
    {
        private IKernel ninjectKernel;
        public NinjectControllerFactory()
        {
            ninjectKernel = new StandardKernel();
            AddBindings();
        }
        protected override IController GetControllerInstance(RequestContext
        requestContext, Type controllerType)
        {
            return controllerType == null
            ? null
            : (IController)ninjectKernel.Get(controllerType);
        }
        private void AddBindings()
        {
            // put bindings here
            ninjectKernel.Bind<IDataForDropdown>().To<DataForDropDown>();
            ninjectKernel.Bind<IPlantSetUpManager>().To<PlantSetUpManager>();
            ninjectKernel.Bind<IPlantSetUpManager>().To<PlantSetUpManager>();
        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ClassLibraryBL.EntityFacade;
using ClassLibraryBL.Entities;
namespace ClassLibraryBL.Controller.deptEmpRep
{
    public class ConfirmDisbursementListController
    {
        DisbursementFacade df = new DisbursementFacade();
        public List<DisbursementList> getDisbursementList(User u)
        {
            return df.getDisbursementList(u);
        }

        public void confirmRceive(User u)
        {
            df.confirmDisbursement(u);
        }



        public List<string> getrestinfo(User u)
        {
            return df.getrestinfo(u);
        }
    }
}

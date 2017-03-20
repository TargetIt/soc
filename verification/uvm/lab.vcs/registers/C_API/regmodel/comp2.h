//-------------------------------------------------------------
//    Copyright 2011 Synopsys, Inc.
//    All Rights Reserved Worldwide
//
// SYNOPSYS CONFIDENTIAL - This is an unpublished, proprietary work of
// Synopsys, Inc., and is fully protected under copyright and trade
// secret laws. You may not view, use, disclose, copy, or distribute this
// file or any information contained herein except pursuant to a valid
// written license from Synopsys.
//
//-------------------------------------------------------------

//
// The content of this file is normally generated by ralgen
//


#ifndef __COMP2__H__
#define __COMP2__H__

#include <stdlib.h>

#include "snps_reg_rw_api.h"

class comp2_t : public snps_reg::regmodel
{
    public:

    class rf_t : snps_reg::regmodel
    {

    public:
       SNPS_REG_ADDROF_REG(uint32,  r0, 0x00);
       SNPS_REG_ADDROF_REG(uint32,  r1, 0x04);
       SNPS_REG_ADDROF_FLD(uint16,  r1, fA, 0x00);
       SNPS_REG_ADDROF_FLD(uint16,  r1, fB, 0x02);
       SNPS_REG_ADDROF_REG(uint32,  r2, 0x08);

       rf_t(const char* const name,
            size_t baseAddr,
            snps_reg::regmodel *parent = 0)
           : regmodel(parent, name, baseAddr),
           SNPS_REG_INIT_REG(r0),
           SNPS_REG_INIT_REG(r1),
           SNPS_REG_INIT_FLD(r1, fA),
           SNPS_REG_INIT_FLD(r1, fB),
           SNPS_REG_INIT_REG(r2)
       {}
        
    };

    SNPS_REG_ADDROF_REG(uint16, regA, 0x00);
    rf_t rf1[4];
    SNPS_REG_ADDROF_REG(uint32, regE, 0x1F0);


    comp2_t(const char* const name,
            size_t baseAddr,
            snps_reg::regmodel *parent = 0)
        : regmodel(parent, name, baseAddr),
        SNPS_REG_INIT_REG(regA),
        rf1((rf_t[4]){rf_t("rf1[0]", baseAddr + 0x100, this),
                      rf_t("rf1[1]", baseAddr + 0x110, this),
                      rf_t("rf1[2]", baseAddr + 0x120, this),
                     rf_t("rf1[3]", baseAddr + 0x130, this)}),
        SNPS_REG_INIT_REG(regE)
        {}

    comp2_t(int ctxt)
        : regmodel(ctxt),
        SNPS_REG_INIT_REG(regA),
        rf1((rf_t[4]){rf_t("rf1[0]", 0, this),
                      rf_t("rf1[1]", 0, this),
                      rf_t("rf1[2]", 0, this),
                      rf_t("rf1[3]", 0, this)}),
        SNPS_REG_INIT_REG(regE)
        {}
};

#endif

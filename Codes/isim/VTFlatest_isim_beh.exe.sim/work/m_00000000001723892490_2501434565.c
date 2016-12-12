/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Computer/Desktop/verlilog/5-2/controller-final/progct_nbit.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {1, 0};
static int ng4[] = {2, 0};
static int ng5[] = {3, 0};



static void Initial_18_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(18, ng0);

LAB2:    xsi_set_current_line(19, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1264);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 8);

LAB1:    return;
}

static void Always_22_1(char *t0)
{
    char t6[8];
    char t30[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    int t35;

LAB0:    t1 = (t0 + 2024U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 2220);
    *((int *)t2) = 1;
    t3 = (t0 + 2052);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(23, ng0);

LAB5:    xsi_set_current_line(25, ng0);
    t4 = (t0 + 944U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(34, ng0);

LAB20:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 760U);
    t3 = *((char **)t2);

LAB21:    t2 = ((char*)((ng1)));
    t35 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 32);
    if (t35 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng3)));
    t35 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 32);
    if (t35 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng4)));
    t35 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 32);
    if (t35 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng5)));
    t35 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 32);
    if (t35 == 1)
        goto LAB28;

LAB29:
LAB31:
LAB30:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1264);
    t4 = (t2 + 36U);
    t5 = *((char **)t4);
    t7 = (t0 + 1264);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 8);

LAB32:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(26, ng0);

LAB13:    xsi_set_current_line(27, ng0);
    xsi_set_current_line(27, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 1356);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 32);

LAB14:    t2 = (t0 + 1356);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 264);
    t7 = *((char **)t5);
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t7, 32);
    t5 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB15;

LAB16:    goto LAB12;

LAB15:    xsi_set_current_line(28, ng0);

LAB17:    xsi_set_current_line(29, ng0);
    t8 = ((char*)((ng2)));
    t21 = (t0 + 1264);
    t22 = (t0 + 1264);
    t28 = (t22 + 44U);
    t29 = *((char **)t28);
    t31 = (t0 + 1356);
    t32 = (t31 + 36U);
    t33 = *((char **)t32);
    xsi_vlog_generic_convert_bit_index(t30, t29, 2, t33, 32, 1);
    t34 = (t30 + 4);
    t14 = *((unsigned int *)t34);
    t35 = (!(t14));
    if (t35 == 1)
        goto LAB18;

LAB19:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1356);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1356);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB14;

LAB18:    xsi_vlogvar_assign_value(t21, t8, 0, *((unsigned int *)t30), 1);
    goto LAB19;

LAB22:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 1264);
    t5 = (t4 + 36U);
    t7 = *((char **)t5);
    t8 = (t0 + 1264);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 8);
    goto LAB32;

LAB24:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 852U);
    t5 = *((char **)t4);
    t4 = (t0 + 1264);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 8);
    goto LAB32;

LAB26:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 1264);
    t5 = (t4 + 36U);
    t7 = *((char **)t5);
    t8 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t7, 8, t8, 32);
    t21 = (t0 + 1264);
    xsi_vlogvar_assign_value(t21, t6, 0, 0, 8);
    goto LAB32;

LAB28:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 1264);
    t5 = (t4 + 36U);
    t7 = *((char **)t5);
    t8 = (t0 + 344);
    t21 = *((char **)t8);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t7, 8, t21, 32);
    t8 = (t0 + 1264);
    xsi_vlogvar_assign_value(t8, t6, 0, 0, 8);
    goto LAB32;

}


extern void work_m_00000000001723892490_2501434565_init()
{
	static char *pe[] = {(void *)Initial_18_0,(void *)Always_22_1};
	xsi_register_didat("work_m_00000000001723892490_2501434565", "isim/VTFlatest_isim_beh.exe.sim/work/m_00000000001723892490_2501434565.didat");
	xsi_register_executes(pe);
}

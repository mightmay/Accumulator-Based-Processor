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
static const char *ng0 = "C:/Users/Computer/Desktop/verlilog/5-2/controller-final/nBitArithShifterGen.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static int ng4[] = {3, 0};
static int ng5[] = {4, 0};
static int ng6[] = {5, 0};
static int ng7[] = {6, 0};
static unsigned int ng8[] = {1U, 0U};
static int ng9[] = {7, 0};
static unsigned int ng10[] = {0U, 1U};



static void Always_13_0(char *t0)
{
    char t9[8];
    char t17[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;

LAB0:    t1 = (t0 + 1616U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(13, ng0);
    t2 = (t0 + 1812);
    *((int *)t2) = 1;
    t3 = (t0 + 1644);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(14, ng0);

LAB5:    xsi_set_current_line(15, ng0);
    t4 = (t0 + 772U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB21;

LAB22:
LAB24:
LAB23:    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1000);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);

LAB25:    goto LAB2;

LAB7:    xsi_set_current_line(16, ng0);
    t7 = (t0 + 680U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng2)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_lshift(t9, 8, t8, 8, t7, 32);
    t10 = (t0 + 1000);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 8);
    goto LAB25;

LAB9:    xsi_set_current_line(17, ng0);
    t3 = (t0 + 680U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_rshift(t9, 8, t4, 8, t3, 32);
    t7 = (t0 + 1000);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 8);
    goto LAB25;

LAB11:    xsi_set_current_line(18, ng0);
    t3 = (t0 + 680U);
    t4 = *((char **)t3);
    t3 = (t0 + 1000);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 8);
    goto LAB25;

LAB13:    xsi_set_current_line(19, ng0);
    t3 = (t0 + 680U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng5)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_multiply(t9, 32, t4, 8, t3, 32);
    t7 = (t0 + 1000);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 8);
    goto LAB25;

LAB15:    xsi_set_current_line(20, ng0);
    t3 = (t0 + 680U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng5)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_divide(t9, 32, t4, 8, t3, 32);
    t7 = (t0 + 1000);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 8);
    goto LAB25;

LAB17:    xsi_set_current_line(21, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1000);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB25;

LAB19:    xsi_set_current_line(22, ng0);

LAB26:    xsi_set_current_line(23, ng0);
    xsi_set_current_line(23, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1092);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);

LAB27:    t2 = (t0 + 1092);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t7 = (t0 + 264);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    xsi_vlog_signed_less(t9, 32, t4, 32, t8, 32);
    t7 = (t9 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t9);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB28;

LAB29:    goto LAB25;

LAB21:    xsi_set_current_line(29, ng0);

LAB33:    xsi_set_current_line(30, ng0);
    xsi_set_current_line(30, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1092);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);

LAB34:    t2 = (t0 + 1092);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t7 = (t0 + 264);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    xsi_vlog_signed_less(t9, 32, t4, 32, t8, 32);
    t7 = (t9 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t9);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB35;

LAB36:    goto LAB25;

LAB28:    xsi_set_current_line(24, ng0);

LAB30:    xsi_set_current_line(25, ng0);
    t10 = ((char*)((ng8)));
    t16 = (t0 + 1000);
    t18 = (t0 + 1000);
    t19 = (t18 + 44U);
    t20 = *((char **)t19);
    t21 = (t0 + 1092);
    t22 = (t21 + 36U);
    t23 = *((char **)t22);
    xsi_vlog_generic_convert_bit_index(t17, t20, 2, t23, 32, 1);
    t24 = (t17 + 4);
    t25 = *((unsigned int *)t24);
    t6 = (!(t25));
    if (t6 == 1)
        goto LAB31;

LAB32:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1092);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng2)));
    memset(t9, 0, 8);
    xsi_vlog_signed_add(t9, 32, t4, 32, t7, 32);
    t8 = (t0 + 1092);
    xsi_vlogvar_assign_value(t8, t9, 0, 0, 32);
    goto LAB27;

LAB31:    xsi_vlogvar_assign_value(t16, t10, 0, *((unsigned int *)t17), 1);
    goto LAB32;

LAB35:    xsi_set_current_line(31, ng0);

LAB37:    xsi_set_current_line(32, ng0);
    t10 = ((char*)((ng10)));
    t16 = (t0 + 1000);
    t18 = (t0 + 1000);
    t19 = (t18 + 44U);
    t20 = *((char **)t19);
    t21 = (t0 + 1092);
    t22 = (t21 + 36U);
    t23 = *((char **)t22);
    xsi_vlog_generic_convert_bit_index(t17, t20, 2, t23, 32, 1);
    t24 = (t17 + 4);
    t25 = *((unsigned int *)t24);
    t6 = (!(t25));
    if (t6 == 1)
        goto LAB38;

LAB39:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1092);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng2)));
    memset(t9, 0, 8);
    xsi_vlog_signed_add(t9, 32, t4, 32, t7, 32);
    t8 = (t0 + 1092);
    xsi_vlogvar_assign_value(t8, t9, 0, 0, 32);
    goto LAB34;

LAB38:    xsi_vlogvar_assign_value(t16, t10, 0, *((unsigned int *)t17), 1);
    goto LAB39;

}


extern void work_m_00000000004210285183_2161936167_init()
{
	static char *pe[] = {(void *)Always_13_0};
	xsi_register_didat("work_m_00000000004210285183_2161936167", "isim/VTFlatest_isim_beh.exe.sim/work/m_00000000004210285183_2161936167.didat");
	xsi_register_executes(pe);
}

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
static const char *ng0 = "C:/Users/Computer/Desktop/verlilog/5-2/controller-final/Bus.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {1U, 0U};



static void Initial_31_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(31, ng0);

LAB2:    xsi_set_current_line(33, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1904);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 8);

LAB1:    return;
}

static void Always_37_1(char *t0)
{
    char t11[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;

LAB0:    t1 = (t0 + 2940U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3280);
    *((int *)t2) = 1;
    t3 = (t0 + 2968);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(38, ng0);

LAB5:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 2180);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);

LAB6:    t7 = (t0 + 264);
    t8 = *((char **)t7);
    t9 = xsi_vlog_unsigned_case_compare(t6, 8, t8, 32);
    if (t9 == 1)
        goto LAB7;

LAB8:    t2 = (t0 + 344);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 8, t3, 32);
    if (t9 == 1)
        goto LAB9;

LAB10:    t2 = (t0 + 424);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 8, t3, 32);
    if (t9 == 1)
        goto LAB11;

LAB12:    t2 = (t0 + 504);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 8, t3, 32);
    if (t9 == 1)
        goto LAB13;

LAB14:    t2 = (t0 + 584);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 8, t3, 32);
    if (t9 == 1)
        goto LAB15;

LAB16:    t2 = (t0 + 664);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 8, t3, 32);
    if (t9 == 1)
        goto LAB17;

LAB18:    t2 = (t0 + 744);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 8, t3, 32);
    if (t9 == 1)
        goto LAB19;

LAB20:
LAB21:    goto LAB2;

LAB7:    xsi_set_current_line(40, ng0);

LAB22:    xsi_set_current_line(40, ng0);
    t7 = (t0 + 344);
    t10 = *((char **)t7);
    t7 = (t0 + 2272);
    xsi_vlogvar_assign_value(t7, t10, 0, 0, 8);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1400U);
    t3 = *((char **)t2);
    t2 = (t0 + 1904);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 8);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1996);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB21;

LAB9:    xsi_set_current_line(41, ng0);

LAB23:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 424);
    t4 = *((char **)t2);
    t2 = (t0 + 2272);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    goto LAB21;

LAB11:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 504);
    t4 = *((char **)t2);
    t2 = (t0 + 2272);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    goto LAB21;

LAB13:    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 1996);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    goto LAB21;

LAB15:    xsi_set_current_line(44, ng0);

LAB24:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 664);
    t4 = *((char **)t2);
    t2 = (t0 + 2272);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB21;

LAB17:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1492U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t2 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t2);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t5);
    t16 = *((unsigned int *)t7);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB28;

LAB25:    if (t21 != 0)
        goto LAB27;

LAB26:    *((unsigned int *)t11) = 1;

LAB28:    t10 = (t11 + 4);
    t24 = *((unsigned int *)t10);
    t25 = (~(t24));
    t26 = *((unsigned int *)t11);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB29;

LAB30:
LAB31:    goto LAB21;

LAB19:    xsi_set_current_line(46, ng0);

LAB32:    goto LAB21;

LAB27:    t8 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB28;

LAB29:    xsi_set_current_line(45, ng0);
    t29 = (t0 + 744);
    t30 = *((char **)t29);
    t29 = (t0 + 2272);
    xsi_vlogvar_assign_value(t29, t30, 0, 0, 8);
    goto LAB31;

}

static void Always_50_2(char *t0)
{
    char t6[8];
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

LAB0:    t1 = (t0 + 3084U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 3288);
    *((int *)t2) = 1;
    t3 = (t0 + 3112);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(51, ng0);

LAB5:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 1584U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng4)));
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

LAB11:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1492U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB16;

LAB13:    if (t18 != 0)
        goto LAB15;

LAB14:    *((unsigned int *)t6) = 1;

LAB16:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB17;

LAB18:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2272);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2180);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);

LAB19:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(52, ng0);
    t28 = (t0 + 264);
    t29 = *((char **)t28);
    t28 = (t0 + 2180);
    xsi_vlogvar_assign_value(t28, t29, 0, 0, 8);
    goto LAB12;

LAB15:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB16;

LAB17:    xsi_set_current_line(53, ng0);
    t21 = (t0 + 584);
    t22 = *((char **)t21);
    t21 = (t0 + 2180);
    xsi_vlogvar_assign_value(t21, t22, 0, 0, 8);
    goto LAB19;

}


extern void work_m_00000000002784956417_3927722690_init()
{
	static char *pe[] = {(void *)Initial_31_0,(void *)Always_37_1,(void *)Always_50_2};
	xsi_register_didat("work_m_00000000002784956417_3927722690", "isim/VTFlatest_isim_beh.exe.sim/work/m_00000000002784956417_3927722690.didat");
	xsi_register_executes(pe);
}

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
static const char *ng0 = "C:/Users/Computer/Desktop/verlilog/5-2/controller-final/nBitALU.v";



static void Gate_24_0(char *t0)
{
    char t3[8];
    char t5[8];
    char t30[8];
    char t33[8];
    char t58[8];
    char t61[8];
    char t86[8];
    char t89[8];
    char t114[8];
    char t117[8];
    char t142[8];
    char t145[8];
    char t170[8];
    char t173[8];
    char t198[8];
    char t201[8];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t31;
    char *t32;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t59;
    char *t60;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t87;
    char *t88;
    char *t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    char *t103;
    char *t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    char *t115;
    char *t116;
    char *t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    char *t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    char *t131;
    char *t132;
    char *t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    char *t143;
    char *t144;
    char *t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    char *t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    char *t159;
    char *t160;
    char *t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    char *t171;
    char *t172;
    char *t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    char *t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    char *t187;
    char *t188;
    char *t189;
    unsigned int t190;
    unsigned int t191;
    unsigned int t192;
    unsigned int t193;
    unsigned int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    char *t199;
    char *t200;
    char *t202;
    unsigned int t203;
    unsigned int t204;
    unsigned int t205;
    unsigned int t206;
    unsigned int t207;
    unsigned int t208;
    char *t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    char *t215;
    char *t216;
    char *t217;
    unsigned int t218;
    unsigned int t219;
    unsigned int t220;
    unsigned int t221;
    unsigned int t222;
    unsigned int t223;
    unsigned int t224;
    unsigned int t225;
    char *t226;
    char *t227;
    char *t228;
    char *t229;
    char *t230;
    char *t231;
    char *t232;

LAB0:    t1 = (t0 + 2076U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 956U);
    t4 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t5 + 4);
    t6 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 0);
    t9 = (t8 & 1);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 0);
    t12 = (t11 & 1);
    *((unsigned int *)t2) = t12;
    memset(t3, 0, 8);
    t13 = (t5 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t5);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t13) == 0)
        goto LAB4;

LAB6:    t19 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t19) = 1;

LAB7:    t20 = (t3 + 4);
    t21 = (t5 + 4);
    t22 = *((unsigned int *)t5);
    t23 = (~(t22));
    *((unsigned int *)t3) = t23;
    *((unsigned int *)t20) = 0;
    if (*((unsigned int *)t21) != 0)
        goto LAB9;

LAB8:    t28 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t28 & 1U);
    t29 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t29 & 1U);
    t31 = (t0 + 956U);
    t32 = *((char **)t31);
    memset(t33, 0, 8);
    t31 = (t33 + 4);
    t34 = (t32 + 4);
    t35 = *((unsigned int *)t32);
    t36 = (t35 >> 1);
    t37 = (t36 & 1);
    *((unsigned int *)t33) = t37;
    t38 = *((unsigned int *)t34);
    t39 = (t38 >> 1);
    t40 = (t39 & 1);
    *((unsigned int *)t31) = t40;
    memset(t30, 0, 8);
    t41 = (t33 + 4);
    t42 = *((unsigned int *)t41);
    t43 = (~(t42));
    t44 = *((unsigned int *)t33);
    t45 = (t44 & t43);
    t46 = (t45 & 1U);
    if (t46 != 0)
        goto LAB13;

LAB11:    if (*((unsigned int *)t41) == 0)
        goto LAB10;

LAB12:    t47 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t47) = 1;

LAB13:    t48 = (t30 + 4);
    t49 = (t33 + 4);
    t50 = *((unsigned int *)t33);
    t51 = (~(t50));
    *((unsigned int *)t30) = t51;
    *((unsigned int *)t48) = 0;
    if (*((unsigned int *)t49) != 0)
        goto LAB15;

LAB14:    t56 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t56 & 1U);
    t57 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t57 & 1U);
    t59 = (t0 + 956U);
    t60 = *((char **)t59);
    memset(t61, 0, 8);
    t59 = (t61 + 4);
    t62 = (t60 + 4);
    t63 = *((unsigned int *)t60);
    t64 = (t63 >> 2);
    t65 = (t64 & 1);
    *((unsigned int *)t61) = t65;
    t66 = *((unsigned int *)t62);
    t67 = (t66 >> 2);
    t68 = (t67 & 1);
    *((unsigned int *)t59) = t68;
    memset(t58, 0, 8);
    t69 = (t61 + 4);
    t70 = *((unsigned int *)t69);
    t71 = (~(t70));
    t72 = *((unsigned int *)t61);
    t73 = (t72 & t71);
    t74 = (t73 & 1U);
    if (t74 != 0)
        goto LAB19;

LAB17:    if (*((unsigned int *)t69) == 0)
        goto LAB16;

LAB18:    t75 = (t58 + 4);
    *((unsigned int *)t58) = 1;
    *((unsigned int *)t75) = 1;

LAB19:    t76 = (t58 + 4);
    t77 = (t61 + 4);
    t78 = *((unsigned int *)t61);
    t79 = (~(t78));
    *((unsigned int *)t58) = t79;
    *((unsigned int *)t76) = 0;
    if (*((unsigned int *)t77) != 0)
        goto LAB21;

LAB20:    t84 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t84 & 1U);
    t85 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t85 & 1U);
    t87 = (t0 + 956U);
    t88 = *((char **)t87);
    memset(t89, 0, 8);
    t87 = (t89 + 4);
    t90 = (t88 + 4);
    t91 = *((unsigned int *)t88);
    t92 = (t91 >> 3);
    t93 = (t92 & 1);
    *((unsigned int *)t89) = t93;
    t94 = *((unsigned int *)t90);
    t95 = (t94 >> 3);
    t96 = (t95 & 1);
    *((unsigned int *)t87) = t96;
    memset(t86, 0, 8);
    t97 = (t89 + 4);
    t98 = *((unsigned int *)t97);
    t99 = (~(t98));
    t100 = *((unsigned int *)t89);
    t101 = (t100 & t99);
    t102 = (t101 & 1U);
    if (t102 != 0)
        goto LAB25;

LAB23:    if (*((unsigned int *)t97) == 0)
        goto LAB22;

LAB24:    t103 = (t86 + 4);
    *((unsigned int *)t86) = 1;
    *((unsigned int *)t103) = 1;

LAB25:    t104 = (t86 + 4);
    t105 = (t89 + 4);
    t106 = *((unsigned int *)t89);
    t107 = (~(t106));
    *((unsigned int *)t86) = t107;
    *((unsigned int *)t104) = 0;
    if (*((unsigned int *)t105) != 0)
        goto LAB27;

LAB26:    t112 = *((unsigned int *)t86);
    *((unsigned int *)t86) = (t112 & 1U);
    t113 = *((unsigned int *)t104);
    *((unsigned int *)t104) = (t113 & 1U);
    t115 = (t0 + 956U);
    t116 = *((char **)t115);
    memset(t117, 0, 8);
    t115 = (t117 + 4);
    t118 = (t116 + 4);
    t119 = *((unsigned int *)t116);
    t120 = (t119 >> 4);
    t121 = (t120 & 1);
    *((unsigned int *)t117) = t121;
    t122 = *((unsigned int *)t118);
    t123 = (t122 >> 4);
    t124 = (t123 & 1);
    *((unsigned int *)t115) = t124;
    memset(t114, 0, 8);
    t125 = (t117 + 4);
    t126 = *((unsigned int *)t125);
    t127 = (~(t126));
    t128 = *((unsigned int *)t117);
    t129 = (t128 & t127);
    t130 = (t129 & 1U);
    if (t130 != 0)
        goto LAB31;

LAB29:    if (*((unsigned int *)t125) == 0)
        goto LAB28;

LAB30:    t131 = (t114 + 4);
    *((unsigned int *)t114) = 1;
    *((unsigned int *)t131) = 1;

LAB31:    t132 = (t114 + 4);
    t133 = (t117 + 4);
    t134 = *((unsigned int *)t117);
    t135 = (~(t134));
    *((unsigned int *)t114) = t135;
    *((unsigned int *)t132) = 0;
    if (*((unsigned int *)t133) != 0)
        goto LAB33;

LAB32:    t140 = *((unsigned int *)t114);
    *((unsigned int *)t114) = (t140 & 1U);
    t141 = *((unsigned int *)t132);
    *((unsigned int *)t132) = (t141 & 1U);
    t143 = (t0 + 956U);
    t144 = *((char **)t143);
    memset(t145, 0, 8);
    t143 = (t145 + 4);
    t146 = (t144 + 4);
    t147 = *((unsigned int *)t144);
    t148 = (t147 >> 5);
    t149 = (t148 & 1);
    *((unsigned int *)t145) = t149;
    t150 = *((unsigned int *)t146);
    t151 = (t150 >> 5);
    t152 = (t151 & 1);
    *((unsigned int *)t143) = t152;
    memset(t142, 0, 8);
    t153 = (t145 + 4);
    t154 = *((unsigned int *)t153);
    t155 = (~(t154));
    t156 = *((unsigned int *)t145);
    t157 = (t156 & t155);
    t158 = (t157 & 1U);
    if (t158 != 0)
        goto LAB37;

LAB35:    if (*((unsigned int *)t153) == 0)
        goto LAB34;

LAB36:    t159 = (t142 + 4);
    *((unsigned int *)t142) = 1;
    *((unsigned int *)t159) = 1;

LAB37:    t160 = (t142 + 4);
    t161 = (t145 + 4);
    t162 = *((unsigned int *)t145);
    t163 = (~(t162));
    *((unsigned int *)t142) = t163;
    *((unsigned int *)t160) = 0;
    if (*((unsigned int *)t161) != 0)
        goto LAB39;

LAB38:    t168 = *((unsigned int *)t142);
    *((unsigned int *)t142) = (t168 & 1U);
    t169 = *((unsigned int *)t160);
    *((unsigned int *)t160) = (t169 & 1U);
    t171 = (t0 + 956U);
    t172 = *((char **)t171);
    memset(t173, 0, 8);
    t171 = (t173 + 4);
    t174 = (t172 + 4);
    t175 = *((unsigned int *)t172);
    t176 = (t175 >> 6);
    t177 = (t176 & 1);
    *((unsigned int *)t173) = t177;
    t178 = *((unsigned int *)t174);
    t179 = (t178 >> 6);
    t180 = (t179 & 1);
    *((unsigned int *)t171) = t180;
    memset(t170, 0, 8);
    t181 = (t173 + 4);
    t182 = *((unsigned int *)t181);
    t183 = (~(t182));
    t184 = *((unsigned int *)t173);
    t185 = (t184 & t183);
    t186 = (t185 & 1U);
    if (t186 != 0)
        goto LAB43;

LAB41:    if (*((unsigned int *)t181) == 0)
        goto LAB40;

LAB42:    t187 = (t170 + 4);
    *((unsigned int *)t170) = 1;
    *((unsigned int *)t187) = 1;

LAB43:    t188 = (t170 + 4);
    t189 = (t173 + 4);
    t190 = *((unsigned int *)t173);
    t191 = (~(t190));
    *((unsigned int *)t170) = t191;
    *((unsigned int *)t188) = 0;
    if (*((unsigned int *)t189) != 0)
        goto LAB45;

LAB44:    t196 = *((unsigned int *)t170);
    *((unsigned int *)t170) = (t196 & 1U);
    t197 = *((unsigned int *)t188);
    *((unsigned int *)t188) = (t197 & 1U);
    t199 = (t0 + 956U);
    t200 = *((char **)t199);
    memset(t201, 0, 8);
    t199 = (t201 + 4);
    t202 = (t200 + 4);
    t203 = *((unsigned int *)t200);
    t204 = (t203 >> 7);
    t205 = (t204 & 1);
    *((unsigned int *)t201) = t205;
    t206 = *((unsigned int *)t202);
    t207 = (t206 >> 7);
    t208 = (t207 & 1);
    *((unsigned int *)t199) = t208;
    memset(t198, 0, 8);
    t209 = (t201 + 4);
    t210 = *((unsigned int *)t209);
    t211 = (~(t210));
    t212 = *((unsigned int *)t201);
    t213 = (t212 & t211);
    t214 = (t213 & 1U);
    if (t214 != 0)
        goto LAB49;

LAB47:    if (*((unsigned int *)t209) == 0)
        goto LAB46;

LAB48:    t215 = (t198 + 4);
    *((unsigned int *)t198) = 1;
    *((unsigned int *)t215) = 1;

LAB49:    t216 = (t198 + 4);
    t217 = (t201 + 4);
    t218 = *((unsigned int *)t201);
    t219 = (~(t218));
    *((unsigned int *)t198) = t219;
    *((unsigned int *)t216) = 0;
    if (*((unsigned int *)t217) != 0)
        goto LAB51;

LAB50:    t224 = *((unsigned int *)t198);
    *((unsigned int *)t198) = (t224 & 1U);
    t225 = *((unsigned int *)t216);
    *((unsigned int *)t216) = (t225 & 1U);
    t226 = (t0 + 2924);
    t227 = (t226 + 32U);
    t228 = *((char **)t227);
    t229 = (t228 + 40U);
    t230 = *((char **)t229);
    xsi_vlog_AndGate(t230, 8, t3, t30, t58, t86, t114, t142, t170, t198);
    t231 = (t0 + 2924);
    xsi_driver_vfirst_trans(t231, 0, 0);
    t232 = (t0 + 2848);
    *((int *)t232) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t3) = 1;
    goto LAB7;

LAB9:    t24 = *((unsigned int *)t3);
    t25 = *((unsigned int *)t21);
    *((unsigned int *)t3) = (t24 | t25);
    t26 = *((unsigned int *)t20);
    t27 = *((unsigned int *)t21);
    *((unsigned int *)t20) = (t26 | t27);
    goto LAB8;

LAB10:    *((unsigned int *)t30) = 1;
    goto LAB13;

LAB15:    t52 = *((unsigned int *)t30);
    t53 = *((unsigned int *)t49);
    *((unsigned int *)t30) = (t52 | t53);
    t54 = *((unsigned int *)t48);
    t55 = *((unsigned int *)t49);
    *((unsigned int *)t48) = (t54 | t55);
    goto LAB14;

LAB16:    *((unsigned int *)t58) = 1;
    goto LAB19;

LAB21:    t80 = *((unsigned int *)t58);
    t81 = *((unsigned int *)t77);
    *((unsigned int *)t58) = (t80 | t81);
    t82 = *((unsigned int *)t76);
    t83 = *((unsigned int *)t77);
    *((unsigned int *)t76) = (t82 | t83);
    goto LAB20;

LAB22:    *((unsigned int *)t86) = 1;
    goto LAB25;

LAB27:    t108 = *((unsigned int *)t86);
    t109 = *((unsigned int *)t105);
    *((unsigned int *)t86) = (t108 | t109);
    t110 = *((unsigned int *)t104);
    t111 = *((unsigned int *)t105);
    *((unsigned int *)t104) = (t110 | t111);
    goto LAB26;

LAB28:    *((unsigned int *)t114) = 1;
    goto LAB31;

LAB33:    t136 = *((unsigned int *)t114);
    t137 = *((unsigned int *)t133);
    *((unsigned int *)t114) = (t136 | t137);
    t138 = *((unsigned int *)t132);
    t139 = *((unsigned int *)t133);
    *((unsigned int *)t132) = (t138 | t139);
    goto LAB32;

LAB34:    *((unsigned int *)t142) = 1;
    goto LAB37;

LAB39:    t164 = *((unsigned int *)t142);
    t165 = *((unsigned int *)t161);
    *((unsigned int *)t142) = (t164 | t165);
    t166 = *((unsigned int *)t160);
    t167 = *((unsigned int *)t161);
    *((unsigned int *)t160) = (t166 | t167);
    goto LAB38;

LAB40:    *((unsigned int *)t170) = 1;
    goto LAB43;

LAB45:    t192 = *((unsigned int *)t170);
    t193 = *((unsigned int *)t189);
    *((unsigned int *)t170) = (t192 | t193);
    t194 = *((unsigned int *)t188);
    t195 = *((unsigned int *)t189);
    *((unsigned int *)t188) = (t194 | t195);
    goto LAB44;

LAB46:    *((unsigned int *)t198) = 1;
    goto LAB49;

LAB51:    t220 = *((unsigned int *)t198);
    t221 = *((unsigned int *)t217);
    *((unsigned int *)t198) = (t220 | t221);
    t222 = *((unsigned int *)t216);
    t223 = *((unsigned int *)t217);
    *((unsigned int *)t216) = (t222 | t223);
    goto LAB50;

}

static void Cont_27_1(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 2220U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1324U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 8);
    t8 = (t7 & 1);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 8);
    t11 = (t10 & 1);
    *((unsigned int *)t2) = t11;
    t12 = (t0 + 2960);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 1U;
    t18 = t17;
    t19 = (t4 + 4);
    t20 = *((unsigned int *)t4);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 0);
    t25 = (t0 + 2856);
    *((int *)t25) = 1;

LAB1:    return;
}

static void Cont_28_2(char *t0)
{
    char t4[8];
    char t14[8];
    char t22[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;

LAB0:    t1 = (t0 + 2364U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1324U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 7);
    t8 = (t7 & 1);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 7);
    t11 = (t10 & 1);
    *((unsigned int *)t2) = t11;
    t12 = (t0 + 1324U);
    t13 = *((char **)t12);
    memset(t14, 0, 8);
    t12 = (t14 + 4);
    t15 = (t13 + 4);
    t16 = *((unsigned int *)t13);
    t17 = (t16 >> 8);
    t18 = (t17 & 1);
    *((unsigned int *)t14) = t18;
    t19 = *((unsigned int *)t15);
    t20 = (t19 >> 8);
    t21 = (t20 & 1);
    *((unsigned int *)t12) = t21;
    t23 = *((unsigned int *)t4);
    t24 = *((unsigned int *)t14);
    t25 = (t23 ^ t24);
    *((unsigned int *)t22) = t25;
    t26 = (t4 + 4);
    t27 = (t14 + 4);
    t28 = (t22 + 4);
    t29 = *((unsigned int *)t26);
    t30 = *((unsigned int *)t27);
    t31 = (t29 | t30);
    *((unsigned int *)t28) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 != 0);
    if (t33 == 1)
        goto LAB4;

LAB5:
LAB6:    t36 = (t0 + 2996);
    t37 = (t36 + 32U);
    t38 = *((char **)t37);
    t39 = (t38 + 40U);
    t40 = *((char **)t39);
    memset(t40, 0, 8);
    t41 = 1U;
    t42 = t41;
    t43 = (t22 + 4);
    t44 = *((unsigned int *)t22);
    t41 = (t41 & t44);
    t45 = *((unsigned int *)t43);
    t42 = (t42 & t45);
    t46 = (t40 + 4);
    t47 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t47 | t41);
    t48 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t48 | t42);
    xsi_driver_vfirst_trans(t36, 0, 0);
    t49 = (t0 + 2864);
    *((int *)t49) = 1;

LAB1:    return;
LAB4:    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t22) = (t34 | t35);
    goto LAB6;

}

static void Cont_29_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 2508U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1416U);
    t3 = *((char **)t2);
    t2 = (t0 + 3032);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 2872);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Cont_30_4(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 2652U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 864U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 0);
    t8 = (t7 & 1);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    t11 = (t10 & 1);
    *((unsigned int *)t2) = t11;
    t12 = (t0 + 3068);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 1U;
    t18 = t17;
    t19 = (t4 + 4);
    t20 = *((unsigned int *)t4);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 0);
    t25 = (t0 + 2880);
    *((int *)t25) = 1;

LAB1:    return;
}


extern void work_m_00000000000478816152_0177541339_init()
{
	static char *pe[] = {(void *)Gate_24_0,(void *)Cont_27_1,(void *)Cont_28_2,(void *)Cont_29_3,(void *)Cont_30_4};
	xsi_register_didat("work_m_00000000000478816152_0177541339", "isim/VTFlatest_isim_beh.exe.sim/work/m_00000000000478816152_0177541339.didat");
	xsi_register_executes(pe);
}

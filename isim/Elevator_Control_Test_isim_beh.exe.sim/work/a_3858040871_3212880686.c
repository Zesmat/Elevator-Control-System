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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//VBoxSvr/Xilinx_VHDL_projects/ElevatorV5/Elevator/Elevator_Control.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110339434_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_2110411308_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3858040871_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 7536);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(81, ng0);
    t3 = (t0 + 3752U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (t0 + 7664);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 4232U);
    t3 = *((char **)t1);
    t1 = (t0 + 7728);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 4U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

}

static void work_a_3858040871_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    int t23;

LAB0:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 3392U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 7552);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(89, ng0);
    t11 = (t0 + 3432U);
    t12 = *((char **)t11);
    t11 = (t0 + 2952U);
    t13 = *((char **)t11);
    t14 = *((int *)t13);
    t15 = (t14 - 0);
    t16 = (t15 * 1);
    t17 = (4U * t16);
    t18 = (0U + t17);
    t11 = (t0 + 7792);
    t19 = (t11 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t12, 4U);
    xsi_driver_first_trans_delta(t11, t18, 4U, 0LL);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2952U);
    t4 = *((char **)t2);
    t14 = *((int *)t4);
    t15 = (t14 + 1);
    t23 = xsi_vhdl_mod(t15, 16);
    t2 = (t0 + 7856);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t23;
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB5:    t4 = (t0 + 3432U);
    t5 = *((char **)t4);
    t4 = (t0 + 14233);
    t7 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t7 = 0;

LAB10:    t1 = (!(t7));
    goto LAB7;

LAB8:    t8 = 0;

LAB11:    if (t8 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t9 = (t5 + t8);
    t10 = (t4 + t8);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB9;

LAB13:    t8 = (t8 + 1);
    goto LAB11;

}

static void work_a_3858040871_3212880686_p_2(char *t0)
{
    char t20[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    int t10;
    int t11;
    char *t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    unsigned char t19;
    unsigned char t21;
    unsigned char t22;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10};

LAB0:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 7568);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(100, ng0);
    t4 = (t0 + 7920);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(101, ng0);
    t1 = (t0 + 7984);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)2);
    if (t9 != 0)
        goto LAB11;

LAB13:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t1 = (t0 + 2952U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t3 = (t10 == t11);
    if (t3 != 0)
        goto LAB14;

LAB15:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t1 = (t0 + 2952U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t3 = (t10 != t11);
    if (t3 != 0)
        goto LAB16;

LAB17:
LAB12:    goto LAB2;

LAB4:    xsi_set_current_line(120, ng0);
    t1 = (t0 + 7920);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(121, ng0);
    t1 = (t0 + 7984);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(122, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)2);
    if (t9 != 0)
        goto LAB31;

LAB33:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)2);
    if (t9 != 0)
        goto LAB34;

LAB35:    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t1 = (t0 + 5488U);
    t4 = *((char **)t1);
    t3 = 1;
    if (4U == 4U)
        goto LAB38;

LAB39:    t3 = 0;

LAB40:    if (t3 != 0)
        goto LAB36;

LAB37:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t1 = (t0 + 14028U);
    t4 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t20, t2, t1, 1);
    t5 = (t0 + 8176);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    memcpy(t12, t4, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(130, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB32:    goto LAB2;

LAB5:    xsi_set_current_line(136, ng0);
    t1 = (t0 + 7920);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(137, ng0);
    t1 = (t0 + 7984);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(138, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)2);
    if (t9 != 0)
        goto LAB44;

LAB46:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)2);
    if (t9 != 0)
        goto LAB47;

LAB48:    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t1 = (t0 + 5488U);
    t4 = *((char **)t1);
    t3 = 1;
    if (4U == 4U)
        goto LAB51;

LAB52:    t3 = 0;

LAB53:    if (t3 != 0)
        goto LAB49;

LAB50:    xsi_set_current_line(145, ng0);
    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t1 = (t0 + 14028U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t20, t2, t1, 1);
    t5 = (t0 + 8176);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    memcpy(t12, t4, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(146, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB45:    goto LAB2;

LAB6:    xsi_set_current_line(152, ng0);
    t1 = (t0 + 7920);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(153, ng0);
    t1 = (t0 + 7984);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(154, ng0);
    t1 = (t0 + 8240);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(155, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)2);
    if (t9 != 0)
        goto LAB57;

LAB59:    t1 = (t0 + 4392U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB60;

LAB61:    xsi_set_current_line(160, ng0);
    t1 = (t0 + 8304);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(161, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB62;

LAB64:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t19 = (t9 == (unsigned char)3);
    if (t19 == 1)
        goto LAB67;

LAB68:    t3 = (unsigned char)0;

LAB69:    if (t3 != 0)
        goto LAB65;

LAB66:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t19 = (t9 == (unsigned char)2);
    if (t19 == 1)
        goto LAB72;

LAB73:    t3 = (unsigned char)0;

LAB74:    if (t3 != 0)
        goto LAB70;

LAB71:    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB75;

LAB76:
LAB63:
LAB58:    goto LAB2;

LAB7:    xsi_set_current_line(177, ng0);
    t1 = (t0 + 7920);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(178, ng0);
    t1 = (t0 + 7984);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(179, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)2);
    if (t9 != 0)
        goto LAB77;

LAB79:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB80;

LAB81:    xsi_set_current_line(184, ng0);
    t1 = (t0 + 8048);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB78:    goto LAB2;

LAB8:    xsi_set_current_line(189, ng0);
    t1 = (t0 + 7920);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(190, ng0);
    t1 = (t0 + 7984);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(191, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB82;

LAB84:    xsi_set_current_line(194, ng0);
    t1 = (t0 + 8048);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);

LAB83:    goto LAB2;

LAB9:    xsi_set_current_line(199, ng0);
    t1 = (t0 + 7920);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(200, ng0);
    t1 = (t0 + 7984);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(201, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB85;

LAB87:    xsi_set_current_line(204, ng0);
    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t1 = (t0 + 14028U);
    t4 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t20, t2, t1, 1);
    t5 = (t0 + 8176);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    memcpy(t12, t4, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(205, ng0);
    t1 = (t0 + 8048);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);

LAB86:    goto LAB2;

LAB10:    xsi_set_current_line(210, ng0);
    t1 = (t0 + 7920);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(211, ng0);
    t1 = (t0 + 7984);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(212, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB88;

LAB90:    xsi_set_current_line(215, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB89:    goto LAB2;

LAB11:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 8048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB14:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 3592U);
    t5 = *((char **)t1);
    t9 = *((unsigned char *)t5);
    t1 = (t0 + 8048);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    *((unsigned char *)t12) = t9;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB16:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 2792U);
    t5 = *((char **)t1);
    t1 = (t0 + 3112U);
    t6 = *((char **)t1);
    t13 = *((int *)t6);
    t14 = (t13 - 0);
    t15 = (t14 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t13);
    t16 = (4U * t15);
    t17 = (0 + t16);
    t1 = (t5 + t17);
    t7 = (t0 + 5488U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    memcpy(t7, t1, 4U);
    xsi_set_current_line(108, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t11 = (t10 + 1);
    t13 = xsi_vhdl_mod(t11, 16);
    t1 = (t0 + 8112);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t13;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(109, ng0);
    t1 = (t0 + 5488U);
    t2 = *((char **)t1);
    t1 = (t0 + 4072U);
    t4 = *((char **)t1);
    t3 = 1;
    if (4U == 4U)
        goto LAB21;

LAB22:    t3 = 0;

LAB23:    if (t3 != 0)
        goto LAB18;

LAB20:    t1 = (t0 + 5488U);
    t2 = *((char **)t1);
    t1 = (t0 + 14076U);
    t4 = (t0 + 4072U);
    t5 = *((char **)t4);
    t4 = (t0 + 14028U);
    t3 = ieee_p_1242562249_sub_2110411308_1035706684(IEEE_P_1242562249, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB27;

LAB28:    t1 = (t0 + 5488U);
    t2 = *((char **)t1);
    t1 = (t0 + 14076U);
    t4 = (t0 + 4072U);
    t5 = *((char **)t4);
    t4 = (t0 + 14028U);
    t3 = ieee_p_1242562249_sub_2110339434_1035706684(IEEE_P_1242562249, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB29;

LAB30:
LAB19:    goto LAB12;

LAB18:    xsi_set_current_line(110, ng0);
    t6 = (t0 + 8048);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t18 = *((char **)t12);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    goto LAB19;

LAB21:    t15 = 0;

LAB24:    if (t15 < 4U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t1 = (t2 + t15);
    t5 = (t4 + t15);
    if (*((unsigned char *)t1) != *((unsigned char *)t5))
        goto LAB22;

LAB26:    t15 = (t15 + 1);
    goto LAB24;

LAB27:    xsi_set_current_line(112, ng0);
    t6 = (t0 + 8048);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t18 = *((char **)t12);
    *((unsigned char *)t18) = (unsigned char)2;
    xsi_driver_first_trans_fast(t6);
    goto LAB19;

LAB29:    xsi_set_current_line(114, ng0);
    t6 = (t0 + 8048);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t18 = *((char **)t12);
    *((unsigned char *)t18) = (unsigned char)1;
    xsi_driver_first_trans_fast(t6);
    goto LAB19;

LAB31:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 8048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);
    goto LAB32;

LAB34:    xsi_set_current_line(125, ng0);
    t1 = (t0 + 3592U);
    t4 = *((char **)t1);
    t19 = *((unsigned char *)t4);
    t1 = (t0 + 8048);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t19;
    xsi_driver_first_trans_fast(t1);
    goto LAB32;

LAB36:    xsi_set_current_line(127, ng0);
    t6 = (t0 + 8048);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t18 = *((char **)t12);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    goto LAB32;

LAB38:    t15 = 0;

LAB41:    if (t15 < 4U)
        goto LAB42;
    else
        goto LAB40;

LAB42:    t1 = (t2 + t15);
    t5 = (t4 + t15);
    if (*((unsigned char *)t1) != *((unsigned char *)t5))
        goto LAB39;

LAB43:    t15 = (t15 + 1);
    goto LAB41;

LAB44:    xsi_set_current_line(139, ng0);
    t1 = (t0 + 8048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB45;

LAB47:    xsi_set_current_line(141, ng0);
    t1 = (t0 + 3592U);
    t4 = *((char **)t1);
    t19 = *((unsigned char *)t4);
    t1 = (t0 + 8048);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t19;
    xsi_driver_first_trans_fast(t1);
    goto LAB45;

LAB49:    xsi_set_current_line(143, ng0);
    t6 = (t0 + 8048);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t18 = *((char **)t12);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    goto LAB45;

LAB51:    t15 = 0;

LAB54:    if (t15 < 4U)
        goto LAB55;
    else
        goto LAB53;

LAB55:    t1 = (t2 + t15);
    t5 = (t4 + t15);
    if (*((unsigned char *)t1) != *((unsigned char *)t5))
        goto LAB52;

LAB56:    t15 = (t15 + 1);
    goto LAB54;

LAB57:    xsi_set_current_line(156, ng0);
    t1 = (t0 + 8048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)7;
    xsi_driver_first_trans_fast(t1);
    goto LAB58;

LAB60:    xsi_set_current_line(158, ng0);
    t1 = (t0 + 3592U);
    t4 = *((char **)t1);
    t19 = *((unsigned char *)t4);
    t1 = (t0 + 8048);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t19;
    xsi_driver_first_trans_fast(t1);
    goto LAB58;

LAB62:    xsi_set_current_line(162, ng0);
    t1 = (t0 + 8240);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(163, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    goto LAB63;

LAB65:    xsi_set_current_line(165, ng0);
    t1 = (t0 + 8240);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(166, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    goto LAB63;

LAB67:    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t21 = *((unsigned char *)t4);
    t22 = (t21 == (unsigned char)2);
    t3 = t22;
    goto LAB69;

LAB70:    xsi_set_current_line(168, ng0);
    t1 = (t0 + 8048);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB63;

LAB72:    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t21 = *((unsigned char *)t4);
    t22 = (t21 == (unsigned char)3);
    t3 = t22;
    goto LAB74;

LAB75:    xsi_set_current_line(170, ng0);
    t1 = (t0 + 8048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB63;

LAB77:    xsi_set_current_line(180, ng0);
    t1 = (t0 + 8048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)7;
    xsi_driver_first_trans_fast(t1);
    goto LAB78;

LAB80:    xsi_set_current_line(182, ng0);
    t1 = (t0 + 8048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB78;

LAB82:    xsi_set_current_line(192, ng0);
    t1 = (t0 + 8048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)7;
    xsi_driver_first_trans_fast(t1);
    goto LAB83;

LAB85:    xsi_set_current_line(202, ng0);
    t1 = (t0 + 8048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)7;
    xsi_driver_first_trans_fast(t1);
    goto LAB86;

LAB88:    xsi_set_current_line(213, ng0);
    t1 = (t0 + 8048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB89;

}

static void work_a_3858040871_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(221, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = (t3 > 300);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 8368);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 7584);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 8368);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_3858040871_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3858040871_3212880686_p_0,(void *)work_a_3858040871_3212880686_p_1,(void *)work_a_3858040871_3212880686_p_2,(void *)work_a_3858040871_3212880686_p_3};
	xsi_register_didat("work_a_3858040871_3212880686", "isim/Elevator_Control_Test_isim_beh.exe.sim/work/a_3858040871_3212880686.didat");
	xsi_register_executes(pe);
}

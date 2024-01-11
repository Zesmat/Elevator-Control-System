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
static const char *ng0 = "//VBoxSvr/Xilinx_VHDL_projects/ElevatorV5/Elevator/binary_to_bcd_converter.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_3143221075_1035706684(char *, char *, char *, int );


static void work_a_0273076798_3212880686_p_0(char *t0)
{
    char t10[16];
    char t16[16];
    char t20[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned char t15;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t21;
    char *t22;
    int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    int t32;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 5276);
    t3 = (t0 + 1648U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 8U);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 5284);
    *((int *)t1) = 3;
    t2 = (t0 + 5288);
    *((int *)t2) = 0;
    t5 = 3;
    t6 = 0;

LAB2:    if (t5 >= t6)
        goto LAB3;

LAB5:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t7 = (7 - 7);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t3 = (t0 + 3152);
    t4 = (t3 + 56U);
    t11 = *((char **)t4);
    t12 = (t11 + 56U);
    t17 = *((char **)t12);
    memcpy(t17, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t7 = (7 - 3);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t3 = (t0 + 3216);
    t4 = (t3 + 56U);
    t11 = *((char **)t4);
    t12 = (t11 + 56U);
    t17 = *((char **)t12);
    memcpy(t17, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    t1 = (t0 + 3072);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1648U);
    t4 = *((char **)t3);
    t7 = (7 - 3);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t3 = (t4 + t9);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 3;
    t12 = (t11 + 4U);
    *((int *)t12) = 0;
    t12 = (t11 + 8U);
    *((int *)t12) = -1;
    t13 = (0 - 3);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t15 = ieee_p_1242562249_sub_3143221075_1035706684(IEEE_P_1242562249, t3, t10, 5);
    if (t15 != 0)
        goto LAB6;

LAB8:
LAB7:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t7 = (7 - 6);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 5284);
    t13 = *((int *)t3);
    t23 = (t13 - 3);
    t14 = (t23 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, *((int *)t3));
    t18 = (1U * t14);
    t19 = (0 + t18);
    t11 = (t4 + t19);
    t15 = *((unsigned char *)t11);
    t17 = ((IEEE_P_2592010699) + 4024);
    t21 = (t16 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 6;
    t22 = (t21 + 4U);
    *((int *)t22) = 0;
    t22 = (t21 + 8U);
    *((int *)t22) = -1;
    t32 = (0 - 6);
    t24 = (t32 * -1);
    t24 = (t24 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t24;
    t12 = xsi_base_array_concat(t12, t10, t17, (char)97, t1, t16, (char)99, t15, (char)101);
    t22 = (t0 + 1648U);
    t25 = *((char **)t22);
    t22 = (t25 + 0);
    t24 = (7U + 1U);
    memcpy(t22, t12, t24);

LAB4:    t1 = (t0 + 5284);
    t5 = *((int *)t1);
    t2 = (t0 + 5288);
    t6 = *((int *)t2);
    if (t5 == t6)
        goto LAB5;

LAB9:    t13 = (t5 + -1);
    t5 = t13;
    t3 = (t0 + 5284);
    *((int *)t3) = t5;
    goto LAB2;

LAB6:    xsi_set_current_line(48, ng0);
    t12 = (t0 + 1648U);
    t17 = *((char **)t12);
    t14 = (7 - 3);
    t18 = (t14 * 1U);
    t19 = (0 + t18);
    t12 = (t17 + t19);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 3;
    t22 = (t21 + 4U);
    *((int *)t22) = 0;
    t22 = (t21 + 8U);
    *((int *)t22) = -1;
    t23 = (0 - 3);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t24;
    t22 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t16, t12, t20, 3);
    t25 = (t0 + 1648U);
    t26 = *((char **)t25);
    t24 = (7 - 3);
    t27 = (t24 * 1U);
    t28 = (0 + t27);
    t25 = (t26 + t28);
    t29 = (t16 + 12U);
    t30 = *((unsigned int *)t29);
    t31 = (1U * t30);
    memcpy(t25, t22, t31);
    goto LAB7;

}


extern void work_a_0273076798_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0273076798_3212880686_p_0};
	xsi_register_didat("work_a_0273076798_3212880686", "isim/Elevator_Control_Test_isim_beh.exe.sim/work/a_0273076798_3212880686.didat");
	xsi_register_executes(pe);
}

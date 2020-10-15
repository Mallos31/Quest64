s32 func_8001D8B0(void *arg0, s16 arg1, s16 arg2, s16 arg3, s32 arg4, u16 arg5) {
    u16 temp_t9;

    if (arg1 != -1) {
        if (arg1 != arg0->unk52) {
            arg0->unk52 = arg1;
            temp_t9 = arg0->unk60 | 0x400;
            arg0->unk60 = temp_t9;
            arg0->unk60 = (u16) (temp_t9 & 0xFDFF);
        }
        arg0->unk58 = arg2;
        if ((arg5 & 1) != 0) {
            arg0->unk56 = (u16)0;
            arg0->unk54 = (u16)0;
        }
    }
    if (arg3 != -1) {
        if (arg3 != arg0->unk5A) {
            arg0->unk5A = arg3;
        }
        arg0->unk5C = (s16) arg4;
    }
    return -1;
}

u16 func_8001D924(void *arg0, void *arg1, f32 arg2) {
    f32 sp2C;
    void *sp28;
    f32 temp_f0;
    f32 temp_f12;
    s16 temp_v1;
    s32 temp_v0;
    u16 temp_a2;
    u16 temp_a2_2;
    u16 temp_v0_2;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_v0_3;
    void *temp_v0_4;
    s32 phi_v0;
    void *phi_a3;
    void *phi_a3_2;
    s32 phi_a2;
    void *phi_v0_2;
    void *phi_v0_3;
    f32 phi_f8;
    u16 phi_return;

    temp_f12 = arg2;
    temp_v1 = arg1->unk0;
    temp_a3 = arg1->unk4;
    phi_a3_2 = temp_a3;
    if ((s32) temp_v1 > 0) {
        phi_v0 = 0;
        phi_a3 = temp_a3;
        phi_a3_2 = temp_a3;
        if (temp_a3->unk14 != 0) {
loop_2:
            temp_v0 = phi_v0 + 1;
            temp_a3_2 = phi_a3 + 0x20;
            phi_a3_2 = temp_a3_2;
            if (temp_v0 < (s32) temp_v1) {
                phi_v0 = temp_v0;
                phi_a3 = temp_a3_2;
                phi_a3_2 = temp_a3_2;
                if (temp_a3_2->unk14 != 0) {
                    goto loop_2;
                }
            }
        }
    }
    temp_a2 = phi_a3_2->unk6;
    if (temp_a2 != 0) {
        phi_a2 = (s32) arg0->unk54 % (s32) temp_a2;
    } else {
        phi_a2 = 0;
    }
    sp28 = phi_a3_2;
    arg2 = temp_f12;
    func_80022B40(temp_f12, phi_a3_2, &sp2C, phi_a2, phi_a3_2);
    temp_v0_2 = arg0->unk60;
    temp_a3_3 = phi_a3_2;
    if ((temp_v0_2 & 0x200) != 0) {
        temp_v0_3 = temp_a3_3->unk0;
        temp_a2_2 = temp_a3_3->unk6;
        phi_v0_2 = temp_v0_3;
        phi_v0_3 = temp_v0_3;
        if (temp_a2_2 != temp_v0_3->unk32) {
loop_9:
            temp_v0_4 = phi_v0_2 + 0x34;
            phi_v0_2 = temp_v0_4;
            phi_v0_3 = temp_v0_4;
            if (temp_a2_2 != phi_v0_2->unk66) {
                goto loop_9;
            }
        }
        temp_f0 = phi_v0_3->unk0;
        arg0->unk44 = (f32) (((sp2C + temp_f0) * arg2) - arg0->unk38);
        arg0->unk48 = (f32) (((sp30 + phi_v0_3->unk4) * arg2) - arg0->unk3C);
        arg0->unk4C = (f32) (((sp34 + phi_v0_3->unk8) * arg2) - arg0->unk40);
        arg0->unk38 = (f32) (sp2C * arg2);
        arg0->unk3C = (f32) (sp30 * arg2);
        phi_f8 = sp34 * arg2;
        phi_return = (bitwise u16) temp_f0;
    } else {
        if ((temp_v0_2 & 0x400) != 0) {
            arg0->unk44 = 0.0f;
            arg0->unk48 = 0.0f;
            arg0->unk4C = 0.0f;
            arg0->unk38 = (f32) (sp2C * arg2);
            arg0->unk3C = (f32) (sp30 * arg2);
            phi_f8 = sp34 * arg2;
            phi_return = (bitwise u16) 0.0f;
        } else {
            arg0->unk44 = (f32) ((sp2C * arg2) - arg0->unk38);
            arg0->unk48 = (f32) ((sp30 * arg2) - arg0->unk3C);
            arg0->unk4C = (f32) ((sp34 * arg2) - arg0->unk40);
            arg0->unk38 = (f32) (sp2C * arg2);
            arg0->unk3C = (f32) (sp30 * arg2);
            phi_f8 = sp34 * arg2;
            phi_return = temp_v0_2;
        }
    }
    arg0->unk40 = phi_f8;
    return phi_return;
}

s16 func_8001DB38(s32 arg0, void *arg1, void *arg2, ?32 arg3) {
    ? sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 *temp_s3;
    s16 temp_v0;
    s16 temp_v0_2;
    s32 temp_s1;
    void *temp_s4;
    void *phi_s0;
    s32 phi_s1;
    s32 phi_v0;
    s16 phi_return;
    s16 phi_return_2;

    *(void *)0x8008C5E0 = 0;
    func_80023360(&sp78, arg1->unkC, arg1->unk10, arg1->unk14, arg1->unk24, arg1->unk0, arg1->unk4, arg1->unk8);
    temp_s3 = &sp6C;
    sp6C = arg1->unk24;
    sp70 = arg1->unk24;
    sp74 = arg1->unk24;
    temp_v0 = arg2->unk0;
    temp_s4 = arg2->unk4;
    phi_return = temp_v0;
    if ((s32) temp_v0 > 0) {
        phi_s0 = temp_s4;
        phi_s1 = 0;
        phi_v0 = (s32) temp_v0;
        phi_return_2 = temp_v0;
loop_2:
        if (phi_s0->unk14 == 0) {
            func_8001DC78(&sp78, subroutine_arg1, (bitwise s32) temp_s3[1], (bitwise s32) temp_s3[2], arg0, phi_s1, (?32) arg1->unk54, (?32) arg1->unk56, arg2, temp_s4, arg3);
            temp_v0_2 = arg2->unk0;
            phi_v0 = (s32) temp_v0_2;
            phi_return_2 = temp_v0_2;
        }
        temp_s1 = phi_s1 + 1;
        phi_s0 = phi_s0 + 0x20;
        phi_s1 = temp_s1;
        phi_return = phi_return_2;
        if (temp_s1 < phi_v0) {
            goto loop_2;
        }
    }
    return phi_return;
}

s16 func_8001DC78(s32 arg0, f32 arg1, f32 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, void *arg8, void *arg9, s32 argA) {
    ? spA0;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    s16 temp_v0_5;
    s16 temp_v0_6;
    s32 temp_a1;
    s32 temp_a2_2;
    s32 temp_s1_2;
    s32 temp_v1;
    s8 temp_s1;
    u16 temp_a2;
    void *temp_a2_3;
    void *temp_s2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    s32 phi_a2;
    void *phi_s0;
    s32 phi_s1;
    s32 phi_v0;
    s16 phi_return;
    s16 phi_return_2;

    temp_s2 = (arg5 << 5) + arg9;
    temp_a2 = temp_s2->unk6;
    if (temp_a2 != 0) {
        phi_a2 = arg6 % (s32) temp_a2;
    } else {
        phi_a2 = 0;
    }
    func_80022B40(temp_s2, &sp7C, phi_a2);
    if (temp_s2->unk14 == 0) {
        if ((arg4 & 1) != 0) {
            sp7C = 0.0f;
            sp84 = 0.0f;
        }
        if ((arg4 & 2) != 0) {
            sp80 = 0.0f;
        }
    }
    func_80023C1C(&spA0, (bitwise s32) sp7C, (bitwise s32) sp80, (bitwise s32) sp84, sp8C, sp88, sp90, sp94, sp98, sp9C);
    func_8001E138(&spA0, temp_s2);
    arg1 = arg1 * sp94;
    arg2 = arg2 * sp98;
    arg3 = arg3 * sp9C;
    if ((temp_s2->unk16 & 1) != 0) {
        func_80023E80(arg0, &spA0, &spA0);
        func_8002371C(0x8008C5E8, spD0, spD4, spD8, (void *)0x80086DC0->unkC, (void *)0x80086DC0->unk10, (void *)0x80086DC0->unk14);
        func_80023DF4(0x8008C5E8, (bitwise s32) arg1, (bitwise s32) arg2, (bitwise s32) arg3);
        func_80035200(0x8008C5E8, (argA + (*(void *)0x8007B2F8 << 6)) + 0xC0);
    } else {
        func_80023E80(arg0, &spA0, &spA0);
        func_80035200(&spA0, (argA + (*(void *)0x8007B2F8 << 6)) + 0xC0);
    }
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk0 = 0x1020040;
    temp_v0->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0xC0) + 0x2000000);
    *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
    if ((temp_s2->unk16 & 2) != 0) {
        temp_v1 = *(void *)0x8008C5E0;
        temp_v0_2 = (temp_v1 * 0xC) + 0x8008C5B0;
        *(void *)0x8008C5E0 = (s32) (temp_v1 + 1);
        temp_v0_2->unk0 = (bitwise f32) spD0;
        temp_v0_2->unk4 = (bitwise f32) spD4;
        temp_v0_2->unk8 = (bitwise f32) spD8;
    }
    temp_a2_2 = temp_s2->unk18;
    temp_a1 = arg8->unk8;
    if (temp_a2_2 == 0) {
        temp_s1 = temp_s2->unk15;
        if (temp_s1 != -1) {
            temp_a2_3 = temp_a1 + (temp_s1 * 4);
            if (*temp_a2_3 != 0) {
                temp_v0_3 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
                temp_v0_3->unk0 = 0x6000000;
                temp_v0_3->unk4 = (s32) *temp_a2_3;
            }
        }
    } else {
        temp_v0_4 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
        temp_v0_4->unk0 = 0x6000000;
        temp_v0_4->unk4 = (s32) *(temp_a1 + (*(temp_a2_2 + ((arg7 % (s32) temp_s2->unk1C) * 4)) * 4));
    }
    temp_v0_5 = arg8->unk0;
    phi_s0 = arg9;
    phi_s1 = 0;
    phi_return = temp_v0_5;
    phi_v0 = (s32) temp_v0_5;
    phi_return_2 = temp_v0_5;
    if ((s32) temp_v0_5 > 0) {
loop_19:
        if ((arg5 + 1) == phi_s0->unk14) {
            func_8001DC78(&spA0, subroutine_arg1, (bitwise s32) (&arg1)[1], (bitwise s32) (&arg1)[2], arg4, phi_s1, arg6, arg7, arg8, arg9, argA);
            temp_v0_6 = arg8->unk0;
            phi_v0 = (s32) temp_v0_6;
            phi_return_2 = temp_v0_6;
        }
        temp_s1_2 = phi_s1 + 1;
        phi_s0 = phi_s0 + 0x20;
        phi_s1 = temp_s1_2;
        phi_return = phi_return_2;
        if (temp_s1_2 < phi_v0) {
            goto loop_19;
        }
    }
    return phi_return;
}

s32 func_8001E0AC(s32 arg0, void *arg1, void *arg2) {
    s16 temp_a0;
    s16 temp_v1;
    s32 temp_v0;
    u16 temp_t7;

    temp_t7 = arg1->unk54 + arg0;
    arg1->unk54 = temp_t7;
    temp_v1 = arg2->unk2;
    temp_v0 = temp_t7 & 0xFFFF;
    if (temp_v0 >= (s32) temp_v1) {
        temp_a0 = arg1->unk5A;
        if (temp_a0 != arg1->unk52) {
            arg1->unk52 = temp_a0;
            arg1->unk54 = (u16)0U;
            arg1->unk56 = (u16)0U;
            arg1->unk60 = (u16) (arg1->unk60 | 0x400);
            arg1->unk58 = (u16) arg1->unk5C;
        } else {
            arg1->unk54 = (u16) (temp_v0 - temp_v1);
            arg1->unk60 = (u16) (arg1->unk60 | 0x200);
        }
    } else {
        arg1->unk60 = (u16) (arg1->unk60 & 0xF9FF);
    }
    arg1->unk56 = (u16) (arg1->unk56 + 1);
    return temp_v0;
}

f32 func_8001E138(void *arg0, void *arg1) {
    f32 temp_f0;

    arg0->unk30 = (f32) (arg0->unk30 - (((arg0->unk0 * arg1->unk8) + (arg0->unk10 * arg1->unkC)) + (arg0->unk20 * arg1->unk10)));
    temp_f0 = arg0->unk8;
    arg0->unk34 = (f32) (arg0->unk34 - (((arg0->unk4 * arg1->unk8) + (arg0->unk14 * arg1->unkC)) + (arg0->unk24 * arg1->unk10)));
    arg0->unk38 = (f32) (arg0->unk38 - (((temp_f0 * arg1->unk8) + (arg0->unk18 * arg1->unkC)) + (arg0->unk28 * arg1->unk10)));
    return temp_f0;
}

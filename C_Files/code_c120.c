void func_8000B520(void) {
    *(void *)0x8007D19C = (u8)0;
}

s32 func_8000B530(void) {
    void *sp28;
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_ret;
    s32 temp_ret_2;
    s32 temp_s0;
    s32 temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *phi_v1;
    s32 phi_s0;
    s32 phi_return;

    *(void *)0x8007D1A0 = 0;
    temp_v0 = *(void *)0x80084EE4;
    phi_v1 = (void *)0x803A9AD0;
    phi_s0 = 0;
loop_1:
    if ((temp_v0 == phi_v1->unk0) && (*(void *)0x80084EE8 == phi_v1->unk2)) {
        sp28 = phi_v1;
        temp_ret_2 = func_8000B9D8(phi_s0, 8);
        temp_v1 = phi_v1;
        phi_return = temp_ret_2;
        if (temp_ret_2 == 0) {
            temp_v0_2 = (temp_v1->unk4 * 8) + 0x803A9A90;
            temp_a0 = temp_v0_2->unk0;
            temp_a3 = temp_v0_2->unk4;
            sp28 = temp_v1;
            func_80024260(temp_a0, 0x802A7BC0, temp_a3 - temp_a0, temp_a3);
            temp_ret = func_8000B7DC(phi_s0, temp_v1->unkC, temp_v1->unk10, temp_v1->unk14, 0x8007D1A8);
            *(void *)0x8007D1A0 = (s32) (phi_s0 + 1);
            return temp_ret;
        }
    } else {
        temp_s0 = phi_s0 + 1;
        phi_v1 = phi_v1 + 0x18;
        phi_s0 = temp_s0;
        phi_return = temp_v0;
        if (temp_s0 != 8) {
            goto loop_1;
        }
    }
    return phi_return;
}

void func_8000B618(s32 arg0) {
    s32 sp2C;
    s32 temp_t0;
    void *temp_v1;

    if (*(void *)0x8007D1A0 != 0) {
        temp_t0 = (((void *)0x8007D1A8->unk74 * 4) + 0x803B0000)->unk-5E9C;
        temp_v1 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
        temp_v1->unk4 = 0x2000;
        temp_v1->unk0 = 0xBA000C02;
        sp2C = temp_t0;
        func_8001DB38(1, 0x8007D1CC, ((void *)0x8007D1A8->unk76 * 0xC) + temp_t0, arg0);
        func_8001E0AC(*(void *)0x8007D224, 0x8007D1CC, (*(void *)0x8007D21E * 0xC) + temp_t0);
        if (**(void *)0x8007D230 != 2) {
            func_80011860(*(void *)0x8007D1CC, *(void *)0x8007D1D0, *(void *)0x8007D1D4, *(void *)0x8007D1F8, *(void *)0x8007D1FC, *(void *)0x8007D200, *(void *)0x8007D1F4 * *(void *)0x8007D1F0);
        }
    }
}

s32 func_8000B740(void) {
    s32 sp1C;
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_v0;
    s32 phi_v1;

    phi_v1 = 0;
    if (*(void *)0x8007D1A0 != 0) {
        temp_f0 = (void *)0x8007D1A8->unk24 - (void *)0x8007BAB8->unk14;
        sp1C = 0;
        temp_f2 = (void *)0x8007D1A8->unk2C - (void *)0x8007BAB8->unk1C;
        temp_v0 = *(void *)0x8007D1A0;
        phi_v1 = sp1C;
        if (sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2), (void *)0x8007BAB8) < ((temp_v0 * 4) + 0x803B0000)->unk-6474) {
            phi_v1 = temp_v0;
        }
    }
    return phi_v1;
}

void *func_8000B7DC(s32 arg0, f32 arg1, s32 arg2, f32 arg3, void *arg4) {
    f32 temp_f12;
    f64 temp_f4;
    u16 temp_t5;
    void *temp_s1;
    void *temp_s2;
    f32 phi_f12;

    temp_s2 = (arg0 * 0x38) + 0x803A9F20;
    temp_s1 = arg4 + 0x24;
    arg4->unk74 = (s16) temp_s2->unk2;
    func_8001D8B0(temp_s1, 0, 1, 0, 1, 1);
    temp_s1->unk24 = (f32) temp_s2->unk20;
    temp_s1->unk64 = temp_s2;
    temp_s1->unk68 = (void *) (arg4 + 0x90);
    temp_s1->unk28 = (f32) temp_s2->unk18;
    arg4->unk20 = temp_s2;
    arg4->unkA = (u16) temp_s2->unk6;
    arg4->unk0 = (u16)0;
    arg4->unk8 = (u16)0U;
    arg4->unkC = (u16) temp_s2->unk6;
    temp_t5 = temp_s2->unkC;
    temp_f12 = (f32) temp_t5;
    phi_f12 = temp_f12;
    if ((s32) temp_t5 < 0) {
        phi_f12 = temp_f12 + 4294967296.0f;
    }
    temp_f4 = (f64) sqrtf(phi_f12) * *(void *)0x800711D0;
    arg4->unk90 = (u16)0;
    arg4->unk10 = (f32) (temp_f4 + *(void *)0x800711D8);
    arg4->unk114 = (u16) arg4->unk20->unk2A;
    arg4->unk116 = (u16) temp_s1->unk64->unkC;
    arg4->unk120 = 1.0f;
    arg4->unk118 = (u16) temp_s1->unk64->unkE;
    func_8000EE60(arg1, 0, arg2, 0xA00, 0x8007D110);
    temp_s1->unk0 = (f32) (void *)0x8007D110->unk0;
    temp_s1->unk4 = (f32) (void *)0x8007D110->unk4;
    temp_s1->unk8 = (f32) (void *)0x8007D110->unk8;
    if (temp_s2 == 0x803AA0A8) {
        arg4->unk8 = (u16) (arg4->unk8 | 4);
        temp_s1->unk4 = (f32) ((f64) temp_s1->unk4 - 30.0);
    }
    temp_s1->unk10 = arg3;
    temp_s1->unk2C = (f32) (void *)0x8007D110->unkC;
    temp_s1->unk30 = (f32) (void *)0x8007D110->unk10;
    temp_s1->unk5E = (u16)1;
    temp_s1->unk60 = (u16)0;
    temp_s1->unk34 = (f32) (void *)0x8007D110->unk14;
    if (temp_s2 == 0x803AA0A8) {
        temp_s1->unk5E = (u16)5;
    }
    return (void *)0x8007D110;
}

s32 func_8000B9D8(u32 arg0) {
    return (((arg0 & 7) + 0x80050000)->unk-28C0 & ((arg0 >> 3) + 0x80080000)->unk-2E64) & 0xFF;
}

void func_8000BA0C(s32 arg0) {
    s32 temp_t6;
    void *temp_v1;

    temp_t6 = arg0 & 0xFFFF;
    temp_v1 = (temp_t6 >> 3) + 0x8007D19C;
    *temp_v1 = (u8) (*temp_v1 | ((temp_t6 & 7) + 0x80050000)->unk-28C0);
}

void func_8000BA4C(s32 arg0) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    void *temp_t1;
    void *temp_t4;
    void *temp_v0;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v0;
    void *phi_v1;
    s32 phi_a1;
    void *phi_v0_2;
    void *phi_v1_2;
    s32 phi_a1_2;
    void *phi_t1;
    void *phi_t4;

    temp_a2 = arg0 * 4;
    phi_v0 = (temp_a2 + 0x803B0000)->unk-5428;
    phi_v1 = (void *)0x8007C970;
    phi_a1 = 0x20;
loop_1:
    temp_a1 = phi_a1 - 1;
    temp_v1 = phi_v1 + 1;
    temp_v1->unk-1 = (u8) *phi_v0;
    phi_v0 = phi_v0 + 1;
    phi_v1 = temp_v1;
    phi_a1 = temp_a1;
    if (temp_a1 != 0) {
        goto loop_1;
    }
    phi_v0_2 = (temp_a2 + 0x803B0000)->unk-5408;
    phi_v1_2 = (void *)0x8007C570;
    phi_a1_2 = 0x400;
loop_3:
    temp_a1_2 = phi_a1_2 - 4;
    temp_v1_2 = phi_v1_2 + 4;
    temp_v1_2->unk-4 = (u8) phi_v0_2->unk0;
    temp_v0 = phi_v0_2 + 4;
    temp_v1_2->unk-3 = (u8) phi_v0_2->unk1;
    temp_v1_2->unk-2 = (u8) temp_v0->unk-2;
    temp_v1_2->unk-1 = (u8) temp_v0->unk-1;
    phi_v0_2 = temp_v0;
    phi_v1_2 = temp_v1_2;
    phi_a1_2 = temp_a1_2;
    if (temp_a1_2 != 0) {
        goto loop_3;
    }
    phi_t1 = (void *)0x8007D1CC;
    phi_t4 = (void *)0x8007D130;
loop_5:
    temp_t1 = phi_t1 + 0xC;
    temp_t4 = phi_t4 + 0xC;
    temp_t4->unk-C = (s32) *phi_t1;
    temp_t4->unk-8 = (s32) temp_t1->unk-8;
    temp_t4->unk-4 = (s32) temp_t1->unk-4;
    phi_t1 = temp_t1;
    phi_t4 = temp_t4;
    if (temp_t1 != 0x8007D238) {
        goto loop_5;
    }
    if (arg0 == 7) {
        (void *)0x8007D130->unk0 = -31.0f;
        (void *)0x8007D130->unk4 = 139.0f;
        (void *)0x8007D130->unk8 = -328.0f;
    }
    func_80014434((arg0 * 0x38) + 0x803A9BB0, (void *)0x8007D130, temp_a2, arg0);
}

void *func_8000BB68(s32 arg0) {
    s16 temp_v0_3;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_v0_2;
    u16 temp_t7;
    void *temp_v0;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v0;
    void *phi_v1;
    s32 phi_a0;
    void *phi_v0_2;
    void *phi_v1_2;
    s32 phi_a0_2;
    s16 phi_v0_3;
    void *phi_return;

    if (arg0 == 7) {
        phi_v0 = ((arg0 * 4) + 0x803B0000)->unk-5428;
        phi_v1 = (void *)0x8007C970;
        phi_a0 = 0x20;
loop_2:
        temp_a0 = phi_a0 - 1;
        temp_v1 = phi_v1 + 1;
        temp_v1->unk-1 = (u8) *phi_v0;
        phi_v0 = phi_v0 + 1;
        phi_v1 = temp_v1;
        phi_a0 = temp_a0;
        if (temp_a0 != 0) {
            goto loop_2;
        }
        phi_v0_2 = (void *)0x803AAAB4;
        phi_v1_2 = (void *)0x8007C570;
        phi_a0_2 = 0x400;
loop_4:
        temp_a0_2 = phi_a0_2 - 4;
        temp_v1_2 = phi_v1_2 + 4;
        temp_v1_2->unk-4 = (u8) phi_v0_2->unk0;
        temp_v0 = phi_v0_2 + 4;
        temp_v1_2->unk-3 = (u8) phi_v0_2->unk1;
        temp_v1_2->unk-2 = (u8) temp_v0->unk-2;
        temp_v1_2->unk-1 = (u8) temp_v0->unk-1;
        phi_v0_2 = temp_v0;
        phi_v1_2 = temp_v1_2;
        phi_a0_2 = temp_a0_2;
        if (temp_a0_2 != 0) {
            goto loop_4;
        }
        func_8002E768(1, arg0);
        (void *)0x8007BAB8->unk8 = (u16) ((void *)0x8007BAB8->unk8 | 0x10);
        *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 0x80);
        *(void *)0x8007B2EC = 0x31;
        *(void *)0x8007B2F0 = (u16)3;
        *(void *)0x8007B2F2 = (u16)0x2F;
        *(void *)0x8007B2E8 = (u16)4;
        (void *)0x80085368->unk0 = 0x22;
        (void *)0x80085368->unk4 = 1;
        (void *)0x80085368->unk8 = -1;
        *(void *)0x8007BA40 = 0.0f;
        *(void *)0x8007BA44 = 14.0f;
        *(void *)0x8007BA48 = (f32) *(void *)0x800711E0;
        *(void *)0x8007BA4C = 0x108;
        (void *)0x8007BAB8->unk6 = (u16)0;
        return (void *)0x8007BAB8;
    }
    temp_t7 = (void *)0x8007BA80->unk6 + ((arg0 * 2) + 0x80050000)->unk-3D40;
    temp_v0_2 = temp_t7 & 0xFFFF;
    (void *)0x8007BA80->unk6 = temp_t7;
    phi_v0_3 = (s16) temp_v0_2;
    phi_return = (void *) temp_v0_2;
    if (temp_v0_2 >= 0x1F5) {
        (void *)0x8007BA80->unk6 = (u16)0x1F4U;
        temp_v0_3 = (u16)0x1F4U & 0xFFFF;
        phi_v0_3 = temp_v0_3;
        phi_return = (void *) temp_v0_3;
    }
    (void *)0x8007BA80->unk4 = phi_v0_3;
    return phi_return;
}

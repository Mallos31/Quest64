s32 func_2bf64(s32 arg0, s32 arg1, ? arg2, u32 arg3) {
    u32 sp74;
    s32 sp70;
    u32 sp6C;
    s32 sp68;
    s8 sp5C;
    s8 sp53;
    ? sp50;
    s32 temp_ret;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_t2;
    s32 temp_v1_2;
    s8 temp_v0;
    u32 temp_t1;
    u32 temp_t3;
    u32 temp_v1;
    void *temp_s0;
    void *temp_s0_2;
    s8 phi_v0;
    void *phi_s0;
    s32 phi_s1;
    s32 phi_s3;
    s32 phi_s1_2;
    void *phi_s0_2;
    s32 phi_s2;
    s32 phi_return;

    sp70 = 0;
    sp74 = 0x3B9ACA00U;
    sp68 = 0;
    sp6C = arg3;
    sp50.unk0 = (s32) (void *)0x8005F98C->unk0;
    temp_s0 = &sp5C + 9;
    sp50.unk4 = (u8) (void *)0x8005F98C->unk4;
    phi_s0 = temp_s0;
    phi_s1 = 0;
    phi_s3 = arg0;
    if (arg0 >= 0xA) {
        phi_s0 = temp_s0;
        phi_s1 = 0;
        phi_s3 = 9;
    }
loop_2:
    phi_v0 = (u8)0;
loop_3:
    temp_t2 = (sp68 - sp70) - (sp6C < sp74);
    temp_t3 = sp6C - sp74;
    sp6C = temp_t3;
    sp68 = temp_t2;
    if (temp_t2 > 0) {
        phi_v0 = phi_v0 + 1;
        goto loop_3;
    }
    if (temp_t2 >= 0) {
        phi_v0 = phi_v0 + 1;
        goto loop_3;
    }
    temp_t1 = temp_t3 + sp74;
    sp68 = (temp_t1 < sp74) + temp_t2 + sp70;
    sp6C = temp_t1;
    *phi_s0 = phi_v0;
    temp_ret = func_00039B38(sp70, sp74, 0, 0xA);
    temp_v1 = (u32) (u64) temp_ret;
    temp_s1 = phi_s1 + 1;
    sp70 = temp_ret;
    sp74 = temp_v1;
    phi_s0 = phi_s0 - 1;
    phi_s1 = temp_s1;
    if (temp_s1 < 9) {
        goto loop_2;
    }
    temp_v1_2 = phi_s3 - 1;
    sp5C = (s8) sp6C;
    phi_return = temp_ret;
    if (temp_v1_2 >= 0) {
        phi_s1_2 = 0;
        phi_s0_2 = temp_v1_2 + &sp5C;
        phi_s2 = arg1;
loop_11:
        temp_v0 = *phi_s0_2;
        temp_s1_2 = phi_s1_2 + temp_v0;
        if ((temp_s1_2 != 0) || (phi_return = (s32) temp_v0, (phi_s0_2 == &sp5C))) {
            sp53 = temp_v0;
            phi_return = func_00030EA0(phi_s2, arg2, &sp50);
        }
        temp_s0_2 = phi_s0_2 - 1;
        phi_s1_2 = temp_s1_2;
        phi_s0_2 = temp_s0_2;
        phi_s2 = phi_s2 + 0xA;
        if ((u32) temp_s0_2 >= (u32) &sp5C) {
            goto loop_11;
        }
    }
    return phi_return;
}


s32 _Litob(void *arg0, s32 arg1) {
    ? sp78;
    s32 sp70;
    s32 sp64;
    s32 sp60;
    s32 sp50;
    s32 sp4C;
    s32 sp44;
    s32 sp40;
    s32 sp3C;
    s32 sp38;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_ret_2;
    s32 temp_s0;
    s32 temp_t1;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_t8_3;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_v0;
    s32 temp_v0_3;
    u32 temp_v1;
    u64 temp_ret;
    u64 temp_v0_2;
    s32 phi_t1;
    s32 phi_s3;
    s32 phi_s0;
    s32 phi_s0_2;
    s32 phi_s0_3;
    s32 phi_return;
    s32 phi_t0;

    temp_v0 = arg1 & 0xFF;
    if (0x58 == temp_v0) {
        phi_s3 = 0x80070ED4;
    } else {
        phi_s3 = 0x80070EC0;
    }
    if (temp_v0 == 0x6F) {
        phi_t1 = 8;
    } else {
        phi_t0 = 0x10;
        if (temp_v0 != 0x78) {
            phi_t0 = 0x10;
            if (0x58 != temp_v0) {
                phi_t0 = 0xA;
            }
        }
        phi_t1 = phi_t0;
    }
    temp_t8 = arg0->unk0;
    temp_t9 = arg0->unk4;
    sp60 = temp_t8;
    sp40 = temp_t8;
    sp44 = temp_t9;
    sp64 = temp_t9;
    if ((temp_v0 == 0x64) || (temp_v0 == 0x69)) {
        if (sp40 <= 0) {
            if (sp40 >= 0) {

            } else {
                temp_t8_2 = ~sp60 + (sp64 == 0);
                sp64 = -sp64;
                sp60 = temp_t8_2;
            }
        }
    } else {

    }
    if (((sp60 != 0) || (sp64 != 0)) || (phi_s0 = 0x18, (arg0->unk24 != 0))) {
        sp4C = 0x17;
        sp70 = phi_t1;
        *(&sp78 + 0x17) = (u8) *((u32) func_80039AFC(sp60, sp64, phi_t1 >> 0x1F, phi_t1) + phi_s3);
        phi_s0 = 0x17;
    } else {

    }
    sp70 = phi_t1;
    temp_ret = func_80039B38(sp60, sp64, phi_t1 >> 0x1F, phi_t1);
    temp_v0_2 = temp_ret;
    temp_v1 = (u32) temp_ret;
    temp_t1 = phi_t1;
    arg0->unk4 = (s32) temp_v1;
    arg0->unk0 = (s32) temp_v0_2;
    phi_s0_3 = phi_s0;
    if ((s32) temp_v0_2 >= 0) {
        if (((s32) temp_v0_2 > 0) || (phi_s0_3 = phi_s0, (temp_v1 != 0))) {
            phi_s0_3 = phi_s0;
            if (phi_s0 > 0) {
                sp3C = temp_t1;
                sp38 = temp_t1 >> 0x1F;
                sp40 = arg0->unk0;
                sp44 = arg0->unk4;
                phi_s0_2 = phi_s0;
loop_24:
                func_80049D60(&sp50, sp40, sp44, sp38, sp3C);
                temp_a0 = phi_s0_2 - 1;
                arg0->unk0 = sp50;
                arg0->unk4 = sp54;
                *(&sp78 + temp_a0) = (u8) *(sp5C + phi_s3);
                temp_t8_3 = arg0->unk0;
                temp_t9_2 = arg0->unk4;
                sp40 = temp_t8_3;
                sp44 = temp_t9_2;
                phi_s0_3 = temp_a0;
                if (temp_t8_3 >= 0) {
                    if ((temp_t8_3 > 0) || (phi_s0_3 = temp_a0, (temp_t9_2 != 0))) {
                        phi_s0_2 = temp_a0;
                        phi_s0_3 = temp_a0;
                        if (temp_a0 > 0) {
                            goto loop_24;
                        }
                    } else {

                    }
                }
            }
        } else {

        }
    }
    temp_a2 = 0x18 - phi_s0_3;
    arg0->unk14 = temp_a2;
    temp_ret_2 = func_8003FB20(arg0->unk8, &sp78 + phi_s0_3, temp_a2);
    temp_a1 = arg0->unk14;
    temp_a0_2 = arg0->unk24;
    if (temp_a1 < temp_a0_2) {
        arg0->unk10 = (s32) (temp_a0_2 - temp_a1);
    }
    phi_return = temp_ret_2;
    if (temp_a0_2 < 0) {
        phi_return = temp_ret_2;
        if ((arg0->unk30 & 0x14) == 0x10) {
            temp_v0_3 = arg0->unk10;
            temp_s0 = ((arg0->unk28 - arg0->unkC) - temp_v0_3) - temp_a1;
            phi_return = temp_v0_3;
            if (temp_s0 > 0) {
                arg0->unk10 = (s32) (temp_v0_3 + temp_s0);
                phi_return = temp_v0_3;
            }
        }
    }
    return phi_return;
}

s32 func_80047F80(void) {
    s32 temp_ret;
    s32 temp_ret_2;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s2_3;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s3_3;
    s32 temp_t7;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1;
    s32 temp_v1_2;
    s8 temp_t6;
    void *temp_s1;
    s32 phi_s3;
    s32 phi_v0;
    void *phi_s1;
    s32 phi_s3_2;
    s8 phi_s4;
    s32 phi_s2;
    void *phi_s1_2;
    s32 phi_s2_2;
    void *phi_s1_3;
    s32 phi_s2_3;
    void *phi_s1_4;
    s32 phi_v0_2;
    s32 phi_v1;
    s32 phi_s2_4;
    s32 phi_s3_3;
    s32 phi_s3_4;
    s32 phi_return;

    temp_s2 = (s32) (saved_reg_s2 << 0x10) >> 0x10;
    temp_s3 = (s32) (saved_reg_s3 << 0x10) >> 0x10;
    temp_t6 = saved_reg_s4 & 0xFF;
    phi_s3 = temp_s3;
    phi_s1 = saved_reg_s1;
    if (temp_s3 <= 0) {
        phi_s3 = 1;
        phi_s1 = (void *)0x80072380;
    }
    if ((0x66 != temp_t6) && (0x67 != temp_t6)) {
        if (((temp_t6 == 0x47) && (temp_s2 >= -4)) && (temp_s2 < saved_reg_s0->unk24)) {
block_7:
            temp_s2_2 = (s32) ((temp_s2 + 1) << 0x10) >> 0x10;
            if (0x66 != temp_t6) {
                temp_v0_2 = saved_reg_s0->unk24;
                phi_v0_2 = temp_v0_2;
                if ((saved_reg_s0->unk30 & 8) == 0) {
                    phi_v0_2 = temp_v0_2;
                    if (phi_s3 < temp_v0_2) {
                        saved_reg_s0->unk24 = phi_s3;
                        phi_v0_2 = phi_s3;
                    }
                }
                temp_t8 = phi_v0_2 - temp_s2_2;
                saved_reg_s0->unk24 = temp_t8;
                if (temp_t8 < 0) {
                    saved_reg_s0->unk24 = 0;
                }
            }
            if (temp_s2_2 <= 0) {
                temp_v1 = -temp_s2_2;
                *(saved_reg_s0->unk8 + saved_reg_s0->unk14) = (u8)0x30;
                saved_reg_s0->unk14 = (s32) (saved_reg_s0->unk14 + 1);
                if ((saved_reg_s0->unk24 > 0) || ((saved_reg_s0->unk30 & 8) != 0)) {
                    *(saved_reg_s0->unk8 + saved_reg_s0->unk14) = (u8)0x2E;
                    saved_reg_s0->unk14 = (s32) (saved_reg_s0->unk14 + 1);
                } else {

                }
                phi_v1 = temp_v1;
                phi_s2_4 = temp_s2_2;
                if (saved_reg_s0->unk24 < temp_v1) {
                    temp_s2_3 = (s32) (-saved_reg_s0->unk24 << 0x10) >> 0x10;
                    phi_v1 = -temp_s2_3;
                    phi_s2_4 = temp_s2_3;
                }
                temp_t8_2 = saved_reg_s0->unk24 + phi_s2_4;
                saved_reg_s0->unk18 = phi_v1;
                saved_reg_s0->unk24 = temp_t8_2;
                phi_s3_3 = phi_s3;
                if (temp_t8_2 < phi_s3) {
                    phi_s3_3 = (s32) (temp_t8_2 << 0x10) >> 0x10;
                }
                saved_reg_s0->unk1C = phi_s3_3;
                temp_ret = func_8003FB20(saved_reg_s0->unk8 + saved_reg_s0->unk14, phi_s1, phi_s3_3);
                saved_reg_s0->unk20 = (s32) (saved_reg_s0->unk24 - phi_s3_3);
                phi_return = temp_ret;
            } else {
                if (phi_s3 < temp_s2_2) {
                    func_8003FB20(saved_reg_s0->unk8 + saved_reg_s0->unk14, phi_s1, phi_s3);
                    saved_reg_s0->unk14 = (s32) (saved_reg_s0->unk14 + phi_s3);
                    saved_reg_s0->unk18 = (s32) (temp_s2_2 - phi_s3);
                    if ((saved_reg_s0->unk24 > 0) || ((saved_reg_s0->unk30 & 8) != 0)) {
                        *(saved_reg_s0->unk8 + saved_reg_s0->unk14) = (u8)0x2E;
                        saved_reg_s0->unk1C = (s32) (saved_reg_s0->unk1C + 1);
                    } else {

                    }
                    saved_reg_s0->unk20 = saved_reg_s0->unk24;
                } else {
                    func_8003FB20(saved_reg_s0->unk8 + saved_reg_s0->unk14, phi_s1, temp_s2_2);
                    saved_reg_s0->unk14 = (s32) (saved_reg_s0->unk14 + temp_s2_2);
                    temp_s3_3 = (s32) ((phi_s3 - temp_s2_2) << 0x10) >> 0x10;
                    if ((saved_reg_s0->unk24 > 0) || ((saved_reg_s0->unk30 & 8) != 0)) {
                        *(saved_reg_s0->unk8 + saved_reg_s0->unk14) = (u8)0x2E;
                        saved_reg_s0->unk14 = (s32) (saved_reg_s0->unk14 + 1);
                    } else {

                    }
                    phi_s3_4 = temp_s3_3;
                    if (saved_reg_s0->unk24 < temp_s3_3) {
                        phi_s3_4 = (s32) (saved_reg_s0->unk24 << 0x10) >> 0x10;
                    }
                    temp_ret_2 = func_8003FB20(saved_reg_s0->unk8 + saved_reg_s0->unk14, temp_s2_2 + phi_s1, phi_s3_4);
                    saved_reg_s0->unk14 = (s32) (saved_reg_s0->unk14 + phi_s3_4);
                    saved_reg_s0->unk18 = (s32) (saved_reg_s0->unk24 - phi_s3_4);
                    phi_return = temp_ret_2;
                }
            }
        } else {
            if ((0x67 == temp_t6) || (phi_s4 = temp_t6, (temp_t6 == 0x47))) {
                temp_v0 = saved_reg_s0->unk24;
                phi_v0 = temp_v0;
                if (phi_s3 < temp_v0) {
                    saved_reg_s0->unk24 = phi_s3;
                    phi_v0 = phi_s3;
                }
                temp_t7 = phi_v0 - 1;
                saved_reg_s0->unk24 = temp_t7;
                if (temp_t7 < 0) {
                    saved_reg_s0->unk24 = 0;
                }
                phi_s4 = (u8)0x45;
                if (0x67 == temp_t6) {
                    phi_s4 = (u8)0x65;
                }
            } else {

            }
            *(saved_reg_s0->unk8 + saved_reg_s0->unk14) = (u8) *phi_s1;
            saved_reg_s0->unk14 = (s32) (saved_reg_s0->unk14 + 1);
            if ((saved_reg_s0->unk24 > 0) || ((saved_reg_s0->unk30 & 8) != 0)) {
                *(saved_reg_s0->unk8 + saved_reg_s0->unk14) = (u8)0x2E;
                saved_reg_s0->unk14 = (s32) (saved_reg_s0->unk14 + 1);
            } else {

            }
            if (saved_reg_s0->unk24 > 0) {
                temp_s3_2 = (s32) ((phi_s3 - 1) << 0x10) >> 0x10;
                phi_s3_2 = temp_s3_2;
                if (saved_reg_s0->unk24 < temp_s3_2) {
                    phi_s3_2 = (s32) (saved_reg_s0->unk24 << 0x10) >> 0x10;
                }
                func_8003FB20(saved_reg_s0->unk8 + saved_reg_s0->unk14, phi_s1 + 1, phi_s3_2);
                saved_reg_s0->unk14 = (s32) (saved_reg_s0->unk14 + phi_s3_2);
                saved_reg_s0->unk18 = (s32) (saved_reg_s0->unk24 - phi_s3_2);
            }
            temp_s1 = (saved_reg_s0->unk8 + saved_reg_s0->unk14) + 1;
            temp_s1->unk-1 = phi_s4;
            if (temp_s2 >= 0) {
                temp_s1->unk0 = (u8)0x2B;
                phi_s2 = temp_s2;
                phi_s1_2 = temp_s1 + 1;
            } else {
                temp_s1->unk0 = (u8)0x2D;
                phi_s2 = (s32) (-temp_s2 << 0x10) >> 0x10;
                phi_s1_2 = temp_s1 + 1;
            }
            phi_s2_3 = phi_s2;
            phi_s1_4 = phi_s1_2;
            if (phi_s2 >= 0x64) {
                phi_s2_2 = phi_s2;
                phi_s1_3 = phi_s1_2;
                if (phi_s2 >= 0x3E8) {
                    *phi_s1_2 = (s8) ((phi_s2 / 0x3E8) + 0x30);
                    phi_s2_2 = (s32) ((phi_s2 % 0x3E8) << 0x10) >> 0x10;
                    phi_s1_3 = phi_s1_2 + 1;
                }
                *phi_s1_3 = (s8) ((phi_s2_2 / 0x64) + 0x30);
                phi_s2_3 = (s32) ((phi_s2_2 % 0x64) << 0x10) >> 0x10;
                phi_s1_4 = phi_s1_3 + 1;
            }
            phi_s1_4->unk0 = (s8) ((phi_s2_3 / 0xA) + 0x30);
            phi_s1_4->unk1 = (s8) (((s32) ((phi_s2_3 % 0xA) << 0x10) >> 0x10) + 0x30);
            saved_reg_s0->unk1C = (s32) (((phi_s1_4 + 2) - saved_reg_s0->unk8) - saved_reg_s0->unk14);
            phi_return = 0xA;
        }
    } else {
        goto block_7;
    }
    if ((saved_reg_s0->unk30 & 0x14) == 0x10) {
        temp_v1_2 = saved_reg_s0->unk28;
        temp_v0_3 = (((saved_reg_s0->unkC + saved_reg_s0->unk14) + saved_reg_s0->unk18) + saved_reg_s0->unk1C) + saved_reg_s0->unk20;
        phi_return = temp_v0_3;
        if (temp_v0_3 < temp_v1_2) {
            saved_reg_s0->unk10 = (s32) (temp_v1_2 - temp_v0_3);
            phi_return = temp_v0_3;
        }
    }
    return phi_return;
}

void func_800484E8(void) {

}

Failed to decompile function func_800484F0:

Label L80048890 refers to a delay slot; this is currently not supported.
Please modify the assembly to work around it (e.g. copy the instruction
to all jump sources and move the label, or add a nop to the delay slot).

void *func_80048A40(void *arg0, void *arg1, s32 arg2) {
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a3_2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v0;
    void *phi_v1;
    s32 phi_a3;
    void *phi_v0_2;
    void *phi_v1_2;
    s32 phi_a3_2;
    void *phi_return;

    phi_return = arg0;
    if (arg2 > 0) {
        temp_a1 = arg2 & 3;
        phi_v0 = arg0;
        phi_v1 = arg1;
        phi_a3 = 0;
        phi_v0_2 = arg0;
        phi_v1_2 = arg1;
        phi_a3_2 = 0;
        if (((temp_a1 == 0) || (temp_a3 = phi_a3 + 1, temp_v1 = phi_v1 + 1, temp_v0 = phi_v0 + 1, temp_v1->unk-1 = (u8) *phi_v0, phi_v0 = temp_v0, phi_v1 = temp_v1, phi_a3 = temp_a3, (temp_a1 != temp_a3))) || (phi_v0_2 = temp_v0, phi_v1_2 = temp_v1, phi_a3_2 = temp_a3, phi_return = temp_v0, (temp_a3 != arg2))) {
loop_4:
            temp_a3_2 = phi_a3_2 + 4;
            temp_v1_2 = phi_v1_2 + 4;
            temp_v1_2->unk-4 = (u8) phi_v0_2->unk0;
            temp_v0_2 = phi_v0_2 + 4;
            temp_v1_2->unk-3 = (u8) phi_v0_2->unk1;
            temp_v1_2->unk-2 = (u8) temp_v0_2->unk-2;
            temp_v1_2->unk-1 = (u8) temp_v0_2->unk-1;
            phi_v0_2 = temp_v0_2;
            phi_v1_2 = temp_v1_2;
            phi_a3_2 = temp_a3_2;
            phi_return = temp_v0_2;
            if (temp_a3_2 != arg2) {
                goto loop_4;
            }
        } else {

        }
    }
    return phi_return;
}

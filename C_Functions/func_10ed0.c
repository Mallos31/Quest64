u16 func_10ed0(void) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_t7_2;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v1_2;
    u16 temp_a1;
    u16 temp_ret;
    u16 temp_t1;
    u16 temp_v0_2;
    void *temp_v1;
    s32 phi_a0;
    u16 phi_return;
    u16 phi_return_2;

    func_00010564(*(void *)0x800859D8, *(void *)0x800859E4);
    temp_a0 = *(void *)0x8008538C;
    if (temp_a0 != 0) {
        temp_t6 = temp_a0 - 1;
        *(void *)0x8008538C = temp_t6;
        phi_a0 = temp_t6;
        if (temp_t6 < 0) {
            *(void *)0x8008538C = 0;
            phi_a0 = 0;
        }
        phi_return_2 = func_00010EC4(phi_a0, 0x80080000);
    } else {
        temp_a0_2 = *(void *)0x80085380;
        temp_v1 = (temp_a0_2 * 0xC) + 0x8004C430;
        temp_v0 = *(void *)0x800859D8;
        phi_return_2 = (u16) temp_v0;
        if (temp_v0 >= temp_v1->unk0) {
            if ((temp_a0_2 != 0) || (phi_return_2 = (u16) temp_v0, ((temp_v0 < *(void *)0x80085384) != 0))) {
                temp_ret = func_00010E70(temp_v1->unk8, (temp_v1->unk4 << 9) + 0x800814D8, 0x800812D8, (void *)0x80085380);
                temp_t7 = *(void *)0x80085380 + 1;
                *(void *)0x80085380 = temp_t7;
                phi_return_2 = temp_ret;
                if (temp_t7 >= 4) {
                    *(void *)0x80085380 = 0;
                    phi_return_2 = temp_ret;
                }
            } else {

            }
        }
    }
    if ((*(void *)0x80084EE0 & 5) != 0) {
        phi_return = phi_return_2;
        if ((*(void *)0x8008C592 & 1) == 0) {
            phi_return = phi_return_2;
            if ((*(void *)0x8007B2E4 & 3) == 0) {
                phi_return = (u16) (void *)0x800859D0;
                if (*(void *)0x8008C638 == 0) {
                    temp_t8 = *(void *)0x800859D0 + 1;
                    *(void *)0x800859D0 = temp_t8;
                    temp_a0_3 = *(void *)0x800859D4;
                    if (temp_t8 >= temp_a0_3) {
                        temp_a1 = *(void *)0x800859E0;
                        *(void *)0x800859D0 = (s32) (temp_t8 - temp_a0_3);
                        if ((s32) temp_a1 < 0x3E7) {
                            *(void *)0x800859E0 = (u16) (temp_a1 + 1);
                        }
                    }
                    *(void *)0x800859D8 = (s32) *(void *)0x800859D0;
                    phi_return = (u16) (void *)0x800859D0;
                }
            }
        }
    } else {
        phi_return = phi_return_2;
        if ((*(void *)0x80084F12 & 1) != 0) {
            phi_return = phi_return_2;
            if (*(void *)0x8008C638 == 0) {
                temp_t7_2 = *(void *)0x800859D8 + 1;
                *(void *)0x800859D8 = temp_t7_2;
                temp_v1_2 = *(void *)0x800859DC;
                phi_return = phi_return_2;
                if (temp_t7_2 >= temp_v1_2) {
                    *(void *)0x800859D8 = (s32) (temp_t7_2 - temp_v1_2);
                    phi_return = phi_return_2;
                }
            }
        }
    }
    temp_t1 = *(void *)0x80085388 + 1;
    *(void *)0x80085388 = temp_t1;
    if ((temp_t1 & 0xFFFF) >= 0x709) {
        temp_v0_2 = *(void *)0x800859E2;
        *(void *)0x80085388 = (u16)0U;
        phi_return = temp_v0_2;
        if ((s32) temp_v0_2 < 0xEA23) {
            *(void *)0x800859E2 = (u16) (temp_v0_2 + 1);
            phi_return = temp_v0_2;
        }
    }
    return phi_return;
}

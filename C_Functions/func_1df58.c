void func_1df58(void) {
    s32 temp_v1;
    u16 temp_a2;
    u16 temp_t4;
    u16 temp_t6;
    u16 temp_t8;
    u16 temp_v0;
    void *temp_a0;
    u16 phi_v1;
    u16 phi_v1_2;
    u16 phi_a2;
    u16 phi_a2_2;

    func_0001817C();
    temp_t4 = *(void *)0x8008C592;
    if ((temp_t4 & 1) != 0) {
        if ((temp_t4 & 2) == 0) {
            temp_v0 = *(void *)0x8008C59A;
            phi_a2_2 = temp_v0;
            if (temp_v0 != 0) {
                phi_v1 = *(void *)0x8008C598;
                phi_a2 = temp_v0;
loop_4:
                temp_t8 = phi_v1 + 1;
                temp_v1 = temp_t8 & 0xFFFF;
                *(void *)0x8008C598 = temp_t8;
                phi_v1_2 = (u16) temp_v1;
                if (temp_v1 >= (s32) temp_v0) {
                    *(void *)0x8008C598 = (u16)0U;
                    phi_v1_2 = 0 & 0xFFFF;
                }
                temp_a0 = (*((phi_v1_2 * 2) + 0x8007D0B0) * 0x128) + 0x8007C998;
                if ((temp_a0->unkA == 0) || (phi_a2_2 = phi_a2, (-1 == temp_a0->unk74))) {
                    temp_a2 = phi_a2 - 1;
                    phi_v1 = phi_v1_2;
                    phi_a2 = temp_a2;
                    phi_a2_2 = temp_a2;
                    if (temp_a2 != 0) {
                        goto loop_4;
                    }
                } else {

                }
            }
            if (phi_a2_2 == 0) {
                *(void *)0x8008C592 = (u16) (temp_t4 | 0x400);
            }
            *(void *)0x8008C594 = (u16)0x14;
        } else {
            *(void *)0x8008C594 = (u16)0;
        }
        func_00019CA4(*(void *)0x8008C55E);
        temp_t6 = *(void *)0x8008C592 ^ 2;
        *(void *)0x8008C592 = temp_t6;
        *(void *)0x8008C592 = (u16) (temp_t6 | 4);
    }
}

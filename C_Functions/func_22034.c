s32 func_22034(s32 arg0) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2_2;
    u8 temp_a0;
    void *temp_a2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    u8 phi_a0;
    s32 phi_v1;
    void *phi_v0;
    s32 phi_v1_2;
    s32 phi_a1;
    void *phi_v0_2;
    s32 phi_a1_2;
    void *phi_v0_3;
    s32 phi_a1_3;
    void *phi_v0_4;
    s32 phi_a1_4;
    void *phi_v0_5;

    phi_v1_2 = 0;
    phi_a1 = 0x96;
    phi_v0_5 = (void *)0x8008CF78;
    if (0xFF != *(void *)0x8008CF78) {
        phi_a0 = *(void *)0x8008CF78;
        phi_v0 = (void *)0x8008CF78;
        phi_v1 = 0;
        phi_a1_4 = 0x96;
loop_2:
        temp_v0 = phi_v0 + 1;
        temp_a2 = (phi_a0 * 0xC) + 0x803A91F0;
        if (0xF == temp_a2->unk2) {
            phi_v1 = temp_a2->unk4 == (arg0 & 0xFFFF);
        }
        temp_a1 = phi_a1_4 - 1;
        phi_v1_2 = phi_v1;
        phi_a1 = temp_a1;
        phi_v0_5 = temp_v0;
        if (phi_v1 == 0) {
            temp_a0 = *temp_v0;
            phi_a0 = temp_a0;
            phi_v0 = temp_v0;
            phi_v1_2 = phi_v1;
            phi_a1 = temp_a1;
            phi_a1_4 = temp_a1;
            phi_v0_5 = temp_v0;
            if (0xFF != temp_a0) {
                goto loop_2;
            }
        }
    }
    if (phi_v1_2 != 0) {
        temp_v0_2 = phi_v0_5 - 1;
        phi_v0_4 = temp_v0_2;
        if (phi_a1 != 0) {
            temp_a2_2 = -(s32) (phi_a1 & 3);
            phi_v0_2 = temp_v0_2;
            phi_a1_2 = phi_a1;
            phi_v0_3 = temp_v0_2;
            phi_a1_3 = phi_a1;
            if (((temp_a2_2 == 0) || (temp_a1_2 = phi_a1_2 - 1, temp_v0_3 = phi_v0_2 + 1, temp_v0_3->unk-1 = (u8) phi_v0_2->unk1, phi_v0_2 = temp_v0_3, phi_a1_2 = temp_a1_2, ((temp_a2_2 + phi_a1) != temp_a1_2))) || (phi_v0_3 = temp_v0_3, phi_a1_3 = temp_a1_2, phi_v0_4 = temp_v0_3, (temp_a1_2 != 0))) {
loop_11:
                temp_a1_3 = phi_a1_3 - 4;
                temp_v0_4 = phi_v0_3 + 4;
                temp_v0_4->unk-4 = (u8) phi_v0_3->unk1;
                temp_v0_4->unk-3 = (u8) phi_v0_3->unk2;
                temp_v0_4->unk-2 = (u8) phi_v0_3->unk3;
                temp_v0_4->unk-1 = (u8) phi_v0_3->unk4;
                phi_v0_3 = temp_v0_4;
                phi_a1_3 = temp_a1_3;
                phi_v0_4 = temp_v0_4;
                if (temp_a1_3 != 0) {
                    goto loop_11;
                }
            } else {

            }
        }
        *phi_v0_4 = (u8)0xFF;
    }
    return phi_v1_2;
}

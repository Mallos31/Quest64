s32 func_21b8c(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_v0;
    s32 temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    s32 phi_a0;
    s32 phi_a1;
    s32 phi_a2;
    s32 phi_a3;

    temp_v0 = *(void *)0x8008C650;
    temp_a0 = arg0 + *(void *)0x8008C648;
    temp_a2 = arg2 + temp_a0;
    temp_a1 = arg1 + *(void *)0x8008C64C;
    if (temp_a2 >= temp_v0) {
        temp_v1 = *(void *)0x8008C654;
        temp_a3 = arg3 + temp_a1;
        if (temp_a3 >= temp_v1) {
            temp_t0 = *(void *)0x8008C658;
            if (temp_t0 >= temp_a0) {
                temp_t1 = *(void *)0x8008C65C;
                if (temp_t1 >= temp_a1) {
                    phi_a2 = temp_a2;
                    if (temp_t0 < temp_a2) {
                        phi_a2 = temp_t0;
                    }
                    phi_a3 = temp_a3;
                    if (temp_t1 < temp_a3) {
                        phi_a3 = temp_t1;
                    }
                    phi_a0 = temp_a0;
                    if (temp_a0 < temp_v0) {
                        arg4 = (arg4 - temp_a0) + temp_v0;
                        phi_a0 = temp_v0;
                    }
                    phi_a1 = temp_a1;
                    if (temp_a1 < temp_v1) {
                        arg5 = (arg5 - temp_a1) + temp_v1;
                        phi_a1 = temp_v1;
                    }
                    temp_v1_2 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v1_2 + 8);
                    temp_v1_2->unk4 = (s32) ((((phi_a0 * 4) & 0xFFF) << 0xC) | ((phi_a1 * 4) & 0xFFF));
                    temp_v1_2->unk0 = (s32) (((((phi_a2 * 4) & 0xFFF) << 0xC) | 0xE4000000) | ((phi_a3 * 4) & 0xFFF));
                    temp_v1_3 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v1_3 + 8);
                    temp_v1_3->unk0 = 0xB4000000;
                    temp_v1_3->unk4 = (s32) ((arg4 << 0x15) | ((arg5 << 5) & 0xFFFF));
                    temp_v1_4 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v1_4 + 8);
                    temp_v1_4->unk0 = 0xB3000000;
                    temp_v1_4->unk4 = (s32) ((arg6 << 0x10) | (arg7 & 0xFFFF));
                }
            }
        }
    }
    return temp_v0;
}

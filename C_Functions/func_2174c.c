void *func_2174c(s32 arg0, ? arg1, s32 arg2, void *arg3) {
    s32 temp_v1_2;
    u8 temp_v1;
    u8 temp_v1_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    u8 phi_v1;
    void *phi_v0;
    s32 phi_v1_2;
    s32 phi_s2;
    s32 phi_v1_3;
    void *phi_s1;
    void *phi_return;
    void *phi_s1_2;
    void *phi_return_2;

    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE7000000;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk0 = 0xFD100000;
    temp_v0_2->unk4 = (s32) ((arg2 * 4) + 0x803A0000)->unk6FB0;
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk0 = 0xE8000000;
    temp_v0_4 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
    temp_v0_4->unk4 = 0x7000000;
    temp_v0_4->unk0 = 0xF5000100;
    temp_v0_5 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
    temp_v0_5->unk4 = 0;
    temp_v0_5->unk0 = 0xE6000000;
    temp_v0_6 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
    temp_v0_6->unk4 = 0x703C000;
    temp_v0_6->unk0 = 0xF0000000;
    temp_v0_7 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
    temp_v0_7->unk4 = 0;
    temp_v0_7->unk0 = 0xE7000000;
    temp_v1 = *arg3;
    phi_v1 = temp_v1;
    phi_s2 = arg0;
    phi_return = temp_v0_7;
    phi_s1_2 = arg3;
    phi_return_2 = temp_v0_7;
    if (temp_v1 != 0) {
loop_1:
        if (0x20 == phi_v1) {
            phi_s1 = phi_s1_2 + 1;
            phi_s2 = phi_s2 + 6;
        } else {
            phi_v0 = (void *)0x8004D44C;
            phi_v1_2 = 0;
loop_4:
            phi_v1_3 = phi_v1_2;
            if (*phi_v0 != phi_v1) {
                temp_v1_2 = phi_v1_2 + 1;
                phi_v0 = phi_v0 + 1;
                phi_v1_2 = temp_v1_2;
                phi_v1_3 = temp_v1_2;
                if (temp_v1_2 != 0x2C) {
                    goto loop_4;
                }
            }
            phi_s1 = phi_s1_2 + 1;
            phi_s2 = phi_s2 + 6;
            phi_return_2 = func_000210FC(0x803A6F80, phi_s2, arg1, 6, 8, phi_v1_3 * 6, 0, 0x400, 0x400);
        }
        temp_v1_3 = *phi_s1;
        phi_v1 = temp_v1_3;
        phi_return = phi_return_2;
        phi_s1_2 = phi_s1;
        if (temp_v1_3 != 0) {
            goto loop_1;
        }
    }
    return phi_return;
}

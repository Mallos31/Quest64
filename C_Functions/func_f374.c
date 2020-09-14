void func_f374(s32 arg0, s32 arg1, s32 arg2, void *arg3) {
    s32 sp68;
    s32 sp60;
    s32 sp5C;
    s32 temp_a2;
    s32 temp_s5;
    u16 temp_a1;
    void *temp_a0;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_s0_4;
    void *temp_s0_5;
    void *temp_s0_6;
    void *temp_s0_7;
    void *temp_s0_8;
    void *temp_s0_9;
    void *temp_s2;
    void *temp_t2;
    void *temp_v1;
    void *phi_s6;
    s32 phi_s4;
    s32 phi_v0;
    s32 phi_t4;
    s32 phi_t1;
    s32 phi_t3;
    s32 phi_s5;

    sp68 = arg2 - 0x11;
    sp5C = ((arg2 * 8) + 0x80060000)->unk-3784;
    sp60 = ((arg2 * 4) + 0x80060000)->unk-36F4;
    if (arg1 != 0) {
        phi_s6 = arg3;
        phi_s4 = 0;
        phi_s5 = arg1;
loop_2:
        temp_s2 = *phi_s6;
        if (arg2 == (temp_s2->unk16 & 0xFF)) {
            temp_t2 = (arg2 * 2) + 0x8004C3E4;
            if (phi_s4 == 0) {
                temp_s0 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_s0 + 8);
                temp_s0->unk0 = 0x6000000;
                temp_s0->unk4 = (s32) ((sp68 * 8) + 0x80060000)->unk-3700;
                phi_s4 = phi_s4 + 1;
            }
            temp_s0_2 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_s0_2 + 8);
            temp_s0_2->unk0 = 0xFD500000;
            temp_s0_2->unk4 = (s32) *(sp60 + ((((s32) temp_s2->unk14 >> 1) & 7) * 4));
            temp_v1 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
            temp_v1->unk4 = 0x7000000;
            temp_v1->unk0 = 0xF5500000;
            temp_a0 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_a0 + 8);
            temp_a0->unk4 = 0;
            temp_a0->unk0 = 0xE6000000;
            temp_s0_3 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_s0_3 + 8);
            temp_s0_3->unk0 = 0xF3000000;
            temp_a1 = temp_t2->unk-22;
            temp_a2 = ((s32) ((temp_a1 << 5) + 1) >> 1) - 1;
            phi_t3 = 0x7FF;
            if (temp_a2 < 0x7FF) {
                phi_t3 = temp_a2;
            }
            phi_v0 = (s32) temp_a1 >> 3;
            if ((s32) temp_a1 < 0) {
                phi_v0 = (s32) (temp_a1 + 7) >> 3;
            }
            if (phi_v0 <= 0) {
                phi_t4 = 1;
            } else {
                phi_t4 = phi_v0;
            }
            if (phi_v0 <= 0) {
                phi_t1 = 1;
            } else {
                phi_t1 = phi_v0;
            }
            temp_s0_3->unk4 = (s32) (((((s32) (phi_t4 + 0x7FF) / phi_t1) & 0xFFF) | 0x7000000) | ((phi_t3 & 0xFFF) << 0xC));
            temp_s0_4 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_s0_4 + 8);
            temp_s0_4->unk4 = 0;
            temp_s0_4->unk0 = 0xE7000000;
            temp_s0_5 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_s0_5 + 8);
            temp_s0_5->unk0 = (s32) (((((s32) (temp_t2->unk-22 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000);
            temp_s0_5->unk4 = 0;
            temp_s0_6 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_s0_6 + 8);
            temp_s0_6->unk0 = 0xF2000000;
            temp_s0_6->unk4 = (s32) (((((temp_t2->unk-22 - 1) * 4) & 0xFFF) << 0xC) | 0x7C);
            func_00023500((arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0, 0, *(void *)0x80086DEC, 0, temp_s2->unk10, temp_s2->unk0, temp_s2->unk4, temp_s2->unk8);
            temp_s0_7 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_s0_7 + 8);
            temp_s0_7->unk0 = 0x1020040;
            temp_s0_7->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0xC0) + 0x2000000);
            *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
            temp_s0_8 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_s0_8 + 8);
            temp_s0_8->unk0 = 0xFB000000;
            temp_s0_8->unk4 = (?32) ((temp_s2->unk14 & 3) + 0x80050000)->unk-3C18;
            temp_s0_9 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_s0_9 + 8);
            temp_s0_9->unk0 = 0x6000000;
            temp_s0_9->unk4 = sp5C;
            temp_s2->unk14 = (s16) (temp_s2->unk14 + 1);
            *(void *)0x80084F34 = (s32) (*(void *)0x80084F34 + 1);
        }
        temp_s5 = phi_s5 - 1;
        phi_s6 = phi_s6 + 4;
        phi_s5 = temp_s5;
        if (temp_s5 != 0) {
            goto loop_2;
        }
    }
}

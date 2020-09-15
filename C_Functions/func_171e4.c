void func_171e4(void *arg0, void *arg1) {
    s32 sp20;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_lo;
    s32 temp_t2;
    s32 temp_t7;
    u16 temp_a0;
    u16 temp_a0_2;
    u16 temp_a2_2;
    void *temp_a2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    s32 phi_a3;

    temp_a2 = arg0;
    if ((arg1->unk5E & 1) != 0) {
        arg0 = temp_a2;
        *(void *)0x800871DC = (void *) ((func_0000B140(arg1, temp_a2) * 0x128) + 0x8007C998);
        temp_lo = arg1->unk64->unk6 * arg0->unk2C->unkC;
        temp_a1 = (temp_lo / 0x64) & 0xFFFF;
        sp20 = temp_a1;
        temp_v1 = *(void *)0x800871DC;
        temp_t7 = (temp_a1 + func_00022FD0(temp_a1 >> 2, temp_a1, arg0, temp_lo)) & 0xFFFF;
        temp_v1->unkA = (u16) (temp_v1->unkA + temp_t7);
        temp_v1_2 = *(void *)0x800871DC;
        temp_a0 = arg1->unk64->unk6;
        phi_a3 = temp_t7;
        if ((s32) temp_a0 < (s32) temp_v1_2->unkA) {
            temp_v1_2->unkA = temp_a0;
            phi_a3 = temp_t7;
        }
    } else {
        temp_v0 = temp_a2->unk2C;
        temp_a3 = ((s32) (*(void *)0x8007BAC8 + temp_v0->unk6)->unk24 >> 1) + ((s32) (arg1->unk64->unk6 * temp_v0->unkC) / 0x64);
        temp_a1_2 = temp_a3 & 0xFFFF;
        sp20 = temp_a1_2;
        temp_v1_3 = arg1->unk64;
        temp_a2_2 = temp_v1_3->unk4;
        temp_t2 = (temp_a1_2 + func_00022FD0(temp_a1_2 >> 2, temp_a1_2, temp_a2, temp_a3)) & 0xFFFF;
        temp_a3_2 = temp_t2;
        phi_a3 = temp_a3_2;
        if (temp_v1_3->unk6 != temp_a2_2) {
            temp_v1_3->unk4 = (u16) (temp_a2_2 + temp_t2);
            temp_v1_4 = arg1->unk64;
            temp_a0_2 = temp_v1_4->unk6;
            if ((s32) temp_a0_2 < (s32) temp_v1_4->unk4) {
                temp_v1_4->unk4 = temp_a0_2;
            }
            temp_v0_2 = *(void *)0x8007BAC8;
            temp_v0_2->unk2A = (u16) (temp_v0_2->unk2A + 1);
            phi_a3 = temp_a3_2;
        }
    }
    func_00018DF4(arg1, 1, phi_a3, phi_a3);
}

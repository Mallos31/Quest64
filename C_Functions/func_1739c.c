void func_1739c(void *arg0, void *arg1) {
    s32 sp24;
    s32 temp_a3;
    s32 temp_t4;
    s32 temp_t9;
    u16 temp_a0;
    u16 temp_a0_2;
    u16 temp_v0;
    u16 temp_v1;
    void *temp_a1;
    void *temp_t2;
    void *temp_t3;
    void *temp_t3_2;
    void *temp_t8;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v1_2;
    s32 phi_a2;

    if ((arg1->unk5E & 1) != 0) {
        temp_t2 = (func_0000B140(arg1) * 0x128) + 0x8007C998;
        *(void *)0x800871DC = temp_t2;
        temp_a0 = temp_t2->unkC;
        temp_t4 = ((s32) ((temp_a0 * 0xB) + 0x3F) >> 6) & 0xFFFF;
        temp_t2->unkC = (u16) (temp_a0 - temp_t4);
        temp_a1 = (void *)0x8007BAB8->unk78;
        phi_a2 = temp_t4;
        if (temp_a1->unkA != temp_a1->unk8) {
            temp_t8 = *(void *)0x8007BB30;
            temp_t8->unk8 = (u16) (temp_t8->unk8 + temp_t4);
            temp_t3 = *(void *)0x8007BB30;
            temp_v0 = temp_t3->unkA;
            if ((s32) temp_v0 < (s32) temp_t3->unk8) {
                temp_t3->unk8 = temp_v0;
            }
            temp_v0_2 = (void *)0x8007BAB8->unk10;
            temp_v0_2->unk2A = (u16) (temp_v0_2->unk2A + 1);
            phi_a2 = temp_t4;
        }
    } else {
        temp_v0_3 = arg1->unk64;
        temp_v1 = temp_v0_3->unk8;
        temp_a3 = (temp_v1 * 0xB) + 0x3F;
        temp_t9 = (temp_a3 >> 6) & 0xFFFF;
        temp_v0_3->unk8 = (u16) (temp_v1 - temp_t9);
        sp24 = temp_t9;
        temp_t3_2 = (func_0000B140(arg1, temp_a3) * 0x128) + 0x8007C998;
        *(void *)0x800871DC = temp_t3_2;
        temp_t3_2->unkC = (u16) (temp_t3_2->unkC + sp24);
        temp_v1_2 = *(void *)0x800871DC;
        temp_a0_2 = arg0->unk24->unk64->unkA;
        phi_a2 = sp24;
        if ((s32) temp_a0_2 < (s32) temp_v1_2->unkC) {
            temp_v1_2->unkC = temp_a0_2;
            phi_a2 = sp24;
        }
    }
    func_00018DF4(arg1, 1, phi_a2);
}

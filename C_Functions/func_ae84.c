void func_ae84(void *arg0, void *arg1, void *arg2) {
    s16 temp_v0;
    s32 temp_t6;
    void *phi_a0;
    void *phi_a1;
    void *phi_a2;
    s16 phi_a3;

    temp_t6 = arg2->unk0 & 0x8000;
    phi_a0 = arg0;
    phi_a1 = arg1;
    phi_a2 = arg2;
    if (temp_t6 != 0) {
        phi_a0 = arg1;
        phi_a1 = NULL;
        phi_a2 = (void *)1;
        if ((arg0->unk90 & 0x40) != 0) {
            arg0->unk0 = (u16)0;
            func_0001D8B0(arg1, NULL, (void *)1, 0, 1, 1);
            func_0001D358(arg1);
            return;
        }
    }
    if (temp_t6 != 0) {
        arg0->unk0 = (u16)5;
    } else {
        arg0->unk0 = (u16)4;
    }
    arg0->unk6 = (u16)0;
    arg0->unk8 = (u16) (arg0->unk8 & 0xFFF7);
    arg0->unk2 = (u16) arg2->unk4;
    arg1->unk60 = (u16)1;
    arg1->unk10 = func_00023210((void *)0x8007BAB8->unk14 - arg1->unk0, (void *)0x8007BAB8->unk1C - arg1->unk8, phi_a0, phi_a1, phi_a2);
    temp_v0 = arg2->unkA;
    if (temp_v0 == -1) {
        phi_a3 = (u16)0;
    } else {
        phi_a3 = temp_v0;
    }
    func_0001D8B0(arg1, arg2->unk8, 1, phi_a3, 1, 1);
    func_000140EC(arg2->unk4 + 0xF, arg1);
    if ((s16) arg0->unk2 == 0) {
        arg0->unk2 = (u16)1U;
    }
    if ((*(void *)0x8008C592 & 0x100) != 0) {
        func_0000B2C8(arg2->unk0 & 0xFF, arg0);
    }
}

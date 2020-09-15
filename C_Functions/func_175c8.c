void *func_175c8(s32 arg0, ? arg1) {
    void *temp_v0;
    void *temp_v1;
    void *phi_return;

    phi_return = (void *)0x80080000;
    if (*(void *)0x80084EE0 == 4) {
        temp_v0 = *(void *)0x80084EF8;
        phi_return = temp_v0;
        if (temp_v0 != -1) {
            phi_return = temp_v0;
            if (((*(void *)0x80084F1C)->unk14 & 4) == 0) {
                (void *)0x80085368->unk0 = temp_v0;
                (void *)0x80085368->unk4 = (s32) *(void *)0x80084EFC;
                (void *)0x80085368->unk8 = (s32) *(void *)0x80084F00;
                *(void *)0x8007BA4C = 0x108;
                temp_v1 = (void *)0x8007BAB8->unk10;
                (void *)0x8007BAB8->unk6 = (u16)0;
                temp_v1->unk2A = (u16) (temp_v1->unk2A + 1);
                *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 0x80);
                *(void *)0x8007B2EC = 0x1E;
                phi_return = temp_v0;
            }
        }
    }
    return phi_return;
}

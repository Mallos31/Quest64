void *func_17718(s32 arg0, ? arg1) {
    s32 temp_v1;
    void *temp_v0;
    void *temp_v1_2;
    void *phi_return;

    phi_return = (void *)0x80080000;
    if ((*(void *)0x80084EE0 & 8) != 0) {
        temp_v0 = *(void *)0x80084F04;
        phi_return = temp_v0;
        if (temp_v0 != -1) {
            phi_return = temp_v0;
            if (((*(void *)0x80084F1C)->unk14 & 8) == 0) {
                temp_v1 = *(void *)0x80084EE4;
                phi_return = temp_v0;
                if (0x1E != temp_v1) {
                    phi_return = temp_v0;
                    if (temp_v1 != 0x22) {
                        (void *)0x80085368->unk0 = temp_v0;
                        (void *)0x80085368->unk4 = (s32) *(void *)0x80084F08;
                        (void *)0x80085368->unk8 = (s32) *(void *)0x80084F0C;
                        *(void *)0x8007BA4C = 0x108;
                        temp_v1_2 = (void *)0x8007BAB8->unk10;
                        (void *)0x8007BAB8->unk6 = (u16)0;
                        temp_v1_2->unk2A = (u16) (temp_v1_2->unk2A + 1);
                        *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 0x80);
                        *(void *)0x8007B2EC = 0x1E;
                        phi_return = temp_v0;
                    }
                }
            }
        }
    }
    return phi_return;
}

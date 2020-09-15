void *func_1ae68(s32 arg0, s32 arg1, s32 arg2, s16 arg3, s32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 arg9, f32 argA, f32 argB) {
    s32 temp_v0;
    u16 temp_a0;
    void *temp_t0;
    void *temp_t9;
    void *temp_v1;
    s32 phi_v0;
    void *phi_v1;
    void *phi_v1_2;

    phi_v0 = 0x1F;
    phi_v1 = (void *)0x800875A8;
    phi_v1_2 = (void *)0x800875A8;
    if (*(void *)0x800875A8 != 0) {
loop_1:
        temp_v0 = phi_v0 - 1;
        temp_v1 = phi_v1 + 0x58;
        phi_v1_2 = temp_v1;
        if (temp_v0 != 0) {
            phi_v0 = temp_v0;
            phi_v1 = temp_v1;
            phi_v1_2 = temp_v1;
            if (*temp_v1 != 0) {
                goto loop_1;
            }
        }
    }
    phi_v1_2->unkC = arg5;
    phi_v1_2->unk10 = arg6;
    phi_v1_2->unk14 = arg7;
    phi_v1_2->unk18 = arg8;
    temp_t0 = (arg0 * 0xC) + 0x800EB9EC;
    phi_v1_2->unk1C = arg9;
    phi_v1_2->unk20 = argA;
    phi_v1_2->unk28 = 0.0f;
    phi_v1_2->unk2C = 0.0f;
    phi_v1_2->unk30 = 1.0f;
    phi_v1_2->unk24 = argB;
    phi_v1_2->unk38 = (s32) temp_t0->unk0;
    temp_a0 = phi_v1_2->unk3A;
    phi_v1_2->unk3C = (s32) temp_t0->unk4;
    phi_v1_2->unk4 = (u16)0;
    phi_v1_2->unk6 = arg3;
    phi_v1_2->unk40 = (s32) temp_t0->unk8;
    phi_v1_2->unk40 = (s32) ((arg1 * 4) + 0x800CB4E0);
    phi_v1_2->unk0 = temp_a0;
    phi_v1_2->unk2 = temp_a0;
    phi_v1_2->unk34 = 0;
    temp_t9 = (arg2 * 0x14) + 0x800DA828;
    phi_v1_2->unk8 = (s16) arg4;
    phi_v1_2->unk44 = (s32) temp_t9->unk0;
    phi_v1_2->unk48 = (s32) temp_t9->unk4;
    phi_v1_2->unk4C = (s32) temp_t9->unk8;
    phi_v1_2->unk50 = (s32) temp_t9->unkC;
    phi_v1_2->unk54 = (s32) temp_t9->unk10;
    return phi_v1_2;
}

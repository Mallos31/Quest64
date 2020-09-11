void *func_9be0(s32 arg0, f32 arg1, s32 arg2, f32 arg3, void *arg4, void *arg5) {
    void *sp28;
    f32 temp_f10;
    u16 temp_t6;
    void *temp_v1;
    void *temp_v1_2;
    f32 phi_f10;

    temp_v1 = (*(void *)0x8007D0BC)->unkC + (arg0 * 0x38);
    arg4->unk50 = (s16) temp_v1->unk2;
    sp28 = temp_v1;
    func_0001D8B0(arg4, 0, 1, 0, 1, 1);
    arg4->unk54 = func_00022FD0(0x10);
    arg4->unk24 = (f32) temp_v1->unk20;
    arg4->unk68 = (s32) (arg5 + 0x90);
    arg4->unk64 = temp_v1;
    arg4->unk28 = (f32) temp_v1->unk18;
    arg5->unk20 = temp_v1;
    arg5->unkA = (u16) temp_v1->unk6;
    arg5->unk0 = (u16)0;
    arg5->unk8 = (u16)0;
    arg5->unkC = (u16) temp_v1->unk6;
    temp_t6 = temp_v1->unkC;
    temp_f10 = (f32) temp_t6;
    phi_f10 = temp_f10;
    if ((s32) temp_t6 < 0) {
        phi_f10 = temp_f10 + 4294967296.0f;
    }
    arg5->unk10 = (f32) (((f64) phi_f10 * *(void *)0x80071150) + 17.0);
    temp_v1_2 = arg4->unk64;
    (void *)0x8007D0E0->unk0 = (f32) (temp_v1_2->unk18 * temp_v1_2->unk20);
    func_0000EE60(arg1, 0, arg5, arg2, 0xA01, (void *)0x8007D0E0);
    if (((void *)0x8007D0E0->unk18 & 0x8000) != 0) {
        if (arg4->unk64->unk0 == 0) {
            func_0000EE60((f32) ((f64) arg1 + 0.5), 0, arg5, (f32) ((f64) (bitwise f32) arg2 + 0.5), 0xA01, (void *)0x8007D0E0);
            if (((void *)0x8007D0E0->unk18 & 0x8000) != 0) {
                (void *)0x8007D0E0->unk4 = (f32) *(void *)0x8007BAD0;
            }
        } else {
            (void *)0x8007D0E0->unk4 = (f32) *(void *)0x8007BAD0;
        }
    }
    arg4->unk0 = (f32) (void *)0x8007D0E0->unk0;
    arg4->unk4 = (f32) (void *)0x8007D0E0->unk4;
    arg4->unk8 = (f32) (void *)0x8007D0E0->unk8;
    arg4->unk10 = arg3;
    arg4->unk2C = (f32) (void *)0x8007D0E0->unkC;
    arg4->unk30 = (f32) (void *)0x8007D0E0->unk10;
    arg4->unk34 = (f32) (void *)0x8007D0E0->unk14;
    arg4->unk5E = (u16)1;
    arg4->unk60 = (u16)0;
    arg4->unk62 = (u16) (void *)0x8007D0E0->unk18;
    arg5->unk90 = (u16)0;
    arg5->unk11C = (u16)0;
    arg5->unk11A = (u16)0x10;
    arg5->unk114 = (u16) arg5->unk20->unk2A;
    arg5->unk116 = (u16) arg4->unk64->unkC;
    arg5->unk120 = 1.0f;
    arg5->unk118 = (u16) arg4->unk64->unkE;
    arg5->unk124 = (f32) arg4->unk4;
    return (void *)0x8007D0E0;
}

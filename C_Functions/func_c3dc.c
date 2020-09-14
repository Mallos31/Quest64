void *func_c3dc(s32 arg0, f32 arg1, s32 arg2, f32 arg3, void *arg4) {
    f32 temp_f12;
    f64 temp_f4;
    u16 temp_t5;
    void *temp_s1;
    void *temp_s2;
    f32 phi_f12;

    temp_s2 = (arg0 * 0x38) + 0x803A9F20;
    temp_s1 = arg4 + 0x24;
    arg4->unk74 = (s16) temp_s2->unk2;
    func_0001D8B0(temp_s1, 0, 1, 0, 1, 1);
    temp_s1->unk24 = (f32) temp_s2->unk20;
    temp_s1->unk64 = temp_s2;
    temp_s1->unk68 = (void *) (arg4 + 0x90);
    temp_s1->unk28 = (f32) temp_s2->unk18;
    arg4->unk20 = temp_s2;
    arg4->unkA = (u16) temp_s2->unk6;
    arg4->unk0 = (u16)0;
    arg4->unk8 = (u16)0U;
    arg4->unkC = (u16) temp_s2->unk6;
    temp_t5 = temp_s2->unkC;
    temp_f12 = (f32) temp_t5;
    phi_f12 = temp_f12;
    if ((s32) temp_t5 < 0) {
        phi_f12 = temp_f12 + 4294967296.0f;
    }
    temp_f4 = (f64) func_00034F60(phi_f12) * *(void *)0x800711D0;
    arg4->unk90 = (u16)0;
    arg4->unk10 = (f32) (temp_f4 + *(void *)0x800711D8);
    arg4->unk114 = (u16) arg4->unk20->unk2A;
    arg4->unk116 = (u16) temp_s1->unk64->unkC;
    arg4->unk120 = 1.0f;
    arg4->unk118 = (u16) temp_s1->unk64->unkE;
    func_0000EE60(arg1, 0, arg2, 0xA00, 0x8007D110);
    temp_s1->unk0 = (f32) (void *)0x8007D110->unk0;
    temp_s1->unk4 = (f32) (void *)0x8007D110->unk4;
    temp_s1->unk8 = (f32) (void *)0x8007D110->unk8;
    if (temp_s2 == 0x803AA0A8) {
        arg4->unk8 = (u16) (arg4->unk8 | 4);
        temp_s1->unk4 = (f32) ((f64) temp_s1->unk4 - 30.0);
    }
    temp_s1->unk10 = arg3;
    temp_s1->unk2C = (f32) (void *)0x8007D110->unkC;
    temp_s1->unk30 = (f32) (void *)0x8007D110->unk10;
    temp_s1->unk5E = (u16)1;
    temp_s1->unk60 = (u16)0;
    temp_s1->unk34 = (f32) (void *)0x8007D110->unk14;
    if (temp_s2 == 0x803AA0A8) {
        temp_s1->unk5E = (u16)5;
    }
    return (void *)0x8007D110;
}

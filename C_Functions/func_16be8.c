void func_16be8(void *arg0) {
    f32 temp_f2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;

    if ((arg0->unkA & 1) == 0) {
        if ((arg0->unk2C->unk2A & 1) != 0) {
            arg0->unk1C = (f32) ((f64) arg0->unk1C - *(void *)0x800714A8);
        }
        arg0->unk10 = (f32) (arg0->unk10 + arg0->unk1C);
        if (arg0->unk2C->unk14 == 1) {
            func_0000EE60(arg0->unkC, arg0->unk10, arg0->unk14, 0xA00, 0x800871E0);
            temp_f2 = *(void *)0x800871E4;
            if (arg0->unk10 < temp_f2) {
                temp_v0 = arg0->unk34;
                arg0->unk10 = temp_f2;
                arg0->unkA = (u16) (arg0->unkA | 1);
                arg0->unk4 = (u16)8;
                arg0->unk20 = 0.0f;
                arg0->unk1C = 0.0f;
                arg0->unk18 = 0.0f;
                if (temp_v0 != 0) {
                    temp_v0->unk0 = (u16)0xF;
                    temp_v0_2 = arg0->unk34;
                    temp_v0_2->unk8 = (u16) (temp_v0_2->unk8 & 0xFFFE);
                }
                func_00013F20(1);
                func_00017FA0(arg0, arg0->unk28);
            }
        }
        if (arg0->unk2C->unk18 == 0) {
            temp_v0_3 = arg0->unk28;
            if ((temp_v0_3->unk60 & 1) == 0) {
                arg0->unkC = (f32) temp_v0_3->unk0;
                arg0->unk14 = (f32) temp_v0_3->unk8;
            }
        }
    }
}

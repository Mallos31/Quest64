void func_14880(void *arg0) {
    s32 temp_a1;
    s32 temp_t4;
    s32 temp_t7;

    temp_a1 = (void *)0x80086EE0->unk0;
    if (temp_a1 != 0) {
        if (temp_a1 != 1) {

        } else {
            temp_t4 = (void *)0x80086EE0->unk4 - 1;
            (void *)0x80086EE0->unk4 = temp_t4;
            if (temp_t4 == 0) {
                arg0->unk0 = (s32) (void *)0x80086EE0->unk8;
                arg0->unk8 = (u16) (void *)0x80086EE0->unkC;
                (void *)0x80086DC0->unk78 = (f32) (void *)0x80086EE0->unk14;
                (void *)0x80086DC0->unk7C = (f32) (void *)0x80086EE0->unk18;
            }
        }
    } else {
        temp_t7 = (void *)0x80086EE0->unk4 - 1;
        (void *)0x80086EE0->unk4 = temp_t7;
        if (temp_t7 == 0) {
            (void *)0x80086EE0->unk0 = (s32) (temp_a1 + 1);
            (void *)0x80086EE0->unk4 = 0x4B;
            arg0->unk8 = (u16) (arg0->unk8 | 0x10);
        }
    }
    func_00013008(temp_a1);
}

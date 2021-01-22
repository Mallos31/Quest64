s32 _allocatePVoice(void *arg0, void *arg1, s32 arg2) {
    void *sp24;
    s32 sp1C;
    s32 temp_a2;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a3_4;
    s32 phi_a2;
    void *phi_a3;
    s32 phi_v1;
    s32 phi_v1_2;
    s32 phi_v1_3;

    temp_a3 = arg0->unk14;
    temp_a2 = (s32) (arg2 << 0x10) >> 0x10;
    if (temp_a3 != 0) {
        *arg1 = temp_a3;
        arg0 = arg0;
        sp24 = temp_a3;
        sp1C = 0;
        func_80036820(temp_a3, temp_a2, temp_a3);
        func_80036850(sp24, arg0 + 0xC);
        phi_v1 = sp1C;
    } else {
        temp_a3_2 = arg0->unk4;
        if (temp_a3_2 != 0) {
            *arg1 = temp_a3_2;
            arg0 = arg0;
            sp24 = temp_a3_2;
            sp1C = 0;
            func_80036820(temp_a3_2, temp_a2, temp_a3_2);
            func_80036850(sp24, arg0 + 0xC);
            phi_v1 = 0;
        } else {
            temp_a3_3 = arg0->unkC;
            phi_a2 = temp_a2;
            phi_a3 = temp_a3_3;
            phi_v1 = 0;
            phi_v1_3 = 0;
            if (temp_a3_3 != 0) {
loop_5:
                phi_v1_2 = phi_v1_3;
                if (phi_a2 >= (s32) phi_a3->unk8->unk16) {
                    phi_v1_2 = phi_v1_3;
                    if (phi_a3->unkD8 == 0) {
                        *arg1 = phi_a3;
                        phi_a2 = (s32) phi_a3->unk8->unk16;
                        phi_v1_2 = 1;
                    }
                }
                temp_a3_4 = phi_a3->unk0;
                phi_a3 = temp_a3_4;
                phi_v1 = phi_v1_2;
                phi_v1_3 = phi_v1_2;
                if (temp_a3_4 != 0) {
                    goto loop_5;
                }
            }
        }
    }
    return phi_v1;
}

s32 func_800443A8(void *arg0, void *arg1, void *arg2) {
    void *sp2C;
    void *sp28;
    void *temp_a0;
    void *temp_v0;
    void *temp_v0_2;

    sp2C = NULL;
    arg1->unk16 = (s16) arg2->unk0;
    arg1->unkC = 0;
    arg1->unk1A = (s16) arg2->unk4;
    arg1->unk14 = (u16)0;
    arg1->unk8 = 0;
    arg1->unk18 = (s16) arg2->unk2;
    if (sp2C != 0) {
        temp_a0 = sp2C->unkC;
        if (_allocatePVoice(arg0, &sp2C, arg2->unk0) != 0) {
            sp2C->unkD8 = 0x200;
            sp2C->unk8->unk8 = 0;
            sp28 = temp_a0;
            temp_v0 = __allocParam(temp_a0);
            temp_v0->unk8 = (u16)0xB;
            temp_v0->unkC = 0;
            temp_v0->unk4 = (s32) arg0->unk1C;
            temp_v0->unk10 = (s32) (sp2C->unkD8 - 0x40);
            temp_a0->unk8(temp_a0, 3, temp_v0);
            temp_v0_2 = __allocParam();
            if (temp_v0_2 != 0) {
                temp_v0_2->unk8 = (u16)0xF;
                temp_v0_2->unk0 = 0;
                temp_v0_2->unk4 = (s32) (arg0->unk1C + sp2C->unkD8);
                temp_a0->unk8(temp_a0, 3, temp_v0_2);
            }
        } else {
            sp2C->unkD8 = 0;
        }
        sp2C->unk8 = arg1;
        arg1->unk8 = sp2C;
    }
    return sp2C != 0;
}

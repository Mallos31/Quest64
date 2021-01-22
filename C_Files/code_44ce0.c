void func_800440E0(void *arg0, void *arg1) {
    void *temp_a0;
    void *temp_a2;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_v0;

    temp_a2 = arg1->unk8;
    temp_a3 = arg1;
    if (temp_a2 != 0) {
        if (temp_a2->unkD8 != 0) {
            temp_v0 = __allocParam(temp_a2, temp_a3);
            temp_a3_2 = arg1;
            if (temp_v0 != 0) {
                temp_v0->unk8 = (u16)0;
                temp_v0->unk4 = (s32) (arg0->unk1C + temp_a3_2->unk8->unkD8);
                temp_v0->unkC = (void *) temp_a3_2->unk8;
                temp_a0 = temp_a3_2->unk8->unkC;
                arg1 = temp_a3_2;
                temp_a0->unk8(temp_a0, 3, temp_v0, temp_a3_2);
block_5:
                arg1->unk8 = 0;
            }
        } else {
            arg1 = temp_a3;
            _freePVoice(arg0, temp_a2, temp_a2, temp_a3);
            goto block_5;
        }
    }
}

void func_80044190(void *arg0, void *arg1, s16 arg2, s32 arg3) {
    void *sp1C;
    void *temp_a0;
    void *temp_v0;

    if (arg1->unk8 != 0) {
        temp_v0 = __allocParam();
        if (temp_v0 != 0) {
            temp_v0->unk8 = (u16)0xB;
            temp_v0->unk4 = (s32) (arg0->unk1C + arg1->unk8->unkD8);
            temp_v0->unkC = (?32) arg2;
            sp1C = temp_v0;
            sp1C->unk10 = _timeToSamplesNoRound(arg0, arg3);
            sp1C->unk0 = 0;
            temp_a0 = arg1->unk8->unkC;
            temp_a0->unk8(temp_a0, 3, sp1C);
        }
    }
}

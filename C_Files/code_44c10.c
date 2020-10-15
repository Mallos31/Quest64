void func_80044010(void *arg0, void *arg1) {
    s32 temp_a0;
    void *temp_a2;

    temp_a2 = arg0;
    arg0 = temp_a2;
    temp_a0 = func_80034160(1, temp_a2);
    arg1->unk10 = (s32) arg0->unk20;
    arg1->unk0 = (void *) arg0->unk0;
    arg0->unk0 = arg1;
    func_80034160(temp_a0, arg1, arg0);
}

void func_80044060(void *arg0, void *arg1) {
    void *temp_a0;
    void *temp_v0;

    if (arg1->unk8 != 0) {
        temp_v0 = func_80036A30();
        if (temp_v0 != 0) {
            temp_v0->unk8 = (u16)0xF;
            temp_v0->unk0 = 0;
            temp_v0->unk4 = (s32) (arg0->unk1C + arg1->unk8->unkD8);
            temp_a0 = arg1->unk8->unkC;
            temp_a0->unk8(temp_a0, 3, temp_v0, arg1);
        }
    }
}

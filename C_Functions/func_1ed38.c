f32 func_1ed38(void *arg0, void *arg1) {
    f32 temp_f0;

    arg0->unk30 = (f32) (arg0->unk30 - (((arg0->unk0 * arg1->unk8) + (arg0->unk10 * arg1->unkC)) + (arg0->unk20 * arg1->unk10)));
    temp_f0 = arg0->unk8;
    arg0->unk34 = (f32) (arg0->unk34 - (((arg0->unk4 * arg1->unk8) + (arg0->unk14 * arg1->unkC)) + (arg0->unk24 * arg1->unk10)));
    arg0->unk38 = (f32) (arg0->unk38 - (((temp_f0 * arg1->unk8) + (arg0->unk18 * arg1->unkC)) + (arg0->unk28 * arg1->unk10)));
    return temp_f0;
}

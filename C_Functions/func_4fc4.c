void func_4fc4(void *arg0, void *arg1, ? arg2) {
    u16 temp_t7;

    func_00004E58(arg1->unk128, arg1->unk12C, arg0, arg1);
    func_00005748(0xA01, arg0, arg1);
    temp_t7 = arg1->unk4 - 1;
    arg1->unk4 = temp_t7;
    if ((temp_t7 & 0xFFFF) == 0) {
        arg1->unk0 = (u16)0;
        arg0->unk20 = 0.0f;
        arg0->unk18 = 0.0f;
        arg0->unk60 = (u16) (arg0->unk60 & 0xFFFE);
    }
}

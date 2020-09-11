void func_54d0(void *arg0, void *arg1, s32 arg2) {
    u16 temp_t7;
    void *temp_a0;
    void *temp_a3;

    temp_a3 = arg0;
    temp_a0 = temp_a3;
    arg0 = temp_a3;
    func_000056D0(temp_a0, arg2, 0x8007BC30, temp_a3);
    arg0->unk18 = (f32) (void *)0x8007BC30->unk0;
    arg0->unk20 = (f32) (void *)0x8007BC30->unk4;
    func_00005748(0xA00, arg0, arg1);
    temp_t7 = arg1->unk4 - 1;
    arg1->unk4 = temp_t7;
    if ((temp_t7 & 0xFFFF) == 0) {
        arg1->unk0 = (u16)0;
        arg0->unk60 = (u16) (arg0->unk60 & 0xFFFE);
        arg0->unk10 = (f32) arg1->unk134;
    }
}

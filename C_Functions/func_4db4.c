void *func_4db4(void *arg0, void *arg1, s32 arg2) {
    u16 temp_t7;
    void *temp_a3;

    temp_a3 = arg1;
    arg1 = temp_a3;
    func_000056D0(arg0, arg2, 0x8007BC30, temp_a3);
    arg0->unk18 = (f32) (void *)0x8007BC30->unk0;
    arg0->unk20 = (f32) (void *)0x8007BC30->unk4;
    func_00005748(0xA01, arg0, arg1);
    temp_t7 = arg1->unk4 - 1;
    arg1->unk4 = temp_t7;
    if (arg1->unk120 == (temp_t7 & 0xFFFF)) {
        (void *)0x80086DC0->unk4C = 250.0f;
        (void *)0x80086DC0->unk58 = 150.0f;
        (void *)0x80086DC0->unk70 = (f32) *(void *)0x80070F58;
    }
    return (void *)0x80086DC0;
}

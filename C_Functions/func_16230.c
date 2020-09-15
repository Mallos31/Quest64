void func_16230(void *arg0, void *arg1) {
    f32 temp_f12;
    void *temp_a2;

    temp_a2 = arg1;
    (void *)0x800871D0->unk0 = 0.0f;
    (void *)0x800871D0->unk4 = 380.0f;
    temp_f12 = temp_a2->unk10;
    arg1 = temp_a2;
    func_000232F4(temp_f12, (void *)0x800871D0, temp_a2);
    arg0->unkC = (f32) (arg1->unk0 + ((void *)0x800871D0->unk0 * arg1->unk24));
    arg0->unk10 = (f32) (arg1->unk4 + (380.0f * arg1->unk24));
    arg0->unk14 = (f32) (arg1->unk8 + ((void *)0x800871D0->unk4 * arg1->unk24));
}

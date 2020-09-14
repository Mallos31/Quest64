void func_eec0(void *arg0) {
    f32 temp_f10;
    void *temp_a1;

    temp_a1 = arg0;
    temp_a1->unk14 = (s16) (temp_a1->unk14 - 1);
    if (temp_a1->unk14 == 0) {
        *(void *)0x8004C3BC = (f32) temp_a1->unk0;
        *(void *)0x8004C3C0 = (f32) temp_a1->unk4;
        *(void *)0x8004C3C4 = (f32) temp_a1->unk8;
        temp_f10 = temp_a1->unk10;
        arg0 = temp_a1;
        *(void *)0x8004C3D0 = temp_f10;
        *(void *)0x8004C3CC = (f32) *(void *)0x8004C3D0;
        func_0001B108(0x8004C3A4, temp_a1);
        arg0->unk14 = (s16) (func_00022FD0(0x96) + 0x96);
    }
}

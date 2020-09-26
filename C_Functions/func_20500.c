void func_20500(void) {
    s32 sp34;
    s32 sp30;
    void *temp_v1;

    if (func_0002413C((void *)0x8007BAB8->unk14, (f32) ((f64) (void *)0x8007BAB8->unk18 + 11.0), (void *)0x8007BAB8->unk1C, &sp34, &sp30) != 0) {
        temp_v1 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
        temp_v1->unk0 = 0x6000000;
        temp_v1->unk4 = 0x803A8C80;
        func_00020F8C(sp34, sp30 - 0x1E, 0x18, 0x1E, 0, 0, 0x400, 0x400);
    }
}

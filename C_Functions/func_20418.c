void func_20418(void) {
    s32 sp34;
    void *temp_v0;
    void *temp_v1;

    temp_v0 = ((*(void *)0x8007BA74 * 0x84) - 0x70) + 0x8007BD30;
    if (func_0002413C(temp_v0->unk0, (f32) ((f64) temp_v0->unk4 + 14.0), temp_v0->unk8, &sp34, 0x8008C644) != 0) {
        temp_v1 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
        temp_v1->unk0 = 0x6000000;
        temp_v1->unk4 = 0x803A8B90;
        func_00020F8C(sp34, *(void *)0x8008C644 - 0x1E, 0x40, 0x1D, 0, 0, 0x400, 0x400);
        return;
    }
    *(void *)0x8008C644 = 0xF0;
}

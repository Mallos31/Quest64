void *func_11758(void) {
    s32 sp1C;
    s16 temp_a0;
    s32 temp_a1;
    void *temp_v0;
    void *temp_v0_2;
    s32 phi_a0;

    phi_a0 = 0x800855E0;
    if (*(void *)0x8007B2F4 != 0) {
        phi_a0 = 0x80085618;
    }
    sp1C = phi_a0;
    func_00010CAC(phi_a0);
    func_00011768(phi_a0, 0x80085B68, 0x80085B98);
    *(void *)0x8007B318 = (s16) (void *)0x80085BC8->unk0;
    *(void *)0x8007B31A = (s16) (void *)0x80085BC8->unk4;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk0 = 0xBC000008;
    temp_a0 = *(void *)0x8007B318;
    temp_a1 = *(void *)0x8007B31A - temp_a0;
    temp_v0_2->unk4 = (s32) (((0x1F400 / temp_a1) << 0x10) | (((s32) ((-(s32) temp_a0 << 8) + 0x1F400) / temp_a1) & 0xFFFF));
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0xFF;
    temp_v0->unk0 = 0xFB000000;
    return temp_v0;
}

void *func_118ac(void) {
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f64 temp_f2;
    void *temp_v1;

    if ((*(void *)0x80084F12 & 1) != 0) {
        temp_f2 = *(void *)0x800712B0;
        func_00023570(0, 0x800855A0, 0, 0, (f32) (((((f64) (f32) *(void *)0x800859D8 * temp_f2) * 2.0) / (f64) (f32) *(void *)0x800859DC) - temp_f2));
        func_00035470(0x800855A0, 0, 0x42B40000, 0x42480000, &sp38, &sp34, &sp30);
        (void *)0x80085B98->unk0 = (s32) sp38;
        (void *)0x80085B98->unk4 = (s32) sp34;
        (void *)0x80085B98->unk8 = (s32) sp30;
    } else {
        temp_v1 = *(void *)0x800859E4;
        if (temp_v1->unk8 != 0) {
            (void *)0x80085B98->unk0 = (s32) temp_v1->unkC;
            (void *)0x80085B98->unk4 = (s32) temp_v1->unk10;
            (void *)0x80085B98->unk8 = (s32) temp_v1->unk14;
        } else {
            (void *)0x80085B98->unk0 = -0x59;
            (void *)0x80085B98->unk4 = 0x59;
            (void *)0x80085B98->unk8 = 0x14;
        }
    }
    func_000238E4(0x80086E88, 0xC2B20000, 0x42B20000, 0x41A00000, &sp38, &sp34, &sp30);
    (void *)0x80085B98->unkC = (s32) sp38;
    (void *)0x80085B98->unk10 = (s32) sp34;
    (void *)0x80085B98->unk14 = (s32) sp30;
    return (void *)0x80085B98;
}

void func_17c0c(s32 arg0, void *arg1) {
    void *temp_v0;

    if ((*(void *)0x8008C592 & 0x100) == 0) {
        temp_v0 = arg1->unk68;
        *temp_v0 = (u16) (*temp_v0 | 1);
        arg1->unk24 = (f32) ((f64) arg1->unk64->unk20 * 0.5);
        func_0001FCF8(arg1, 1, 4, -1);
        return;
    }
    func_000208B8(arg1);
}

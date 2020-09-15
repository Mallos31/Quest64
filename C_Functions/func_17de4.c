void func_17de4(s32 arg0, void *arg1) {
    void *temp_v0;
    s32 phi_v0;

    temp_v0 = arg1->unk68;
    temp_v0->unk0 = (u16) (temp_v0->unk0 | 0x10);
    if (arg0 != 1) {
        if (arg0 != 2) {

        } else {
            arg1->unk68->unk90 = 2.0f;
        }
    } else {
        arg1->unk68->unk90 = 0.5f;
    }
    phi_v0 = 9;
    if (1.0 < (f64) arg1->unk68->unk90) {
        phi_v0 = 8;
    }
    func_0001FCF8(arg1, 0x10, phi_v0 & 0xFFFF, -1);
}

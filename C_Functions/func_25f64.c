? func_25f64(s32 arg0) {
    void *sp24;
    void *sp20;
    void *sp1C;
    void *temp_a0;
    void *temp_a2;
    void *temp_v0;

    temp_v0 = (arg0 * 0x19C) + 0x8008F978;
    temp_a2 = temp_v0 + 0x98;
    if (temp_v0->unk48 != 0) {
        return 0;
    }
    sp24 = temp_v0;
    sp20 = temp_a2;
    func_00038AEC(temp_a2, temp_v0->unk190, temp_a2);
    temp_a0 = temp_v0 + 0x1C;
    sp1C = temp_a0;
    func_00039050(temp_a0, sp20);
    func_00039090(temp_a0);
    return 1;
}


void func_1130(void *arg0, u8 arg1) {
    void *sp2C;
    void *sp28;
    void *sp24;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;

    arg0->unk66C = 0;
    arg0->unk670 = 0;
    arg0->unk674 = 0;
    arg0->unk668 = 0;
    arg0->unk678 = 1;
    arg0->unk0 = (u16)1;
    arg0->unk2 = (u16)3;
    temp_a0 = arg0 + 0x74;
    sp2C = temp_a0;
    func_00033F10(temp_a0, arg0 + 0x8C, 8);
    temp_a0_2 = arg0 + 0xAC;
    sp28 = temp_a0_2;
    func_00033F10(temp_a0_2, arg0 + 0xC4, 8);
    temp_a0_3 = arg0 + 0xE4;
    sp24 = temp_a0_3;
    func_00033F10(temp_a0_3, arg0 + 0xFC, 8);
    func_00033F10(arg0 + 0x3C, arg0 + 0x54, 8);
    func_00033F10(arg0 + 4, arg0 + 0x1C, 8);
    func_00033F10(arg0 + 0x11C, arg0 + 0x134, 8);
    func_00033F40(temp_a0, 0x29A, arg1);
    func_00033FB0(4, sp28, 0x29B);
    func_00033FB0(9, sp24, 0x29C);
    func_00033FB0(0xE, sp2C, 0x29D);
}

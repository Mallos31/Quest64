void func_b3d8(void *arg0, void *arg1) {
    void *temp_a3;

    temp_a3 = arg1;
    arg1 = temp_a3;
    func_0001D924((arg0->unk52 * 0xC) + *(*(void *)0x8007D0A8 + (arg0->unk50 * 4)), arg0->unk24, temp_a3);
    arg1->unk0 = (f32) -arg0->unk44;
    arg1->unk4 = (f32) arg0->unk4C;
    func_000232F4(arg0->unk10, arg0, arg1);
}

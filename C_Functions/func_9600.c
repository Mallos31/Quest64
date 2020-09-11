s32 func_9600(void *arg0, s32 arg1) {
    s32 temp_v0;
    void *temp_a3;
    void *temp_v1;
    s32 phi_v0;
    void *phi_v1;

    temp_a3 = arg0;
    arg0 = temp_a3;
    func_00024260(arg1 + 0xD305E0, 0x8007C570, 0x400, temp_a3);
    phi_v0 = 0;
    phi_v1 = (void *)0x8007C970;
    if (arg0->unk80->unk14 != 0) {
loop_1:
        temp_v1 = phi_v1 + 4;
        temp_v1->unk-4 = (u8) *(arg0->unk80->unk14 + phi_v0);
        temp_v1->unk-3 = (u8) (arg0->unk80->unk14 + phi_v0)->unk1;
        temp_v1->unk-2 = (u8) (arg0->unk80->unk14 + phi_v0)->unk2;
        temp_v0 = phi_v0 + 4;
        temp_v1->unk-1 = (u8) (arg0->unk80->unk14 + phi_v0)->unk3;
        phi_v0 = temp_v0;
        phi_v1 = temp_v1;
        if (temp_v0 != 0x20) {
            goto loop_1;
        }
        return temp_v0;
    }
    *(void *)0x8007C970 = (u8)0xFF;
    return 0;
}

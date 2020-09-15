u16 func_18f18(s32 arg0) {
    u16 temp_v0;
    void *temp_a0;

    temp_v0 = ~((arg0 * 2) + 0x80050000)->unk-328C;
    (void *)0x8007BAB8->unk10C = (u16) ((void *)0x8007BAB8->unk10C & temp_v0);
    *(void *)0x8007CAB4 = (u16) (*(void *)0x8007CAB4 & temp_v0);
    *(void *)0x8007CBDC = (u16) (*(void *)0x8007CBDC & temp_v0);
    temp_a0 = (2 * 0x128) + 0x8007C998;
    temp_a0->unk494 = (u16) (temp_a0->unk494 & temp_v0);
    temp_a0->unk36C = (u16) (temp_a0->unk36C & temp_v0);
    temp_a0->unk244 = (u16) (temp_a0->unk244 & temp_v0);
    temp_a0->unk11C = (u16) (temp_a0->unk11C & temp_v0);
    return temp_v0;
}

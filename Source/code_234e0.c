void func_800228E0(void) {
    *(void *)0x8008D020 = (u16)0;
    *(void *)0x8008D024 = 0;
}

void func_800228F8(s32 arg0) {
    s32 temp_a1;
    s32 temp_t9;
    u16 temp_v0_8;
    void *temp_a0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;

    if ((*(void *)0x8008D020 & 1) != 0) {
        temp_v0 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
        temp_v0->unk4 = 0;
        temp_v0->unk0 = 0xE7000000;
        temp_v0_2 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
        temp_v0_2->unk0 = 0x1030040;
        temp_v0_2->unk4 = 0x2000040;
        func_80035388((arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0, arg0);
        temp_v0_3 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
        temp_v0_3->unk0 = 0x1020040;
        temp_v0_3->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0xC0) + 0x2000000);
        *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
        temp_v0_4 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
        temp_v0_4->unk0 = 0xFB000000;
        temp_a0 = *(void *)0x8008D028;
        temp_v0_4->unk4 = (s32) ((((temp_a0->unk0 << 0x18) | (temp_a0->unk1 << 0x10)) | (temp_a0->unk2 << 8)) | temp_a0->unk3);
        if ((*(void *)0x8008D028)->unk3 == 0xFF) {
            temp_v0_5 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
            temp_v0_5->unk4 = 0xF0A4000;
            temp_v0_5->unk0 = 0xB900031D;
        } else {
            temp_v0_6 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
            temp_v0_6->unk4 = 0x504340;
            temp_v0_6->unk0 = 0xB900031D;
        }
        temp_v0_7 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
        temp_v0_7->unk0 = 0x6000000;
        temp_v0_7->unk4 = 0x8004D4F0;
        temp_a1 = *(void *)0x8008D024;
        temp_t9 = temp_a1 - 1;
        if (temp_a1 != 0) {
            temp_v0_8 = *(void *)0x8008D020;
            if ((temp_v0_8 & 4) != 0) {
                *(void *)0x8008D028 = (void *) (*(void *)0x8008D028 - 4);
            } else {
                *(void *)0x8008D028 = (void *) (*(void *)0x8008D028 + 4);
            }
            *(void *)0x8008D024 = temp_t9;
            if (((temp_t9 == 0) & ((temp_v0_8 & 2) == 0)) != 0) {
                *(void *)0x8008D020 = (u16) (temp_v0_8 & 0xFFFE);
            }
        }
    }
}

void func_80022B08(s32 arg0, s32 arg1, ?32 arg2) {
    *(void *)0x8008D024 = arg0;
    *(void *)0x8008D020 = (s16) ((arg1 & 0xFFFF) | 1);
    *(void *)0x8008D028 = arg2;
}

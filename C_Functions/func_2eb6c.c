void func_2eb6c(void) {
    void *temp_v1;
    void *temp_v1_2;

    temp_v1 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = 0x8005FAA0;
    temp_v1_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_2 + 8);
    temp_v1_2->unk4 = 0x8000;
    temp_v1_2->unk0 = 0xBA000E02;
    *(void *)0x8008FD0C = (u16) (*(void *)0x8008FD0C & 0xFFEF);
}


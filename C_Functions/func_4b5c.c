f32 func_4b5c(void *arg0, void *arg1, ? arg2) {
    u16 temp_t7;

    arg0->unk20 = 0.0f;
    arg0->unk18 = 0.0f;
    temp_t7 = arg1->unk4 - 1;
    arg1->unk4 = temp_t7;
    if ((temp_t7 & 0xFFFF) == 0) {
        arg1->unk0 = (u16)0;
        arg0->unk60 = (u16) (arg0->unk60 & 0xFFFC);
    }
    return 0.0f;
}

void alSynStopVoice(ALSynth *synth, ALVoice *v) {
    void *f;
    void *update;

    if (v->pvoice != 0) {
        update = __allocParam();
        if (update != 0) {
            update->type = (u16)0xF;
            update->next = 0;
            update->delta = (s32) (synth->paramSamples + v->pvoice->offset);
            f = v->unk8->unkC;
            f->unk8(f, 3, update, v);
        }
    }
}


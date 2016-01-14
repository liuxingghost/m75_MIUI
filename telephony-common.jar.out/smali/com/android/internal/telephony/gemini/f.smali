.class Lcom/android/internal/telephony/gemini/f;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/SimSwitchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/16 v6, 0x1f8

    const/16 v5, 0x1f6

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 61
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 175
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 93
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_2

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    const-string v1, "Receive MGS_POWER_OFF_MD_RIL1"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Z)Z

    .line 104
    :goto_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 105
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    const-string v1, "sim switch power off md failed."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->b(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0, v4}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->c(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Z)Z

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0, v4}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Z)Z

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->isSimSwitchSwapped()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->e(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->c(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->configSimSwitch(ZLandroid/os/Message;)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    const-string v1, "Receive MGS_POWER_OFF_MD_RIL2"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->b(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Z)Z

    goto :goto_1

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->f(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->c(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->configSimSwitch(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 121
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    const-string v1, "Receive MGS_CONFIG_SIM_SWITCH"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 123
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 124
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    const-string v1, "Receive MGS_CONFIG_SIM_SWITCH, waiting for radio available"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->f(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1, v6, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimInsertedStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->e(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1f9

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimInsertedStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->f(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerOn(Landroid/os/Message;)V

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->e(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerOn(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    const-string v1, "Receive MGS_CONFIG_SIM_SWITCH and exception happened"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->f(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerOn(Landroid/os/Message;)V

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->e(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerOn(Landroid/os/Message;)V

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->g(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)V

    goto/16 :goto_0

    .line 146
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v6, :cond_5

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    const-string v1, "Receive MGS_SIM_INSERTED_STATUS_RIL1"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->c(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Z)Z

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->f(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 155
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->h(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->i(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Both SIM inserted/error status received, finish SIM Switch configuration ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->h(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->i(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->g(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)V

    goto/16 :goto_0

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    const-string v1, "Receive MGS_SIM_INSERTED_STATUS_RIL2"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Z)Z

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->e(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    goto :goto_2

    .line 159
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for SIM inserted status ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->h(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/f;->aj:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->i(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

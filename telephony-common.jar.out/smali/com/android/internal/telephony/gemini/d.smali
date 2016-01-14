.class Lcom/android/internal/telephony/gemini/d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/d;->G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget v1, p1, Landroid/os/Message;->what:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    move-result v1

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_DETACH: request_use_gprs_sim_id["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/d;->G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->access$200(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v0

    aget v0, v0, v1

    if-ne v0, v3, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isPsAlwaysAttach()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->n()I

    move-result v0

    .line 137
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    add-int/lit8 v0, v0, -0x1

    .line 153
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setGeminiDataConnStateToActingState(I)V

    .line 154
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/d;->G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->setPsAttach()V

    goto :goto_0

    .line 140
    :cond_0
    const-string v1, "persist.ril.gprs.setting"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    const/4 v1, 0x0

    .line 142
    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 145
    :cond_1
    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/d;->G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    add-int/lit8 v0, v1, -0x1

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data on and set SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to acting state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->access$200(Ljava/lang/String;)V

    goto :goto_1

    .line 149
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data off and set SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to acting state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->access$200(Ljava/lang/String;)V

    goto :goto_1

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/d;->G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v2

    aget v2, v2, v1

    aput v2, v0, v1

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v0

    aput v3, v0, v1

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget-object v0, v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 160
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/d;->G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v3

    aget v3, v3, v1

    aget-object v3, v0, v3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->connectSync(Ljava/lang/String;)I

    goto :goto_2

    .line 164
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isPsAlwaysAttach()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 165
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->setPsAttach()V

    .line 171
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget-object v0, v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto/16 :goto_0

    .line 168
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/d;->G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v2

    aget v1, v2, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->setPsAttach()V

    goto :goto_3

    .line 178
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    add-int/lit8 v1, v1, -0x5

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_RADIO_OFF."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->access$200(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->G:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    add-int/lit8 v1, v1, -0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    goto/16 :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

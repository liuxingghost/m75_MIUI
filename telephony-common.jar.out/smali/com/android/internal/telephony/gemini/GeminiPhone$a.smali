.class Lcom/android/internal/telephony/gemini/GeminiPhone$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private Q:I

.field private mSimId:I

.field final synthetic u:Lcom/android/internal/telephony/gemini/GeminiPhone;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3007
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3008
    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->mSimId:I

    .line 3009
    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->Q:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/gemini/e;)V
    .locals 0

    .prologue
    .line 3007
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .prologue
    .line 3015
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->Q:I

    .line 3016
    iput p2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->mSimId:I

    .line 3017
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x3

    .line 3021
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3022
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeminiPhone m3GSwitchReceiver receive ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->Q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    sget-object v1, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_PRE_CAPABILITY_SWITCH:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3024
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->mSimId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 3025
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3026
    const-string v1, "PHONE"

    const-string v2, "No need to reset modem, set preferred network mode to NT_MODE_GSM_ONLY"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->mSimId:I

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->set3GSim(I)V

    .line 3028
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    .line 3054
    :cond_0
    :goto_0
    return-void

    .line 3031
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3033
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;I)Z

    move-result v0

    .line 3037
    :goto_1
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SwitchBroadcastReceiver:is3GSwitched = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", get3GSimId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->mSimId:I

    if-eq v1, v2, :cond_3

    :cond_2
    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->mSimId:I

    if-nez v0, :cond_9

    .line 3040
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->mSimId:I

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMaxPreferredNetworkType(I)I

    move-result v1

    .line 3041
    const-string v0, ""

    .line 3042
    const/16 v2, 0x9

    if-ne v1, v2, :cond_6

    const-string v0, "NT_MODE_LTE_GSM_WCDMA"

    .line 3046
    :cond_4
    :goto_2
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No need to reset modem, set preferred network mode to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " (preferredNwTypeString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->mSimId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    .line 3048
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->mSimId:I

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->set3GSim(I)V

    goto/16 :goto_0

    .line 3035
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v0

    goto/16 :goto_1

    .line 3043
    :cond_6
    if-nez v1, :cond_7

    const-string v0, "NT_MODE_WCDMA_PREF"

    goto :goto_2

    .line 3044
    :cond_7
    if-ne v1, v6, :cond_4

    const-string v0, "NT_MODE_GSM_UMTS"

    goto :goto_2

    .line 3046
    :cond_8
    const-string v0, ""

    goto :goto_3

    .line 3050
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->mSimId:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;I)Z

    goto/16 :goto_0
.end method

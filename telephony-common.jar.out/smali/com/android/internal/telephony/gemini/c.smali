.class Lcom/android/internal/telephony/gemini/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic u:Lcom/android/internal/telephony/gemini/GeminiPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0

    .prologue
    .line 3366
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/c;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3368
    move v1, v2

    .line 3369
    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_6

    .line 3370
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isGSMRadioAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3371
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j(Lcom/android/internal/telephony/gemini/GeminiPhone;)I

    move-result v0

    shl-int v4, v3, v1

    and-int/2addr v0, v4

    if-eqz v0, :cond_2

    move v0, v2

    .line 3378
    :goto_1
    if-eqz v0, :cond_5

    .line 3379
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v1

    .line 3380
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 3381
    :goto_2
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_CAPABILITY_SWITCH_DONE:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3383
    if-ltz v1, :cond_4

    sget v4, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v4, :cond_4

    .line 3385
    sget-object v4, Lcom/android/internal/telephony/TelephonyIntents;->EXTRA_CAPABILITY:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3386
    sget-object v0, Lcom/android/internal/telephony/TelephonyIntents;->EXTRA_CAPABILITY_SIM:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3392
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z

    .line 3394
    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3G switch done, simId= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    monitor-enter v1

    .line 3396
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3397
    const-string v0, "PHONE"

    const-string v2, "Release 3G Switch wakelock"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3400
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3401
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3403
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->m(Lcom/android/internal/telephony/gemini/GeminiPhone;)I

    move-result v0

    const/16 v1, -0x63

    if-eq v0, v1, :cond_1

    .line 3406
    const-string v0, "PHONE"

    const-string v1, "3G switch done and set mTargetRadioMode"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/c;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->m(Lcom/android/internal/telephony/gemini/GeminiPhone;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 3413
    :cond_1
    :goto_4
    return-void

    .line 3369
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_3
    move v0, v3

    .line 3380
    goto/16 :goto_2

    .line 3388
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/TelephonyIntents;->EXTRA_CAPABILITY:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3389
    sget-object v0, Lcom/android/internal/telephony/TelephonyIntents;->EXTRA_CAPABILITY_SIM:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 3400
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3410
    :cond_5
    const-string v0, "PHONE"

    const-string v1, "3G switch done but radio not ready, retry after a seconds"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/c;->u:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->n(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_6
    move v0, v3

    goto/16 :goto_1
.end method
.class Lcom/android/internal/policy/impl/GlobalActions$4;
.super Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;ILjava/lang/CharSequence;)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(ILjava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method public onPress()V
    .locals 5

    .prologue
    .line 361
    const/16 v0, 0x1f4

    .line 362
    .local v0, "SHUTDOWN_VIBRATE_MS":I
    new-instance v2, Landroid/os/SystemVibrator;

    invoke-direct {v2}, Landroid/os/SystemVibrator;-><init>()V

    .line 364
    .local v2, "vibrator":Landroid/os/Vibrator;
    int-to-long v3, v0

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    int-to-long v3, v0

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 376
    :goto_1
    const-string v3, "ctl.start"

    const-string v4, "shutdown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void

    .line 365
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "GlobalActions"

    const-string v4, "Failed to vibrate during shutdown."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 373
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x1

    return v0
.end method

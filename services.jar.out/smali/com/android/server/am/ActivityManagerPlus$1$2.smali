.class Lcom/android/server/am/ActivityManagerPlus$1$2;
.super Ljava/lang/Object;
.source "ActivityManagerPlus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerPlus$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerPlus$1;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerPlus$1;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPlus$1$2;->this$1:Lcom/android/server/am/ActivityManagerPlus$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus$1$2;->this$1:Lcom/android/server/am/ActivityManagerPlus$1;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    # getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerPlus;->access$200(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPowerOffAlarmUtility:Lcom/android/server/am/PowerOffAlarmUtility;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus$1$2;->this$1:Lcom/android/server/am/ActivityManagerPlus$1;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    # getter for: Lcom/android/server/am/ActivityManagerPlus;->mFlightModeOn:Z
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerPlus;->access$300(Lcom/android/server/am/ActivityManagerPlus;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/PowerOffAlarmUtility;->launchPowrOffAlarmIPO(Ljava/lang/Boolean;)V

    .line 381
    return-void

    .line 380
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;
.super Lcom/android/internal/util/AsyncChannel;
.source "DedicateDataConnectionAc.java"


# static fields
.field public static final REQ_GET_REASON:I = 0x7a32a

.field public static final REQ_IS_ACTIVATING:I = 0x7a32c

.field public static final REQ_SET_REASON:I = 0x7a328

.field public static final RSP_GET_REASON:I = 0x7a32b

.field public static final RSP_IS_ACTIVATING:I = 0x7a32d

.field public static final RSP_SET_REASON:I = 0x7a329

.field private static final TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mDedicateDataConnection:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

.field private mId:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)V
    .locals 1
    .param p1, "dedicateDataConnection"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;->mId:I

    .line 23
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;->mDedicateDataConnection:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    .line 24
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;->mDedicateDataConnection:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->setDedicateDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;)V

    .line 25
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 98
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate][GDDC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method


# virtual methods
.method public getBearerPropertiesSync()Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 58
    const v2, 0x41006

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 59
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x41007

    if-ne v2, v3, :cond_1

    .line 60
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 63
    :goto_0
    return-object v1

    .line 60
    :cond_0
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    goto :goto_0

    .line 62
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBearerPropertiesSync error response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCidSync()I
    .locals 3

    .prologue
    .line 68
    const v1, 0x41002

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 69
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41003

    if-ne v1, v2, :cond_0

    .line 70
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 73
    :goto_0
    return v1

    .line 72
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCidSync error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;->log(Ljava/lang/String;)V

    .line 73
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getReasonSync()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 88
    const v2, 0x7a32a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 89
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x7a32b

    if-ne v2, v3, :cond_1

    .line 90
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 93
    :goto_0
    return-object v1

    .line 90
    :cond_0
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setReasonSync error response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isActivatingSync()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    const v3, 0x7a32c

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 49
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_1

    iget v3, v0, Landroid/os/Message;->what:I

    const v4, 0x7a32d

    if-ne v3, v4, :cond_1

    .line 50
    iget v3, v0, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_0

    .line 53
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 50
    goto :goto_0

    .line 52
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActivatingSync error response="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;->log(Ljava/lang/String;)V

    move v1, v2

    .line 53
    goto :goto_0
.end method

.method public isActiveSync()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    const v3, 0x4100e

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 39
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_1

    iget v3, v0, Landroid/os/Message;->what:I

    const v4, 0x4100f

    if-ne v3, v4, :cond_1

    .line 40
    iget v3, v0, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_0

    .line 43
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActiveSync error response="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;->log(Ljava/lang/String;)V

    move v1, v2

    .line 43
    goto :goto_0
.end method

.method public isInactiveSync()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    const v3, 0x41000

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 29
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_1

    iget v3, v0, Landroid/os/Message;->what:I

    const v4, 0x41001

    if-ne v3, v4, :cond_1

    .line 30
    iget v3, v0, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_0

    .line 33
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInactiveSync error response="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;->log(Ljava/lang/String;)V

    move v1, v2

    .line 33
    goto :goto_0
.end method

.method public setReasonSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 78
    const v1, 0x7a328

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 79
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x7a329

    if-ne v1, v2, :cond_0

    .line 80
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 83
    :goto_0
    return-object v1

    .line 82
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReasonSync error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;->log(Ljava/lang/String;)V

    .line 83
    const/4 v1, 0x0

    goto :goto_0
.end method

.class Landroid/net/MobileDataStateTracker$MdstHandler;
.super Landroid/os/Handler;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MdstHandler"
.end annotation


# instance fields
.field private mMdst:Landroid/net/MobileDataStateTracker;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/net/MobileDataStateTracker;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "mdst"    # Landroid/net/MobileDataStateTracker;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 194
    iput-object p2, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    .line 195
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 199
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 241
    iget-object v2, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignorning unknown message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 201
    :sswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    .line 203
    iget-object v2, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    const-string v3, "MdstHandler connected"

    # invokes: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 205
    iget-object v3, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/util/AsyncChannel;

    # setter for: Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3, v2}, Landroid/net/MobileDataStateTracker;->access$302(Landroid/net/MobileDataStateTracker;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_0

    .line 208
    :cond_1
    iget-object v2, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MdstHandler %s NOT connected error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :sswitch_1
    iget-object v2, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    const-string v3, "Disconnected from DataStateTracker"

    # invokes: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    const/4 v3, 0x0

    # setter for: Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2, v3}, Landroid/net/MobileDataStateTracker;->access$302(Landroid/net/MobileDataStateTracker;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_0

    .line 219
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    .line 221
    .local v0, "ipAddr":Ljava/net/InetAddress;
    const-string/jumbo v1, "unknown type ip"

    .line 222
    .local v1, "ipType":Ljava/lang/String;
    instance-of v2, v0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_4

    .line 223
    const-string v1, "IPV4"

    .line 229
    :cond_2
    :goto_1
    iget-object v2, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get Global"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 232
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v3, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-ne v2, v3, :cond_0

    # getter for: Landroid/net/MobileDataStateTracker;->IMS_APN:Ljava/lang/String;
    invoke-static {}, Landroid/net/MobileDataStateTracker;->access$600()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v5, :cond_3

    # getter for: Landroid/net/MobileDataStateTracker;->EMERGENCY_APN:Ljava/lang/String;
    invoke-static {}, Landroid/net/MobileDataStateTracker;->access$700()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 235
    :cond_3
    iget-object v2, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    const-string/jumbo v3, "send ip to va"

    # invokes: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 236
    iget-object v2, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    # invokes: Landroid/net/MobileDataStateTracker;->sendGlobalIPAddrToVa(Ljava/net/InetAddress;)V
    invoke-static {v2, v0}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;Ljava/net/InetAddress;)V

    goto/16 :goto_0

    .line 225
    :cond_4
    instance-of v2, v0, Ljava/net/Inet6Address;

    if-eqz v2, :cond_2

    .line 226
    const-string v1, "IPV6"

    goto :goto_1

    .line 199
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_2
        0x11000 -> :sswitch_0
        0x11004 -> :sswitch_1
    .end sparse-switch
.end method

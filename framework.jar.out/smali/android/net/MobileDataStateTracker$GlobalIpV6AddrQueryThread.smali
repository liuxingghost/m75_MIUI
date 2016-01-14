.class Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;
.super Ljava/lang/Thread;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalIpV6AddrQueryThread"
.end annotation


# instance fields
.field mTracker:Landroid/net/MobileDataStateTracker;

.field final synthetic this$0:Landroid/net/MobileDataStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker;)V
    .locals 0
    .param p2, "tracker"    # Landroid/net/MobileDataStateTracker;

    .prologue
    .line 1298
    iput-object p1, p0, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1299
    iput-object p2, p0, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;->mTracker:Landroid/net/MobileDataStateTracker;

    .line 1300
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1304
    const-class v6, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;

    monitor-enter v6

    .line 1306
    :try_start_0
    iget-object v5, p0, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;->mTracker:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    .line 1307
    .local v4, "state":Landroid/net/NetworkInfo$DetailedState;
    # getter for: Landroid/net/MobileDataStateTracker;->IMS_APN:Ljava/lang/String;
    invoke-static {}, Landroid/net/MobileDataStateTracker;->access$600()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;->mTracker:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    # getter for: Landroid/net/MobileDataStateTracker;->EMERGENCY_APN:Ljava/lang/String;
    invoke-static {}, Landroid/net/MobileDataStateTracker;->access$700()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;->mTracker:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v4, :cond_4

    .line 1309
    iget-object v5, p0, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;->mTracker:Landroid/net/MobileDataStateTracker;

    # invokes: Landroid/net/MobileDataStateTracker;->getRaGlobalIpAddress()Ljava/lang/String;
    invoke-static {v5}, Landroid/net/MobileDataStateTracker;->access$1600(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v0

    .line 1311
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1312
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v7, p0, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;->mTracker:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    if-ne v5, v7, :cond_1

    .line 1314
    new-instance v1, Landroid/net/MobileDataStateTracker$DhcpThread;

    iget-object v5, p0, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;->this$0:Landroid/net/MobileDataStateTracker;

    iget-object v7, p0, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;->mTracker:Landroid/net/MobileDataStateTracker;

    const/4 v8, 0x2

    invoke-direct {v1, v5, v7, v8}, Landroid/net/MobileDataStateTracker$DhcpThread;-><init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker;I)V

    .line 1315
    .local v1, "dhcpThread":Landroid/net/MobileDataStateTracker$DhcpThread;
    invoke-virtual {v1}, Landroid/net/MobileDataStateTracker$DhcpThread;->start()V

    .line 1332
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "dhcpThread":Landroid/net/MobileDataStateTracker$DhcpThread;
    :cond_1
    :goto_0
    monitor-exit v6

    .line 1333
    return-void

    .line 1317
    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    const-string v5, "RaFail"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1318
    iget-object v5, p0, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v7, "get ra address failed, no broadcast the address back!!"

    # invokes: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static {v5, v7}, Landroid/net/MobileDataStateTracker;->access$1700(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    goto :goto_0

    .line 1332
    .end local v0    # "address":Ljava/lang/String;
    .end local v4    # "state":Landroid/net/NetworkInfo$DetailedState;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1321
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v4    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_3
    :try_start_1
    invoke-static {v0}, Ljava/net/Inet6Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 1322
    .local v3, "inetAddr":Ljava/net/InetAddress;
    iget-object v5, p0, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;->mTracker:Landroid/net/MobileDataStateTracker;

    invoke-virtual {v5, v3}, Landroid/net/MobileDataStateTracker;->sendIPAddrToHandler(Ljava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1323
    .end local v3    # "inetAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v2

    .line 1324
    .local v2, "ex":Ljava/net/UnknownHostException;
    :try_start_2
    iget-object v5, p0, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v7, "Inet6Address getByName error"

    # invokes: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static {v5, v7}, Landroid/net/MobileDataStateTracker;->access$1700(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 1325
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 1329
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "ex":Ljava/net/UnknownHostException;
    :cond_4
    iget-object v5, p0, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apn type("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;->mTracker:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") is not IMS, state("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), leave GlobalIpV6AddrQueryThread!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static {v5, v7}, Landroid/net/MobileDataStateTracker;->access$1700(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
